Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/swapproc?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ffswap2:bb.a
  %i.q = and i64 %i.a, 14                         ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %ffswap2_slow.exit22, label %get_peel.exit

get_peel.exit:                                    ; preds = %bb.c
  %i.r = sub nuw nsw i64 16, %i.q
  %i.s = lshr exact i64 %i.r, 1
  %i.t = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.s) ; 6 uses
  %.not27 = icmp eq i64 %1, 0
  br i1 %.not27, label %ffswap2_slow.exit22, label %iter.check55

iter.check55:                                     ; preds = %get_peel.exit
  %min.iters.check45 = icmp samesign ult i64 %i.t, 4
  br i1 %min.iters.check45, label %.lr.ph.i19.preheader, label %vec.epilog.ph59

vec.epilog.ph59:                                  ; preds = %iter.check55
  %n.vec60 = and i64 %i.t, 12                     ; 3 uses
  br label %vec.epilog.vector.body61

vec.epilog.vector.body61:                         ; preds = %vec.epilog.vector.body61, %vec.epilog.ph59
  %index62 = phi i64 [ 0, %vec.epilog.ph59 ], [ %index.next64, %vec.epilog.vector.body61 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index62 ; 2 uses
  %wide.load63 = load <4 x i16>, ptr %i.u, align 2, !tbaa !9
  %i.v = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load63)
  store <4 x i16> %i.v, ptr %i.u, align 2, !tbaa !9
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next64, %n.vec60
  br i1 %i.w, label %vec.epilog.middle.block65, label %vec.epilog.vector.body61, !llvm.loop !18

vec.epilog.middle.block65:                        ; preds = %vec.epilog.vector.body61
  %cmp.n66 = icmp eq i64 %i.t, %n.vec60
  br i1 %cmp.n66, label %ffswap2_slow.exit22, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %iter.check55, %vec.epilog.middle.block65
  %.09.i20.ph = phi i64 [ 0, %iter.check55 ], [ %n.vec60, %vec.epilog.middle.block65 ]
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.lr.ph.i19.preheader, %.lr.ph.i19
  %.09.i20 = phi i64 [ %i.aa, %.lr.ph.i19 ], [ %.09.i20.ph, %.lr.ph.i19.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.09.i20 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !9
  %i.z = tail call i16 @llvm.bswap.i16(i16 %i.y)
  store i16 %i.z, ptr %i.x, align 2, !tbaa !9
  %i.aa = add nuw nsw i64 %.09.i20, 1             ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %i.aa, %i.t
  br i1 %exitcond.not.i21, label %ffswap2_slow.exit22, label %.lr.ph.i19, !llvm.loop !19

ffswap2_slow.exit22:                              ; preds = %.lr.ph.i19, %vec.epilog.middle.block65, %bb.c, %get_peel.exit
  %i.ab = phi i64 [ 0, %bb.c ], [ 0, %get_peel.exit ], [ %i.t, %vec.epilog.middle.block65 ], [ %i.t, %.lr.ph.i19 ] ; 4 uses
  %i.ac = sub i64 %1, %i.ab                       ; 2 uses
  %i.ad = and i64 %i.ac, -8                       ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ffswap2_slow.exit22, %.lr.ph
  %.029 = phi i64 [ %i.ai, %.lr.ph ], [ %i.ab, %ffswap2_slow.exit22 ] ; 2 uses
  %i.af = getelementptr inbounds [2 x i8], ptr %0, i64 %.029 ; 2 uses
  %i.ag = load <8 x i16>, ptr %i.af, align 16, !tbaa !20
  %i.ah = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ag)
  store <8 x i16> %i.ah, ptr %i.af, align 16, !tbaa !20
  %i.ai = add nuw nsw i64 %.029, 8                ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ad
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = sub nsw i64 %1, %i.ai
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %ffswap2_slow.exit22
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ac, %ffswap2_slow.exit22 ] ; 9 uses
  %.0.lcssa = phi i64 [ %i.ai, %._crit_edge.loopexit ], [ %i.ab, %ffswap2_slow.exit22 ]
  %i.ak = getelementptr inbounds [2 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.al = icmp sgt i64 %.pre-phi, 0
  br i1 %i.al, label %iter.check81, label %ffswap2_slow.exit

iter.check81:                                     ; preds = %._crit_edge
  %min.iters.check68 = icmp ult i64 %.pre-phi, 4
  br i1 %min.iters.check68, label %.lr.ph.i23.preheader, label %vector.main.loop.iter.check69

vector.main.loop.iter.check69:                    ; preds = %iter.check81
  %min.iters.check70 = icmp ult i64 %.pre-phi, 16
  br i1 %min.iters.check70, label %vec.epilog.ph85, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check69
  %i.am = and i64 %.pre-phi, 12
  %n.vec72 = and i64 %.pre-phi, 9223372036854775792 ; 4 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph71
  %index74 = phi i64 [ 0, %vector.ph71 ], [ %index.next77, %vector.body73 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index74 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load75 = load <8 x i16>, ptr %i.an, align 2, !tbaa !9
  %wide.load76 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !9
  %i.ap = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load75)
  %i.aq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load76)
  store <8 x i16> %i.ap, ptr %i.an, align 2, !tbaa !9
  store <8 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !9
  %index.next77 = add nuw i64 %index74, 16        ; 2 uses
  %i.ar = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.ar, label %middle.block78, label %vector.body73, !llvm.loop !22

