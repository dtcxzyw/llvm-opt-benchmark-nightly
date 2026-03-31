begin_hunk_0

bb.co:                                            ; preds = %bb.cn
  %i.uk = ashr exact i64 %i.ue, 3                 ; 4 uses
  %78 = icmp sgt i64 %i.uk, 1152921504606846972
  br i1 %78, label %bb.cp, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #31
end_hunk_0
