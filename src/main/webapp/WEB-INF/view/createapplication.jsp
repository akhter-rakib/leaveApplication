<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hello Bangladesh</title>

    <link href="<c:url value="/css/common/custom.css" />" rel="stylesheet"/>
    <link href="<c:url value="/css/common/bootstrap.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/css/common/bootstrap-datetimepicker.min.css" />" rel="stylesheet"/>
    <script src="<c:url value="/javascript/common/bootstrap.min.js" />"></script>
    <script src="<c:url value="/javascript/common/jquery-3.2.1.min.js" />"></script>
    <script src="<c:url value="/javascript/common/moment.min.js" />"></script>
    <script src="<c:url value="/javascript/common/bootstrap-datetimepicker.min.js" />"></script>
    <script src="<c:url value="/javascript/lib/angular/angular.min.js" />"></script>
    <script src="<c:url value="/javascript/controller/createAppController.js" />"></script>

    <style>
        .signature {
            border: 0;
            align: right;
            border-bottom: 1px solid #000;
        }

        .receivedBySignature {
            display: inline-block;
        }


    </style>
    <script type="text/javascript">
        $(function () {
            $('#dateTime').datetimepicker();

            $('#startDate').datetimepicker();

            $('#endDate').datetimepicker();

            $('#joiningDateTime').datetimepicker();

            $('#receivedBySignatureDate').datetimepicker();
        });
    </script>

</head>

<body>
<div ng-app="myApp" ng-controller="CreateApplicationController">

    <div class="container">
        <div class="page-header">
            <center><h1>Leave Application Form</h1></center>
        </div>
        <div class="col-lg-12 well">
            <div class="row">
                <form>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class='col-sm-6'></div>
                            <div class='col-sm-6'>
                                <div class="form-group">
                                    <label>Date & Time</label>
                                    <div class='input-group date' id='dateTime'>
                                        <input type='text' class="form-control"/>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>Employee's Name</label>
                                <input type="text" placeholder="Enter Employee's Name Here.." class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Employee ID No</label>
                                <input type="text" placeholder="Enter Employee ID No Here.." class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Designation</label>
                                <input type="text" placeholder="Enter Employee's Designation Here.."
                                       class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-xs-1 control-label">Gender:</label>
                            <div class="col-xs-2">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="gender1" value="male">Male
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" id="gender2" value="female">Female
                                </label>
                            </div>
                            <label  class="col-xs-2 control-label">Leave Category:</label>
                            <div class="col-xs-4">
                                <label class="checkbox-inline"><input type="checkbox" value="">Casual</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Sick</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Annual</label>
                                <label class="checkbox-inline"><input type="checkbox" value="" disabled>Others</label>
                            </div>
                            <label  class="col-xs-1 control-label">Type:</label>
                            <div class="col-xs-2 form-group">
                                <label class="checkbox-inline"><input type="checkbox" value="">Full</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Half</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class='col-sm-6'>
                                <div class="form-group">
                                    <label>Starting Date & Time</label>
                                    <div class='input-group date' id='startDate'>
                                        <input type='text' class="form-control"/>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
                                    </div>
                                </div>
                            </div>
                            <div class='col-sm-6'>
                                <div class="form-group">
                                    <label>End Date & Time</label>
                                    <div class='input-group date' id='endDate'>
                                        <input type='text' class="form-control"/>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>No. of Days (s)</label>
                                <input type="text" placeholder="Enter Number of Days Here.." class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Hour (s)</label>
                                <input type="text" placeholder="Enter Hours Here.." class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>Reason for Leave</label>
                                <textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>Contact Address with Phone during Leave</label>
                                <textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class='col-sm-6'>
                                <div class="form-group">
                                    <label>Joining Date & Time</label>
                                    <div class='input-group date' id='joiningDateTime'>
                                        <input type='text' class="form-control"/>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <h3>Responsibilities hold during Leave</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>Full Name:</label>
                                <input type="text" placeholder="Enter Name Here.." class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Designation</label>
                                <input type="text" placeholder="Enter Designation Here.." class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Signature & Date</label>
                                <input type="text" placeholder="Enter Signature & Date Here.." class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <h3>Recommendation from concern Department/Project Head:</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Name</label>
                                <input type="text" placeholder="Enter Name Here.." class="form-control">
                            </div>
                            <div class="col-sm-6 form-group">
                                <label>Designation</label>
                                <input type="text" placeholder="Enter Designation Here.." class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" class="signature form-control"/>
                                <label>Signature of Recomended by</label>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" class="signature form-control"/>
                                <label>Signature of Applicant</label>
                            </div>
                        </div>
                        <div class="page-header">
                            <h3>For Office use Only</h3>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <label>Received by:</label>
                                <input type="text" class="receivedBySignature form-control"/>
                            </div>
                            <div class="col-sm-6">
                                <label>Date</label>
                                <div class='input-group date' id='receivedBySignatureDate'>
                                    <input type='text' class="receivedBySignature form-control"/>
										<span class="input-group-addon">
											<span class="glyphicon glyphicon-calendar"></span>
										</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Leave Record</th>
                                        <th>Casual/Sick</th>
                                        <th>Annual</th>
                                        <th>Earned</th>
                                        <th>Others</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="info">
                                        <td>Balance</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Applied for</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr class="info">
                                        <td> Current balance</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>Leave Status given by HR Officer(Signature & Date):</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-4 form-group">
                                <label class="checkbox-inline"><input type="checkbox" value="">Approved</label>
                                <label class="checkbox-inline"><input type="checkbox" value="">Not Approved</label>
                            </div>
                            <div class="col-xs-4 form-group">
                            </div>
                            <div class="col-xs-4 form-group">
                                <input type="text" class="signature form-control"/>
                                <label>Chief Operating Officer</label>
                            </div>
                        </div>

                        <button type="button" class="btn btn-lg btn-info pull-right">Submit</button>

                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label>REMARKS: IN CASE OF SICK LEAVE FOR MORE THAN 03 WORKING DAYS, A MEDICAL
                                    CERTIFICATE MUST BE ATTACHED</label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>