middle.block78:                                   ; preds = %vector.body73
  %cmp.n79 = icmp eq i64 %.pre-phi, %n.vec72
  br i1 %cmp.n79, label %ffswap2_slow.exit, label %vec.epilog.iter.check83

vec.epilog.iter.check83:                          ; preds = %middle.block78
  %min.epilog.iters.check84 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check84, label %.lr.ph.i23.preheader, label %vec.epilog.ph85, !prof !15

vec.epilog.ph85:                                  ; preds = %vector.main.loop.iter.check69, %vec.epilog.iter.check83
  %vec.epilog.resume.val80 = phi i64 [ %n.vec72, %vec.epilog.iter.check83 ], [ 0, %vector.main.loop.iter.check69 ]
  %n.vec86 = and i64 %.pre-phi, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body87

vec.epilog.vector.body87:                         ; preds = %vec.epilog.vector.body87, %vec.epilog.ph85
  %index88 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph85 ], [ %index.next90, %vec.epilog.vector.body87 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %index88 ; 2 uses
  %wide.load89 = load <4 x i16>, ptr %i.as, align 2, !tbaa !9
  %i.at = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load89)
  store <4 x i16> %i.at, ptr %i.as, align 2, !tbaa !9
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.au, label %vec.epilog.middle.block91, label %vec.epilog.vector.body87, !llvm.loop !23

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body87
  %cmp.n92 = icmp eq i64 %.pre-phi, %n.vec86
  br i1 %cmp.n92, label %ffswap2_slow.exit, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %iter.check81, %vec.epilog.iter.check83, %vec.epilog.middle.block91
  %.09.i24.ph = phi i64 [ 0, %iter.check81 ], [ %n.vec72, %vec.epilog.iter.check83 ], [ %n.vec86, %vec.epilog.middle.block91 ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader, %.lr.ph.i23
  %.09.i24 = phi i64 [ %i.ay, %.lr.ph.i23 ], [ %.09.i24.ph, %.lr.ph.i23.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %.09.i24 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !9
  %i.ax = tail call i16 @llvm.bswap.i16(i16 %i.aw)
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !9
  %i.ay = add nuw nsw i64 %.09.i24, 1             ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.ay, %.pre-phi
  br i1 %exitcond.not.i25, label %ffswap2_slow.exit, label %.lr.ph.i23, !llvm.loop !24

ffswap2_slow.exit:                                ; preds = %.lr.ph.i, %.lr.ph.i23, %middle.block, %vec.epilog.middle.block, %middle.block78, %vec.epilog.middle.block91, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ffswap4(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %ffswap4_slow.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %1, 1
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %1, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.j, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i ; 2 uses
  %i.d = load <4 x i8>, ptr %i.c, align 1, !tbaa !20
  %i.e = shufflevector <4 x i8> %i.d, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.e, ptr %i.c, align 1, !tbaa !20
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load <4 x i8>, ptr %i.g, align 1, !tbaa !20
  %i.i = shufflevector <4 x i8> %i.h, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.i, ptr %i.g, align 1, !tbaa !20
  %i.j = add nuw nsw i64 %.014.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ffswap4_slow.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !25

ffswap4_slow.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ffswap4_slow.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ffswap4_slow.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.j, %ffswap4_slow.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.epil.init ; 2 uses
  %i.l = load <4 x i8>, ptr %i.k, align 1, !tbaa !20
  %i.m = shufflevector <4 x i8> %i.l, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.m, ptr %i.k, align 1, !tbaa !20
  br label %ffswap4_slow.exit

ffswap4_slow.exit:                                ; preds = %.lr.ph.i.epil.preheader, %ffswap4_slow.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ffswap8(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = shl nuw nsw i64 %1, 3
  %i.b = icmp sgt i64 %1, 0
  br i1 %i.b, label %.lr.ph.i, label %ffswap8_slow.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.039.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.039.i ; 2 uses
  %i.d = load <8 x i8>, ptr %i.c, align 1, !tbaa !20
  %i.e = shufflevector <8 x i8> %i.d, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.e, ptr %i.c, align 1, !tbaa !20
  %i.f = add nuw nsw i64 %.039.i, 8               ; 2 uses
  %2 = icmp samesign ult i64 %i.f, %i.a
  br i1 %2, label %.lr.ph.i, label %ffswap8_slow.exit, !llvm.loop !26

ffswap8_slow.exit:                                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 12}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12, !14, !13}
!18 = distinct !{!18, !12, !13, !14}
!19 = distinct !{!19, !12, !14, !13}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12, !13, !14}
!23 = distinct !{!23, !12, !13, !14}
!24 = distinct !{!24, !12, !14, !13}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
end_hunk_0
