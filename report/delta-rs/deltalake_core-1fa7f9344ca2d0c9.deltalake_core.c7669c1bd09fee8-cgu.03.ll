inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RINvXs1l_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_20AlterPolicyOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ae = load i64, ptr %i.ad, align 8, !range !849, !noundef !3
  %.not27 = icmp ne i64 %i.ae, -9223372036854775808 ; 4 uses
  %i.af = select i1 %.not27, i128 18446744073709551616, i128 0
  %i.ag = or disjoint i128 %i.af, %i.ac
  store i128 %i.ag, ptr %1, align 16, !alias.scope !3955
  store i8 -128, ptr %i.c, align 16, !alias.scope !3955
  %extract.t30 = zext i1 %.not27 to i64
  %extract.t = zext i1 %.not27 to i64
  br i1 %.not27, label %bb.g, label %.thread14

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656
end_hunk_0
begin_hunk_1_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.co, label %.thread62, label %_RINvXsbj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7OrderByNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread62:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10.thread
  %.not198 = icmp ne i64 %i.cn, -9223372036854775808 ; 3 uses
  %i.dp = select i1 %.not198, i128 18446744073709551616, i128 0
  %i.dq = or disjoint i128 %i.dp, %i.do
  store i128 %i.dq, ptr %1, align 16, !alias.scope !4149, !noalias !4156
  store i8 -128, ptr %i.d, align 16, !alias.scope !4149, !noalias !4156
  %extract.t201 = zext i1 %.not198 to i64
  br i1 %.not198, label %bb.i, label %bb.n

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4158)
end_hunk_1
begin_hunk_2_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.ah

.thread81:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8
  %i.nc = icmp eq i64 %i.mj, 70                   ; 3 uses
  %i.nd = select i1 %i.nc, i128 18446744073709551616, i128 0
  %i.ne = or disjoint i128 %i.nd, %i.my
  store i128 %i.ne, ptr %1, align 16, !alias.scope !4263, !noalias !4270
  store i8 -128, ptr %i.d, align 16, !alias.scope !4263, !noalias !4270
  %extract.t208 = zext i1 %i.nc to i64
  br i1 %i.nc, label %bb.x, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.v:                                             ; preds = %_RINvXsbj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_7OrderByNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge
end_hunk_2
begin_hunk_3_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.c, label %.thread, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread
  %.not263 = icmp ne i64 %i.b, -9223372036854775808 ; 4 uses
  %i.ad = select i1 %.not263, i128 18446744073709551617, i128 1
  store i128 %i.ad, ptr %1, align 16, !alias.scope !5066, !noalias !5073
  store i8 -128, ptr %i.d, align 16, !alias.scope !5066, !noalias !5073
  %extract.t266 = zext i1 %.not263 to i64
  %extract.t = zext i1 %.not263 to i64
  br i1 %.not263, label %bb.d, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread96

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5073)
end_hunk_3
begin_hunk_4_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.q

.thread116:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14.thread
  %i.mi = icmp eq i64 %i.ld, -9223372036854775808 ; 3 uses
  %i.mj = select i1 %i.mi, i128 18446744073709551616, i128 0
  %i.mk = or disjoint i128 %i.mj, %i.me
  store i128 %i.mk, ptr %1, align 16, !alias.scope !5176, !noalias !5183
  store i8 -128, ptr %i.d, align 16, !alias.scope !5176, !noalias !5183
  %extract.t277 = zext i1 %i.mi to i64
  br i1 %i.mi, label %bb.o, label %bb.p

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14
end_hunk_4
begin_hunk_5_@_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i27

