inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread37.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19
  %i.bfv = icmp eq i64 %i.bet, -9223372036854775808 ; 2 uses
  %i.bfw = select i1 %i.bfv, i128 18446744073709551616, i128 0
  %i.bfx = or disjoint i128 %i.bfw, %i.bfu
  store i128 %i.bfx, ptr %1, align 16, !alias.scope !4946, !noalias !4953
  store i8 -128, ptr %i.a, align 16, !alias.scope !4946, !noalias !4953
  br i1 %i.bfv, label %bb.eg, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
end_hunk_0
begin_hunk_1_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.eg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge, %.thread37.i
  %i.bgx = phi ptr [ %i.bfl, %.thread37.i ], [ %.pre217, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bgy = phi i64 [ %i.bft, %.thread37.i ], [ %.pre216, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %.off6457.i = phi i64 [ 1, %.thread37.i ], [ %extract.t61.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bgz = phi ptr [ %i.bes, %.thread37.i ], [ %i.bez, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ] ; 2 uses
  %.off062.i = phi i64 [ 1, %.thread37.i ], [ %extract.t63.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16.i._crit_edge ]
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 16
end_hunk_1
begin_hunk_2_@_RINvXs1l_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !noundef !3
  %.not27 = icmp ne i64 %i.ae, -9223372036854775808 ; 4 uses
  %i.af = select i1 %.not27, i128 18446744073709551616, i128 0
  %i.ag = or disjoint i128 %i.af, %i.ac
  store i128 %i.ag, ptr %1, align 16, !alias.scope !6637
  store i8 -128, ptr %i.c, align 16, !alias.scope !6637
  %extract.t30 = zext i1 %.not27 to i64
  %extract.t = zext i1 %.not27 to i64
  br i1 %.not27, label %bb.g, label %.thread14

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656
end_hunk_2
begin_hunk_3_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.y

.thread55:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  %i.nb = icmp eq i64 %i.mi, 70                   ; 3 uses
  %i.nc = select i1 %i.nb, i128 18446744073709551616, i128 0
  %i.nd = or disjoint i128 %i.nc, %i.mx
  store i128 %i.nd, ptr %1, align 16, !alias.scope !6914, !noalias !6921
  store i8 -128, ptr %i.d, align 16, !alias.scope !6914, !noalias !6921
  %extract.t179 = zext i1 %i.nb to i64
  br i1 %i.nb, label %bb.o, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.m:                                             ; preds = %_RINvXsbj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7OrderByNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
end_hunk_3
begin_hunk_4_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.c, label %.thread, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread
  %.not185 = icmp ne i64 %i.b, -9223372036854775808 ; 4 uses
  %i.ad = select i1 %.not185, i128 18446744073709551617, i128 1
  store i128 %i.ad, ptr %1, align 16, !alias.scope !7688, !noalias !7695
  store i8 -128, ptr %i.d, align 16, !alias.scope !7688, !noalias !7695
  %extract.t188 = zext i1 %.not185 to i64
  %extract.t = zext i1 %.not185 to i64
  br i1 %.not185, label %bb.d, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread72

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7695)
end_hunk_4
begin_hunk_5_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.q

.thread92:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.thread
  %i.mi = icmp eq i64 %i.ld, -9223372036854775808 ; 3 uses
  %i.mj = select i1 %i.mi, i128 18446744073709551616, i128 0
  %i.mk = or disjoint i128 %i.mj, %i.me
  store i128 %i.mk, ptr %1, align 16, !alias.scope !7798, !noalias !7805
  store i8 -128, ptr %i.d, align 16, !alias.scope !7798, !noalias !7805
  %extract.t199 = zext i1 %i.mi to i64
  br i1 %i.mi, label %bb.o, label %bb.p

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14
end_hunk_5
begin_hunk_6_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i27

bb.o:                                             ; preds = %.thread92, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25
  %.off64198 = phi i64 [ %extract.t199, %.thread92 ], [ %extract.t202, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25 ]
  %.off0203 = phi i64 [ 1, %.thread92 ], [ %extract.t204, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !7805, !noalias !7807, !nonnull !3, !noundef !3
end_hunk_6
begin_hunk_7_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ayo = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 2 uses
  %i.ayp = load i64, ptr %i.ayo, align 8, !range !964, !alias.scope !9166, !noalias !9169, !noundef !3 ; 2 uses
  %.not53.i = icmp eq i64 %i.ayp, 44              ; 2 uses
  %i.ayq = select i1 %.not53.i, i128 0, i128 18446744073709551616
  store i128 %i.ayq, ptr %1, align 16, !alias.scope !9211, !noalias !9166
  store i8 -128, ptr %i.a, align 16, !alias.scope !9211, !noalias !9166
  br i1 %.not53.i, label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit17.thread.i, label %bb.ev

.thread24.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
end_hunk_7
begin_hunk_8_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.ev

_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit17.thread.i: ; preds = %bb.et, %.thread27.i
  %.off6454.i = phi i64 [ 0, %.thread27.i ], [ %extract.t58.i, %bb.et ]
  %.off059.i = phi i64 [ 0, %.thread27.i ], [ %extract.t60.i, %bb.et ]
  %i.azx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.azy = load i64, ptr %i.azx, align 8, !range !7, !alias.scope !9166, !noalias !9169, !noundef !3
end_hunk_8
begin_hunk_9_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.ev:                                            ; preds = %._crit_edge, %.thread27.i
  %i.bas = phi ptr [ %i.aye, %.thread27.i ], [ %.pre911, %._crit_edge ] ; 2 uses
  %i.bat = phi i64 [ %i.aym, %.thread27.i ], [ %i.azw, %._crit_edge ]
  %.off6461.i = phi i64 [ 1, %.thread27.i ], [ %extract.t58.i, %._crit_edge ]
  %i.bau = phi ptr [ %i.ayo, %.thread27.i ], [ %i.azr, %._crit_edge ]
  %i.bav = phi i64 [ %i.ayp, %.thread27.i ], [ %i.azs, %._crit_edge ] ; 2 uses
  %i.baw = load i64, ptr %i.bas, align 8, !noalias !9240, !noundef !3
end_hunk_9
begin_hunk_10_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread256:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread
  %.not373 = icmp eq i8 %i.ade, 4                 ; 2 uses
  %i.aef = select i1 %.not373, i128 1, i128 18446744073709551617
  store i128 %i.aef, ptr %1, align 16, !alias.scope !10450
  store i8 -128, ptr %i.c, align 16, !alias.scope !10450
  br i1 %.not373, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.bn:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
end_hunk_10
begin_hunk_11_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdn, i64 1145
  %i.bee = load i8, ptr %i.bed, align 1, !range !1728, !alias.scope !10720, !noalias !10721, !noundef !3 ; 2 uses
  %.not90.i = icmp eq i8 %i.bee, 4                ; 2 uses
  %i.bef = select i1 %.not90.i, i128 0, i128 18446744073709551616
  %i.beg = or disjoint i128 %i.bef, %i.bec
  store i128 %i.beg, ptr %1, align 16, !alias.scope !10722, !noalias !10712
  store i8 -128, ptr %i.c, align 16, !alias.scope !10722, !noalias !10712
  %extract.t96.i = zext nneg i8 %.val.i397 to i64 ; 2 uses
  br i1 %.not90.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.i, label %bb.dd

end_hunk_11
begin_hunk_12_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.dd:                                            ; preds = %_RINvXs7B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.bfs = xor i64 %i.beb, %extract.t96.i
  %i.bft = load i64, ptr %.pre53.i, align 8, !noalias !10745, !noundef !3
  %i.bfu = xor i64 %i.bft, 1
  %i.bfv = zext i64 %i.bfs to i128
  %i.bfw = zext i64 %i.bfu to i128
  %i.bfx = mul nuw i128 %i.bfw, %i.bfv            ; 2 uses
end_hunk_12
begin_hunk_13_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bgm = phi ptr [ %i.beo, %.thread29.i ], [ %.pre53.i, %_RINvXs7B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ] ; 2 uses
  %i.bgn = phi i64 [ %i.bfo, %.thread29.i ], [ %i.beb, %_RINvXs7B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.off0.i = phi i64 [ 1, %.thread29.i ], [ %extract.t96.i, %_RINvXs7B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.off64.i = phi i64 [ %extract.t70.i, %.thread29.i ], [ 0, %_RINvXs7B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.in.i = load i64, ptr %i.bgl, align 8, !range !372, !alias.scope !10720, !noalias !10721, !noundef !3
  %.not98.i = icmp eq i64 %.in.i, 69
  %i.bgo = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_13
begin_hunk_14_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 1088 ; 2 uses
  %i.bjt = load i64, ptr %i.bjs, align 8, !range !409, !alias.scope !10720, !noalias !10721, !noundef !3
  %.not104.i = icmp eq i64 %i.bjt, -9223372036854775787 ; 2 uses
  %i.bju = select i1 %.not104.i, i128 0, i128 18446744073709551616
  store i128 %i.bju, ptr %1, align 16, !alias.scope !10794, !noalias !10712
  store i8 -128, ptr %i.c, align 16, !alias.scope !10794, !noalias !10712
  br i1 %.not104.i, label %.thread44.i, label %bb.dk

_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvXs8p_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15TableSampleUnitNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i
end_hunk_14
begin_hunk_15_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread44.i:                                      ; preds = %bb.di, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.bke = phi ptr [ %i.bjr, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.bhr, %bb.di ] ; 2 uses
  %.off64105.i = phi i64 [ 0, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t109.i, %bb.di ]
  %.off0110.i = phi i64 [ 0, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t111.i, %bb.di ]
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 664 ; 2 uses
  %i.bkg = load i64, ptr %i.bkf, align 8, !range !373, !alias.scope !10720, !noalias !10721, !noundef !3 ; 2 uses
end_hunk_15
begin_hunk_16_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.blh = phi ptr [ %i.bjp, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pre416.a, %._crit_edge412 ]
  %i.bli = phi i64 [ %i.bjq, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.bkd, %._crit_edge412 ]
  %i.blj = phi ptr [ %i.bjr, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.bhr, %._crit_edge412 ] ; 2 uses
  %.off64112.i = phi i64 [ 1, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t109.i, %._crit_edge412 ]
  %i.blk = phi ptr [ %i.bjs, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %i.bjx, %._crit_edge412 ]
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blj, i64 1136
  %i.blm = load i8, ptr %i.bll, align 8, !range !135, !alias.scope !10817, !noalias !10819, !noundef !3
end_hunk_16
begin_hunk_17_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread.i182:                                     ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
  %.not8.i = icmp eq i8 %i.ade, 3                 ; 2 uses
  %i.cml = select i1 %.not8.i, i128 1, i128 18446744073709551617
  store i128 %i.cml, ptr %1, align 16, !alias.scope !11076
  store i8 -128, ptr %i.c, align 16, !alias.scope !11076
  br i1 %.not8.i, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260, label %bb.fu

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge, %.thread256
  %i.cmm = phi ptr [ %i.adw, %.thread256 ], [ %.pre402, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ] ; 2 uses
  %i.cmn = phi i64 [ %i.aee, %.thread256 ], [ %.pre400, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off64374 = phi i64 [ 1, %.thread256 ], [ %extract.t366, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off0377 = phi i64 [ 1, %.thread256 ], [ %extract.t362, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.not379 = icmp eq i8 %i.ade, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11081)
end_hunk_17
begin_hunk_18_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.cnm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cnn = load i64, ptr %i.cnm, align 8, !range !397, !noundef !3 ; 2 uses
  %.not380 = icmp eq i64 %i.cnn, 4                ; 2 uses
  %i.cno = select i1 %.not380, i128 0, i128 18446744073709551616
  store i128 %i.cno, ptr %1, align 16, !alias.scope !11088
  store i8 -128, ptr %i.c, align 16, !alias.scope !11088
  br i1 %.not380, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.fx

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread260: ; preds = %.thread256, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %.thread.i182
  %.off0361 = phi i64 [ %extract.t362, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 1, %.thread.i182 ], [ 1, %.thread256 ]
  %.off64364 = phi i64 [ %extract.t366, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 0, %.thread.i182 ], [ 0, %.thread256 ]
  %i.cnp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cnq = load i64, ptr %i.cnp, align 8, !range !397, !noundef !3 ; 2 uses
  %i.cnr = icmp ne i64 %i.cnq, 4
end_hunk_18
begin_hunk_19_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.fx:                                            ; preds = %._crit_edge, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.cov = phi ptr [ %i.cnk, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre406, %._crit_edge ]
  %i.cow = phi i64 [ %i.cnl, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.coa, %._crit_edge ]
  %.off64381 = phi i64 [ 1, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t385, %._crit_edge ]
  %i.cox = phi ptr [ %i.cnm, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cnu, %._crit_edge ]
  %i.coy = phi i64 [ %i.cnn, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cnv, %._crit_edge ] ; 2 uses
  %i.coz = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_19
begin_hunk_20_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.te, label %.thread338, label %_RINvXsml_NtCs4lawaffTVVK_9sqlparser3astNtB7_10HiveFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread338:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit64.thread
  %.not929 = icmp ne i64 %i.td, 2                 ; 4 uses
  %i.ue = select i1 %.not929, i128 18446744073709551616, i128 0
  %i.uf = or disjoint i128 %i.ue, %i.ud
  store i128 %i.uf, ptr %1, align 16, !alias.scope !13196, !noalias !13203
  store i8 -128, ptr %i.c, align 16, !alias.scope !13196, !noalias !13203
  %extract.t932 = zext i1 %.not929 to i64
  %extract.t = zext i1 %.not929 to i64
  br i1 %.not929, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i294, label %_RINvXsl7_NtCs4lawaffTVVK_9sqlparser3astNtB7_13HiveRowFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.y:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13203)
end_hunk_20
begin_hunk_21_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.at

.thread353:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.add = icmp eq i64 %i.abw, 69                 ; 3 uses
  %i.ade = select i1 %i.add, i128 18446744073709551616, i128 0
  %i.adf = or disjoint i128 %i.ade, %i.acz
  store i128 %i.adf, ptr %1, align 16, !alias.scope !13291, !noalias !13298
  store i8 -128, ptr %i.c, align 16, !alias.scope !13291, !noalias !13298
  %extract.t943 = zext i1 %i.add to i64
  br i1 %i.add, label %bb.ar, label %bb.as

bb.ao:                                            ; preds = %bb.an
end_hunk_21
begin_hunk_22_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvXsjT_NtCs4lawaffTVVK_9sqlparser3astNtB7_10FileFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ar:                                            ; preds = %.thread353, %bb.ap
  %.off64942 = phi i64 [ %extract.t943, %.thread353 ], [ %extract.t946, %bb.ap ]
  %i.aee = phi ptr [ %i.abv, %.thread353 ], [ %i.acc, %bb.ap ]
  %.off0947 = phi i64 [ 1, %.thread353 ], [ %extract.t948, %bb.ap ]
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
end_hunk_22
begin_hunk_23_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread368:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit62.thread
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ajp = load i64, ptr %i.ajo, align 8, !range !4, !noundef !3
  %.not948 = icmp ne i64 %i.ajp, -9223372036854775808 ; 3 uses
  %i.ajq = select i1 %.not948, i128 18446744073709551616, i128 0
  %i.ajr = or disjoint i128 %i.ajq, %i.ajn
  store i128 %i.ajr, ptr %1, align 16, !alias.scope !13360
  store i8 -128, ptr %i.c, align 16, !alias.scope !13360
  %extract.t954 = zext i1 %.not948 to i64
  br i1 %.not948, label %._crit_edge650, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit58_crit_edge

bb.bc:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13365)
end_hunk_23
begin_hunk_24_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.akr, label %._crit_edge650, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit58_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit58_crit_edge: ; preds = %.thread368, %bb.bf
  %.off64954 = phi i64 [ %extract.t954, %.thread368 ], [ %extract.t958.a, %bb.bf ]
  %.off0961 = phi i64 [ 0, %.thread368 ], [ %extract.t962, %bb.bf ]
  %.phi.trans.insert655 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre656 = load i64, ptr %.phi.trans.insert655, align 8, !alias.scope !13377
end_hunk_24
begin_hunk_25_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i306, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit56
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.aur = load i64, ptr %i.auq, align 8, !range !4, !noundef !3
  %.not961 = icmp ne i64 %i.aur, -9223372036854775808 ; 4 uses
  %i.aus = select i1 %.not961, i128 18446744073709551616, i128 0
  store i128 %i.aus, ptr %1, align 16, !alias.scope !13483
  store i8 -128, ptr %i.c, align 16, !alias.scope !13483
  %extract.t963 = zext i1 %.not961 to i64
  %extract.t969 = zext i1 %.not961 to i64
  br i1 %.not961, label %bb.bw, label %.thread402

_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsCi_NtCs4lawaffTVVK_9sqlparser3astNtB7_23CreateTableLikeDefaultsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i301
  %i.aut = phi i128 [ %.sink.i.i303, %_RINvXsCi_NtCs4lawaffTVVK_9sqlparser3astNtB7_23CreateTableLikeDefaultsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.atb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i301 ] ; 5 uses
end_hunk_25
begin_hunk_26_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.aux, label %bb.bw, label %.thread402

.thread402:                                       ; preds = %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bu
  %.off64964 = phi i64 [ %extract.t963, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t968, %bb.bu ]
  %.off0969 = phi i64 [ 0, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t970, %bb.bu ]
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.avc = load i64, ptr %i.avb, align 8, !range !89, !noundef !3 ; 2 uses
end_hunk_26
begin_hunk_27_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.bx

bb.bw:                                            ; preds = %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bu
  %.off64971 = phi i64 [ %extract.t969, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t975, %bb.bu ]
  %.off0976 = phi i64 [ 0, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t977.a, %bb.bu ]
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %.val100395 = load ptr, ptr %i.awd, align 8, !nonnull !3, !noundef !3
end_hunk_27
begin_hunk_28_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread415:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.bbr = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.bbs = load i64, ptr %i.bbr, align 8, !range !4, !noundef !3
  %.not975 = icmp ne i64 %i.bbs, -9223372036854775808 ; 3 uses
  %i.bbt = select i1 %.not975, i128 18446744073709551616, i128 0
  %i.bbu = or disjoint i128 %i.bbt, %i.bbq
  store i128 %i.bbu, ptr %1, align 16, !alias.scope !13540
  store i8 -128, ptr %i.c, align 16, !alias.scope !13540
  %extract.t977 = zext i1 %.not975 to i64
  br i1 %.not975, label %bb.ci, label %.thread417

bb.ce:                                            ; preds = %bb.cd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13545)
end_hunk_28
begin_hunk_29_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.bcv, label %bb.ci, label %.thread417

.thread417:                                       ; preds = %.thread415, %bb.ch
  %.off64980 = phi i64 [ %extract.t977, %.thread415 ], [ %extract.t984, %bb.ch ]
  %.off0985 = phi i64 [ 0, %.thread415 ], [ %extract.t986, %bb.ch ]
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bda = load ptr, ptr %i.bcz, align 8, !align !65, !noundef !3 ; 2 uses
end_hunk_29
begin_hunk_30_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.cr

.thread422:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit42
  %i.bgs = icmp eq i64 %i.bfl, 69                 ; 3 uses
  %i.bgt = select i1 %i.bgs, i128 18446744073709551616, i128 0
  %i.bgu = or disjoint i128 %i.bgt, %i.bgo
  store i128 %i.bgu, ptr %1, align 16, !alias.scope !13571, !noalias !13578
  store i8 -128, ptr %i.c, align 16, !alias.scope !13571, !noalias !13578
  %extract.t983 = zext i1 %i.bgs to i64
  br i1 %i.bgs, label %bb.cp, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
end_hunk_30
begin_hunk_31_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit309

bb.cp:                                            ; preds = %.thread422, %bb.cn
  %.off64987 = phi i64 [ %extract.t983, %.thread422 ], [ %extract.t991, %bb.cn ]
  %i.bhw = phi ptr [ %i.bfk, %.thread422 ], [ %i.bfr, %bb.cn ] ; 2 uses
  %.off0992 = phi i64 [ 1, %.thread422 ], [ %extract.t993, %bb.cn ]
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 16
end_hunk_31
begin_hunk_32_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.in604.in = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %.in604 = load i64, ptr %.in604.in, align 8, !range !4, !noundef !3
  %.not605 = icmp eq i64 %.in604, -9223372036854775808 ; 2 uses
  %i.cey = select i1 %.not605, i128 0, i128 18446744073709551616
  %i.cez = or disjoint i128 %i.cey, %i.cex        ; 2 uses
  store i128 %i.cez, ptr %1, align 16, !alias.scope !13790
  store i8 -128, ptr %i.c, align 16, !alias.scope !13790
  %extract.t858 = trunc nuw i128 %i.cex to i64
  br i1 %.not605, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22, label %bb.ds

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit24: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26, %.thread484
end_hunk_32
begin_hunk_33_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22: ; preds = %.thread483, %.thread489
  %i.cin = phi ptr [ %i.cev, %.thread483 ], [ %.pre673, %.thread489 ]
  %i.cio = phi i64 [ %i.cew, %.thread483 ], [ %storemerge.i.i149, %.thread489 ]
  %.off0853 = phi i64 [ %extract.t858, %.thread483 ], [ %extract.t855, %.thread489 ]
  %.off64856 = phi i64 [ 0, %.thread483 ], [ 255, %.thread489 ]
  %i.cip = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %.in609 = load i64, ptr %i.cip, align 8, !range !4, !noundef !3
  %i.ciq = icmp ne i64 %.in609, -9223372036854775808 ; 2 uses
end_hunk_33
begin_hunk_34_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.in634.in = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %.in634 = load i64, ptr %.in634.in, align 8, !range !4, !noundef !3
  %.not635 = icmp eq i64 %.in634, -9223372036854775808 ; 2 uses
  %i.dfw = select i1 %.not635, i128 0, i128 18446744073709551616
  %i.dfx = or disjoint i128 %i.dfw, %i.dfv
  store i128 %i.dfx, ptr %1, align 16, !alias.scope !14045
  store i8 -128, ptr %i.c, align 16, !alias.scope !14045
  %extract.t906 = trunc nuw nsw i128 %i.dfv to i64
  br i1 %.not635, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, label %bb.fu

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread538._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge, %.thread547
end_hunk_34
begin_hunk_35_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %.thread546, %.thread553
  %i.dji = phi ptr [ %i.dft, %.thread546 ], [ %.pre700, %.thread553 ]
  %i.djj = phi i64 [ %i.dfu, %.thread546 ], [ %storemerge.i.i241, %.thread553 ]
  %.off0901 = phi i64 [ %extract.t906, %.thread546 ], [ %extract.t903, %.thread553 ]
  %.off64904 = phi i64 [ 0, %.thread546 ], [ %extract.t908, %.thread553 ]
  %i.djk = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %.in637 = load i64, ptr %i.djk, align 8, !range !4, !noundef !3
  %i.djl = icmp ne i64 %.in637, -9223372036854775808 ; 2 uses
end_hunk_35
begin_hunk_36_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread563:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.dli = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.dlj = load i8, ptr %i.dli, align 8, !range !120, !noundef !3 ; 2 uses
  %.not999 = icmp ne i8 %i.dlj, 2                 ; 4 uses
  %i.dlk = select i1 %.not999, i128 18446744073709551616, i128 0
  %i.dll = or disjoint i128 %i.dlk, %i.dlh
  store i128 %i.dll, ptr %1, align 16, !alias.scope !14103
  store i8 -128, ptr %i.c, align 16, !alias.scope !14103
  %extract.t1002 = zext i1 %.not999 to i64
  %extract.t1010 = zext i1 %.not999 to i64
  br i1 %.not999, label %bb.gg, label %..thread567_crit_edge

bb.gc:                                            ; preds = %._crit_edge701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14108)
end_hunk_36
begin_hunk_37_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %.not1023, label %..thread567_crit_edge, label %bb.gg

..thread567_crit_edge:                            ; preds = %.thread563, %bb.gf
  %.off641007 = phi i64 [ %extract.t1002, %.thread563 ], [ %extract.t1011, %bb.gf ]
  %.off01012 = phi i64 [ %i.dks, %.thread563 ], [ %extract.t1014, %bb.gf ]
  %.phi.trans.insert706 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre707 = load i64, ptr %.phi.trans.insert706, align 8, !alias.scope !14120
end_hunk_37
begin_hunk_38_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.thread567

bb.gg:                                            ; preds = %.thread563, %bb.gf
  %.off641015 = phi i64 [ %extract.t1010, %.thread563 ], [ %extract.t1019, %bb.gf ]
  %i.dni = phi i8 [ %i.dlj, %.thread563 ], [ %i.dml, %bb.gf ]
  %.off01020 = phi i64 [ %i.dks, %.thread563 ], [ %extract.t1022, %bb.gf ]
  %i.dnj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_38
begin_hunk_39_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread86:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 2686
  %i.nh = load i8, ptr %i.ng, align 2, !range !852, !noundef !3 ; 2 uses
  %.not227 = icmp ne i8 %i.nh, 3                  ; 4 uses
  %i.ni = select i1 %.not227, i128 18446744073709551616, i128 0
  %i.nj = or disjoint i128 %i.ni, %i.nf
  store i128 %i.nj, ptr %1, align 16, !alias.scope !15040
  store i8 -128, ptr %i.c, align 16, !alias.scope !15040
  %extract.t230 = zext i1 %.not227 to i64
  %extract.t = zext i1 %.not227 to i64
  br i1 %.not227, label %bb.ac, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15045)
end_hunk_39
begin_hunk_40_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 2687
  %i.qa = load i8, ptr %.in, align 1, !range !852, !noundef !3 ; 2 uses
  %.not137 = icmp eq i8 %i.qa, 3                  ; 2 uses
  %i.qb = select i1 %.not137, i128 0, i128 18446744073709551616
  %i.qc = or disjoint i128 %i.qb, %i.pz
  store i128 %i.qc, ptr %1, align 16, !alias.scope !15057
  store i8 -128, ptr %i.c, align 16, !alias.scope !15057
  %extract.t191 = trunc nuw nsw i128 %i.pz to i64
  br i1 %.not137, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, label %bb.ad

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge, %.thread92
end_hunk_40
begin_hunk_41_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.rj = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.rg, %bb.ad ] ; 3 uses
  %i.rk = load i64, ptr %0, align 8, !range !312, !noundef !3 ; 3 uses
  %.not143 = icmp eq i64 %i.rk, 3                 ; 2 uses
  %i.rl = select i1 %.not143, i128 0, i128 18446744073709551616
  %i.rm = or disjoint i128 %i.rl, %i.rj
  store i128 %i.rm, ptr %1, align 16, !alias.scope !15090
  store i8 -128, ptr %i.c, align 16, !alias.scope !15090
  %extract.t199 = trunc nuw nsw i128 %i.rj to i64
  br i1 %.not143, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.af

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %.thread91, %.thread100
  %i.rn = phi ptr [ %i.px, %.thread91 ], [ %i.qd, %.thread100 ] ; 2 uses
  %i.ro = phi i64 [ %i.py, %.thread91 ], [ %i.qq, %.thread100 ]
  %.off0186 = phi i64 [ %extract.t191, %.thread91 ], [ 1, %.thread100 ]
  %.off64189 = phi i64 [ 0, %.thread91 ], [ %extract.t193, %.thread100 ]
  %i.rp = load i64, ptr %0, align 8, !range !312, !noundef !3 ; 3 uses
  %i.rq = icmp ne i64 %i.rp, 3                    ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_41
begin_hunk_42_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread99, %.thread108
  %i.yg = phi ptr [ %i.rh, %.thread99 ], [ %.pre159, %.thread108 ]
  %i.yh = phi i64 [ %i.ri, %.thread99 ], [ %i.xf, %.thread108 ]
  %.off0194 = phi i64 [ %extract.t199, %.thread99 ], [ %extract.t196, %.thread108 ]
  %.off64197 = phi i64 [ 0, %.thread99 ], [ 255, %.thread108 ]
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  %.in147 = load i64, ptr %i.yi, align 8, !range !4, !noundef !3
  %i.yj = icmp ne i64 %.in147, -9223372036854775808 ; 2 uses
end_hunk_42
begin_hunk_43_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread118:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.aah = load i64, ptr %i.aag, align 8, !range !4, !noundef !3
  %.not245 = icmp ne i64 %i.aah, -9223372036854775808 ; 4 uses
  %i.aai = select i1 %.not245, i128 18446744073709551616, i128 0
  %i.aaj = or disjoint i128 %i.aai, %i.aaf
  store i128 %i.aaj, ptr %1, align 16, !alias.scope !15182
  store i8 -128, ptr %i.c, align 16, !alias.scope !15182
  %extract.t248 = zext i1 %.not245 to i64
  %extract.t256 = zext i1 %.not245 to i64
  br i1 %.not245, label %bb.bf, label %.thread123

bb.ba:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15187)
end_hunk_43
begin_hunk_44_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.abk, label %bb.bf, label %.thread123

.thread123:                                       ; preds = %.thread118, %bb.bd
  %.off64247 = phi i64 [ %extract.t248, %.thread118 ], [ %extract.t251, %bb.bd ]
  %.off0252 = phi i64 [ %i.zq, %.thread118 ], [ %extract.t254, %bb.bd ]
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.abp = load i64, ptr %i.abo, align 8, !range !4, !noundef !3
end_hunk_44
begin_hunk_45_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.bg

bb.bf:                                            ; preds = %.thread118, %bb.bd
  %.off64255 = phi i64 [ %extract.t256, %.thread118 ], [ %extract.t259, %bb.bd ]
  %.off0260 = phi i64 [ %i.zq, %.thread118 ], [ %extract.t262, %bb.bd ]
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.acv = load ptr, ptr %i.acu, align 8, !nonnull !3, !noundef !3
end_hunk_45
begin_hunk_46_@_RINvXs9B_NtCs4lawaffTVVK_9sqlparser3astNtB7_11IfStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.o

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %.not38 = icmp ne i64 %i.cm, 69                 ; 3 uses
  %i.dq = select i1 %.not38, i128 18446744073709551617, i128 1
  store i128 %i.dq, ptr %1, align 16, !alias.scope !15947, !noalias !15954
  store i8 -128, ptr %i.c, align 16, !alias.scope !15947, !noalias !15954
  %extract.t41 = zext i1 %.not38 to i64
  br i1 %.not38, label %bb.l, label %.thread23

bb.j:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15954)
end_hunk_46
begin_hunk_47_@_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.eo = zext nneg i8 %i.du to i128
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eq = load i64, ptr %i.ep, align 8, !range !4, !noundef !3
  %.not81 = icmp ne i64 %i.eq, -9223372036854775808 ; 3 uses
  %i.er = select i1 %.not81, i128 18446744073709551616, i128 0
  %i.es = or disjoint i128 %i.er, %i.eo
  store i128 %i.es, ptr %1, align 16, !alias.scope !17043
  store i8 -128, ptr %i.d, align 16, !alias.scope !17043
  %extract.t87 = zext i1 %.not81 to i64
  %extract.t92 = zext nneg i8 %i.du to i64
  br i1 %.not81, label %._crit_edge, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

_RINvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_optionsNtB6_15KeyValueOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.et = zext nneg i8 %i.du to i128
end_hunk_47
begin_hunk_48_@_RINvXs9r_NtCs4lawaffTVVK_9sqlparser3astNtB7_13CaseStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.bj, label %.thread, label %bb.l

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread
  %.not28 = icmp ne i64 %i.bi, 69                 ; 3 uses
  %i.ck = select i1 %.not28, i128 18446744073709551617, i128 1
  store i128 %i.ck, ptr %1, align 16, !alias.scope !17255, !noalias !17262
  store i8 -128, ptr %i.c, align 16, !alias.scope !17255, !noalias !17262
  %extract.t31 = zext i1 %.not28 to i64
  br i1 %.not28, label %bb.j, label %.thread16

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17262)
end_hunk_48
begin_hunk_49_@_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.hkv, label %bb.ra, label %bb.rb

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, %.thread804
  %2 = phi ptr [ %i.hjk, %.thread804 ], [ %.pre1712, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %.pre1710.sink.off64 = phi i64 [ %i.hjl, %.thread804 ], [ %.pre1711, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %.off01945 = phi i64 [ %extract.t2414, %.thread804 ], [ %extract.t2413, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hlc = phi i64 [ 0, %.thread804 ], [ %extract.t2416, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hld = phi i64 [ %i.hjs, %.thread804 ], [ %i.hkr, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hle = phi i1 [ %i.hjr, %.thread804 ], [ %i.hkq, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hlf = xor i64 %.off01945, %.pre1710.sink.off64
  %i.hlg = load i64, ptr %2, align 8, !noalias !21879, !noundef !3
  %i.hlh = xor i64 %i.hlg, %i.hlc
  %i.hli = zext i64 %i.hlf to i128
  %i.hlj = zext i64 %i.hlh to i128
  %i.hlk = mul nuw i128 %i.hlj, %i.hli            ; 2 uses
end_hunk_49
begin_hunk_50_@_RINvXsit_NtCs4lawaffTVVK_9sqlparser3astNtB7_8FunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread29:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %i.gg = load i64, ptr %0, align 8, !range !1163, !noundef !3 ; 2 uses
  %.not62 = icmp ne i64 %i.gg, 5                  ; 3 uses
  %i.gh = select i1 %.not62, i128 18446744073709551616, i128 0
  %i.gi = or disjoint i128 %i.gh, %i.gf
  store i128 %i.gi, ptr %1, align 16, !alias.scope !24957
  store i8 -128, ptr %i.c, align 16, !alias.scope !24957
  %extract.t = zext i1 %.not62 to i64
  br i1 %.not62, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24962)
end_hunk_50
begin_hunk_51_@_RINvXswc_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread13:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.ad = load i64, ptr %0, align 8, !range !311, !noundef !3 ; 2 uses
  %.not31 = icmp ne i64 %i.ad, -9223372036854775807 ; 4 uses
  %i.ae = select i1 %.not31, i128 18446744073709551616, i128 0
  store i128 %i.ae, ptr %1, align 16, !alias.scope !27814
  store i8 -128, ptr %i.d, align 16, !alias.scope !27814
  %extract.t34 = zext i1 %.not31 to i64
  %extract.t = zext i1 %.not31 to i64
  br i1 %.not31, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27819)
end_hunk_51
begin_hunk_52_@_RINvXsxu_NtCs4lawaffTVVK_9sqlparser3astNtB7_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %_RINvXsp4_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ShowStatementInClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i, %.thread16.i
  %i.cm = phi i64 [ %i.bs, %.thread16.i ], [ %i.ao, %_RINvXsp4_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ShowStatementInClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.off0.i.a = phi i64 [ %i.br, %.thread16.i ], [ %i.av, %_RINvXsp4_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ShowStatementInClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.off64.i = phi i64 [ 1, %.thread16.i ], [ %extract.t48.i, %_RINvXsp4_NtCs4lawaffTVVK_9sqlparser3astNtB7_21ShowStatementInClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ]
  %.not54 = icmp eq i64 %i.b, -9223372036854775808
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = xor i64 %.off64.i, %.off0.i.a
  %i.cp = zext i64 %i.co to i128
  %i.cq = zext i64 %i.cm to i128
  %i.cr = mul nuw i128 %i.cp, %i.cq               ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = xor i128 %i.cs, %i.cr
  %i.cu = trunc i128 %i.ct to i64
end_hunk_52
