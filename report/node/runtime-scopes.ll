begin_hunk_0_@_ZN2v88internal28Runtime_DeclareModuleExportsEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit19
  %i.ek = load i64, ptr %.0.i.i21, align 8
  %i.el = add i64 %i.ek, -1
  %i.em = inttoptr i64 %i.el to ptr
  %4 = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %sext = add i64 %.058.i.in.in, -4294967296
  %i.en = ashr i64 %sext, 32
  %i.eo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.en
  %i.ep = load atomic volatile i64, ptr %i.eo monotonic, align 8 ; 4 uses
  %i.eq = add i64 %i.ep, 7                        ; 3 uses
  %i.er = inttoptr i64 %i.eq to ptr
end_hunk_0
