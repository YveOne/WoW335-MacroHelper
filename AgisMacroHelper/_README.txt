
Helpful commands for your macros.

-------------------------------------------------------

Sometimes you cannot use a trinket via macro. This happens when when
you try to use a spell or something else right after the trinket.

Here is an example how to fix this:
---------------------------
#showtooltip Flash Heal
/use 14
/used 14
/cast Flash Heal
---------------------------

The /used command will create a little lag that you wont even recognize.
That tiny lag let us use the trinket!

-------------------------------------------------------

Tired of getting errors because a spell is not ready for reuse?
Here is what you can do:
---------------------------
#showtooltip Flash Heal
/errors off
/use 14
/used 14
/cast Flash Heal
/errors on
---------------------------

This way you can toggle the error messages and sounds.
Instead of /errors you can also use /err

-------------------------------------------------------
