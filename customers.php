<?php
session_start();
require_once './config/config.php';
require_once 'includes/auth_validate.php';

//Get Input data from query string
$search_string = filter_input(INPUT_GET, 'search_string');
$filter_col = filter_input(INPUT_GET, 'filter_col');
$order_by = filter_input(INPUT_GET, 'order_by');

//Get current page.
$page = filter_input(INPUT_GET, 'page');

//Per page limit for pagination.
$pagelimit = 20;

if (!$page) {
    $page = 1;
}

// // If filter types are not selected we show latest created data first
// if (!$filter_col) {
//     $filter_col = "created_at";
// }
// if (!$order_by) {
//     $order_by = "Desc";
// }

//Get DB instance. i.e instance of MYSQLiDB Library
$genderDb = getDbInstance();
$db = getDbInstance();
$genderSelect = array('gender_name');
$select = array('iddealer', 'first_name', 'last_name', 'gender', 'address','email_address','contact_number','available_credit','balance','total_penalty');

//Start building query according to input parameters.
// If search string
if ($search_string) 
{
    $db->where('first_name', '%' . $search_string . '%', 'like');
    $db->orwhere('last_name', '%' . $search_string . '%', 'like');
}

// //If order by option selected
// if ($order_by)
// {
//     $db->orderBy($filter_col, $order_by);
// }

//Set pagination limit
$db->pageLimit = $pagelimit;

//Get result of the query.
$customers = $db->arraybuilder()->paginate("dealer", $page, $select);
$total_pages = $db->totalPages;
    
// get columns for order filter
foreach ($customers as $value) {
    foreach ($value as $col_name => $col_value) {
        $filter_options[$col_name] = $col_name;
    }
    //execute only once
    break;
}
include_once 'includes/header.php';
?>

<!--Main container start-->
<div id="page-wrapper">
    <div class="row">

        <div class="col-lg-6">
            <h1 class="page-header">Dealers</h1>
        </div>
        <div class="col-lg-6" style="">
            <div class="page-action-links text-right">
	            <a href="add_customer.php?operation=create">
	            	<button class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Add new </button>
	            </a>
            </div>
        </div>
    </div>
        <?php include('./includes/flash_messages.php') ?>
    <!--    Begin filter section-->
    <div class="well text-center filter-form">
        <form class="form form-inline" action="">
            <label for="input_search">Search</label>
            <input type="text" class="form-control" id="input_search" name="search_string" value="<?php echo $search_string; ?>">
            <label for ="input_order">Order By</label>
            <select name="filter_col" class="form-control">

                <?php
                foreach ($filter_options as $option) {
                    ($filter_col === $option) ? $selected = "selected" : $selected = "";
                    echo ' <option value="' . $option . '" ' . $selected . '>' . $option . '</option>';
                }
                ?>

            </select>

            <select name="order_by" class="form-control" id="input_order">

                <option value="Asc" <?php
                if ($order_by == 'Asc') {
                    echo "selected";
                }
                ?> >Asc</option>
                <option value="Desc" <?php
                if ($order_by == 'Desc') {
                    echo "selected";
                }
                ?>>Desc</option>
            </select>
            <input type="submit" value="Go" class="btn btn-primary">

        </form>
    </div>
<!--   Filter section end-->

    <hr>


    <table class="table table-striped table-bordered table-condensed">
        <thead>
            <tr>
                <th class="header">id #</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Available Credit</th>
                <th>Balance</th>
                <th>Total Penalty</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($customers as $row) : ?>
                <tr>
	                <td><?php echo $row['iddealer'] ?></td>
	                <td><?php echo htmlspecialchars($row['first_name']." ".$row['last_name']); ?></td>
	                <td><?php echo htmlspecialchars($row['gender']) ?></td>
                    <td><?php echo htmlspecialchars($row['address']) ?> </td>
                    <td><?php echo htmlspecialchars($row['email_address']) ?></td>
                    <td><?php echo htmlspecialchars($row['contact_number']) ?> </td>
                    <td><?php echo htmlspecialchars($row['available_credit']) ?></td>
                    <td><?php echo htmlspecialchars($row['balance']) ?> </td>
                    <td><?php echo htmlspecialchars($row['total_penalty']) ?> </td>
				</tr>
					   
					      </form>
					      
					    </div>
  					</div>
            <?php endforeach; ?>      
        </tbody>
    </table>


   
<!--    Pagination links-->
    <div class="text-center">

        <?php
        if (!empty($_GET)) {
            //we must unset $_GET[page] if previously built by http_build_query function
            unset($_GET['page']);
            //to keep the query sting parameters intact while navigating to next/prev page,
            $http_query = "?" . http_build_query($_GET);
        } else {
            $http_query = "?";
        }
        //Show pagination links
        if ($total_pages > 1) {
            echo '<ul class="pagination text-center">';
            for ($i = 1; $i <= $total_pages; $i++) {
                ($page == $i) ? $li_class = ' class="active"' : $li_class = "";
                echo '<li' . $li_class . '><a href="customers.php' . $http_query . '&page=' . $i . '">' . $i . '</a></li>';
            }
            echo '</ul></div>';
        }
        ?>
    </div>
    <!--    Pagination links end-->

</div>
<!--Main container end-->


<?php include_once './includes/footer.php'; ?>

