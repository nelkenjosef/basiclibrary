<?php

// no direct access to this file
defined('_JEXEC') or die('Restricted access');

jimport('joomla.installer.installer');
jimport('joomla.installer.helper');

class com_basiclibraryInstallerScript
{
	/**
	 * constructor
	 *
	 * @param JAdapterInstance $adapter the object responsible for running this script
	 */
	public function __construct(JAdapterInstance $adapter)
	{
		
	}

	/**
	 * called before any type of action
	 *
	 * @param string $route which action is happening (install/uninstall/discover_install/update)
	 * @param JAdapterInstance $adapter the object responsible for running this script
	 *
	 * @return boolean true on success
	 */
	public function preflight($route, JAdapterInstance $adapter)
	{

	}

	/**
	 * called after any type of action
	 *
	 * @param string $route which action is happening (install/uninstall/discover_install/update)
	 * @param JAdapterInstance $adapter the object responsible for running this script
	 *
	 * @return boolean true on success
	 */
	#public function postflight($route, JAdapterInstance $adapter);

	/**
	 * called on installation
	 *
	 * @param JAdapterInstance $adapter the object responsible for running this script
	 *
	 * @return boolean true on success
	 */
	public function install(JAdapterInstance $adapter)
	{
		echo JText::_('COM_BASICLIBRARY_INSTALL_SUCCESSFULL');
	}

	/**
	 * called on update
	 *
	 * @param JAdapterInstance $adapter the object responsible for running this script
	 *
	 * @return boolean true on success
	 */
	public function update(JAdapterInstance $adapter)
	{
		echo JText::_('COM_BASICLIBRARY_UPDATE_SUCCESSFULL');
	}

	/**
	 * called on uninstallation
	 *
	 * @param JAdapterInstance $adapter the object responsible for running this script
	 */
	public function uninstall(JAdapterInstance $adapter)
	{

	}

}
