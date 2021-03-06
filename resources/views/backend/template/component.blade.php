@extends('layouts.backend')
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Form advanced</h3>
                </div>

                <div class="title_right">
                    <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for...">
                            <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
                <!-- form input mask -->
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Input Mask</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br/>
                            <form class="form-horizontal form-label-left">

                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Date Mask</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" data-inputmask="'mask': '99/99/9999'">
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Phone mask</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control"
                                               data-inputmask="'mask' : '(999) 999-9999'">
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Custom Mask</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" data-inputmask="'mask': '99-999999'">
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Serial Number</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control"
                                               data-inputmask="'mask' : '****-****-****-****-****-***'">
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">TaxID Mask</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" data-inputmask="'mask' : '99-99999999'">
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">Credit Card Mask</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control"
                                               data-inputmask="'mask' : '9999-9999-9999-9999'">
                                        <span class="fa fa-user form-control-feedback right" aria-hidden="true"></span>
                                    </div>
                                </div>
                                <div class="ln_solid"></div>

                                <div class="form-group">
                                    <div class="col-md-9 col-md-offset-3">
                                        <button type="submit" class="btn btn-primary">Cancel</button>
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <!-- /form input mask -->

                <!-- form color picker -->
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Color Picker</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br/>
                            <form class="form-horizontal form-label-left">

                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Default Input</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="text" class="demo1 form-control" value="#5367ce"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Styled</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <div class="input-group demo2">
                                            <input type="text" value="#e01ab5" class="form-control"/>
                                            <span class="input-group-addon"><i></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Horizontal bar</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control demo colorpicker-element"
                                               data-horizontal="true" id="demo_forceformat" value="#8fff00">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Vertical bar</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <input type="text" class="form-control demo colorpicker-element"
                                               id="demo_forceformat3" value="#8fff00">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Inline picker</label>
                                    <div class="col-md-9 col-sm-9 col-xs-12">
                                        <div class="well">
                                            <div id="demo_cont" class="demo demo-auto inl-bl colorpicker-element"
                                                 data-container="#demo_cont" data-color="rgba(150,216,62,0.55)"
                                                 data-inline="true"></div>
                                            <div class="demo demo-auto inl-bl colorpicker-element" data-container="true"
                                                 data-color="rgb(50,216,62)" data-inline="true"
                                                 style="margin-left:20px;"></div>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <!-- /form color picker -->
            </div>


            <div class="row">
                <div class="col-md-12">

                    <!-- form date pickers -->
                    <div class="x_panel" style="">
                        <div class="x_title">
                            <h2>Date Pickers
                                <small> Required:daterangepicker.js</small>
                            </h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">


                            <div class="well" style="overflow: auto">
                                <div class="col-md-4">
                                    <div id="reportrange_right" class="pull-left"
                                         style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                                        <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                        <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <p>Date Range Picker with opening to right and left</p>
                                </div>
                                <div class="col-md-4">
                                    <div id="reportrange" class="pull-right"
                                         style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                                        <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                        <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                                    </div>
                                </div>
                            </div>


                            <div class="well" style="overflow: auto">
                                <div class="col-md-4">
                                    Date Range Picker
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <div class="input-prepend input-group">
                                                        <span class="add-on input-group-addon"><i
                                                                class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                        <input type="text" style="width: 200px" name="reservation"
                                                               id="reservation" class="form-control"
                                                               value="01/01/2016 - 01/25/2016"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>

                                <div class="col-md-5">
                                    Date and Time
                                    <form class="form-horizontal">
                                        <fieldset>
                                            <div class="control-group">
                                                <div class="controls">
                                                    <div class="input-prepend input-group">
                                                        <span class="add-on input-group-addon"><i
                                                                class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                        <input type="text" name="reservation-time" id="reservation-time"
                                                               class="form-control" value="01/01/2016 - 01/25/2016"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>

                            <div class="row calendar-exibit">
                                <div class="col-md-3">
                                    <div
                                        class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_1 xdisplay">
                                        <div class="calendar left single" style="display: block;">
                                            <div class="daterangepicker_input"><input
                                                    class="input-mini form-control active" type="text"
                                                    name="daterangepicker_start" value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th class="prev available"><i
                                                                class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i>
                                                        </th>
                                                        <th colspan="5" class="month">Oct 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">25</td>
                                                        <td class="off available" data-title="r0c1">26</td>
                                                        <td class="off available" data-title="r0c2">27</td>
                                                        <td class="off available" data-title="r0c3">28</td>
                                                        <td class="off available" data-title="r0c4">29</td>
                                                        <td class="off available" data-title="r0c5">30</td>
                                                        <td class="weekend available" data-title="r0c6">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">2</td>
                                                        <td class="available" data-title="r1c1">3</td>
                                                        <td class="available" data-title="r1c2">4</td>
                                                        <td class="available" data-title="r1c3">5</td>
                                                        <td class="available" data-title="r1c4">6</td>
                                                        <td class="available" data-title="r1c5">7</td>
                                                        <td class="weekend available" data-title="r1c6">8</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">9</td>
                                                        <td class="available" data-title="r2c1">10</td>
                                                        <td class="available" data-title="r2c2">11</td>
                                                        <td class="available" data-title="r2c3">12</td>
                                                        <td class="available" data-title="r2c4">13</td>
                                                        <td class="available" data-title="r2c5">14</td>
                                                        <td class="weekend available" data-title="r2c6">15</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">16</td>
                                                        <td class="available" data-title="r3c1">17</td>
                                                        <td class="today active start-date active end-date available"
                                                            data-title="r3c2">18
                                                        </td>
                                                        <td class="available" data-title="r3c3">19</td>
                                                        <td class="available" data-title="r3c4">20</td>
                                                        <td class="available" data-title="r3c5">21</td>
                                                        <td class="weekend available" data-title="r3c6">22</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">23</td>
                                                        <td class="available" data-title="r4c1">24</td>
                                                        <td class="available" data-title="r4c2">25</td>
                                                        <td class="available" data-title="r4c3">26</td>
                                                        <td class="available" data-title="r4c4">27</td>
                                                        <td class="available" data-title="r4c5">28</td>
                                                        <td class="weekend available" data-title="r4c6">29</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r5c0">30</td>
                                                        <td class="available" data-title="r5c1">31</td>
                                                        <td class="off available" data-title="r5c2">1</td>
                                                        <td class="off available" data-title="r5c3">2</td>
                                                        <td class="off available" data-title="r5c4">3</td>
                                                        <td class="off available" data-title="r5c5">4</td>
                                                        <td class="weekend off available" data-title="r5c6">5</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="calendar right" style="display: none;">
                                            <div class="daterangepicker_input"><input class="input-mini form-control"
                                                                                      type="text"
                                                                                      name="daterangepicker_end"
                                                                                      value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th colspan="5" class="month">Nov 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">30</td>
                                                        <td class="off available" data-title="r0c1">31</td>
                                                        <td class="available" data-title="r0c2">1</td>
                                                        <td class="available" data-title="r0c3">2</td>
                                                        <td class="available" data-title="r0c4">3</td>
                                                        <td class="available" data-title="r0c5">4</td>
                                                        <td class="weekend available" data-title="r0c6">5</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">6</td>
                                                        <td class="available" data-title="r1c1">7</td>
                                                        <td class="available" data-title="r1c2">8</td>
                                                        <td class="available" data-title="r1c3">9</td>
                                                        <td class="available" data-title="r1c4">10</td>
                                                        <td class="available" data-title="r1c5">11</td>
                                                        <td class="weekend available" data-title="r1c6">12</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">13</td>
                                                        <td class="available" data-title="r2c1">14</td>
                                                        <td class="available" data-title="r2c2">15</td>
                                                        <td class="available" data-title="r2c3">16</td>
                                                        <td class="available" data-title="r2c4">17</td>
                                                        <td class="available" data-title="r2c5">18</td>
                                                        <td class="weekend available" data-title="r2c6">19</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">20</td>
                                                        <td class="available" data-title="r3c1">21</td>
                                                        <td class="available" data-title="r3c2">22</td>
                                                        <td class="available" data-title="r3c3">23</td>
                                                        <td class="available" data-title="r3c4">24</td>
                                                        <td class="available" data-title="r3c5">25</td>
                                                        <td class="weekend available" data-title="r3c6">26</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">27</td>
                                                        <td class="available" data-title="r4c1">28</td>
                                                        <td class="available" data-title="r4c2">29</td>
                                                        <td class="available" data-title="r4c3">30</td>
                                                        <td class="off available" data-title="r4c4">1</td>
                                                        <td class="off available" data-title="r4c5">2</td>
                                                        <td class="weekend off available" data-title="r4c6">3</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r5c0">4</td>
                                                        <td class="off available" data-title="r5c1">5</td>
                                                        <td class="off available" data-title="r5c2">6</td>
                                                        <td class="off available" data-title="r5c3">7</td>
                                                        <td class="off available" data-title="r5c4">8</td>
                                                        <td class="off available" data-title="r5c5">9</td>
                                                        <td class="weekend off available" data-title="r5c6">10</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="ranges" style="display: none;">
                                            <div class="range_inputs">
                                                <button class="applyBtn btn btn-sm btn-success" type="button">Apply
                                                </button>
                                                <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <fieldset>
                                        <div class="control-group">
                                            <div class="controls">
                                                <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                    <input type="text" class="form-control has-feedback-left"
                                                           id="single_cal1" placeholder="First Name"
                                                           aria-describedby="inputSuccess2Status">
                                                    <span class="fa fa-calendar-o form-control-feedback left"
                                                          aria-hidden="true"></span>
                                                    <span id="inputSuccess2Status" class="sr-only">(success)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                </div>

                                <div class="col-md-3">
                                    <div
                                        class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_2 xdisplay">
                                        <div class="calendar left single" style="display: block;">
                                            <div class="daterangepicker_input"><input
                                                    class="input-mini form-control active" type="text"
                                                    name="daterangepicker_start" value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th class="prev available"><i
                                                                class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i>
                                                        </th>
                                                        <th colspan="5" class="month">Oct 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">25</td>
                                                        <td class="off available" data-title="r0c1">26</td>
                                                        <td class="off available" data-title="r0c2">27</td>
                                                        <td class="off available" data-title="r0c3">28</td>
                                                        <td class="off available" data-title="r0c4">29</td>
                                                        <td class="off available" data-title="r0c5">30</td>
                                                        <td class="weekend available" data-title="r0c6">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">2</td>
                                                        <td class="available" data-title="r1c1">3</td>
                                                        <td class="available" data-title="r1c2">4</td>
                                                        <td class="available" data-title="r1c3">5</td>
                                                        <td class="available" data-title="r1c4">6</td>
                                                        <td class="available" data-title="r1c5">7</td>
                                                        <td class="weekend available" data-title="r1c6">8</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">9</td>
                                                        <td class="available" data-title="r2c1">10</td>
                                                        <td class="available" data-title="r2c2">11</td>
                                                        <td class="available" data-title="r2c3">12</td>
                                                        <td class="available" data-title="r2c4">13</td>
                                                        <td class="available" data-title="r2c5">14</td>
                                                        <td class="weekend available" data-title="r2c6">15</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">16</td>
                                                        <td class="available" data-title="r3c1">17</td>
                                                        <td class="today active start-date active end-date available"
                                                            data-title="r3c2">18
                                                        </td>
                                                        <td class="available" data-title="r3c3">19</td>
                                                        <td class="available" data-title="r3c4">20</td>
                                                        <td class="available" data-title="r3c5">21</td>
                                                        <td class="weekend available" data-title="r3c6">22</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">23</td>
                                                        <td class="available" data-title="r4c1">24</td>
                                                        <td class="available" data-title="r4c2">25</td>
                                                        <td class="available" data-title="r4c3">26</td>
                                                        <td class="available" data-title="r4c4">27</td>
                                                        <td class="available" data-title="r4c5">28</td>
                                                        <td class="weekend available" data-title="r4c6">29</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r5c0">30</td>
                                                        <td class="available" data-title="r5c1">31</td>
                                                        <td class="off available" data-title="r5c2">1</td>
                                                        <td class="off available" data-title="r5c3">2</td>
                                                        <td class="off available" data-title="r5c4">3</td>
                                                        <td class="off available" data-title="r5c5">4</td>
                                                        <td class="weekend off available" data-title="r5c6">5</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="calendar right" style="display: none;">
                                            <div class="daterangepicker_input"><input class="input-mini form-control"
                                                                                      type="text"
                                                                                      name="daterangepicker_end"
                                                                                      value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th colspan="5" class="month">Nov 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">30</td>
                                                        <td class="off available" data-title="r0c1">31</td>
                                                        <td class="available" data-title="r0c2">1</td>
                                                        <td class="available" data-title="r0c3">2</td>
                                                        <td class="available" data-title="r0c4">3</td>
                                                        <td class="available" data-title="r0c5">4</td>
                                                        <td class="weekend available" data-title="r0c6">5</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">6</td>
                                                        <td class="available" data-title="r1c1">7</td>
                                                        <td class="available" data-title="r1c2">8</td>
                                                        <td class="available" data-title="r1c3">9</td>
                                                        <td class="available" data-title="r1c4">10</td>
                                                        <td class="available" data-title="r1c5">11</td>
                                                        <td class="weekend available" data-title="r1c6">12</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">13</td>
                                                        <td class="available" data-title="r2c1">14</td>
                                                        <td class="available" data-title="r2c2">15</td>
                                                        <td class="available" data-title="r2c3">16</td>
                                                        <td class="available" data-title="r2c4">17</td>
                                                        <td class="available" data-title="r2c5">18</td>
                                                        <td class="weekend available" data-title="r2c6">19</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">20</td>
                                                        <td class="available" data-title="r3c1">21</td>
                                                        <td class="available" data-title="r3c2">22</td>
                                                        <td class="available" data-title="r3c3">23</td>
                                                        <td class="available" data-title="r3c4">24</td>
                                                        <td class="available" data-title="r3c5">25</td>
                                                        <td class="weekend available" data-title="r3c6">26</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">27</td>
                                                        <td class="available" data-title="r4c1">28</td>
                                                        <td class="available" data-title="r4c2">29</td>
                                                        <td class="available" data-title="r4c3">30</td>
                                                        <td class="off available" data-title="r4c4">1</td>
                                                        <td class="off available" data-title="r4c5">2</td>
                                                        <td class="weekend off available" data-title="r4c6">3</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r5c0">4</td>
                                                        <td class="off available" data-title="r5c1">5</td>
                                                        <td class="off available" data-title="r5c2">6</td>
                                                        <td class="off available" data-title="r5c3">7</td>
                                                        <td class="off available" data-title="r5c4">8</td>
                                                        <td class="off available" data-title="r5c5">9</td>
                                                        <td class="weekend off available" data-title="r5c6">10</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="ranges" style="display: none;">
                                            <div class="range_inputs">
                                                <button class="applyBtn btn btn-sm btn-success" type="button">Apply
                                                </button>
                                                <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </div>


                                    <fieldset>
                                        <div class="control-group">
                                            <div class="controls">
                                                <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                    <input type="text" class="form-control has-feedback-left"
                                                           id="single_cal2" placeholder="First Name"
                                                           aria-describedby="inputSuccess2Status2">
                                                    <span class="fa fa-calendar-o form-control-feedback left"
                                                          aria-hidden="true"></span>
                                                    <span id="inputSuccess2Status2" class="sr-only">(success)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>

                                <div class="col-md-3">
                                    <div
                                        class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_3 xdisplay">
                                        <div class="calendar left single" style="display: block;">
                                            <div class="daterangepicker_input"><input
                                                    class="input-mini form-control active" type="text"
                                                    name="daterangepicker_start" value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th class="prev available"><i
                                                                class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i>
                                                        </th>
                                                        <th colspan="5" class="month">Oct 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">25</td>
                                                        <td class="off available" data-title="r0c1">26</td>
                                                        <td class="off available" data-title="r0c2">27</td>
                                                        <td class="off available" data-title="r0c3">28</td>
                                                        <td class="off available" data-title="r0c4">29</td>
                                                        <td class="off available" data-title="r0c5">30</td>
                                                        <td class="weekend available" data-title="r0c6">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">2</td>
                                                        <td class="available" data-title="r1c1">3</td>
                                                        <td class="available" data-title="r1c2">4</td>
                                                        <td class="available" data-title="r1c3">5</td>
                                                        <td class="available" data-title="r1c4">6</td>
                                                        <td class="available" data-title="r1c5">7</td>
                                                        <td class="weekend available" data-title="r1c6">8</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">9</td>
                                                        <td class="available" data-title="r2c1">10</td>
                                                        <td class="available" data-title="r2c2">11</td>
                                                        <td class="available" data-title="r2c3">12</td>
                                                        <td class="available" data-title="r2c4">13</td>
                                                        <td class="available" data-title="r2c5">14</td>
                                                        <td class="weekend available" data-title="r2c6">15</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">16</td>
                                                        <td class="available" data-title="r3c1">17</td>
                                                        <td class="today active start-date active end-date available"
                                                            data-title="r3c2">18
                                                        </td>
                                                        <td class="available" data-title="r3c3">19</td>
                                                        <td class="available" data-title="r3c4">20</td>
                                                        <td class="available" data-title="r3c5">21</td>
                                                        <td class="weekend available" data-title="r3c6">22</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">23</td>
                                                        <td class="available" data-title="r4c1">24</td>
                                                        <td class="available" data-title="r4c2">25</td>
                                                        <td class="available" data-title="r4c3">26</td>
                                                        <td class="available" data-title="r4c4">27</td>
                                                        <td class="available" data-title="r4c5">28</td>
                                                        <td class="weekend available" data-title="r4c6">29</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r5c0">30</td>
                                                        <td class="available" data-title="r5c1">31</td>
                                                        <td class="off available" data-title="r5c2">1</td>
                                                        <td class="off available" data-title="r5c3">2</td>
                                                        <td class="off available" data-title="r5c4">3</td>
                                                        <td class="off available" data-title="r5c5">4</td>
                                                        <td class="weekend off available" data-title="r5c6">5</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="calendar right" style="display: none;">
                                            <div class="daterangepicker_input"><input class="input-mini form-control"
                                                                                      type="text"
                                                                                      name="daterangepicker_end"
                                                                                      value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th colspan="5" class="month">Nov 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">30</td>
                                                        <td class="off available" data-title="r0c1">31</td>
                                                        <td class="available" data-title="r0c2">1</td>
                                                        <td class="available" data-title="r0c3">2</td>
                                                        <td class="available" data-title="r0c4">3</td>
                                                        <td class="available" data-title="r0c5">4</td>
                                                        <td class="weekend available" data-title="r0c6">5</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">6</td>
                                                        <td class="available" data-title="r1c1">7</td>
                                                        <td class="available" data-title="r1c2">8</td>
                                                        <td class="available" data-title="r1c3">9</td>
                                                        <td class="available" data-title="r1c4">10</td>
                                                        <td class="available" data-title="r1c5">11</td>
                                                        <td class="weekend available" data-title="r1c6">12</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">13</td>
                                                        <td class="available" data-title="r2c1">14</td>
                                                        <td class="available" data-title="r2c2">15</td>
                                                        <td class="available" data-title="r2c3">16</td>
                                                        <td class="available" data-title="r2c4">17</td>
                                                        <td class="available" data-title="r2c5">18</td>
                                                        <td class="weekend available" data-title="r2c6">19</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">20</td>
                                                        <td class="available" data-title="r3c1">21</td>
                                                        <td class="available" data-title="r3c2">22</td>
                                                        <td class="available" data-title="r3c3">23</td>
                                                        <td class="available" data-title="r3c4">24</td>
                                                        <td class="available" data-title="r3c5">25</td>
                                                        <td class="weekend available" data-title="r3c6">26</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">27</td>
                                                        <td class="available" data-title="r4c1">28</td>
                                                        <td class="available" data-title="r4c2">29</td>
                                                        <td class="available" data-title="r4c3">30</td>
                                                        <td class="off available" data-title="r4c4">1</td>
                                                        <td class="off available" data-title="r4c5">2</td>
                                                        <td class="weekend off available" data-title="r4c6">3</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r5c0">4</td>
                                                        <td class="off available" data-title="r5c1">5</td>
                                                        <td class="off available" data-title="r5c2">6</td>
                                                        <td class="off available" data-title="r5c3">7</td>
                                                        <td class="off available" data-title="r5c4">8</td>
                                                        <td class="off available" data-title="r5c5">9</td>
                                                        <td class="weekend off available" data-title="r5c6">10</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="ranges" style="display: none;">
                                            <div class="range_inputs">
                                                <button class="applyBtn btn btn-sm btn-success" type="button">Apply
                                                </button>
                                                <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <fieldset>
                                        <div class="control-group">
                                            <div class="controls">
                                                <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                    <input type="text" class="form-control has-feedback-left"
                                                           id="single_cal3" placeholder="First Name"
                                                           aria-describedby="inputSuccess2Status3">
                                                    <span class="fa fa-calendar-o form-control-feedback left"
                                                          aria-hidden="true"></span>
                                                    <span id="inputSuccess2Status3" class="sr-only">(success)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>

                                <div class="col-md-3">
                                    <div
                                        class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_4 xdisplay">
                                        <div class="calendar left single" style="display: block;">
                                            <div class="daterangepicker_input"><input
                                                    class="input-mini form-control active" type="text"
                                                    name="daterangepicker_start" value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th class="prev available"><i
                                                                class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i>
                                                        </th>
                                                        <th colspan="5" class="month">Oct 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">25</td>
                                                        <td class="off available" data-title="r0c1">26</td>
                                                        <td class="off available" data-title="r0c2">27</td>
                                                        <td class="off available" data-title="r0c3">28</td>
                                                        <td class="off available" data-title="r0c4">29</td>
                                                        <td class="off available" data-title="r0c5">30</td>
                                                        <td class="weekend available" data-title="r0c6">1</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">2</td>
                                                        <td class="available" data-title="r1c1">3</td>
                                                        <td class="available" data-title="r1c2">4</td>
                                                        <td class="available" data-title="r1c3">5</td>
                                                        <td class="available" data-title="r1c4">6</td>
                                                        <td class="available" data-title="r1c5">7</td>
                                                        <td class="weekend available" data-title="r1c6">8</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">9</td>
                                                        <td class="available" data-title="r2c1">10</td>
                                                        <td class="available" data-title="r2c2">11</td>
                                                        <td class="available" data-title="r2c3">12</td>
                                                        <td class="available" data-title="r2c4">13</td>
                                                        <td class="available" data-title="r2c5">14</td>
                                                        <td class="weekend available" data-title="r2c6">15</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">16</td>
                                                        <td class="available" data-title="r3c1">17</td>
                                                        <td class="today active start-date active end-date available"
                                                            data-title="r3c2">18
                                                        </td>
                                                        <td class="available" data-title="r3c3">19</td>
                                                        <td class="available" data-title="r3c4">20</td>
                                                        <td class="available" data-title="r3c5">21</td>
                                                        <td class="weekend available" data-title="r3c6">22</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">23</td>
                                                        <td class="available" data-title="r4c1">24</td>
                                                        <td class="available" data-title="r4c2">25</td>
                                                        <td class="available" data-title="r4c3">26</td>
                                                        <td class="available" data-title="r4c4">27</td>
                                                        <td class="available" data-title="r4c5">28</td>
                                                        <td class="weekend available" data-title="r4c6">29</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r5c0">30</td>
                                                        <td class="available" data-title="r5c1">31</td>
                                                        <td class="off available" data-title="r5c2">1</td>
                                                        <td class="off available" data-title="r5c3">2</td>
                                                        <td class="off available" data-title="r5c4">3</td>
                                                        <td class="off available" data-title="r5c5">4</td>
                                                        <td class="weekend off available" data-title="r5c6">5</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="calendar right" style="display: none;">
                                            <div class="daterangepicker_input"><input class="input-mini form-control"
                                                                                      type="text"
                                                                                      name="daterangepicker_end"
                                                                                      value="" style="display: none;"><i
                                                    class="fa fa-calendar glyphicon glyphicon-calendar"
                                                    style="display: none;"></i>
                                                <div class="calendar-time" style="display: none;">
                                                    <div></div>
                                                    <i class="fa fa-clock-o glyphicon glyphicon-time"></i></div>
                                            </div>
                                            <div class="calendar-table">
                                                <table class="table-condensed">
                                                    <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th colspan="5" class="month">Nov 2016</th>
                                                        <th class="next available"><i
                                                                class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i>
                                                        </th>
                                                    </tr>
                                                    <tr>
                                                        <th>Su</th>
                                                        <th>Mo</th>
                                                        <th>Tu</th>
                                                        <th>We</th>
                                                        <th>Th</th>
                                                        <th>Fr</th>
                                                        <th>Sa</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r0c0">30</td>
                                                        <td class="off available" data-title="r0c1">31</td>
                                                        <td class="available" data-title="r0c2">1</td>
                                                        <td class="available" data-title="r0c3">2</td>
                                                        <td class="available" data-title="r0c4">3</td>
                                                        <td class="available" data-title="r0c5">4</td>
                                                        <td class="weekend available" data-title="r0c6">5</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r1c0">6</td>
                                                        <td class="available" data-title="r1c1">7</td>
                                                        <td class="available" data-title="r1c2">8</td>
                                                        <td class="available" data-title="r1c3">9</td>
                                                        <td class="available" data-title="r1c4">10</td>
                                                        <td class="available" data-title="r1c5">11</td>
                                                        <td class="weekend available" data-title="r1c6">12</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r2c0">13</td>
                                                        <td class="available" data-title="r2c1">14</td>
                                                        <td class="available" data-title="r2c2">15</td>
                                                        <td class="available" data-title="r2c3">16</td>
                                                        <td class="available" data-title="r2c4">17</td>
                                                        <td class="available" data-title="r2c5">18</td>
                                                        <td class="weekend available" data-title="r2c6">19</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r3c0">20</td>
                                                        <td class="available" data-title="r3c1">21</td>
                                                        <td class="available" data-title="r3c2">22</td>
                                                        <td class="available" data-title="r3c3">23</td>
                                                        <td class="available" data-title="r3c4">24</td>
                                                        <td class="available" data-title="r3c5">25</td>
                                                        <td class="weekend available" data-title="r3c6">26</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend available" data-title="r4c0">27</td>
                                                        <td class="available" data-title="r4c1">28</td>
                                                        <td class="available" data-title="r4c2">29</td>
                                                        <td class="available" data-title="r4c3">30</td>
                                                        <td class="off available" data-title="r4c4">1</td>
                                                        <td class="off available" data-title="r4c5">2</td>
                                                        <td class="weekend off available" data-title="r4c6">3</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="weekend off available" data-title="r5c0">4</td>
                                                        <td class="off available" data-title="r5c1">5</td>
                                                        <td class="off available" data-title="r5c2">6</td>
                                                        <td class="off available" data-title="r5c3">7</td>
                                                        <td class="off available" data-title="r5c4">8</td>
                                                        <td class="off available" data-title="r5c5">9</td>
                                                        <td class="weekend off available" data-title="r5c6">10</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="ranges" style="display: none;">
                                            <div class="range_inputs">
                                                <button class="applyBtn btn btn-sm btn-success" type="button">Apply
                                                </button>
                                                <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </div>


                                    <fieldset>
                                        <div class="control-group">
                                            <div class="controls">
                                                <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                                    <input type="text" class="form-control has-feedback-left"
                                                           id="single_cal4" placeholder="First Name"
                                                           aria-describedby="inputSuccess2Status4">
                                                    <span class="fa fa-calendar-o form-control-feedback left"
                                                          aria-hidden="true"></span>
                                                    <span id="inputSuccess2Status4" class="sr-only">(success)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- /form datepicker -->


                    <!-- form datetimepicker -->
                    <div class="x_panel" style="">
                        <div class="x_title">
                            <h2>Date Pickers
                                <small> Required: moment-with-locales.js , bootstrap-datetimepicker.min.js </small>
                            </h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">

                            <div class="container">
                                <div class="row">

                                    <div class='col-sm-4'>
                                        Basic Example
                                        <div class="form-group">
                                            <div class='input-group date' id='myDatepicker'>
                                                <input type='text' class="form-control"/>
                                                <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='col-sm-4'>
                                        Only Date Picker
                                        <div class="form-group">
                                            <div class='input-group date' id='myDatepicker2'>
                                                <input type='text' class="form-control"/>
                                                <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='col-sm-4'>
                                        Only Time Picker
                                        <small>For 24H format use format: 'HH:mm'</small>
                                        <div class="form-group">
                                            <div class='input-group date' id='myDatepicker3'>
                                                <input type='text' class="form-control"/>
                                                <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='col-sm-4'>
                                        Using ReadOnly
                                        <div class="form-group">
                                            <div class='input-group date' id='myDatepicker4'>
                                                <input type='text' class="form-control" readonly="readonly"/>
                                                <span class="input-group-addon">
                               <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='col-sm-4'>
                                        Linked Picker Parent
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker6'>
                                                <input type='text' class="form-control"/>
                                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='col-sm-4'>
                                        Linked Picker Children
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker7'>
                                                <input type='text' class="form-control"/>
                                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class='col-sm-4'>
                                        Language
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker8'>
                                                <input type='text' class="form-control"/>
                                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /form datetimepicker -->

                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->

@endsection
@section('form_scripts')
    <script>
        $('#myDatepicker').datetimepicker();

        $('#myDatepicker2').datetimepicker({
            format: 'DD.MM.YYYY'
        });

        $('#myDatepicker3').datetimepicker({
            format: 'hh:mm A'
        });

        $('#myDatepicker4').datetimepicker({
            ignoreReadonly: true,
            allowInputToggle: true
        });

        $('#datetimepicker6').datetimepicker();

        $('#datetimepicker7').datetimepicker({
            useCurrent: false
        });

        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });

        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
        $('#datetimepicker8').datetimepicker({
            locale:'ja',
            format:'LL'
        });
    </script>
@endsection



