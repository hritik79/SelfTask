<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="table.aspx.cs" Inherits="SelfTask.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%-- cdn for bootstrap --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
</head>
<body>
     <div class="container" id="applicationPage">
        <div id="accordion">
            <div class="card mt-5">
                <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#collapseOne">Full Stack Development</a>
                </div>
                <div id="collapseOne" class="collapse show" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>Participating in the design and creation of scalable software.</li>
                            <li>Writing clean, functional code on the front- and back-end.</li>
                            <li>Testing and fixing bugs or other coding issues.</li>
                        </ul>
                        <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Apply</button>--%>
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModalTable">View Stats</button>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#collapseTwo">Front end Development</a>
                </div>
                <div id="collapseTwo" class="collapse" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>Using markup languages like HTML to create user-friendly web pages.</li>
                            <li>Maintaining and improving website.</li>
                            <li>Optimizing applications for maximum speed.</li>
                        </ul>
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModalTable2" disabled="disabled" >View Stats</button>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#collapseThree">Back end Development</a>
                </div>
                <div id="collapseThree" class="collapse" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>Participate in the entire application lifecycle, focusing on coding and debugging.</li>
                            <li>Write clean code to develop functional web applications</li>
                            <li>Troubleshoot and debug applications</li>
                        </ul>
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModalTable3" disabled="disabled">View Stats</button>
                    </div>
                </div>
            </div>
        </div>
         <button class="btn btn-danger mt-3" onclick="logOut()">Logout</button>
    </div>

    <%-- TABLE MODAL --%>
    <div class="modal fade" id="myModalTable">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Aplication Form</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <table class="table table-striped table-hover" id="tableData">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Age</th>
                                <th>Degree</th>
                                <th>Project</th>
                                <th>Courses Done</th>
                                <th>Address</th>
                                <th>Experience</th>
                                <th>Proficiency Spoken</th>
                                <th>Resume/CV</th>
                                <th class="text-center">Edit</th>
                                <th class="text-center">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <%-- EDIT FORM MODAL --%>
      <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-dialog-centered modal-xl modal-dialog-scrollable">
            <div class="modal-content">

                <%-- Modal Header --%>
                <div class="modal-header">
                    <h4 class="modal-title">Aplication Form</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <%-- Modal Body --%>
                <div class="modal-body">
                    <form id="form" method="post">
                            <label class="font-weight-bold col-sm-5 text-right" for="editfname">First Name:<span style="color: red">*</span></label>
                            <input type="text" class="col-sm-5 editfname" id="editfname" placeholder="Please enter your first name.." autocomplete="on" /><br />
                            <input type="hidden" id="txtId" class="form-control txtId"/>

                            <label class="font-weight-bold col-sm-5 text-right" for="editlname">Last Name:<span style="color: red">*</span></label>
                            <input type="text" class="col-sm-5 editlname" id="editlname" placeholder="Please enter your last name.." /><br />

                            <label class="font-weight-bold col-sm-5 text-right" for="editemail">Email:<span style="color: red">*</span></label>
                            <input type="email" class="col-sm-5 editemail" id="editemail" placeholder="Please enter your email.." /><br />
                        <div>
                            <label class="font-weight-bold col-sm-5 text-right" for="editdate">Date of Birth:<span style="color: red">*</span></label>
                            <input type="date" class="editdate" id="editdate" max='2001-01-01' />
                        </div>

                        <%-- DROPDOWN FOR DEGREE --%>
                        <div class="form-group">
                            <label class="font-weight-bold text-right col-sm-5" for="editdegree" style="float: left">Qualification:<span style="color: red">*</span></label>
                            <select id="editdegree" class="editdegree form-control col-sm-5" name="editdegree">
                                <option value="" disabled="disabled" selected="selected">Please select a degree</option>
                                <option value="Pursuing">Pursuing</option>
                                <option value="B.E/Btech">B.E/Btech</option>
                                <option value="BSC in Computer Science">BSC in Computer Science</option>
                                <option value="Mtech">Mtech</option>
                            </select>
                        </div>

                        <%-- TEXTAREA FOR PROJECT --%>
                        <div class="form-group">
                            <label for="editproject" class="font-weight-bold col-sm-5 text-right">Projects completed :<span style="color: red">*</span></label>
                            <textarea id="editproject" class="editproject col-sm-5" placeholder="Enter your project details in brief..."></textarea>
                        </div>

                        <%-- SELECT2 DROPDOWN FOR COURSE --%>
                        <div class="form-group">
                            <label class="font-weight-bold col-sm-5 text-right" style="float: left">Select Course:<span style="color: red;">*</span></label>
                            <select class="course-multiple editcourse col-sm-6" id="editcourse" name="editcourse" multiple="multiple">
                                <option value="Core java course">Core java course</option>
                                <option value="C# course">C# course</option>
                                <option value="Python Course">Python Course</option>
                                <option value="HTML+CSS+JS course">HTML+CSS+JS course</option>
                                <option value="My SQL">My SQL</option>
                            </select>
                        </div>

                        <%-- DROPDOWN FOR ADDRESS --%>
                        <div class="form-group">
                            <label for="editstate" style="float: left" class="font-weight-bold col-sm-5 text-right" >State:<span style="color: red">*</span></label>
                            <select id="editstate" class="editstate form-control col-sm-3" name="editstate">
                                <option disabled="disabled" selected="selected" value="">Select state</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="editcity" style="float: left" class="font-weight-bold col-sm-5 text-right">City:<span style="color: red">*</span></label>
                            <select  id="editcity" class="editcity form-control col-sm-3">
                                <option disabled="disabled" selected="selected" value="">Select city</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="editpincode" style="float: left" class="font-weight-bold col-sm-5 text-right">Pincode:<span style="color: red">*</span></label>
                            <input type="text" class="editpincode form-control col-sm-3" id="editpincode" />
                        </div>

                        <%-- RADIOBUTTON FOR EXPERIENCE --%>
                        <div class="form-group col-sm-5 text-right" style="float: left">
                            <label class="font-weight-bold">Experience:<span style="color: red">*</span></label><br />
                            <div class="form-check">
                                <input class="form-check-input editexp" name="editexp" type="radio" id="fresher" value="0-1 years" />
                                <label class="form-check-label" for="fresher">0-1 years</label><br />

                                <input class="form-check-input editexp" name="editexp" type="radio" id="begin" value="1-2 years" />
                                <label class="form-check-label" for="begin">1-2 years</label><br />

                                <input class="form-check-input editexp" name="editexp" type="radio" id="interm" value="2-3 years" />
                                <label class="form-check-label" for="interm">2-3 years</label><br />

                                <input class="form-check-input editexp" name="editexp" type="radio" id="expert" value="3-5 years" />
                                <label class="form-check-label" for="expert">3-5 years</label><br />
                            </div>
                        </div>

                        <%-- CHECKBOX FOR LANGUAGE SPOKEN --%>
                        <div class="form-group col-sm-6 float-end" style="float: right">
                            <label class="font-weight-bold text-center">Profeciency Spoken:<span style="color: red">*</span></label><br />
                            <div class="form-check">
                                <input class="form-check-input editprof" name="editprof" type="checkbox" id="eng" value="English" />
                                <label class="form-check-label" for="eng">English</label><br />

                                <input class="form-check-input editprof" name="editprof" type="checkbox" id="hin" value="Hindi" />
                                <label class="form-check-label" for="hin">Hindi</label><br />

                                <input class="form-check-input editprof" name="editprof" type="checkbox" id="tamil" value="Tamil" />
                                <label class="form-check-label" for="tamil">Tamil</label><br />

                                <input class="form-check-input editprof" name="editprof" type="checkbox" id="marathi" value="Marathi" />
                                <label class="form-check-label" for="marathi">Marathi</label><br />
                            </div>
                        </div>

                        <%-- FILE FOR RESUME --%>
                        <div class="form-group">
                            <label class="font-weight-bold text-right col-sm-5 editresume" for="editresume">Resume/CV:<span style="color: red">*</span></label>
                            <input type="file" id="editresume" class="editresume" />
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal" id="update">Update</button>
                    <button type="reset" class="btn btn-danger" data-dismiss="modal" id="reset">Reset</button>
                </div>
            </div>
        </div>
    </div>

     <%-- CDN for jQuery --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
     <%-- CDN for sweetalert2 --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <%-- CDN for fontawesome --%>
    <script src="https://kit.fontawesome.com/c13d76a6e1.js"></script>
     <%-- CDN for Select2 --%>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        function logOut() {
            Swal.fire({
                title: 'Are you sure you want to log out?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, log out!'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = "login.aspx";
                }
            })
        }

        var locations = {
            "Maharashtra": {
                "Mumbai": "400001",
                "Pune": "411001",
                "Nagpur": "440001"
            },
            "Tamil Nadu": {
                "Chennai": "600001",
                "Coimbatore": "641004",
                "Madurai": "625001",
            }
        };
        

        $(document).ready(function () {
            $('.course-multiple').select2({
                theme: "classic",
                placeholder: "Select Courses done..."
            });
            loadDataFromLocal();
            // City dropdown is dependent on state dropdown
            $('#editstate').on('change', function () {
                debugger
                var state = $(this).val();
                var cities = locations[state];
                $('#editcity').empty();
                $('#editpincode').val('');
                $('#editcity').append($('<option></option>').val('').html('Select city'));
                $.each(cities, function (city) {
                    $('#editcity').append($('<option></option>').val(city).html(city));
                });
            });

            // Pincode is dependent on city dropdown
            $('#editcity').on('change', function () {
                var state = $('#editstate').val();
                var city = $(this).val();
                var pincode = locations[state][city];
                $('#editpincode').val(pincode);
            });
        });

        $('.select2').click(function () {
            $('#select2-bap-results')
                .parent()
                .siblings('.select2-search')
                .css('background-color', 'red');
        });

        $("#update").click(function () {
            debugger
            window.event.preventDefault();
            var firstname = $("#editfname").val();
            var lastname = $("#editlname").val();
            var email = $("#editemail").val();
            var date = $("#editdate").val();
            var degree = $("#editdegree").val();
            var project = $("#editproject").val();
            var course = $("#editcourse").select2("val");
            var state = $("#editstate").val();
            var city = $("#editcity").val();
            var pincode = $("#editpincode").val();
            var resume = $("#editresume").val();

            if (firstname == '') {
                window.event.preventDefault();
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Enter your First Name!',
                });
                return false;
            } else if (lastname == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Enter Your Last name!',
                });
                return false;
            } else if (email == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Enter Your email!',
                });
                return false;
            } else if (date == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Enter Your date of birth!',
                });
                return false;
            } else if (degree == null) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select Your Qualification!',
                });
                return false;
            } else if (project == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Enter Your project details!',
                });
                return false;
            } else if (course == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select courses done by you!',
                });
                return false;
            } else if (state == null) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select your state!',
                });
                return false;
            } else if (city == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select city',
                });
                return false;
            } else if (pincode == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Add pincode..',
                });
                return false;
            } else if (!$('.editexp').is(':checked')) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select Your experienece!',
                });
                return false;
            } else if (!$('.editprof').is(':checked')) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select Language you speak!',
                });
                return false;
            } else if (resume == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Choose a valid file.',
                });
                return false;
            } else {
                var Toast = Swal.mixin({
                    toast: true,
                    position: 'top-end',
                    showConfirmButton: false,
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.addEventListener('mouseenter', Swal.stopTimer)
                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                    }
                })
                Toast.fire({
                    icon: 'success',
                    title: 'Form Updated successfully'
                })
                updateDataFromLocal();
                clear();
            }
        });

        function loadDataFromLocal() {
            debugger;
            let localData = localStorage.getItem('localData');
            if (localData) {
                $("#tableData tbody").html("");
                let localArray = JSON.parse(localData);
                let index = 1;
                localArray.forEach(element => {
                    var tabletr = "<tr>";
                    tabletr += "<td style='display: none;'> " + index + "</td>";
                    tabletr += "<td class='name'  data-id=" + element.id + ">" +  element.firstname + " " + element.lastname + "</td>";
                    tabletr += "<td class='email'>" + element.email + "</td>";
                    tabletr += "<td class='age'>" + element.age + "</td>";
                    tabletr += "<td class='date' style='display: none;'>" + element.date + "</td>";
                    tabletr += "<td class='degree'>" + element.degree + "</td>";
                    tabletr += "<td class='project'>" + element.project + "</td>";
                    tabletr += "<td class='course'>" + element.course + "</td>";
                    tabletr += "<td class='address'>" + element.city + ", " + element.state + ", " + element.pincode + "</td>";
                    tabletr += "<td class='exp'>" + element.experience + "</td>";
                    tabletr += "<td class='prof'>" + element.prof + "</td>";
                    tabletr += "<td class='resume'>" + element.resume + "</td>";
                    tabletr += "    <td class='tdAction text-center col-sm-2'>";
                    tabletr += "        <i class='fa-solid fa-pen-to-square fa-lg edit' data-toggle='modal' data-backdrop='static' data-target='#myModal' style='color: #00c703;'></i>";
                    tabletr += "    </td>";
                    tabletr += "    <td class='tdAction text-center col-sm-2'>";
                    tabletr += "        <i class='fa-solid fa-trash delete' style='color: #e60000;'></i>";
                    tabletr += "    </td>";
                    tabletr += "</tr>"
                    $("#tableData tbody").append(tabletr);
                    index++;
                });
            }
        }


        $('#tableData').on('click', '.edit', function () {
            debugger;
            const name = $(this).parent().parent().find(".name").html();
            const email = $(this).parent().parent().find(".email").html();
            const date = $(this).parent().parent().find(".date").html();
            const degree = $(this).parent().parent().find(".degree").html();
            const project = $(this).parent().parent().find(".project").html();
            const course = $(this).parent().parent().find(".course").html();
            const address = $(this).parent().parent().find(".address").html();
            const exp = $(this).parent().parent().find(".exp").html();
            const prof = $(this).parent().parent().find(".prof").html();
            const id = $(this).parent().parent().find(".name").attr("data-id");
            const nameArr = name.split(" ");
            const myArr = course.split(",");
            const myArray = prof.split(",");
            const addArr = address.split(", ")
            var state = addArr[1];
            var city = addArr[0];

            $("#editfname").val(nameArr[0]);
            $("#editlname").val(nameArr[1]);
            $("#editemail").val(email);
            $("#editdate").val(date);
            $("#editdegree").val(degree);
            $("#editproject").val(project);
            $("#editstate").val(state);
            $("#editcity").val(city);
            $("#editpincode").val(addArr[2]);
            $("input[type='radio'][value='" + exp + "']").prop('checked', true);

            for (let i = 0; i < myArr.length; i++) {
                $("#editcourse").val(myArr).trigger("change");

            }
            // Set the values of the checkboxes
            for (let i = 0; i < myArray.length; i++) {
                $("input[type='checkbox'][value='" + myArray[i] + "']").prop('checked', true);
            }
            $("#txtId").val(id);
        });

        $('#tableData').on('click', '.delete', function () {
            debugger;
            let firstname = $(this).parent().parent().find(".name").html();
            Swal.fire({
                title: 'Are you sure you want to delete ' + firstname + '&#39;s data ? ',

                text: "You won't be able to revert data!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    const id = $(this).parent().parent().find(".name").attr("data-id");
                    deleteDataFromLocal(id);
                    Swal.fire(
                        'Deleted!',
                        firstname + "'s" + ' data has been deleted.',
                        'success'
                    )
                }
            })

        });

        function age(date) {
            debugger
            date = new Date(date);
            var today = new Date();
            return Math.floor((today - date) / (365.25 * 24 * 60 * 60 * 1000));
            //$('#age').html(age + ' years old');
        }

        function updateDataFromLocal() {
            debugger;
            let localData = localStorage.getItem('localData');
            let localArray = JSON.parse(localData);
            const oldRecord = localArray.find(m => m.id == $("#txtId").val());
            oldRecord.firstname = $("#editfname").val();
            oldRecord.lastname = $("#editlname").val();
            oldRecord.email = $("#editemail").val();
            oldRecord.date = age($("#editdate").val());
            oldRecord.degree = $("#editdegree").val();
            oldRecord.project = $("#editproject").val();
            oldRecord.course = $("#editcourse").select2("val");
            oldRecord.state = $("#editstate").val();
            oldRecord.city = $("#editcity").val();
            oldRecord.pincode = $("#editpincode").val();
            oldRecord.experience = $(".editexp:checked").val();
            oldRecord.prof = $("input[type='checkbox']:checked").map(function (_, ele) { /*map(function(index,item)) here index is not used*/
                return $(ele).val();
            }).get();
            oldRecord.resume = $("#editresume").val();
            localStorage.setItem('localData', JSON.stringify(localArray));
            loadDataFromLocal();
            clear();
        }

        function deleteDataFromLocal(id) {
            debugger;
            let localData = localStorage.getItem('localData');
            let localArray = JSON.parse(localData);
            let i = 0;
            while (i < localArray.length) {
                if (localArray[i].id === Number(id)) {
                    localArray.splice(i, 1);
                } else {
                    ++i;
                }
            }
            localStorage.setItem('localData', JSON.stringify(localArray));
            loadDataFromLocal();
        }
        

        function clear() {
            $("#editfname").val("");
            $("#editlname").val("");
            $("#editemail").val("");
            $("#editdate").val("");
            $("#editdegree").val("");
            $("#editproject").val("");
            $("#editcourse").val(null).trigger('change');
            $("#editstate").val("");
            $("#editcity").val("");
            $("#editpincode").val("");
            $("input[type=checkbox]").prop('checked', false);
            $("input[type=radio]").prop('checked', false);
            $("#editresume").val("");
        }
    </script>
</body>
</html>
