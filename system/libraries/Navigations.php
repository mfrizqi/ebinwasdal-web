<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


// ------------------------------------------------------------------------
class CI_Navigations
{
    /**
     * CodeIgniter Instance
     * @access private
     */    
    private $ci;
    // --------------------------------------------------------------------
    /**
     * Constructor
     * @access	public
     */
    public function __construct()
    {
        $this->ci =& get_instance();
        #$this->generate();
    }
    /**
     * Generate Navigations Array
     * @access	public
     */    
    public function generate()
    {
        $this->ci->load->view("navigation/main");
    }

    public function header()
    {
    	$this->ci->load->view("navigation/header");
    } 
}
