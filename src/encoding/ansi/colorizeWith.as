/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package encoding.ansi
{
    /**
     * Colorize a string with an array of ANSI codes.
     * 
     * @param str The string to colorize.
     * @param c An array of ANSI codes.
     * @return A String with ANSI escape codes.
     * 
     * @playerversion AVM 0.4
     * @langversion 3.0
     */
    public function colorizeWith( str:String, c:Array = null ):String
    {
        var s:String = "";
        if( !c )
        {
            c = [];
        }

        if( c.length > 0 )
        {
            for( var i:uint = 0; i < c.length; i++ )
            {
                s += c[i] ? c[i]: "";
            }

            return s + str + controls.reset;
        }

        return str;
    }
}