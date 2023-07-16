# gp-PowerShell
[mslearn1]: https://learn.microsoft.com/en-us/powershell/scripting/developer/help/writing-help-for-windows-powershell-scripts-and-functions?view=powershell-7.3 "Writing Help for PowerShell Scripts and Functions"

PowerShell-based code and documentation.

# Comment-based Help

The comment-based Help found within all code in the repository, will adhere to Microsoft's guidelines for comment-based Help concerning both scripts and functions. For more details, please visit the following [Microsoft Learn documentation][mslearn1]:

## Comment-based Help in Functions

*When the function is in a script or script module, there can't be more than one blank line between the last line of the comment-based help and the Function keyword. Otherwise, Get-Help associates the help with the script, not with the function.* 

**Examples of Help in *Functions*:**

* **Beginning of a Function Body**

  ```powershell
  function MyProcess
  {
      <#
         .Description
         The MyProcess function gets the Windows PowerShell process.
      #>
  
      Get-Process powershell
  }
  ```

* **End of a Function Body**

  ```powershell
  function MyFunction
  {
      Get-Process powershell
  
      <#
         .Description
         The MyProcess function gets the Windows PowerShell process.
      #>
  }
  ```

* **Before the Function Keyword**

  ```powershell
  <#
      .Description
      The MyProcess function gets the Windows PowerShell process.
  #>
  function MyFunction { Get-Process powershell}
  ```

## Comment-based Help in Scripts

*If the first item in the script body (after the Help) is a function declaration, there must be at least two blank lines between the end of the script Help and the function declaration. Otherwise, the Help is interpreted as being Help for the function, not Help for the script.*

**Examples of Help *Scripts***

* **Beginning of a Script**

  ```powershell
  <#
  .Description
  This script performs a series of network connection tests.
  #>
  
  param [string]$ComputerName
  ...
  ```

* **End of a Script**

  ```powershell
  ...
  function Ping { Test-Connection -ComputerName $ComputerName }
  
  <#
  .Description
  This script performs a series of network connection tests.
  #>
  ```





