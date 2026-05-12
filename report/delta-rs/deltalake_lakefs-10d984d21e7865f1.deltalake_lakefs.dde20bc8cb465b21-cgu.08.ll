inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !458
  store i64 %i.cw, ptr %i.d, align 8, !noalias !463
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !460, !noalias !458, !noundef !8 ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.cw, %i.df
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.z, !prof !9

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs9Ct3XQYJhun_5bytes3buf4takeINtB4_4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf13copy_to_bytesCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !473, !noalias !458, !noundef !8
  %3 = load i64, ptr %i.de, align 8, !alias.scope !473, !noalias !458, !noundef !8
  invoke void %i.dn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dq, i64 noundef %3)
          to label %.body.thread.i.i unwind label %bb.aa, !noalias !464, !inline_history !475

bb.z:                                             ; preds = %.noexc.i.i
end_hunk_1
