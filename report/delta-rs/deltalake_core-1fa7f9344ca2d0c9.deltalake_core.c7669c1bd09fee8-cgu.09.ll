inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread37.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19
  %i.bfo = icmp eq i64 %i.bem, -9223372036854775808 ; 2 uses
  %i.bfp = select i1 %i.bfo, i128 18446744073709551616, i128 0 ; 2 uses
  %i.bfq = or disjoint i128 %i.bfp, %i.bfn
  store i128 %i.bfq, ptr %1, align 16, !alias.scope !17242, !noalias !17249
  store i8 -128, ptr %i.a, align 16, !alias.scope !17242, !noalias !17249
  %extract58.i = lshr exact i128 %i.bfp, 64
  %extract.t59.i = trunc nuw nsw i128 %extract58.i to i64
  br i1 %i.bfo, label %bb.eg, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
end_hunk_0
begin_hunk_1_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.eg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, %.thread37.i
  %i.bgq = phi ptr [ %i.bfe, %.thread37.i ], [ %.pre216, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bgr = phi i64 [ %i.bfm, %.thread37.i ], [ %.pre215, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %.off6457.i = phi i64 [ %extract.t59.i, %.thread37.i ], [ %extract.t61.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bgs = phi ptr [ %i.bel, %.thread37.i ], [ %i.bes, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ] ; 2 uses
  %.off062.i = phi i64 [ 1, %.thread37.i ], [ %extract.t63.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 16
end_hunk_1