bb.o:                                             ; preds = %.thread116, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25
  %.off64276 = phi i64 [ %extract.t277, %.thread116 ], [ %extract.t280, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25 ]
  %.off0281 = phi i64 [ 1, %.thread116 ], [ %extract.t282, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i25 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.nn = load ptr, ptr %i.nm, align 8, !alias.scope !5183, !noalias !5185, !nonnull !3, !noundef !3
end_hunk_5
begin_hunk_6_@_RINvXs4n_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.km, label %.thread44, label %_RINvXs4R_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_16RenameSelectItemNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread44:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.lp = icmp eq i64 %i.kl, -9223372036854775808 ; 3 uses
  %i.lq = select i1 %i.lp, i128 18446744073709551616, i128 0
  %i.lr = or disjoint i128 %i.lq, %i.lo
  store i128 %i.lr, ptr %1, align 16, !alias.scope !6612, !noalias !6619
  store i8 -128, ptr %i.c, align 16, !alias.scope !6612, !noalias !6619
  %extract.t64 = zext i1 %i.lp to i64
  br i1 %i.lp, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.y
end_hunk_6
begin_hunk_7_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ayo = getelementptr inbounds nuw i8, ptr %.tr, i64 112 ; 2 uses
  %i.ayp = load i64, ptr %i.ayo, align 8, !range !1424, !alias.scope !7288, !noalias !7291, !noundef !3 ; 2 uses
  %.not53.i = icmp eq i64 %i.ayp, 44              ; 2 uses
  %i.ayq = select i1 %.not53.i, i128 0, i128 18446744073709551616
  store i128 %i.ayq, ptr %1, align 16, !alias.scope !7333, !noalias !7288
  store i8 -128, ptr %i.a, align 16, !alias.scope !7333, !noalias !7288
  br i1 %.not53.i, label %_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit17.thread.i, label %bb.ev

.thread24.i:                                      ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
end_hunk_7
begin_hunk_8_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.ev

_RINvXsL_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB6_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit17.thread.i: ; preds = %bb.et, %.thread27.i
  %.off6454.i = phi i64 [ 0, %.thread27.i ], [ %extract.t58.i, %bb.et ]
  %.off059.i = phi i64 [ 0, %.thread27.i ], [ %extract.t60.i, %bb.et ]
  %i.azx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.azy = load i64, ptr %i.azx, align 8, !range !491, !alias.scope !7288, !noalias !7291, !noundef !3
end_hunk_8
begin_hunk_9_@_RINvXs6N_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.ev:                                            ; preds = %._crit_edge, %.thread27.i
  %i.bas = phi ptr [ %i.aye, %.thread27.i ], [ %.pre911, %._crit_edge ] ; 2 uses
  %i.bat = phi i64 [ %i.aym, %.thread27.i ], [ %i.azw, %._crit_edge ]
  %.off6461.i = phi i64 [ 1, %.thread27.i ], [ %extract.t58.i, %._crit_edge ]
  %i.bau = phi ptr [ %i.ayo, %.thread27.i ], [ %i.azr, %._crit_edge ]
  %i.bav = phi i64 [ %i.ayp, %.thread27.i ], [ %i.azs, %._crit_edge ] ; 2 uses
  %i.baw = load i64, ptr %i.bas, align 8, !noalias !7362, !noundef !3
end_hunk_9
begin_hunk_10_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread213:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26.thread
  %.not361 = icmp eq i8 %i.aja, 4                 ; 2 uses
  %i.aka = select i1 %.not361, i128 1, i128 18446744073709551617
  store i128 %i.aka, ptr %1, align 16, !alias.scope !8910
  store i8 -128, ptr %i.c, align 16, !alias.scope !8910
  br i1 %.not361, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.cr:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
end_hunk_10
begin_hunk_11_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread.i:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread.i
  %.not8.i = icmp eq i8 %i.aja, 3                 ; 2 uses
  %i.bwn = select i1 %.not8.i, i128 1, i128 18446744073709551617
  store i128 %i.bwn, ptr %1, align 16, !alias.scope !9245
  store i8 -128, ptr %i.c, align 16, !alias.scope !9245
  br i1 %.not8.i, label %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217, label %bb.fx

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge, %.thread213
  %i.bwo = phi ptr [ %i.ajr, %.thread213 ], [ %.pre390, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ] ; 2 uses
  %i.bwp = phi i64 [ %i.ajz, %.thread213 ], [ %.pre, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off64362 = phi i64 [ 1, %.thread213 ], [ %extract.t354, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.off0365 = phi i64 [ 1, %.thread213 ], [ %extract.t350, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i_crit_edge ]
  %.not367 = icmp eq i8 %i.aja, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9250)
end_hunk_11
begin_hunk_12_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bxo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bxp = load i64, ptr %i.bxo, align 8, !range !836, !noundef !3 ; 2 uses
  %.not368 = icmp eq i64 %i.bxp, 4                ; 2 uses
  %i.bxq = select i1 %.not368, i128 0, i128 18446744073709551616
  store i128 %i.bxq, ptr %1, align 16, !alias.scope !9257
  store i8 -128, ptr %i.c, align 16, !alias.scope !9257
  br i1 %.not368, label %_RINvXs9d_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_14AfterMatchSkipNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ga

_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread217: ; preds = %.thread213, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i, %.thread.i
  %.off0349 = phi i64 [ %extract.t350, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 1, %.thread.i ], [ 1, %.thread213 ]
  %.off64352 = phi i64 [ %extract.t354, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.i ], [ 0, %.thread.i ], [ 0, %.thread213 ]
  %i.bxr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bxs = load i64, ptr %i.bxr, align 8, !range !836, !noundef !3 ; 2 uses
  %i.bxt = icmp ne i64 %i.bxs, 4
end_hunk_12
begin_hunk_13_@_RINvXs77_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableFactorNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.ga:                                            ; preds = %._crit_edge, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.byx = phi ptr [ %i.bxm, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre394, %._crit_edge ]
  %i.byy = phi i64 [ %i.bxn, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.byc, %._crit_edge ]
  %.off64369 = phi i64 [ 1, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t373, %._crit_edge ]
  %i.byz = phi ptr [ %i.bxo, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bxw, %._crit_edge ]
  %i.bza = phi i64 [ %i.bxp, %_RINvXs93_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12RowsPerMatchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bxx, %._crit_edge ] ; 2 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_13
begin_hunk_14_@_RINvXs7r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableSampleNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.v = zext nneg i8 %.val to i128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1145
  %i.x = load i8, ptr %i.w, align 1, !range !5460, !noundef !3 ; 2 uses
  %.not90 = icmp ne i8 %i.x, 4                    ; 4 uses
  %i.y = select i1 %.not90, i128 18446744073709551616, i128 0
  %i.z = or disjoint i128 %i.y, %i.v
  store i128 %i.z, ptr %1, align 16, !alias.scope !11742
  store i8 -128, ptr %i.b, align 16, !alias.scope !11742
  %extract.t93 = zext i1 %.not90 to i64
  %extract.t96 = zext nneg i8 %.val to i64
  %extract.t = zext i1 %.not90 to i64
  %extract.t102 = zext nneg i8 %.val to i64
  br i1 %.not90, label %bb.c, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge

_RINvXs7B_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.aa = zext nneg i8 %.val to i128
end_hunk_14
begin_hunk_15_@_RINvXs7r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableSampleNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !range !1105, !noundef !3
  %.not104 = icmp ne i64 %i.fd, -9223372036854775787 ; 4 uses
  %i.fe = select i1 %.not104, i128 18446744073709551616, i128 0
  store i128 %i.fe, ptr %1, align 16, !alias.scope !11802
  store i8 -128, ptr %i.b, align 16, !alias.scope !11802
  %extract.t106 = zext i1 %.not104 to i64
  %extract.t112 = zext i1 %.not104 to i64
  br i1 %.not104, label %bb.j, label %.thread44

_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs8p_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15TableSampleUnitNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.ff = phi i128 [ %.sink.i19, %_RINvXs8p_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_15TableSampleUnitNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.do, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ] ; 5 uses
end_hunk_15
begin_hunk_16_@_RINvXs7r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableSampleNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.fj, label %bb.j, label %.thread44

.thread44:                                        ; preds = %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.h
  %.off64105 = phi i64 [ %extract.t106, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t109, %bb.h ]
  %.off0110 = phi i64 [ 0, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t111, %bb.h ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !1087, !noundef !3 ; 2 uses
end_hunk_16
begin_hunk_17_@_RINvXs7r_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_11TableSampleNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.k

bb.j:                                             ; preds = %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.h
  %.off64112 = phi i64 [ %extract.t112, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t116.a, %bb.h ]
  %i.gp = phi ptr [ %i.fc, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.fh, %bb.h ]
  %.off0117 = phi i64 [ 0, %_RINvXs7L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_19TableSampleQuantityNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t118, %bb.h ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1136
end_hunk_17
begin_hunk_18_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.te, label %.thread339, label %_RINvXsml_NtCs4lawaffTVVK_9sqlparser3astNtB7_10HiveFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

.thread339:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit64.thread
  %.not936 = icmp ne i64 %i.td, 2                 ; 4 uses
  %i.ue = select i1 %.not936, i128 18446744073709551616, i128 0
  %i.uf = or disjoint i128 %i.ue, %i.ud
  store i128 %i.uf, ptr %1, align 16, !alias.scope !12133, !noalias !12140
  store i8 -128, ptr %i.c, align 16, !alias.scope !12133, !noalias !12140
  %extract.t939 = zext i1 %.not936 to i64
  %extract.t = zext i1 %.not936 to i64
  br i1 %.not936, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i289, label %_RINvXsl7_NtCs4lawaffTVVK_9sqlparser3astNtB7_13HiveRowFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.y:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12140)
end_hunk_18
begin_hunk_19_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.at

.thread354:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.add = icmp eq i64 %i.abw, 69                 ; 3 uses
  %i.ade = select i1 %i.add, i128 18446744073709551616, i128 0
  %i.adf = or disjoint i128 %i.ade, %i.acz
  store i128 %i.adf, ptr %1, align 16, !alias.scope !12228, !noalias !12235
  store i8 -128, ptr %i.c, align 16, !alias.scope !12228, !noalias !12235
  %extract.t950 = zext i1 %i.add to i64
  br i1 %i.add, label %bb.ar, label %bb.as

bb.ao:                                            ; preds = %bb.an
end_hunk_19
begin_hunk_20_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RINvXsjT_NtCs4lawaffTVVK_9sqlparser3astNtB7_10FileFormatNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ar:                                            ; preds = %.thread354, %bb.ap
  %.off64949 = phi i64 [ %extract.t950, %.thread354 ], [ %extract.t953, %bb.ap ]
  %i.aee = phi ptr [ %i.abv, %.thread354 ], [ %i.acc, %bb.ap ]
  %.off0954 = phi i64 [ 1, %.thread354 ], [ %extract.t955, %bb.ap ]
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
end_hunk_20
begin_hunk_21_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread369:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit62.thread
  %i.ajo = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ajp = load i64, ptr %i.ajo, align 8, !range !849, !noundef !3
  %.not955 = icmp ne i64 %i.ajp, -9223372036854775808 ; 3 uses
  %i.ajq = select i1 %.not955, i128 18446744073709551616, i128 0
  %i.ajr = or disjoint i128 %i.ajq, %i.ajn
  store i128 %i.ajr, ptr %1, align 16, !alias.scope !12297
  store i8 -128, ptr %i.c, align 16, !alias.scope !12297
  %extract.t961 = zext i1 %.not955 to i64
  br i1 %.not955, label %._crit_edge657, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit58_crit_edge

bb.bc:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12302)
end_hunk_21
begin_hunk_22_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.akr, label %._crit_edge657, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit58_crit_edge

._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit58_crit_edge: ; preds = %.thread369, %bb.bf
  %.off64961 = phi i64 [ %extract.t961, %.thread369 ], [ %extract.t965.a, %bb.bf ]
  %.off0968 = phi i64 [ 0, %.thread369 ], [ %extract.t969, %bb.bf ]
  %.phi.trans.insert662 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre663 = load i64, ptr %.phi.trans.insert662, align 8, !alias.scope !12314
end_hunk_22
begin_hunk_23_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i301, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit56
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.aur = load i64, ptr %i.auq, align 8, !range !849, !noundef !3
  %.not968 = icmp ne i64 %i.aur, -9223372036854775808 ; 4 uses
  %i.aus = select i1 %.not968, i128 18446744073709551616, i128 0
  store i128 %i.aus, ptr %1, align 16, !alias.scope !12420
  store i8 -128, ptr %i.c, align 16, !alias.scope !12420
  %extract.t970 = zext i1 %.not968 to i64
  %extract.t976 = zext i1 %.not968 to i64
  br i1 %.not968, label %bb.bw, label %.thread403

_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXsCi_NtCs4lawaffTVVK_9sqlparser3astNtB7_23CreateTableLikeDefaultsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i296
  %i.aut = phi i128 [ %.sink.i.i298, %_RINvXsCi_NtCs4lawaffTVVK_9sqlparser3astNtB7_23CreateTableLikeDefaultsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.atb, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i296 ] ; 5 uses
end_hunk_23
begin_hunk_24_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.aux, label %bb.bw, label %.thread403

.thread403:                                       ; preds = %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bu
  %.off64971 = phi i64 [ %extract.t970, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t975, %bb.bu ]
  %.off0976 = phi i64 [ 0, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t977, %bb.bu ]
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.avc = load i64, ptr %i.avb, align 8, !range !924, !noundef !3 ; 2 uses
end_hunk_24
begin_hunk_25_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.bx

bb.bw:                                            ; preds = %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.bu
  %.off64978 = phi i64 [ %extract.t976, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t982, %bb.bu ]
  %.off0983 = phi i64 [ 0, %_RINvXsCs_NtCs4lawaffTVVK_9sqlparser3astNtB7_15CreateTableLikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %extract.t984.a, %bb.bu ]
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %.val100396 = load ptr, ptr %i.awd, align 8, !nonnull !3, !noundef !3
end_hunk_25
begin_hunk_26_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread416:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit48
  %i.bbr = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.bbs = load i64, ptr %i.bbr, align 8, !range !849, !noundef !3
  %.not982 = icmp ne i64 %i.bbs, -9223372036854775808 ; 3 uses
  %i.bbt = select i1 %.not982, i128 18446744073709551616, i128 0
  %i.bbu = or disjoint i128 %i.bbt, %i.bbq
  store i128 %i.bbu, ptr %1, align 16, !alias.scope !12477
  store i8 -128, ptr %i.c, align 16, !alias.scope !12477
  %extract.t984 = zext i1 %.not982 to i64
  br i1 %.not982, label %bb.ci, label %.thread418

bb.ce:                                            ; preds = %bb.cd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12482)
end_hunk_26
begin_hunk_27_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.bcv, label %bb.ci, label %.thread418

.thread418:                                       ; preds = %.thread416, %bb.ch
  %.off64987 = phi i64 [ %extract.t984, %.thread416 ], [ %extract.t991, %bb.ch ]
  %.off0992 = phi i64 [ 0, %.thread416 ], [ %extract.t993, %bb.ch ]
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bda = load ptr, ptr %i.bcz, align 8, !align !100, !noundef !3 ; 2 uses
end_hunk_27
begin_hunk_28_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.cr

.thread423:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit42
  %i.bgs = icmp eq i64 %i.bfl, 69                 ; 3 uses
  %i.bgt = select i1 %i.bgs, i128 18446744073709551616, i128 0
  %i.bgu = or disjoint i128 %i.bgt, %i.bgo
  store i128 %i.bgu, ptr %1, align 16, !alias.scope !12508, !noalias !12515
  store i8 -128, ptr %i.c, align 16, !alias.scope !12508, !noalias !12515
  %extract.t990 = zext i1 %i.bgs to i64
  br i1 %i.bgs, label %bb.cp, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
end_hunk_28
begin_hunk_29_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit304

bb.cp:                                            ; preds = %.thread423, %bb.cn
  %.off64994 = phi i64 [ %extract.t990, %.thread423 ], [ %extract.t998, %bb.cn ]
  %i.bhw = phi ptr [ %i.bfk, %.thread423 ], [ %i.bfr, %bb.cn ] ; 2 uses
  %.off0999 = phi i64 [ 1, %.thread423 ], [ %extract.t1000, %bb.cn ]
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 16
end_hunk_29
begin_hunk_30_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.in611.in = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %.in611 = load i64, ptr %.in611.in, align 8, !range !849, !noundef !3
  %.not612 = icmp eq i64 %.in611, -9223372036854775808 ; 2 uses
  %i.cey = select i1 %.not612, i128 0, i128 18446744073709551616
  %i.cez = or disjoint i128 %i.cey, %i.cex        ; 2 uses
  store i128 %i.cez, ptr %1, align 16, !alias.scope !12728
  store i8 -128, ptr %i.c, align 16, !alias.scope !12728
  %extract.t865 = trunc nuw i128 %i.cex to i64
  br i1 %.not612, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22, label %bb.ds

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit24: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit26, %.thread490
end_hunk_30
begin_hunk_31_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit22: ; preds = %.thread489, %.thread495
  %i.cin = phi ptr [ %i.cev, %.thread489 ], [ %.pre680, %.thread495 ]
  %i.cio = phi i64 [ %i.cew, %.thread489 ], [ %storemerge.i.i145, %.thread495 ]
  %.off0860 = phi i64 [ %extract.t865, %.thread489 ], [ %extract.t862, %.thread495 ]
  %.off64863 = phi i64 [ 0, %.thread489 ], [ 255, %.thread495 ]
  %i.cip = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %.in616 = load i64, ptr %i.cip, align 8, !range !849, !noundef !3
  %i.ciq = icmp ne i64 %.in616, -9223372036854775808 ; 2 uses
end_hunk_31
begin_hunk_32_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.in641.in = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %.in641 = load i64, ptr %.in641.in, align 8, !range !849, !noundef !3
  %.not642 = icmp eq i64 %.in641, -9223372036854775808 ; 2 uses
  %i.dfw = select i1 %.not642, i128 0, i128 18446744073709551616
  %i.dfx = or disjoint i128 %i.dfw, %i.dfv
  store i128 %i.dfx, ptr %1, align 16, !alias.scope !12983
  store i8 -128, ptr %i.c, align 16, !alias.scope !12983
  %extract.t913 = trunc nuw nsw i128 %i.dfv to i64
  br i1 %.not642, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, label %bb.fu

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread544._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6_crit_edge, %.thread553
end_hunk_32
begin_hunk_33_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4: ; preds = %.thread552, %.thread559
  %i.dji = phi ptr [ %i.dft, %.thread552 ], [ %.pre707, %.thread559 ]
  %i.djj = phi i64 [ %i.dfu, %.thread552 ], [ %storemerge.i.i237, %.thread559 ]
  %.off0908 = phi i64 [ %extract.t913, %.thread552 ], [ %extract.t910, %.thread559 ]
  %.off64911 = phi i64 [ 0, %.thread552 ], [ %extract.t915, %.thread559 ]
  %i.djk = getelementptr inbounds nuw i8, ptr %0, i64 2112 ; 2 uses
  %.in644 = load i64, ptr %i.djk, align 8, !range !849, !noundef !3
  %i.djl = icmp ne i64 %.in644, -9223372036854775808 ; 2 uses
end_hunk_33
begin_hunk_34_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread569:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.dli = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.dlj = load i8, ptr %i.dli, align 8, !range !2907, !noundef !3 ; 2 uses
  %.not1006 = icmp ne i8 %i.dlj, 2                ; 4 uses
  %i.dlk = select i1 %.not1006, i128 18446744073709551616, i128 0
  %i.dll = or disjoint i128 %i.dlk, %i.dlh
  store i128 %i.dll, ptr %1, align 16, !alias.scope !13041
  store i8 -128, ptr %i.c, align 16, !alias.scope !13041
  %extract.t1009 = zext i1 %.not1006 to i64
  %extract.t1017 = zext i1 %.not1006 to i64
  br i1 %.not1006, label %bb.gg, label %..thread573_crit_edge

bb.gc:                                            ; preds = %._crit_edge708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13046)
end_hunk_34
begin_hunk_35_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %.not1030, label %..thread573_crit_edge, label %bb.gg

