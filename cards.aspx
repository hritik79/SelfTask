<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cards.aspx.cs" Inherits="SelfTask.cards" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%-- cdn for bootstrap --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <%-- cdn for select2 --%>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
</head>
<body style="background-color:lightgrey">
     <div class="container" id="applicationPage">
         <div class="jumbotron text-center mt-3">
             <h1 class="display-3 ">Interviewee App</h1>
             <hr />
             <h6 class="display-5">- APPLY FOR THE POSITION -</h6>
         </div>
         <div id="accordion">
            <div class="card">
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
                        <button type="button" class="btn btn-primary" data-backdrop="static" data-toggle="modal" data-target="#myModal">Apply</button>
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
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal2" disabled="disabled">Apply</button>
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
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal3" disabled="disabled">Apply</button>
                    </div>
                </div>
            </div>
        </div>
         <button class="btn btn-danger" onclick="logOut()">Logout</button>
    </div>
    <%-- Modal --%>
    <div class="modal fade" id="myModal">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
            <div class="modal-content">

                <%-- Modal Header --%>
                <div class="modal-header">
                    <h4 class="modal-title">Aplication Form</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <%-- Modal Body --%>
                <div class="modal-body">
                    <form id="form" method="post">
                            <label class="font-weight-bold col-sm-5 text-right" for="fname">First Name:<span style="color: red">*</span></label>
                            <input type="text" class="col-sm-5 fname" id="fname" placeholder="Please enter your first name.." autocomplete="on" /><br />
                            <input type="hidden" id="txtId" class="form-control txtId"/>

                            <label class="font-weight-bold col-sm-5 text-right" for="lname">Last Name:<span style="color: red">*</span></label>
                            <input type="text" class="col-sm-5 lname" id="lname" placeholder="Please enter your last name.." /><br />

                            <label class="font-weight-bold col-sm-5 text-right" for="email">Email:<span style="color: red">*</span></label>
                            <input type="email" class="col-sm-5 email" id="email" placeholder="Please enter your email.." /><br />

                        <div>
                            <label class="font-weight-bold col-sm-5 text-right" for="date">Date of Birth:<span style="color: red">*</span></label>
                            <input type="date" class="date col-sm-2" id="date" max='2001-01-01' />
                        </div>

                        <%-- DROPDOWN FOR DEGREE --%>
                        <div class="form-group">
                            <label class="font-weight-bold text-right col-sm-5" for="degree" style="float: left">Qualification:<span style="color: red">*</span></label>
                            <select id="degree" class="degree form-control col-sm-5" name="degree">
                                <option value="" disabled="disabled" selected="selected">Please select a degree</option>
                                <option value="Pursuing">Pursuing</option>
                                <option value="B.E/Btech">B.E/Btech</option>
                                <option value="BSC in Computer Science">BSC in Computer Science</option>
                                <option value="Mtech">Mtech</option>
                            </select>
                        </div>

                        <%-- TEXTAREA FOR PROJECT --%>
                        <div class="form-group">
                            <label for="project" class="font-weight-bold col-sm-5 text-right">Projects completed :<span style="color: red;">*</span></label>
                            <textarea id="project" class="project col-sm-5" placeholder="Enter your project details in brief..."></textarea>
                        </div>

                        <%-- SELECT2 DROPDOWN FOR COURSE --%>
                        <div class="form-group">
                            <label class="font-weight-bold col-sm-5 text-right" style="float: left">Select Course:<span style="color: red;">*</span></label>
                            <select class="course-multiple course col-sm-6" id="course" name="course" multiple="multiple">
                                <option value="Core java course">Core java course</option>
                                <option value="C# course">C# course</option>
                                <option value="Python Course">Python Course</option>
                                <option value="HTML+CSS+JS course">HTML+CSS+JS course</option>
                                <option value="My SQL">My SQL</option>
                            </select>
                        </div>

                        <%-- DROPDOWN FOR ADDRESS --%>
                        <div class="form-group">
                            <label for="state" style="float: left" class="font-weight-bold col-sm-5 text-right" >State:<span style="color: red;">*</span></label>
                            <select id="state" class="state form-control col-sm-3" name="state">
                                <option disabled="disabled" selected="selected" value="">Select state</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="city" style="float: left" class="font-weight-bold col-sm-5 text-right">City:<span style="color: red;">*</span></label>
                            <select  id="city" class="city form-control col-sm-3">
                                <option disabled="disabled" selected="selected" value="">Select city</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="pincode" style="float: left" class="font-weight-bold col-sm-5 text-right">Pincode:<span style="color: red;">*</span></label>
                            <input type="text" class="pincode form-control col-sm-3" id="pincode"/>
                        </div>

                        <%-- RADIOBUTTON FOR EXPERIENCE --%>
                        <div class="form-group col-sm-5 text-right" style="float: left">
                            <label class="font-weight-bold">Experience:<span style="color: red">*</span></label><br />
                            <div class="form-check">
                                <input class="form-check-input exp" name="exp" type="radio" id="fresher" value="0-1 years" />
                                <label class="form-check-label" for="fresher">0-1 years</label><br />

                                <input class="form-check-input exp" name="exp" type="radio" id="begin" value="1-2 years" />
                                <label class="form-check-label" for="begin">1-2 years</label><br />

                                <input class="form-check-input exp" name="exp" type="radio" id="interm" value="2-3 years" />
                                <label class="form-check-label" for="interm">2-3 years</label><br />

                                <input class="form-check-input exp" name="exp" type="radio" id="expert" value="3-5 years" />
                                <label class="form-check-label" for="expert">3-5 years</label><br />
                            </div>
                        </div>

                        <%-- CHECKBOX FOR LANGUAGE SPOKEN --%>
                        <div class="form-group col-sm-6 float-end" style="float: right">
                            <label class="font-weight-bold text-center">Profeciency Spoken:<span style="color: red;">*</span></label><br />
                            <div class="form-check">
                                <input class="form-check-input prof" name="prof" type="checkbox" id="eng" value="English" />
                                <label class="form-check-label" for="eng">English</label><br />

                                <input class="form-check-input prof" name="prof" type="checkbox" id="hin" value="Hindi" />
                                <label class="form-check-label" for="hin">Hindi</label><br />

                                <input class="form-check-input prof" name="prof" type="checkbox" id="tamil" value="Tamil" />
                                <label class="form-check-label" for="tamil">Tamil</label><br />
                                <input class="form-check-input prof" name="prof" type="checkbox" id="marathi" value="Marathi" />
                                <label class="form-check-label" for="marathi">Marathi</label><br />
                            </div>
                        </div>

                        <%-- FILE FOR RESUME --%>
                        <div class="form-group">
                            <label class="font-weight-bold text-right col-sm-5">Resume/CV:<span style="color: red">*</span></label>
                            <input type="file" id="resume" class="resume" />
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="submit">Submit</button>
                    <button type="reset" class="btn btn-danger" data-dismiss="modal" id="reset">Reset</button>
                </div>
            </div>
        </div>
    </div>
    <%--<table class="table table-striped border table-hover table-responsive w-auto " id="tableData">
        <thead>
            <tr>
                <th>Sr. No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Age</th>
                <th>Degree</th>
                <th>Project</th>
                <th>Courses Done</th>
                <th>Experience</th>
                <th>Proficiency Spoken</th>
                <th>Resume/CV</th>
                <th class="text-center">Edit</th>
            </tr>
        </thead>
        <tbody>

        </tbody>
    </table>--%>
    <%-- CDN for jQuery --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <%-- CDN for Select2 --%>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
     <%-- CDN for sweetalert2 --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <%-- CDN for fontawesome --%>
    <script src="https://kit.fontawesome.com/c13d76a6e1.js" crossorigin="anonymous"></script>
    <%-- Import table.aspx --%>
    <%--<script src="table.aspx"></script>--%>
    <script>
        // JSON object containing states, cities, and their respective pincodes
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
                placeholder: "Select Course"
            });
            loadDataFromLocal();

            // City dropdown is dependent on state dropdown
            $('#state').on('change', function () {
                debugger
                var state = $(this).val();
                var cities = locations[state];
                $('#city').empty();
                $('#pincode').val('');
                $('#city').append($('<option></option>').val('').html('Select city'));
                $.each(cities, function (city) {
                    $('#city').append($('<option></option>').val(city).html(city));
                });
            });

            // Pincode is dependent on city dropdown
            $('#city').on('change', function () {
                var state = $('#state').val();
                var city = $(this).val();
                var pincode = locations[state][city];
                $('#pincode').val(pincode);
            });

            
        });

        $('.select2').click(function () {
            $('#select2-bap-results')
                .parent()
                .siblings('.select2-search')
                .css('background-color', 'red');
        });

        function age(date) {
            debugger
            date = new Date(date);
            var today = new Date();
            return Math.floor((today - date) / (365.25 * 24 * 60 * 60 * 1000));
            //$('#age').html(age + ' years old');
        }
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

        $("#submit").on('click', function () {
            debugger
            window.event.preventDefault();
            var firstname = $("#fname").val();
            var lastname = $("#lname").val();
            var email = $("#email").val();
            var date = $("#date").val();
            var degree = $("#degree").val();
            var project = $("#project").val();
            var course = $("#course").select2("val");
            var state = $("#state").val();
            var city = $("#city").val();
            var pincode = $("#pincode").val();
            var resume = $("#resume").val();

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
            } else if (state == '' && state == null) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select your state!',
                });
                return false;
            }else if (city == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select city',
                });
                return false;
            }else if (pincode == '') {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Add pincode..',
                });
                return false;
            } else if (!$('.exp').is(':checked')) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Select Your experienece!',
                });
                return false;
            } else if (!$('.prof').is(':checked')) {
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
                    title: 'Form Submitted successfully'
                })
                if ($("#txtId").val() == '') {
                    addDataToLocal();
                }
            }
        });

        $("#reset").click(function () {
            clear();
            return false;
        });

        function addDataToLocal() {
            debugger;
            let localData = localStorage.getItem('localData');
            if (localData) {
                let localArray = JSON.parse(localData);
                const obj = {
                    id: localArray.length + 1,
                    firstname: $("#fname").val(),
                    lastname: $("#lname").val(),
                    email: $("#email").val(),
                    age: age($("#date").val()),
                    date: $("#date").val(),
                    degree: $("#degree").val(),
                    project: $("#project").val(),
                    course: $("#course").select2("val"),
                    state: $("#state").val(),
                    city: $("#city").val(),
                    pincode: $("#pincode").val(),
                    experience: $(".exp:checked").val(),
                    prof: $("input[type='checkbox']:checked").map(function (_,el) {
                        return $(el).val();
                    }).get(),
                    resume: $("#resume").val()
                };
                localArray.push(obj);
                localStorage.setItem('localData', JSON.stringify(localArray));
                loadDataFromLocal();
            } else {
                const arryObj = [];
                const obj = {
                    id: 1,
                    firstname: $("#fname").val(),
                    lastname: $("#lname").val(),
                    email: $("#email").val(),
                    age: age($("#date").val()),
                    date: $("#date").val(),
                    degree: $("#degree").val(),
                    project: $("#project").val(),
                    course: $("#course").select2("val"),
                    state: $("#state").val(),
                    city: $("#city").val(),
                    pincode: $("#pincode").val(),
                    experience: $(".exp:checked").val(),
                    prof: $("input[type='checkbox']:checked").map(function (_, ele) {
                        return $(ele).val();
                    }).get(),
                    resume: $("#resume").val()
                };
                arryObj.push(obj);
                localStorage.setItem('localData', JSON.stringify(arryObj));
                loadDataFromLocal();
            }
            clear();
        }

        function loadDataFromLocal() {
            debugger;
            let localData = localStorage.getItem('localData');
            if (localData) {
                $("#tableData tbody").html("");
                let localArray = JSON.parse(localData);
                let index = 1;
                localArray.forEach(element => {
                    var tabletr = "<tr>";
                    tabletr += "<td> " + index + "</td>";
                    tabletr += "<td class='fname'  data-id=" + element.id + ">" + element.firstname +" "+ element.lastname + "</td>";
                    tabletr += "<td class='email'>" + element.email + "</td>";
                    tabletr += "<td class='age'>" + element.age + "</td>";
                    tabletr += "<td class='date' style='display: none;'>" + element.date + "</td>";
                    tabletr += "<td class='degree'>" + element.degree + "</td>";
                    tabletr += "<td class='project'>" + element.project + "</td>";
                    tabletr += "<td class='course'>" + element.course + "</td>";
                    tabletr += "<td class='state'>" + element.state + "," + element.city + "," + element.pincode + "</td>";
                    tabletr += "<td class='exp'>" + element.experience + "</td>";
                    tabletr += "<td class='prof'>" + element.prof + "</td>";
                    tabletr += "<td class='resume'>" + element.resume + "</td>";
                    tabletr += "    <td class='tdAction text-center col-sm-2'>";
                    tabletr += "        <i class='fa-solid fa-pen-to-square fa-lg edit' data-toggle='modal' data-backdrop='static' data-target='#myModal' style='color: #00c703;'></i>";
                    tabletr += "    </td>";
                    tabletr += "</tr>"
                    $("#tableData tbody").append(tabletr);
                    index++;
                });
            }
        }

        function clear() {
            $("#fname").val("");
            $("#lname").val("");
            $("#email").val("");
            $("#date").val("");
            $("#degree").val("");
            $("#project").val("");
            $("#course").val(null).trigger('change');
            $("#state").val("");
            $("#city").val("");
            $("#pincode").val("");
            $("input[type=checkbox]").prop('checked', false);
            $("input[type=radio]").prop('checked', false);
            $("#resume").val("");
        }
    </script>
</body>
</html>
