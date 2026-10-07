Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_hd_huffman?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@nghttp2_hd_huff_encode:bb.a

bb.c:                                             ; preds = %.lr.ph131, %bb.b
  %.042130 = phi i64 [ %.042.ph138, %.lr.ph131 ], [ %i.y, %bb.b ] ; 2 uses
  %.043129 = phi i64 [ %.043.ph137, %.lr.ph131 ], [ %i.v, %bb.b ]
  %.047128 = phi ptr [ %.047.ph136, %.lr.ph131 ], [ %i.m, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.047128, i64 1 ; 4 uses
  %i.n = load i8, ptr %.047128, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @huff_sym_table, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = zext i32 %i.r to i64
  %i.t = sub i64 32, %.042130
  %i.u = shl i64 %i.s, %i.t
  %i.v = or i64 %i.u, %.043129                    ; 5 uses
  %i.w = load i32, ptr %i.p, align 4, !tbaa !10
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %.042130, %i.x                   ; 5 uses
  %i.z = icmp ult i64 %i.y, 32
  br i1 %i.z, label %bb.b, label %bb.d, !llvm.loop !22

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp ugt i64 %.0.ph139, 3
  br i1 %i.aa, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ab = lshr i64 %i.v, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  store i32 %i.ad, ptr %i.af, align 1
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !31
  %i.ak = add i64 %.0.ph139, -4
  %i.al = shl i64 %i.v, 32
  %i.am = add i64 %i.y, -32
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.e, %._crit_edge
  %i.an = phi ptr [ %.pre, %._crit_edge ], [ %i.ag, %bb.e ]
  %.043.ph.be = phi i64 [ %i.ar, %._crit_edge ], [ %i.al, %bb.e ] ; 2 uses
  %.042.ph.be = phi i64 [ %i.as, %._crit_edge ], [ %i.am, %bb.e ] ; 2 uses
  %.0.ph.be = phi i64 [ %i.aw, %._crit_edge ], [ %i.ak, %bb.e ]
  %.not127 = icmp eq ptr %i.m, %i.a
  br i1 %.not127, label %.preheader, label %.lr.ph131, !llvm.loop !22

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.170 = phi i64 [ %i.as, %bb.f ], [ %i.y, %bb.d ]
  %.14469 = phi i64 [ %i.ar, %bb.f ], [ %i.v, %bb.d ] ; 2 uses
  %i.ao = lshr i64 %.14469, 56
  %i.ap = trunc nuw i64 %i.ao to i8
  %i.aq = tail call i32 @nghttp2_bufs_addb(ptr noundef %0, i8 noundef zeroext %i.ap) #8 ; 2 uses
  %.not56 = icmp eq i32 %i.aq, 0
  br i1 %.not56, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.ar = shl i64 %.14469, 8                      ; 2 uses
  %i.as = add i64 %.170, -8                       ; 3 uses
  %i.at = icmp ugt i64 %i.as, 7
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre93 = load ptr, ptr %.phi.trans.insert92, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre91 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30
  %i.au = ptrtoint ptr %.pre91 to i64
  %i.av = ptrtoint ptr %.pre93 to i64
  %i.aw = sub i64 %i.au, %i.av
  br label %.outer.backedge

.lr.ph74:                                         ; preds = %.preheader, %bb.g
  %.273 = phi i64 [ %i.bb, %bb.g ], [ %.042.lcssa, %.preheader ]
  %.24572 = phi i64 [ %i.ba, %bb.g ], [ %.043.lcssa, %.preheader ] ; 2 uses
  %i.ax = lshr i64 %.24572, 56
  %i.ay = trunc nuw i64 %i.ax to i8
  %i.az = tail call i32 @nghttp2_bufs_addb(ptr noundef %0, i8 noundef zeroext %i.ay) #8 ; 2 uses
  %.not55 = icmp eq i32 %i.az, 0
  br i1 %.not55, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph74
  %i.ba = shl i64 %.24572, 8                      ; 2 uses
  %i.bb = add i64 %.273, -8                       ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 7
  br i1 %i.bc, label %.lr.ph74, label %._crit_edge75, !llvm.loop !24

._crit_edge75:                                    ; preds = %bb.g, %.preheader
  %.245.lcssa = phi i64 [ %.043.lcssa, %.preheader ], [ %i.ba, %bb.g ]
  %.2.lcssa = phi i64 [ %.042.lcssa, %.preheader ], [ %i.bb, %bb.g ] ; 2 uses
  %.not53 = icmp eq i64 %.2.lcssa, 0
  br i1 %.not53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge75
  %i.bd = lshr i64 %.245.lcssa, 56
  %i.be = trunc nuw nsw i64 %i.bd to i16
  %i.bf = trunc nuw nsw i64 %.2.lcssa to i16
  %i.bg = lshr exact i16 256, %i.bf
  %i.bh = add nuw nsw i16 %i.bg, 255
  %i.bi = or i16 %i.bh, %i.be
  %i.bj = trunc i16 %i.bi to i8
  %i.bk = tail call i32 @nghttp2_bufs_addb(ptr noundef %0, i8 noundef zeroext %i.bj) #8 ; 2 uses
  %.not54 = icmp eq i32 %i.bk, 0
  br i1 %.not54, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %._crit_edge75
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph74, %bb.h, %bb.i
  %.046 = phi i32 [ 0, %bb.i ], [ %i.az, %.lr.ph74 ], [ %i.bk, %bb.h ], [ %i.aq, %.lr.ph ]
  ret i32 %.046
}

