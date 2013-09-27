!------------------------------------------------------------------------------
!        IST/MARETEC, Water Modelling Group, Mohid modelling system
!------------------------------------------------------------------------------
!
! TITLE         : Higher Order Functions
! DATE          : September 2013
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

program simpleFP
    use MFunctionsFP

    implicit none

    call Main

    contains

    !--------------------------------------------------------------------------

    subroutine Main
        !Local-----------------------------------------------------------------
        integer :: seed, iterations

        !----------------------------------------------------------------------

        print*, "Start number?"
        read*,  seed

        print*, "How many numbers to compute?"
        read*,  iterations

        !------------------------------------------------------------------------

        print*, calc (seed, 0, iterations, sum_values)

    end subroutine Main


    !--------------------------------------------------------------------------

    pure recursive function calc (item, acc, iterations, f) result (calc_result)
        !Arguments-------------------------------------------------------------
        integer, intent(IN) :: acc, item, iterations

        interface
            integer pure function f(a,b)
                integer, intent(IN) :: a, b
            end function f
        end interface
        !Return----------------------------------------------------------------
        integer :: calc_result

        !Local-----------------------------------------------------------------
        integer :: aux

        !----------------------------------------------------------------------

cd1 :   if (iterations .LE. 0.0) then
            calc_result = acc

        else   cd1
            aux         = f (item, acc)

            calc_result =calc (item+1, aux, iterations-1, f)
        end if cd1

    end function calc

    !--------------------------------------------------------------------------

end program simpleFP
