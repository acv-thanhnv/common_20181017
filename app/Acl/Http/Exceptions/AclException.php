<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 10/17/2018
 * Time: 3:06 PM
 */

namespace App\Acl\Http\Exceptions;


use Illuminate\Validation\ValidationException;

class AclException extends ValidationException
{
    public function __construct()
    {
        //nothing to do
    }

    public function errors()
    {
        return trans('acl_not_access');
    }
}