..thread573_crit_edge:                            ; preds = %.thread569, %bb.gf
  %.off641014 = phi i64 [ %extract.t1009, %.thread569 ], [ %extract.t1018, %bb.gf ]
  %.off01019 = phi i64 [ %i.dks, %.thread569 ], [ %extract.t1021, %bb.gf ]
  %.phi.trans.insert713 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre714 = load i64, ptr %.phi.trans.insert713, align 8, !alias.scope !13058
end_hunk_35
begin_hunk_36_@_RINvXs8C_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_11CreateTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.thread573

bb.gg:                                            ; preds = %.thread569, %bb.gf
  %.off641022 = phi i64 [ %extract.t1017, %.thread569 ], [ %extract.t1026, %bb.gf ]
  %i.dni = phi i8 [ %i.dlj, %.thread569 ], [ %i.dml, %bb.gf ]
  %.off01027 = phi i64 [ %i.dks, %.thread569 ], [ %extract.t1029, %bb.gf ]
  %i.dnj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
end_hunk_36
begin_hunk_37_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread86:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit14
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 2686
  %i.nh = load i8, ptr %i.ng, align 2, !range !2716, !noundef !3 ; 2 uses
  %.not227 = icmp ne i8 %i.nh, 3                  ; 4 uses
  %i.ni = select i1 %.not227, i128 18446744073709551616, i128 0
  %i.nj = or disjoint i128 %i.ni, %i.nf
  store i128 %i.nj, ptr %1, align 16, !alias.scope !14103
  store i8 -128, ptr %i.c, align 16, !alias.scope !14103
  %extract.t230 = zext i1 %.not227 to i64
  %extract.t = zext i1 %.not227 to i64
  br i1 %.not227, label %bb.ac, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14108)
