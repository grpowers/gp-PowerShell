function Write-ErrorBlock {
    <#
        .SYNOPSIS
        PowerShell error handling made easy to read and understand.

        .DESCRIPTION
        PowerShell error handling made easy to read and understand.
        -Exit switch to close the script/session with 1 as the Exit Code.

        .PARAMETER Exit
        Exits the script/session with 1 as the Exit Code.

        .INPUTS
        None. You can't pipe objects to Write-ErrorBlock.

        .OUTPUTS
        System.Management.Automation.ErrorRecord. Returns the most recent error object.

        .EXAMPLE
        PS C:\>
            try {
            Get-Item -Path C:\foo\fakefile.txt -ErrorAction Stop
        }catch {
            Write-ErrorBlock
        }

        Error Type:
        System.Management.Automation.ErrorRecord


        Error Position:
        At line:2 char:5


        Error Line:
        Get-Item -Path C:\foo\fakefile.txt -ErrorAction Stop


        Error Message:
        Cannot find path 'C:\foo\fakefile.txt' because it does not exist.
    #>

    param([switch]$Exit)

    if ($Exit) {
        Write-Output "Error Type:"
        Write-Output $PSItem.GetType().FullName; Write-Output `n

        Write-Output "Error Position:"
        Write-Output $PSItem.InvocationInfo.PositionMessage.Split("+")[0].Trim(); Write-Output `n

        Write-Output "Error Line:"
        Write-Output $PSItem.InvocationInfo.Line.Trim(); Write-Output `n

        Write-Output "Error Message:"
        Write-Output $PSItem.Exception.Message; Write-Output `n

        Start-Sleep -Seconds 5

        EXIT 1
    }
    else {
        Write-Output "Error Type:"
        Write-Output $PSItem.GetType().FullName; Write-Output `n

        Write-Output "Error Position:"
        Write-Output $PSItem.InvocationInfo.PositionMessage.Split("+")[0].Trim(); Write-Output `n

        Write-Output "Error Line:"
        Write-Output $PSItem.InvocationInfo.Line.Trim(); Write-Output `n

        Write-Output "Error Message:"
        Write-Output $PSItem.Exception.Message; Write-Output `n

        Start-Sleep -Seconds 5 
    }
}