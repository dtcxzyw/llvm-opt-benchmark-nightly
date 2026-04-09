inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @mbedtls_sha256_update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.i, label %bb.b
end_hunk_0
begin_hunk_1_@mbedtls_sha256_update:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.043 = phi i64 [ %i.q, %bb.f ], [ %2, %bb.d ]  ; 5 uses
  %.040 = phi ptr [ %i.p, %bb.f ], [ %1, %bb.d ]  ; 3 uses
  %i.r = icmp ugt i64 %.043, 63
  br i1 %i.r, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.g
  %3 = and i64 %.043, 63
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.h
  %.0711.i = phi i64 [ %i.u, %bb.h ], [ %.043, %.preheader ]
  %.0810.i = phi ptr [ %i.t, %bb.h ], [ %.040, %.preheader ] ; 2 uses
  %i.s = tail call i32 @mbedtls_internal_sha256_process(ptr noundef nonnull %0, ptr noundef %.0810.i) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i, i64 64
  %i.u = add i64 %.0711.i, -64                    ; 2 uses
  %i.v = icmp ugt i64 %i.u, 63
  br i1 %i.v, label %bb.h, label %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit, !llvm.loop !15

_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit: ; preds = %bb.h
  %4 = and i64 %.043, -64
  %5 = getelementptr inbounds nuw i8, ptr %.040, i64 %4
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit, %bb.g
  %.144.lcssa = phi i64 [ %3, %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit ], [ %.043, %bb.g ] ; 2 uses
  %.141.lcssa = phi ptr [ %5, %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit ], [ %.040, %bb.g ]
  %.not53 = icmp eq i64 %.144.lcssa, 0
  br i1 %.not53, label %bb.i, label %._crit_edge.thread

end_hunk_1
begin_hunk_2_@mbedtls_sha256:bb.a
  %i.e = trunc i64 %1 to i32
  store i32 %i.e, ptr %i.d, align 4, !tbaa !3
  %i.f = icmp ugt i64 %1, 63
  br i1 %i.f, label %bb.d, label %._crit_edge.thread.i

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0711.i.i = phi i64 [ %i.i, %bb.d ], [ %1, %bb.c ]
  %.0810.i.i = phi ptr [ %i.h, %bb.d ], [ %0, %bb.c ] ; 2 uses
  %i.g = call i32 @mbedtls_internal_sha256_process(ptr noundef nonnull %4, ptr noundef %.0810.i.i) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 64
  %i.i = add i64 %.0711.i.i, -64                  ; 2 uses
  %i.j = icmp ugt i64 %i.i, 63
  br i1 %i.j, label %bb.d, label %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit.i, !llvm.loop !15

_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit.i: ; preds = %bb.d
  %5 = and i64 %1, 63                             ; 2 uses
  %6 = and i64 %1, -64
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %.not53.i = icmp eq i64 %5, 0
  br i1 %.not53.i, label %bb.e, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.c, %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit.i
  %.141.lcssa.i16 = phi ptr [ %7, %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit.i ], [ %0, %bb.c ]
  %.144.lcssa.i15 = phi i64 [ %5, %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit.i ], [ %1, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr align 1 %.141.lcssa.i16, i64 %.144.lcssa.i15, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZL36mbedtls_internal_sha256_process_manyP22mbedtls_sha256_contextPKhm.exit.i, %._crit_edge.thread.i
  %i.k = call i32 @mbedtls_sha256_finish(ptr noundef nonnull %4, ptr noundef %2) ; 0 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %4, i64 noundef 104)
  br label %bb.f
end_hunk_2
begin_hunk_3_@llvm.bswap.v4i32
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_3