end_hunk_37
begin_hunk_38_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 2687
  %i.qa = load i8, ptr %.in, align 1, !range !2716, !noundef !3 ; 2 uses
  %.not137 = icmp eq i8 %i.qa, 3                  ; 2 uses
  %i.qb = select i1 %.not137, i128 0, i128 18446744073709551616
  %i.qc = or disjoint i128 %i.qb, %i.pz
  store i128 %i.qc, ptr %1, align 16, !alias.scope !14120
  store i8 -128, ptr %i.c, align 16, !alias.scope !14120
  %extract.t191 = trunc nuw nsw i128 %i.pz to i64
  br i1 %.not137, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8, label %bb.ad

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10_crit_edge, %.thread92
end_hunk_38
begin_hunk_39_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.rj = phi i128 [ 0, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit10 ], [ %i.rg, %bb.ad ] ; 3 uses
  %i.rk = load i64, ptr %0, align 8, !range !853, !noundef !3 ; 3 uses
  %.not143 = icmp eq i64 %i.rk, 3                 ; 2 uses
  %i.rl = select i1 %.not143, i128 0, i128 18446744073709551616
  %i.rm = or disjoint i128 %i.rl, %i.rj
  store i128 %i.rm, ptr %1, align 16, !alias.scope !14153
  store i8 -128, ptr %i.c, align 16, !alias.scope !14153
  %extract.t199 = trunc nuw nsw i128 %i.rj to i64
  br i1 %.not143, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6, label %bb.af

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit8: ; preds = %.thread91, %.thread100
  %i.rn = phi ptr [ %i.px, %.thread91 ], [ %i.qd, %.thread100 ] ; 2 uses
  %i.ro = phi i64 [ %i.py, %.thread91 ], [ %i.qq, %.thread100 ]
  %.off0186 = phi i64 [ %extract.t191, %.thread91 ], [ 1, %.thread100 ]
  %.off64189 = phi i64 [ 0, %.thread91 ], [ %extract.t193, %.thread100 ]
  %i.rp = load i64, ptr %0, align 8, !range !853, !noundef !3 ; 3 uses
  %i.rq = icmp ne i64 %i.rp, 3                    ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_39
