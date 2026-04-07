inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@mbedtls_pk_verify:bb.a
  br i1 %i.l, label %mbedtls_pk_verify_restartable.exit, label %bb.d

bb.d:                                             ; preds = %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i
  %i.m = tail call noundef i32 %i.k(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i64 noundef %.01620.i, ptr noundef %4, i64 noundef %5), !inline_history !19
  br label %mbedtls_pk_verify_restartable.exit

mbedtls_pk_verify_restartable.exit:               ; preds = %bb.a, %bb.b, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.i, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i, %bb.d
end_hunk_0
begin_hunk_1_@mbedtls_pk_verify_ext:bb.a
mbedtls_pk_can_do.exit:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = tail call noundef i32 %i.g(i32 noundef %0), !inline_history !20
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %mbedtls_pk_verify.exit, label %bb.c

end_hunk_1
begin_hunk_2_@mbedtls_pk_verify_ext:bb.a
  br i1 %i.q, label %mbedtls_pk_verify.exit, label %bb.g

bb.g:                                             ; preds = %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i.i
  %i.r = tail call noundef i32 %i.p(ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i64 noundef %.01620.i.i, ptr noundef %6, i64 noundef %7), !inline_history !21
  br label %mbedtls_pk_verify.exit

mbedtls_pk_verify.exit:                           ; preds = %bb.c, %bb.g, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i.i, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.i.i, %bb.e, %bb.d, %mbedtls_pk_can_do.exit, %bb.b, %bb.a
end_hunk_2
begin_hunk_3_@mbedtls_pk_get_type:bb.a
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
end_hunk_3
begin_hunk_4_@mbedtls_pk_sign_restartable:bb.a
  %i.i = phi ptr [ %.pre, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit._ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread_crit_edge ], [ %i.d, %bb.c ]
  %.01923 = phi i64 [ %i.h, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit._ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread_crit_edge ], [ %3, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

end_hunk_4
begin_hunk_5_@mbedtls_pk_sign:bb.a
  %i.i = phi ptr [ %.pre.i, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit._ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread_crit_edge.i ], [ %i.d, %bb.c ]
  %.01923.i = phi i64 [ %i.h, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit._ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread_crit_edge.i ], [ %3, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %mbedtls_pk_sign_restartable.exit, label %bb.d

bb.d:                                             ; preds = %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i
  %i.m = tail call noundef i32 %i.k(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i64 noundef %.01923.i, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8), !inline_history !24
  br label %mbedtls_pk_sign_restartable.exit

mbedtls_pk_sign_restartable.exit:                 ; preds = %bb.a, %bb.b, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.i, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i, %bb.d
end_hunk_5
begin_hunk_6_@mbedtls_pk_sign_ext:bb.a
mbedtls_pk_can_do.exit:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call noundef i32 %i.d(i32 noundef %0), !inline_history !20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %mbedtls_pk_sign.exit, label %bb.b

end_hunk_6
begin_hunk_7_@mbedtls_pk_sign_ext:bb.a
  %i.n = phi ptr [ %.pre.i.i, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit._ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread_crit_edge.i.i ], [ %i.i, %bb.e ]
  %.01923.i.i = phi i64 [ %i.m, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit._ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread_crit_edge.i.i ], [ %4, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mbedtls_pk_sign.exit, label %bb.f

bb.f:                                             ; preds = %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i.i
  %i.r = tail call noundef i32 %i.p(ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, i64 noundef %.01923.i.i, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9), !inline_history !25
  br label %mbedtls_pk_sign.exit

mbedtls_pk_sign.exit:                             ; preds = %bb.f, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.thread.i.i, %_ZL17pk_hashlen_helper17mbedtls_md_type_tPm.exit.i.i, %bb.d, %bb.c, %bb.b, %mbedtls_pk_can_do.exit, %bb.a
end_hunk_7
begin_hunk_8_@mbedtls_pk_decrypt:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

end_hunk_8
begin_hunk_9_@mbedtls_pk_encrypt:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

end_hunk_9
begin_hunk_10_@mbedtls_pk_check_pair:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.c, align 8, !tbaa !22
  switch i32 %i.i, label %bb.f [
    i32 5, label %bb.e
    i32 7, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 8, !tbaa !22
  %.not19 = icmp eq i32 %i.j, 1
  br i1 %.not19, label %bb.g, label %bb.h

end_hunk_10
begin_hunk_11_@mbedtls_pk_get_bitlen:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull %0)
  br label %bb.d

end_hunk_11
begin_hunk_12_@mbedtls_pk_debug:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

end_hunk_12
begin_hunk_13_@mbedtls_pk_get_name:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
end_hunk_13
begin_hunk_14_@llvm.memset.p0.i64
!16 = !{!12, !10, i64 72}
!17 = !{!12, !10, i64 24}
!18 = !{!12, !10, i64 32}
!19 = !{ptr @mbedtls_pk_verify_restartable}
!20 = !{ptr @mbedtls_pk_can_do}
!21 = !{ptr @mbedtls_pk_verify, ptr @mbedtls_pk_verify_restartable}
!22 = !{!12, !13, i64 0}
!23 = !{!12, !10, i64 40}
!24 = !{ptr @mbedtls_pk_sign_restartable}
!25 = !{ptr @mbedtls_pk_sign, ptr @mbedtls_pk_sign_restartable}
!26 = !{!12, !10, i64 48}
!27 = !{!12, !10, i64 56}
!28 = !{!12, !10, i64 64}
!29 = !{!12, !10, i64 16}
!30 = !{!12, !10, i64 88}
!31 = !{!12, !14, i64 8}
end_hunk_14
