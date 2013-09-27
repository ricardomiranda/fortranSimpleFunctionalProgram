!------------------------------------------------------------------------------
!        IST/MARETEC, Water Modelling Group, Mohid modelling system
!------------------------------------------------------------------------------
!
! TITLE         : Higher Order Functions
! DATE          : July 2013
! REVISION      : Ricardo Miranda
! DESCRIPTION   : Example Functional Programing in Fortran
!
!------------------------------------------------------------------------------
!
!This program is free software; you can redistribute it and/or
!modify it under the terms of the GNU General Public License 
!version 2, as published by the Free Software Foundation.
!
!This program is distributed in the hope that it will be useful,
!but WITHOUT ANY WARRANTY; without even the implied warranty of
!MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!GNU General Public License for more details.
!
!You should have received a copy of the GNU General Public License
!along with this program; if not, write to the Free Software
!Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
!
!------------------------------------------------------------------------------
 
module MFunctionsFP

    implicit none

    contains
    
    !--------------------------------------------------------------------------
    
    pure function sum_values (a, b)
        !Arguments-------------------------------------------------------------         
        integer, intent(IN) :: a,b
        
        !Return-----------------------------------------------------------------
        integer :: sum_values

        !----------------------------------------------------------------------

        sum_values = a + b
	
        !----------------------------------------------------------------------

    end function sum_values

    !--------------------------------------------------------------------------

end module MFunctionsFP