begin_hunk_40_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit6: ; preds = %.thread99, %.thread108
  %i.yg = phi ptr [ %i.rh, %.thread99 ], [ %.pre159, %.thread108 ]
  %i.yh = phi i64 [ %i.ri, %.thread99 ], [ %i.xf, %.thread108 ]
  %.off0194 = phi i64 [ %extract.t199, %.thread99 ], [ %extract.t196, %.thread108 ]
  %.off64197 = phi i64 [ 0, %.thread99 ], [ 255, %.thread108 ]
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  %.in147 = load i64, ptr %i.yi, align 8, !range !849, !noundef !3
  %i.yj = icmp ne i64 %.in147, -9223372036854775808 ; 2 uses
end_hunk_40
begin_hunk_41_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
.thread118:                                       ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.aah = load i64, ptr %i.aag, align 8, !range !849, !noundef !3
  %.not245 = icmp ne i64 %i.aah, -9223372036854775808 ; 4 uses
  %i.aai = select i1 %.not245, i128 18446744073709551616, i128 0
  %i.aaj = or disjoint i128 %i.aai, %i.aaf
  store i128 %i.aaj, ptr %1, align 16, !alias.scope !14245
  store i8 -128, ptr %i.c, align 16, !alias.scope !14245
  %extract.t248 = zext i1 %.not245 to i64
  %extract.t256 = zext i1 %.not245 to i64
  br i1 %.not245, label %bb.bf, label %.thread123