declare i32 @nghttp2_bufs_addb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @nghttp2_hd_huff_decode_context_init(ptr nofree noundef writeonly captures(none) initializes((0, 3)) %0) local_unnamed_addr #3 {
bb.a:
  store i16 0, ptr %0, align 2, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.a, align 2, !tbaa !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @nghttp2_hd_huff_decode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = load i16, ptr %0, align 2, !tbaa !17     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !18
  %.not31 = icmp samesign eq i64 %3, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.033 = phi i16 [ %i.b, %.lr.ph ], [ %.sroa.0.0.copyload4, %bb.f ]
  %.02632 = phi ptr [ %2, %.lr.ph ], [ %i.f, %bb.f ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02632, i64 1 ; 2 uses
  %i.g = load i8, ptr %.02632, align 1, !tbaa !8
  %i.h = zext i16 %.sroa.0.033 to i64
  %i.i = getelementptr inbounds nuw [64 x i8], ptr @huff_decode_table, i64 %i.h
  %i.j = zext i8 %i.g to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 4
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.l ; 3 uses
  %.sroa.0.0.copyload = load i16, ptr %i.m, align 2, !tbaa !34
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !8
  %i.n = and i8 %.sroa.8.0.copyload, 2
  %.not29 = icmp eq i8 %i.n, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !8
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.e, align 8, !tbaa !35
  store i8 %.sroa.12.0.copyload, ptr %i.o, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = zext i16 %.sroa.0.0.copyload to i64
  %i.r = getelementptr inbounds nuw [64 x i8], ptr @huff_decode_table, i64 %i.q
  %i.s = and i32 %i.j, 15
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload4 = load i16, ptr %i.u, align 2, !tbaa !34 ; 2 uses
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %.sroa.8.0.copyload6 = load i8, ptr %.sroa.8.0..sroa_idx5, align 2, !tbaa !8 ; 2 uses
  %i.v = and i8 %.sroa.8.0.copyload6, 2
  %.not30 = icmp eq i8 %i.v, 0
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.12.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %.sroa.12.0.copyload10 = load i8, ptr %.sroa.12.0..sroa_idx9, align 1, !tbaa !8
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.e, align 8, !tbaa !35
  store i8 %.sroa.12.0.copyload10, ptr %i.w, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not = icmp eq ptr %i.f, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.8.0.lcssa = phi i8 [ %i.d, %bb.a ], [ %.sroa.8.0.copyload6, %bb.f ] ; 2 uses
  %.sroa.0.0.lcssa = phi i16 [ %i.b, %bb.a ], [ %.sroa.0.0.copyload4, %bb.f ]
  store i16 %.sroa.0.0.lcssa, ptr %0, align 2, !tbaa !17
  store i8 %.sroa.8.0.lcssa, ptr %i.c, align 2, !tbaa !18
  %.not27 = icmp ne i32 %4, 0
  %5 = and i8 %.sroa.8.0.lcssa, 1
  %.not28 = icmp eq i8 %5, 0
  %or.cond = select i1 %.not27, i1 %.not28, i1 false
  %.0 = select i1 %or.cond, i64 -523, i64 %3
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @nghttp2_hd_huff_decode_failure_state(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !17
  %i.b = icmp eq i16 %i.a, 256
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!15 = !{!"short", !4, i64 0}
!16 = !{!"", !15, i64 0, !4, i64 2}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !4, i64 2}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = !{!"p1 _ZTS17nghttp2_buf_chain", !12, i64 0}
!26 = !{!"long", !4, i64 0}
!27 = !{!"", !25, i64 0, !25, i64 8, !12, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56}
!28 = !{!27, !25, i64 8}
!29 = !{!"nghttp2_buf_chain", !25, i64 0, !14, i64 8}
!30 = !{!29, !13, i64 16}
!31 = !{!29, !13, i64 32}
!32 = !{!9, !5, i64 4}
!33 = distinct !{!33, !11}
!34 = !{!15, !15, i64 0}
!35 = !{!14, !13, i64 24}
end_hunk_0
