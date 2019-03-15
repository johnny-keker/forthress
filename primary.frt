: primary
1 swap ( 1 num )
dup 2 = if drop else
dup 1 = if drop drop 0 else
    2 ( 1 num i )
    repeat
        over over ( 1 num i num i )
        % ( 1 num i res )
        if else
            drop ( 1 num )
            dup ( 1 num num )
            1 - ( 1 num num-1 )
            rot ( num num-1 1 )
            1 - ( num num-1 0 )
            rot rot ( 0 num num-1 )
        endif ( 1 num i )
        1 + ( 1 num i+1 )
        over over ( 1 num i+1 num i+1 )
        = ( 1 num i+1 res )
    until ( 1 num i+1 )
    drop drop ( 1 )
endif endif
1 allot ( res address )
dup ( res addres address )
rot swap ( addres res address )
! ;

: concate ( address2 address1 -- address )
swap
over over ( address2 address1 address2 address1 )
count ( address2 address1 address2 len1 )
swap ( address2 address1 len1 address2 )
count ( address2 address1 len1 len2 )
1 + + allot dup >r swap ( address2 address_res address1 )
over over
string-copy
count +  ( address2 address_res+len1 )
swap ( address_res+len1 address2 )
string-copy
r>
;