bb.ba:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14250)
end_hunk_41
begin_hunk_42_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.abk, label %bb.bf, label %.thread123

.thread123:                                       ; preds = %.thread118, %bb.bd
  %.off64247 = phi i64 [ %extract.t248, %.thread118 ], [ %extract.t251, %bb.bd ]
  %.off0252 = phi i64 [ %i.zq, %.thread118 ], [ %extract.t254, %bb.bd ]
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.abp = load i64, ptr %i.abo, align 8, !range !849, !noundef !3
end_hunk_42
begin_hunk_43_@_RINvXs8W_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_14CreateFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.bg

bb.bf:                                            ; preds = %.thread118, %bb.bd
  %.off64255 = phi i64 [ %extract.t256, %.thread118 ], [ %extract.t259, %bb.bd ]
  %.off0260 = phi i64 [ %i.zq, %.thread118 ], [ %extract.t262, %bb.bd ]
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.acv = load ptr, ptr %i.acu, align 8, !nonnull !3, !noundef !3
end_hunk_43
begin_hunk_44_@_RINvXs9B_NtCs4lawaffTVVK_9sqlparser3astNtB7_11IfStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.o

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %.not38 = icmp ne i64 %i.cm, 69                 ; 3 uses
  %i.dq = select i1 %.not38, i128 18446744073709551617, i128 1
  store i128 %i.dq, ptr %1, align 16, !alias.scope !15010, !noalias !15017
  store i8 -128, ptr %i.c, align 16, !alias.scope !15010, !noalias !15017
  %extract.t41 = zext i1 %.not38 to i64
  br i1 %.not38, label %bb.l, label %.thread23

