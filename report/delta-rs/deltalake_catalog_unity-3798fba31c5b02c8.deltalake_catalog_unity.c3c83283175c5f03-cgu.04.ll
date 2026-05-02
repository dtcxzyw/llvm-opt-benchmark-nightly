inline.NumInlined: 996
inline.NumDeleted: 405
begin_hunk_0_@_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false), !noalias !1241
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !1243, !noalias !1244
  %i.aj = load i64, ptr %i.a, align 8, !range !159, !noalias !1236, !noundef !10
  %2 = trunc nuw i64 %i.aj to i1
  %i.ak = load i64, ptr %i.k, align 8, !noalias !1236
  %i.al = icmp eq i64 %i.ak, %i.ah
  %or.cond.i = select i1 %2, i1 %i.al, i1 false
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.aa:                                            ; preds = %bb.ab, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bj = load i64, ptr %i.l, align 8, !range !159, !noalias !1236, !noundef !10
  %.not.i = trunc nuw i64 %i.bj to i1
  %i.bk = load i64, ptr %i.m, align 8, !noalias !1236
  %i.bl = icmp eq i64 %i.bk, %i.ah
  %or.cond73.i = select i1 %.not.i, i1 %i.bl, i1 false
end_hunk_1
