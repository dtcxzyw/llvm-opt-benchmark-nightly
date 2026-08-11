loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rhash_swap_copy_str_to_u32:bb.a
  %i.ay = icmp ugt i64 %i.ah, %indvars.iv.next.1
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph31, %middle.block, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @rhash_swap_copy_str_to_u64(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sext i32 %1 to i64                       ; 7 uses
  %i.d = or i64 %i.a, %i.b
  %i.e = or i64 %i.d, %i.c
  %i.f = or i64 %i.e, %3
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph29.preheader

.lr.ph29.preheader:                               ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.c
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %.lr.ph29.preheader, %.lr.ph29
  %.02128 = phi ptr [ %i.n, %.lr.ph29 ], [ %i.j, %.lr.ph29.preheader ] ; 2 uses
  %.02327 = phi ptr [ %i.k, %.lr.ph29 ], [ %2, %.lr.ph29.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02327, i64 8 ; 2 uses
  %i.l = load i64, ptr %.02327, align 8, !tbaa !17
  %i.m = tail call i64 @llvm.bswap.i64(i64 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %.02128, i64 8
  store i64 %i.m, ptr %.02128, align 8, !tbaa !17
  %i.o = icmp ult ptr %i.k, %i.i
  br i1 %i.o, label %.lr.ph29, label %.loopexit, !llvm.loop !19

bb.c:                                             ; preds = %bb.a
  %i.p = add i64 %3, %i.c                         ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.c
  br i1 %i.q, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.s = load i8, ptr %2, align 1, !tbaa !15
  %i.t = xor i64 %i.c, 7
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 %i.s, ptr %i.u, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %i.c, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.026.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.v = icmp eq i64 %3, 1
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.026 = phi ptr [ %i.ab, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 1
  %i.x = load i8, ptr %.026, align 1, !tbaa !15
  %i.y = shl i64 %indvars.iv, 32
  %sext = ashr exact i64 %i.y, 32
  %i.z = xor i64 %sext, 7
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %.026, i64 2
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !15
  %indvars.iv.next = shl i64 %indvars.iv, 32
  %i.ad = add i64 %indvars.iv.next, 4294967296
  %sext.1 = ashr exact i64 %i.ad, 32
  %i.ae = xor i64 %sext.1, 7
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = icmp ugt i64 %i.p, %indvars.iv.next.1
  br i1 %i.ag, label %.lr.ph, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph29, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @rhash_swap_copy_u64_to_str(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or i64 %i.b, %i.a
  %i.d = or i64 %i.c, %2
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not26 = icmp eq i64 %2, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.b, %.lr.ph25
  %.01824 = phi ptr [ %i.l, %.lr.ph25 ], [ %0, %bb.b ] ; 2 uses
  %.01923 = phi ptr [ %i.i, %.lr.ph25 ], [ %1, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01923, i64 8 ; 2 uses
  %i.j = load i64, ptr %.01923, align 8, !tbaa !17
  %i.k = tail call i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %.01824, i64 8
  store i64 %i.k, ptr %.01824, align 8, !tbaa !17
  %i.m = icmp ult ptr %i.i, %i.h
  br i1 %i.m, label %.lr.ph25, label %.loopexit, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.022 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.01721 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = xor i64 %.01721, 7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %.022, i64 1
  store i8 %i.p, ptr %.022, align 1, !tbaa !15
  %i.r = xor i64 %.01721, 6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %.022, i64 2
  store i8 %i.t, ptr %i.q, align 1, !tbaa !15
  %i.v = xor i64 %.01721, 5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %.022, i64 3
  store i8 %i.x, ptr %i.u, align 1, !tbaa !15
  %i.z = xor i64 %.01721, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.022, i64 4 ; 2 uses
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !15
  %i.ad = add nuw i64 %.01721, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit30.unr-lcssa, label %.lr.ph, !llvm.loop !22

.loopexit.loopexit30.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit30.unr-lcssa, %.lr.ph.preheader
  %.022.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ac, %.loopexit.loopexit30.unr-lcssa ]
  %.01721.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %.loopexit.loopexit30.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.022.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.022.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01721.epil = phi i64 [ %i.ai, %.lr.ph.epil ], [ %.01721.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = xor i64 %.01721.epil, 7
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %.022.epil, i64 1
  store i8 %i.ag, ptr %.022.epil, align 1, !tbaa !15
  %i.ai = add nuw i64 %.01721.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !23

.loopexit:                                        ; preds = %.loopexit.loopexit30.unr-lcssa, %.lr.ph.epil, %.lr.ph25, %.preheader, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @rhash_u32_mem_swap(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = add i64 %.idx, %i.d
  %i.f = add i64 %i.d, 4
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 28
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 9223372036854775800      ; 3 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 3 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9
  %wide.load7 = load <4 x i32>, ptr %i.o, align 4, !tbaa !9
  %i.p = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.q = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load7)
  store <4 x i32> %i.p, ptr %next.gep, align 4, !tbaa !9
  store <4 x i32> %i.q, ptr %i.o, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %.06.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %.06 = phi ptr [ %i.u, %.lr.ph ], [ %.06.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.s = load i32, ptr %.06, align 4, !tbaa !9
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %.06, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.06, i64 4 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !13, !12}
end_hunk_0