bb.j:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15017)
end_hunk_44
begin_hunk_45_@_RINvXs9_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loadingNtB6_17StageParamsObjectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.eo = zext nneg i8 %i.du to i128
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eq = load i64, ptr %i.ep, align 8, !range !849, !noundef !3
  %.not81 = icmp ne i64 %i.eq, -9223372036854775808 ; 3 uses
  %i.er = select i1 %.not81, i128 18446744073709551616, i128 0
  %i.es = or disjoint i128 %i.er, %i.eo
  store i128 %i.es, ptr %1, align 16, !alias.scope !16136
  store i8 -128, ptr %i.d, align 16, !alias.scope !16136
  %extract.t87 = zext i1 %.not81 to i64
  %extract.t92 = zext nneg i8 %i.du to i64
  br i1 %.not81, label %._crit_edge, label %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit_crit_edge

_RINvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17key_value_optionsNtB6_15KeyValueOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.et = zext nneg i8 %i.du to i128
end_hunk_45
begin_hunk_46_@_RINvXs9r_NtCs4lawaffTVVK_9sqlparser3astNtB7_13CaseStatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.bj, label %.thread, label %bb.l

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread
  %.not28 = icmp ne i64 %i.bi, 69                 ; 3 uses
  %i.ck = select i1 %.not28, i128 18446744073709551617, i128 1
  store i128 %i.ck, ptr %1, align 16, !alias.scope !16370, !noalias !16377
  store i8 -128, ptr %i.c, align 16, !alias.scope !16370, !noalias !16377
  %extract.t31 = zext i1 %.not28 to i64
  br i1 %.not28, label %bb.j, label %.thread16

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16377)
end_hunk_46
begin_hunk_47_@_RINvXscb_NtCs4lawaffTVVK_9sqlparser3astNtB7_9StatementNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.hkv, label %bb.ra, label %bb.rb

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46: ; preds = %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge, %.thread804
  %2 = phi ptr [ %i.hjk, %.thread804 ], [ %.pre1714, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %.pre1712.sink.off64 = phi i64 [ %i.hjl, %.thread804 ], [ %.pre1713, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %.off01949 = phi i64 [ %extract.t2418, %.thread804 ], [ %extract.t2417, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hlc = phi i64 [ 0, %.thread804 ], [ %extract.t2420, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hld = phi i64 [ %i.hjs, %.thread804 ], [ %i.hkr, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hle = phi i1 [ %i.hjr, %.thread804 ], [ %i.hkq, %._RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit46_crit_edge ]
  %i.hlf = xor i64 %.off01949, %.pre1712.sink.off64
  %i.hlg = load i64, ptr %2, align 8, !noalias !20960, !noundef !3
  %i.hlh = xor i64 %i.hlg, %i.hlc
  %i.hli = zext i64 %i.hlf to i128
  %i.hlj = zext i64 %i.hlh to i128
  %i.hlk = mul nuw i128 %i.hlj, %i.hli            ; 2 uses
end_hunk_47
begin_hunk_48_@_RINvXsit_NtCs4lawaffTVVK_9sqlparser3astNtB7_8FunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread26:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.thread
  %i.gf = load i64, ptr %0, align 8, !range !930, !noundef !3 ; 2 uses
  %.not43 = icmp ne i64 %i.gf, 5                  ; 3 uses
  %i.gg = select i1 %.not43, i128 18446744073709551616, i128 0
  store i128 %i.gg, ptr %1, align 16, !alias.scope !25566
  store i8 -128, ptr %i.c, align 16, !alias.scope !25566
  %extract.t = zext i1 %.not43 to i64
  br i1 %.not43, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i13, label %_RINvXs7F_NtCs4lawaffTVVK_9sqlparser3astNtB7_10WindowTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25571)
end_hunk_48
begin_hunk_49_@_RINvXswc_NtCs4lawaffTVVK_9sqlparser3astNtB7_16CreateViewParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a

.thread13:                                        ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4.thread
  %i.ad = load i64, ptr %0, align 8, !range !931, !noundef !3 ; 2 uses
  %.not31 = icmp ne i64 %i.ad, -9223372036854775807 ; 4 uses
  %i.ae = select i1 %.not31, i128 18446744073709551616, i128 0
  store i128 %i.ae, ptr %1, align 16, !alias.scope !28159
  store i8 -128, ptr %i.d, align 16, !alias.scope !28159
  %extract.t34 = zext i1 %.not31 to i64
  %extract.t = zext i1 %.not31 to i64
  br i1 %.not31, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, label %_RINvXsgH_NtCs4lawaffTVVK_9sqlparser3astNtB7_11GranteeNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28164)
end_hunk_49
begin_hunk_50_@_RINvXsxu_NtCs4lawaffTVVK_9sqlparser3astNtB7_20ShowStatementOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
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
end_hunk_50
begin_hunk_51_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10LockClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.y = zext nneg i8 %.val.i to i128
  %i.z = load i64, ptr %.sroa.0.03, align 8, !range !849, !alias.scope !30005, !noalias !30007, !noundef !3
  %.not35.i = icmp eq i64 %i.z, -9223372036854775808 ; 2 uses
  %i.aa = select i1 %.not35.i, i128 0, i128 18446744073709551616
  %i.ab = or disjoint i128 %i.aa, %i.y
  store i128 %i.ab, ptr %2, align 16, !alias.scope !30012, !noalias !30005
  store i8 -128, ptr %i.c, align 16, !alias.scope !30012, !noalias !30005
  %extract.t41.i = zext nneg i8 %.val.i to i64    ; 2 uses
  br i1 %.not35.i, label %.thread20.i, label %bb.e

end_hunk_51
begin_hunk_52_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10LockClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.e

.thread20.i:                                      ; preds = %bb.c, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %.off6436.i = phi i64 [ 0, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t40.i, %bb.c ]
  %.sink.i1033.off0.i = phi i64 [ %extract.t41.i, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t42.i, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 25
  %i.al = load i8, ptr %i.ak, align 1, !range !2907, !alias.scope !30005, !noalias !30007, !noundef !3 ; 2 uses
end_hunk_52
begin_hunk_53_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10LockClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
bb.e:                                             ; preds = %._crit_edge4, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.bl = phi ptr [ %i.p, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pre6, %._crit_edge4 ]
  %i.bm = phi i64 [ %i.x, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %.pre5, %._crit_edge4 ]
  %.off6443.i = phi i64 [ 1, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t40.i, %._crit_edge4 ]
  %.sink.i1032.off0.i = phi i64 [ %extract.t41.i, %_RINvXsdl_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8LockTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread.i ], [ %extract.t42.i, %._crit_edge4 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %.val314.i = load ptr, ptr %i.bn, align 8, !alias.scope !30005, !noalias !30007, !nonnull !3, !noundef !3
end_hunk_53
begin_hunk_54_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.ac, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ad = sub i64 8, %i.ab                        ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 3                   ; 6 uses
  %.sroa.03.0.i.i = select i1 %i.ae, i64 4, i64 0
  %narrow = and i1 %i.ae, %i.x
  %.sroa.0.0.i10.i = zext i1 %narrow to i64       ; 2 uses
  %3 = select i1 %i.ae, i64 5, i64 1
  %4 = icmp ugt i64 %i.ad, %3
  br i1 %4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_54
begin_hunk_55_@_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3CteNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !30963, !noalias !30958
  %i.af = zext i16 %.sroa.015.0.copyload.i.i to i64
  %5 = select i1 %i.ae, i64 32, i64 0
  %i.ag = shl nuw nsw i64 %i.af, %5
  %i.ah = or i64 %i.ag, %.sroa.0.0.i10.i
  %6 = select i1 %i.ae, i64 6, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.03.1.i.i = phi i64 [ %6, %bb.d ], [ %.sroa.03.0.i.i, %bb.c ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.ah, %bb.d ], [ %.sroa.0.0.i10.i, %bb.c ] ; 2 uses
  %7 = icmp ugt i64 %i.ad, %.sroa.03.1.i.i
  br i1 %7, label %bb.f, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.aj = load i8, ptr %i.ai, align 2, !alias.scope !30963, !noalias !30958, !noundef !3
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.am = shl nuw nsw i64 %i.ak, %i.al
end_hunk_55
