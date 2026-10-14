Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_clip_samples_s16:bb.a
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.load = load <4 x i32>, ptr %i.a, align 4, !tbaa !118
  %wide.load7 = load <4 x i32>, ptr %i.b, align 4, !tbaa !118
  %i.c = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -32768))
  %i.d = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load7, <4 x i32> splat (i32 -32768))
  %i.e = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.c, <4 x i32> splat (i32 32767))
  %i.f = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.d, <4 x i32> splat (i32 32767))
  %i.g = trunc nsw <4 x i32> %i.e to <4 x i16>
  %i.h = trunc nsw <4 x i32> %i.f to <4 x i16>
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <4 x i16> %i.g, ptr %i.i, align 2, !tbaa !122
  store <4 x i16> %i.h, ptr %i.j, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %.06.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %.06 = phi i64 [ %i.r, %.lr.ph ], [ %.06.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06
  %i.m = load i32, ptr %i.l, align 4, !tbaa !118
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -32768)
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.n, i32 32767)
  %i.p = trunc nsw i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06
  store i16 %i.p, ptr %i.q, align 2, !tbaa !122
  %i.r = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1315

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.013 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -8388608)
  %i.e = tail call i64 @llvm.smin.i64(i64 %i.d, i64 8388607) ; 3 uses
  %i.f = trunc i64 %i.e to i8
  %i.g = mul i64 %.013, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 3 uses
  store i8 %i.f, ptr %i.h, align 1, !tbaa !119
  %i.i = lshr i64 %i.e, 8
  %i.j = trunc i64 %i.i to i8
  %i.k = getelementptr i8, ptr %i.h, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !119
  %i.l = lshr i64 %i.e, 16
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr i8, ptr %i.h, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !119
  %i.o = or disjoint i64 %.013, 1                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !164
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -8388608)
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.r, i64 8388607) ; 3 uses
  %i.t = trunc i64 %i.s to i8
  %i.u = mul i64 %i.o, 3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 3 uses
  store i8 %i.t, ptr %i.v, align 1, !tbaa !119
  %i.w = lshr i64 %i.s, 8
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr i8, ptr %i.v, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !119
  %i.z = lshr i64 %i.s, 16
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr i8, ptr %i.v, i64 2
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !119
  %i.ac = add nuw i64 %.013, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.013.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod14 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.epil.init
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !164
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -8388608)
  %i.ag = tail call i64 @llvm.smin.i64(i64 %i.af, i64 8388607) ; 3 uses
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = mul i64 %.013.epil.init, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 3 uses
  store i8 %i.ah, ptr %i.aj, align 1, !tbaa !119
  %i.ak = lshr i64 %i.ag, 8
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr i8, ptr %i.aj, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !119
  %i.an = lshr i64 %i.ag, 16
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr i8, ptr %i.aj, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_s32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = tail call i64 @llvm.smax.i64(i64 %i.c, i64 -2147483648)
  %i.e = tail call i64 @llvm.smin.i64(i64 %i.d, i64 2147483647)
  %i.f = trunc nsw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06
  store i32 %i.f, ptr %i.g, align 4, !tbaa !118
  %i.h = or disjoint i64 %.06, 1                  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !164
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 -2147483648)
  %i.l = tail call i64 @llvm.smin.i64(i64 %i.k, i64 2147483647)
  %i.m = trunc nsw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  store i32 %i.m, ptr %i.n, align 4, !tbaa !118
  %i.o = add nuw i64 %.06, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.epil.init
  %i.q = load i64, ptr %i.p, align 8, !tbaa !164
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.r, i64 2147483647)
  %i.t = trunc nsw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.epil.init
  store i32 %i.t, ptr %i.u, align 4, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_samples_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !349 ; 3 uses
  %wide.load7 = load <4 x float>, ptr %i.e, align 4, !tbaa !349 ; 3 uses
  %i.f = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.g = fcmp olt <4 x float> %wide.load7, splat (float -1.000000e+00)
  %i.h = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.i = fcmp ogt <4 x float> %wide.load7, splat (float 1.000000e+00)
  %i.j = select <4 x i1> %i.h, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.k = select <4 x i1> %i.i, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load7
  %i.l = select <4 x i1> %i.f, <4 x float> splat (float -1.000000e+00), <4 x float> %i.j
  %i.m = select <4 x i1> %i.g, <4 x float> splat (float -1.000000e+00), <4 x float> %i.k
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %i.l, ptr %i.n, align 4, !tbaa !349
  store <4 x float> %i.m, ptr %i.o, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %.06.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.ph
  %i.r = load float, ptr %i.q, align 4, !tbaa !349 ; 3 uses
  %i.s = fcmp olt float %i.r, -1.000000e+00
  %i.t = fcmp ogt float %i.r, 1.000000e+00
  %..i.prol = select i1 %i.t, float 1.000000e+00, float %i.r
  %.0.i.prol = select i1 %i.s, float -1.000000e+00, float %..i.prol
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.ph
  store float %.0.i.prol, ptr %i.u, align 4, !tbaa !349
  %i.v = or disjoint i64 %.06.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %.06.unr = phi i64 [ %.06.ph, %.lr.ph.preheader8 ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i64 %2, %.neg
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.06 = phi i64 [ %i.ai, %.lr.ph ], [ %.06.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06
  %i.y = load float, ptr %i.x, align 4, !tbaa !349 ; 3 uses
  %i.z = fcmp olt float %i.y, -1.000000e+00
  %i.aa = fcmp ogt float %i.y, 1.000000e+00
  %..i = select i1 %i.aa, float 1.000000e+00, float %i.y
  %.0.i = select i1 %i.z, float -1.000000e+00, float %..i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06
  store float %.0.i, ptr %i.ab, align 4, !tbaa !349
  %i.ac = add nuw i64 %.06, 1                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349 ; 3 uses
  %i.af = fcmp olt float %i.ae, -1.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i.1 = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i.1 = select i1 %i.af, float -1.000000e+00, float %..i.1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store float %.0.i.1, ptr %i.ah, align 4, !tbaa !349
  %i.ai = add nuw i64 %.06, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1317

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_clip_pcm_frames(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %4 to i64                       ; 2 uses
  %i.b = mul i64 %2, %i.a                         ; 34 uses
  switch i32 %3, label %ma_clip_samples_u8.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ma_clip_samples_u8.exit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check64 = icmp ult i64 %i.b, 4
  br i1 %min.iters.check64, label %.lr.ph.i.preheader, label %vector.memcheck65

vector.memcheck65:                                ; preds = %iter.check
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = mul i64 %2, %i.a
  %i.e = shl i64 %i.d, 1
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %0, %i.f
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck65
  %min.iters.check66 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph67

vector.ph67:                                      ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.b, 12
  %n.vec68 = and i64 %i.b, -16                    ; 4 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.ph67, %vector.body69
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next73, %vector.body69 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index70 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load71 = load <8 x i16>, ptr %i.h, align 2, !tbaa !122, !alias.scope !1328
  %wide.load72 = load <8 x i16>, ptr %i.i, align 2, !tbaa !122, !alias.scope !1328
  %i.j = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load71, <8 x i16> splat (i16 -128))
  %i.k = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load72, <8 x i16> splat (i16 -128))
  %i.l = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 127))
  %i.m = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.k, <8 x i16> splat (i16 127))
  %i.n = trunc nsw <8 x i16> %i.l to <8 x i8>
  %i.o = xor <8 x i8> %i.n, splat (i8 -128)
  %i.p = trunc nsw <8 x i16> %i.m to <8 x i8>
  %i.q = xor <8 x i8> %i.p, splat (i8 -128)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index70 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <8 x i8> %i.o, ptr %i.r, align 1, !tbaa !119, !alias.scope !1329, !noalias !1328
  store <8 x i8> %i.q, ptr %i.s, align 1, !tbaa !119, !alias.scope !1329, !noalias !1328
  %index.next73 = add nuw i64 %index70, 16        ; 2 uses
  %i.t = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.t, label %middle.block74, label %vector.body69, !llvm.loop !1321

middle.block74:                                   ; preds = %vector.body69
  %cmp.n75 = icmp eq i64 %i.b, %n.vec68
  br i1 %cmp.n75, label %ma_clip_samples_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block74
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec68, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %i.b, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next79, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index77
  %wide.load78 = load <4 x i16>, ptr %i.u, align 2, !tbaa !122, !alias.scope !1328
  %i.v = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load78, <4 x i16> splat (i16 -128))
  %i.w = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %i.v, <4 x i16> splat (i16 127))
  %i.x = trunc nsw <4 x i16> %i.w to <4 x i8>
  %i.y = xor <4 x i8> %i.x, splat (i8 -128)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index77
  store <4 x i8> %i.y, ptr %i.z, align 1, !tbaa !119, !alias.scope !1329, !noalias !1328
  %index.next79 = add nuw i64 %index77, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1322

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %i.b, %n.vec76
  br i1 %cmp.n80, label %ma_clip_samples_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck65, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck65 ], [ %n.vec68, %vec.epilog.iter.check ], [ %n.vec76, %vec.epilog.middle.block ] ; 5 uses
  %.neg100 = or disjoint i64 %.06.i.ph, 1
  %xtraiter98 = and i64 %i.b, 1
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06.i.ph
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !122
  %i.ad = tail call i16 @llvm.smax.i16(i16 %i.ac, i16 -128)
  %i.ae = tail call i16 @llvm.smin.i16(i16 %i.ad, i16 127)
  %i.af = trunc nsw i16 %i.ae to i8
  %i.ag = xor i8 %i.af, -128
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i.ph
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !119
  %i.ai = or disjoint i64 %.06.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi i64 [ %.06.i.ph, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = icmp eq i64 %i.b, %.neg100
  br i1 %i.aj, label %ma_clip_samples_u8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.06.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !122
  %i.am = tail call i16 @llvm.smax.i16(i16 %i.al, i16 -128)
  %i.an = tail call i16 @llvm.smin.i16(i16 %i.am, i16 127)
  %i.ao = trunc nsw i16 %i.an to i8
  %i.ap = xor i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.06.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !119
  %i.ar = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !122
  %i.au = tail call i16 @llvm.smax.i16(i16 %i.at, i16 -128)
  %i.av = tail call i16 @llvm.smin.i16(i16 %i.au, i16 127)
  %i.aw = trunc nsw i16 %i.av to i8
  %i.ax = xor i8 %i.aw, -128
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !119
  %i.az = add nuw i64 %.06.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.az, %i.b
  br i1 %exitcond.not.i.1, label %ma_clip_samples_u8.exit, label %.lr.ph.i, !llvm.loop !1323

bb.c:                                             ; preds = %bb.a
  %.not.i17 = icmp eq i64 %i.b, 0
  br i1 %.not.i17, label %ma_clip_samples_u8.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %bb.c
  %min.iters.check50 = icmp ult i64 %i.b, 8
  br i1 %min.iters.check50, label %.lr.ph.i18.preheader84, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.i18.preheader
  %n.vec52 = and i64 %i.b, -8                     ; 3 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body53 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index54 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load55 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !118
  %wide.load56 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !118
  %i.bc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load55, <4 x i32> splat (i32 -32768))
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load56, <4 x i32> splat (i32 -32768))
  %i.be = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bc, <4 x i32> splat (i32 32767))
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bd, <4 x i32> splat (i32 32767))
  %i.bg = trunc nsw <4 x i32> %i.be to <4 x i16>
  %i.bh = trunc nsw <4 x i32> %i.bf to <4 x i16>
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index54 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store <4 x i16> %i.bg, ptr %i.bi, align 2, !tbaa !122
  store <4 x i16> %i.bh, ptr %i.bj, align 2, !tbaa !122
  %index.next57 = add nuw i64 %index54, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.bk, label %middle.block58, label %vector.body53, !llvm.loop !1324

middle.block58:                                   ; preds = %vector.body53
  %cmp.n59 = icmp eq i64 %i.b, %n.vec52
  br i1 %cmp.n59, label %ma_clip_samples_u8.exit, label %.lr.ph.i18.preheader84

.lr.ph.i18.preheader84:                           ; preds = %.lr.ph.i18.preheader, %middle.block58
  %.06.i19.ph = phi i64 [ 0, %.lr.ph.i18.preheader ], [ %n.vec52, %middle.block58 ]
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader84, %.lr.ph.i18
  %.06.i19 = phi i64 [ %i.br, %.lr.ph.i18 ], [ %.06.i19.ph, %.lr.ph.i18.preheader84 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i19
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !118
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bm, i32 -32768)
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 32767)
  %i.bp = trunc nsw i32 %i.bo to i16
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.06.i19
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !122
  %i.br = add nuw i64 %.06.i19, 1                 ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %i.br, %i.b
  br i1 %exitcond.not.i20, label %ma_clip_samples_u8.exit, label %.lr.ph.i18, !llvm.loop !1325

bb.d:                                             ; preds = %bb.a
  %.not.i21 = icmp eq i64 %i.b, 0
  br i1 %.not.i21, label %ma_clip_samples_u8.exit, label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %bb.d
  %xtraiter93 = and i64 %i.b, 1
  %i.bs = icmp eq i64 %i.b, 1
  br i1 %i.bs, label %.lr.ph.i22.epil.preheader, label %.lr.ph.i22.preheader.new

.lr.ph.i22.preheader.new:                         ; preds = %.lr.ph.i22.preheader
  %unroll_iter96 = and i64 %i.b, -2
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22, %.lr.ph.i22.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i22.preheader.new ], [ %i.cu, %.lr.ph.i22 ] ; 4 uses
  %niter97 = phi i64 [ 0, %.lr.ph.i22.preheader.new ], [ %niter97.next.1, %.lr.ph.i22 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !164
  %i.bv = tail call i64 @llvm.smax.i64(i64 %i.bu, i64 -8388608)
  %i.bw = tail call i64 @llvm.smin.i64(i64 %i.bv, i64 8388607) ; 3 uses
  %i.bx = trunc i64 %i.bw to i8
  %i.by = mul i64 %.013.i, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by ; 3 uses
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !119
  %i.ca = lshr i64 %i.bw, 8
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = getelementptr i8, ptr %i.bz, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !119
  %i.cd = lshr i64 %i.bw, 16
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !119
  %i.cg = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !164
  %i.cj = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 -8388608)
  %i.ck = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 8388607) ; 3 uses
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = mul i64 %i.cg, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %i.cm ; 3 uses
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !119
  %i.co = lshr i64 %i.ck, 8
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr i8, ptr %i.cn, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !119
  %i.cr = lshr i64 %i.ck, 16
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr i8, ptr %i.cn, i64 2
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !119
  %i.cu = add nuw i64 %.013.i, 2                  ; 2 uses
  %niter97.next.1 = add i64 %niter97, 2           ; 2 uses
  %niter97.ncmp.1 = icmp eq i64 %niter97.next.1, %unroll_iter96
  br i1 %niter97.ncmp.1, label %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, label %.lr.ph.i22, !llvm.loop !13

bb.e:                                             ; preds = %bb.a
  %.not.i24 = icmp eq i64 %i.b, 0
  br i1 %.not.i24, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.preheader

.lr.ph.i25.preheader:                             ; preds = %bb.e
  %xtraiter90 = and i64 %i.b, 1
  %i.cv = icmp eq i64 %i.b, 1
  br i1 %i.cv, label %.lr.ph.i25.epil.preheader, label %.lr.ph.i25.preheader.new

.lr.ph.i25.preheader.new:                         ; preds = %.lr.ph.i25.preheader
  %unroll_iter = and i64 %i.b, -2
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.i25.preheader.new
  %.06.i26 = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %i.dj, %.lr.ph.i25 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.preheader.new ], [ %niter.next.1, %.lr.ph.i25 ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !164
  %i.cy = tail call i64 @llvm.smax.i64(i64 %i.cx, i64 -2147483648)
  %i.cz = tail call i64 @llvm.smin.i64(i64 %i.cy, i64 2147483647)
  %i.da = trunc nsw i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26
  store i32 %i.da, ptr %i.db, align 4, !tbaa !118
  %i.dc = or disjoint i64 %.06.i26, 1             ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !164
  %i.df = tail call i64 @llvm.smax.i64(i64 %i.de, i64 -2147483648)
  %i.dg = tail call i64 @llvm.smin.i64(i64 %i.df, i64 2147483647)
  %i.dh = trunc nsw i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !118
  %i.dj = add nuw i64 %.06.i26, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_clip_samples_u8.exit.loopexit87.unr-lcssa, label %.lr.ph.i25, !llvm.loop !14

bb.f:                                             ; preds = %bb.a
  %.not.i28 = icmp eq i64 %i.b, 0
  br i1 %.not.i28, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader

.lr.ph.i29.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.b, 8
  %5 = ptrtoaddr ptr %0 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.dk = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.dk, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i29.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i29.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <4 x float>, ptr %i.dl, align 4, !tbaa !349 ; 3 uses
  %wide.load48 = load <4 x float>, ptr %i.dm, align 4, !tbaa !349 ; 3 uses
  %i.dn = fcmp olt <4 x float> %wide.load, splat (float -1.000000e+00)
  %i.do = fcmp olt <4 x float> %wide.load48, splat (float -1.000000e+00)
  %i.dp = fcmp ogt <4 x float> %wide.load, splat (float 1.000000e+00)
  %i.dq = fcmp ogt <4 x float> %wide.load48, splat (float 1.000000e+00)
  %i.dr = select <4 x i1> %i.dp, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load
  %i.ds = select <4 x i1> %i.dq, <4 x float> splat (float 1.000000e+00), <4 x float> %wide.load48
  %i.dt = select <4 x i1> %i.dn, <4 x float> splat (float -1.000000e+00), <4 x float> %i.dr
  %i.du = select <4 x i1> %i.do, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ds
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x float> %i.dt, ptr %i.dv, align 4, !tbaa !349
  store <4 x float> %i.du, ptr %i.dw, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !1326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_clip_samples_u8.exit, label %.lr.ph.i29.preheader88

.lr.ph.i29.preheader88:                           ; preds = %.lr.ph.i29.preheader, %middle.block
  %.06.i30.ph = phi i64 [ 0, %.lr.ph.i29.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.06.i30.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i29.prol.loopexit, label %.lr.ph.i29.prol

.lr.ph.i29.prol:                                  ; preds = %.lr.ph.i29.preheader88
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30.ph
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !349 ; 3 uses
  %i.ea = fcmp olt float %i.dz, -1.000000e+00
  %i.eb = fcmp ogt float %i.dz, 1.000000e+00
  %..i.i.prol = select i1 %i.eb, float 1.000000e+00, float %i.dz
  %.0.i.i.prol = select i1 %i.ea, float -1.000000e+00, float %..i.i.prol
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30.ph
  store float %.0.i.i.prol, ptr %i.ec, align 4, !tbaa !349
  %i.ed = or disjoint i64 %.06.i30.ph, 1
  br label %.lr.ph.i29.prol.loopexit

.lr.ph.i29.prol.loopexit:                         ; preds = %.lr.ph.i29.prol, %.lr.ph.i29.preheader88
  %.06.i30.unr = phi i64 [ %.06.i30.ph, %.lr.ph.i29.preheader88 ], [ %i.ed, %.lr.ph.i29.prol ]
  %i.ee = icmp eq i64 %i.b, %.neg
  br i1 %i.ee, label %ma_clip_samples_u8.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29
  %.06.i30 = phi i64 [ %i.eq, %.lr.ph.i29 ], [ %.06.i30.unr, %.lr.ph.i29.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06.i30
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !349 ; 3 uses
  %i.eh = fcmp olt float %i.eg, -1.000000e+00
  %i.ei = fcmp ogt float %i.eg, 1.000000e+00
  %..i.i = select i1 %i.ei, float 1.000000e+00, float %i.eg
  %.0.i.i = select i1 %i.eh, float -1.000000e+00, float %..i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i30
  store float %.0.i.i, ptr %i.ej, align 4, !tbaa !349
  %i.ek = add nuw i64 %.06.i30, 1                 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !349 ; 3 uses
  %i.en = fcmp olt float %i.em, -1.000000e+00
  %i.eo = fcmp ogt float %i.em, 1.000000e+00
  %..i.i.1 = select i1 %i.eo, float 1.000000e+00, float %i.em
  %.0.i.i.1 = select i1 %i.en, float -1.000000e+00, float %..i.i.1
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ek
  store float %.0.i.i.1, ptr %i.ep, align 4, !tbaa !349
  %i.eq = add nuw i64 %.06.i30, 2                 ; 2 uses
  %exitcond.not.i31.1 = icmp eq i64 %i.eq, %i.b
  br i1 %exitcond.not.i31.1, label %ma_clip_samples_u8.exit, label %.lr.ph.i29, !llvm.loop !1327

ma_clip_samples_u8.exit.loopexit86.unr-lcssa:     ; preds = %.lr.ph.i22
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i22.epil.preheader

.lr.ph.i22.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, %.lr.ph.i22.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i22.preheader ], [ %i.cu, %ma_clip_samples_u8.exit.loopexit86.unr-lcssa ] ; 2 uses
  %lcmp.mod95 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.013.i.epil.init
  %i.es = load i64, ptr %i.er, align 8, !tbaa !164
  %i.et = tail call i64 @llvm.smax.i64(i64 %i.es, i64 -8388608)
  %i.eu = tail call i64 @llvm.smin.i64(i64 %i.et, i64 8388607) ; 3 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = mul i64 %.013.i.epil.init, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew ; 3 uses
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !119
  %i.ey = lshr i64 %i.eu, 8
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr i8, ptr %i.ex, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !119
  %i.fb = lshr i64 %i.eu, 16
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr i8, ptr %i.ex, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !119
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit.loopexit87.unr-lcssa:     ; preds = %.lr.ph.i25
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %ma_clip_samples_u8.exit, label %.lr.ph.i25.epil.preheader

.lr.ph.i25.epil.preheader:                        ; preds = %ma_clip_samples_u8.exit.loopexit87.unr-lcssa, %.lr.ph.i25.preheader
  %.06.i26.epil.init = phi i64 [ 0, %.lr.ph.i25.preheader ], [ %i.dj, %ma_clip_samples_u8.exit.loopexit87.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.06.i26.epil.init
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !164
  %i.fg = tail call i64 @llvm.smax.i64(i64 %i.ff, i64 -2147483648)
  %i.fh = tail call i64 @llvm.smin.i64(i64 %i.fg, i64 2147483647)
  %i.fi = trunc nsw i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.06.i26.epil.init
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !118
  br label %ma_clip_samples_u8.exit

ma_clip_samples_u8.exit:                          ; preds = %.lr.ph.i29.prol.loopexit, %.lr.ph.i29, %.lr.ph.i25.epil.preheader, %ma_clip_samples_u8.exit.loopexit87.unr-lcssa, %.lr.ph.i22.epil.preheader, %ma_clip_samples_u8.exit.loopexit86.unr-lcssa, %.lr.ph.i18, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block58, %middle.block74, %vec.epilog.middle.block, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %2, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %2, 12
  %n.vec = and i64 %2, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !119
  %i.i = uitofp <16 x i8> %wide.load to <16 x float>
  %i.j = fmul <16 x float> %broadcast.splat, %i.i
  %i.k = fptoui <16 x float> %i.j to <16 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.k, ptr %i.l, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1330

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %2, -4                       ; 3 uses
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <4 x i8>, ptr %i.n, align 1, !tbaa !119
  %i.o = uitofp <4 x i8> %wide.load23 to <4 x float>
  %i.p = fmul <4 x float> %broadcast.splat21, %i.o
  %i.q = fptoui <4 x float> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <4 x i8> %i.q, ptr %i.r, align 1, !tbaa !119
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1331

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %2, %n.vec19
  br i1 %cmp.n25, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.012.ph
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul float %3, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012.ph
  store i8 %i.x, ptr %i.y, align 1, !tbaa !119
  %i.z = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader ], [ %i.z, %.lr.ph.prol ]
  %i.aa = icmp eq i64 %2, %.neg
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ao, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptoui float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !119
  %i.ah = add nuw i64 %.012, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !119
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul float %3, %i.ak
  %i.am = fptoui float %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1, !tbaa !119
  %i.ao = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1332

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !tbaa !122
  %i.h = sitofp <8 x i16> %wide.load to <8 x float>
  %i.i = fmul <8 x float> %broadcast.splat, %i.h
  %i.j = fptosi <8 x float> %i.i to <8 x i16>
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.j, ptr %i.k, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.ph
  %i.n = load i16, ptr %i.m, align 2, !tbaa !122
  %i.o = sitofp i16 %i.n to float
  %i.p = fmul float %3, %i.o
  %i.q = fptosi float %i.p to i16
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.ph
  store i16 %i.q, ptr %i.r, align 2, !tbaa !122
  %i.s = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader18 ], [ %i.s, %.lr.ph.prol ]
  %i.t = icmp eq i64 %2, %.neg
  br i1 %i.t, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ah, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012
  %i.v = load i16, ptr %i.u, align 2, !tbaa !122
  %i.w = sitofp i16 %i.v to float
  %i.x = fmul float %3, %i.w
  %i.y = fptosi float %i.x to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012
  store i16 %i.y, ptr %i.z, align 2, !tbaa !122
  %i.aa = add nuw i64 %.012, 1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !122
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = fmul float %3, %i.ad
  %i.af = fptosi float %i.ae to i16
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !122
  %i.ah = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1334

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s24(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not29 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond27 = and i1 %or.cond.not29, %i.c
  br i1 %or.cond27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.026 = phi i64 [ %i.ag, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = mul i64 %.026, 3                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = add i64 %i.d, 1                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !119
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.h
  %i.o = add i64 %i.d, 2                          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !119
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw i32 %i.r, 24
  %i.t = or disjoint i32 %i.n, %i.s
  %i.u = sitofp i32 %i.t to float
  %i.v = fmul float %3, %i.u
  %i.w = fptosi float %i.v to i32                 ; 3 uses
  %i.x = lshr i32 %i.w, 8
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 %i.y, ptr %i.z, align 1, !tbaa !119
  %i.aa = lshr i32 %i.w, 16
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !119
  %i.ad = lshr i32 %i.w, 24
  %i.ae = trunc nuw i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !119
  %i.ag = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_s32(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not15 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond13 = and i1 %or.cond.not15, %i.c
  br i1 %or.cond13, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !118
  %wide.load18 = load <4 x i32>, ptr %i.h, align 4, !tbaa !118
  %i.i = sitofp <4 x i32> %wide.load to <4 x float>
  %i.j = sitofp <4 x i32> %wide.load18 to <4 x float>
  %i.k = fmul <4 x float> %broadcast.splat, %i.i
  %i.l = fmul <4 x float> %broadcast.splat, %i.j
  %i.m = fptosi <4 x float> %i.k to <4 x i32>
  %i.n = fptosi <4 x float> %i.l to <4 x i32>
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %i.m, ptr %i.o, align 4, !tbaa !118
  store <4 x i32> %i.n, ptr %i.p, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !1335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012.ph
  %i.s = load i32, ptr %i.r, align 4, !tbaa !118
  %i.t = sitofp i32 %i.s to float
  %i.u = fmul float %3, %i.t
  %i.v = fptosi float %i.u to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.ph
  store i32 %i.v, ptr %i.w, align 4, !tbaa !118
  %i.x = or disjoint i64 %.012.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader19 ], [ %i.x, %.lr.ph.prol ]
  %i.y = icmp eq i64 %2, %.neg
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.am, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !118
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fmul float %3, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !118
  %i.af = add nuw i64 %.012, 1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !118
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fmul float %3, %i.ai
  %i.ak = fptosi float %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !118
  %i.am = add nuw i64 %.012, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.am, %2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !1336

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_f32(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq float %3, 1.000000e+00
  br i1 %i.c, label %bb.c, label %.preheader23

.preheader23:                                     ; preds = %bb.b
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader23
  %min.iters.check = icmp ult i64 %2, 8
  %4 = ptrtoaddr ptr %0 to i64
  %5 = ptrtoaddr ptr %1 to i64
  %i.d = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond51 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond51, label %.lr.ph.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x float>, ptr %i.e, align 4, !tbaa !349
  %wide.load36 = load <4 x float>, ptr %i.f, align 4, !tbaa !349
  %i.g = fmul <4 x float> %broadcast.splat, %wide.load
  %i.h = fmul <4 x float> %broadcast.splat, %wide.load36
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> %i.g, ptr %i.i, align 4, !tbaa !349
  store <4 x float> %i.h, ptr %i.j, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader54

.lr.ph.preheader54:                               ; preds = %.lr.ph.preheader, %middle.block
  %.125.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader54, %.lr.ph.prol
  %.125.prol = phi i64 [ %i.p, %.lr.ph.prol ], [ %.125.ph, %.lr.ph.preheader54 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader54 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.prol
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = fmul float %3, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.prol
  store float %i.n, ptr %i.o, align 4, !tbaa !349
  %i.p = add nuw i64 %.125.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1338

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader54
  %.125.unr = phi i64 [ %.125.ph, %.lr.ph.preheader54 ], [ %i.p, %.lr.ph.prol ]
  %i.q = sub i64 %.125.ph, %2
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ne ptr %0, %1
  %i.t = icmp ne i64 %2, 0
  %or.cond28 = and i1 %i.s, %i.t
  br i1 %or.cond28, label %.lr.ph27.preheader, label %.loopexit

.lr.ph27.preheader:                               ; preds = %bb.c
  %min.iters.check40 = icmp ult i64 %2, 8
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.u = sub i64 %7, %6
  %diff.check38 = icmp ugt i64 %i.u, -32
  %or.cond52 = or i1 %min.iters.check40, %diff.check38
  br i1 %or.cond52, label %.lr.ph27.preheader53, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph27.preheader
  %n.vec42 = and i64 %2, -8                       ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next47, %vector.body43 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load45 = load <4 x float>, ptr %i.v, align 4, !tbaa !349
  %wide.load46 = load <4 x float>, ptr %i.w, align 4, !tbaa !349
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index44 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %wide.load45, ptr %i.x, align 4, !tbaa !349
  store <4 x float> %wide.load46, ptr %i.y, align 4, !tbaa !349
  %index.next47 = add nuw i64 %index44, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next47, %n.vec42
  br i1 %i.z, label %middle.block48, label %vector.body43, !llvm.loop !1339

middle.block48:                                   ; preds = %vector.body43
  %cmp.n49 = icmp eq i64 %2, %n.vec42
  br i1 %cmp.n49, label %.loopexit, label %.lr.ph27.preheader53

.lr.ph27.preheader53:                             ; preds = %.lr.ph27.preheader, %middle.block48
  %.026.ph = phi i64 [ 0, %.lr.ph27.preheader ], [ %n.vec42, %middle.block48 ] ; 3 uses
  %xtraiter56 = and i64 %2, 3                     ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol

.lr.ph27.prol:                                    ; preds = %.lr.ph27.preheader53, %.lr.ph27.prol
  %.026.prol = phi i64 [ %i.ad, %.lr.ph27.prol ], [ %.026.ph, %.lr.ph27.preheader53 ] ; 3 uses
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.lr.ph27.prol ], [ 0, %.lr.ph27.preheader53 ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.prol
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !349
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.prol
  store float %i.ab, ptr %i.ac, align 4, !tbaa !349
  %i.ad = add nuw i64 %.026.prol, 1               ; 2 uses
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.lr.ph27.prol.loopexit, label %.lr.ph27.prol, !llvm.loop !1340

.lr.ph27.prol.loopexit:                           ; preds = %.lr.ph27.prol, %.lr.ph27.preheader53
  %.026.unr = phi i64 [ %.026.ph, %.lr.ph27.preheader53 ], [ %i.ad, %.lr.ph27.prol ]
  %i.ae = sub i64 %.026.ph, %2
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.loopexit, label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.prol.loopexit, %.lr.ph27
  %.026 = phi i64 [ %i.av, %.lr.ph27 ], [ %.026.unr, %.lr.ph27.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !349
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store float %i.ah, ptr %i.ai, align 4, !tbaa !349
  %i.aj = add nuw i64 %.026, 1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !349
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  store float %i.al, ptr %i.am, align 4, !tbaa !349
  %i.an = add nuw i64 %.026, 2                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !349
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  store float %i.ap, ptr %i.aq, align 4, !tbaa !349
  %i.ar = add nuw i64 %.026, 3                    ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !349
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  store float %i.at, ptr %i.au, align 4, !tbaa !349
  %i.av = add nuw i64 %.026, 4                    ; 2 uses
  %exitcond30.not.3 = icmp eq i64 %i.av, %2
  br i1 %exitcond30.not.3, label %.loopexit, label %.lr.ph27, !llvm.loop !1341

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.125 = phi i64 [ %i.bp, %.lr.ph ], [ %.125.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !349
  %i.ay = fmul float %3, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125
  store float %i.ay, ptr %i.az, align 4, !tbaa !349
  %i.ba = add nuw i64 %.125, 1                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = fmul float %3, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  store float %i.bd, ptr %i.be, align 4, !tbaa !349
  %i.bf = add nuw i64 %.125, 2                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !349
  %i.bi = fmul float %3, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  store float %i.bi, ptr %i.bj, align 4, !tbaa !349
  %i.bk = add nuw i64 %.125, 3                    ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !349
  %i.bn = fmul float %3, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  store float %i.bn, ptr %i.bo, align 4, !tbaa !349
  %i.bp = add nuw i64 %.125, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bp, %2
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !1342

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph27.prol.loopexit, %.lr.ph27, %middle.block, %middle.block48, %.preheader23, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_u8(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
  br i1 %or.cond13.i, label %iter.check, label %ma_copy_and_apply_volume_factor_u8.exit

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i64 %1, 16
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.c = and i64 %1, 12
  %n.vec = and i64 %1, -16                        ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.d, align 1, !tbaa !119
  %i.e = uitofp <16 x i8> %wide.load to <16 x float>
  %i.f = fmul <16 x float> %broadcast.splat, %i.e
  %i.g = fptoui <16 x float> %i.f to <16 x i8>
  store <16 x i8> %i.g, ptr %i.d, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.c, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec5 = and i64 %1, -4                        ; 3 uses
  %broadcast.splatinsert6 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat7 = shufflevector <4 x float> %broadcast.splatinsert6, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %index8 ; 2 uses
  %wide.load9 = load <4 x i8>, ptr %i.i, align 1, !tbaa !119
  %i.j = uitofp <4 x i8> %wide.load9 to <4 x float>
  %i.k = fmul <4 x float> %broadcast.splat7, %i.j
  %i.l = fptoui <4 x float> %i.k to <4 x i8>
  store <4 x i8> %i.l, ptr %i.i, align 1, !tbaa !119
  %index.next10 = add nuw i64 %index8, 4          ; 2 uses
  %i.m = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1344

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %1, %n.vec5
  br i1 %cmp.n11, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !119
  %i.p = uitofp i8 %i.o to float
  %i.q = fmul float %2, %i.p
  %i.r = fptoui float %i.q to i8
  store i8 %i.r, ptr %i.n, align 1, !tbaa !119
  %i.s = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i, !llvm.loop !1345

ma_copy_and_apply_volume_factor_u8.exit:          ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
end_hunk_0
begin_hunk_1_@ma_apply_volume_factor_s16:bb.a
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader4

.lr.ph.i.preheader4:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader4, %.lr.ph.i
  %.012.i = phi i64 [ %i.m, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader4 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !122
  %i.j = sitofp i16 %i.i to float
  %i.k = fmul float %2, %i.j
  %i.l = fptosi float %i.k to i16
  store i16 %i.l, ptr %i.h, align 2, !tbaa !122
  %i.m = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !1347

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s24(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond27.i = and i1 %i.a, %i.b
  br i1 %or.cond27.i, label %.lr.ph.i, label %ma_copy_and_apply_volume_factor_s24.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.026.i = phi i64 [ %i.aa, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = mul i64 %.026.i, 3
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %i.d, i64 1        ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !119
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !119
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw i32 %i.o, 24
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %2, %i.r
  %i.t = fptosi float %i.s to i32                 ; 3 uses
  %i.u = lshr i32 %i.t, 8
  %i.v = trunc i32 %i.u to i8
  store i8 %i.v, ptr %i.d, align 1, !tbaa !119
  %i.w = lshr i32 %i.t, 16
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.h, align 1, !tbaa !119
  %i.y = lshr i32 %i.t, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.m, align 1, !tbaa !119
  %i.aa = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s24.exit, label %.lr.ph.i, !llvm.loop !9

ma_copy_and_apply_volume_factor_s24.exit:         ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_s32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond13.i = and i1 %i.a, %i.b
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s32.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !118
  %wide.load4 = load <4 x i32>, ptr %i.d, align 4, !tbaa !118
  %i.e = sitofp <4 x i32> %wide.load to <4 x float>
  %i.f = sitofp <4 x i32> %wide.load4 to <4 x float>
  %i.g = fmul <4 x float> %broadcast.splat, %i.e
  %i.h = fmul <4 x float> %broadcast.splat, %i.f
  %i.i = fptosi <4 x float> %i.g to <4 x i32>
  %i.j = fptosi <4 x float> %i.h to <4 x i32>
  store <4 x i32> %i.i, ptr %i.c, align 4, !tbaa !118
  store <4 x i32> %i.j, ptr %i.d, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i.preheader5

.lr.ph.i.preheader5:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %.lr.ph.i
  %.012.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !118
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %2, %i.n
  %i.p = fptosi float %i.o to i32
  store i32 %i.p, ptr %i.l, align 4, !tbaa !118
  %i.q = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i, !llvm.loop !1349

ma_copy_and_apply_volume_factor_s32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_f32(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, float noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = fcmp oeq float %2, 1.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %.not.i = icmp eq i64 %1, 0
  %or.cond3 = or i1 %.not.i, %or.cond
  br i1 %or.cond3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.c, align 4, !tbaa !349
  %wide.load6 = load <4 x float>, ptr %i.d, align 4, !tbaa !349
  %i.e = fmul <4 x float> %broadcast.splat, %wide.load
  %i.f = fmul <4 x float> %broadcast.splat, %wide.load6
  store <4 x float> %i.e, ptr %i.c, align 4, !tbaa !349
  store <4 x float> %i.f, ptr %i.d, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader7, %.lr.ph.i
  %.125.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.125.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fmul float %2, %i.i
  store float %i.j, ptr %i.h, align 4, !tbaa !349
  %i.k = add nuw i64 %.125.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %1
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i, !llvm.loop !1351

ma_copy_and_apply_volume_factor_f32.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_u8(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 11 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %iter.check, label %ma_copy_and_apply_volume_factor_u8.exit

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.b, 12
  %n.vec = and i64 %i.b, -16                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !tbaa !119
  %i.k = uitofp <16 x i8> %wide.load to <16 x float>
  %i.l = fmul <16 x float> %broadcast.splat, %i.k
  %i.m = fptoui <16 x float> %i.l to <16 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1352

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %i.b, -4                      ; 3 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %i.q = uitofp <4 x i8> %wide.load11 to <4 x float>
  %i.r = fmul <4 x float> %broadcast.splat9, %i.q
  %i.s = fptoui <4 x float> %i.r to <4 x i8>
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index10
  store <4 x i8> %i.s, ptr %i.t, align 1, !tbaa !119
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next12, %n.vec7
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.b, %n.vec7
  br i1 %cmp.n13, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.ph
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119
  %i.x = uitofp i8 %i.w to float
  %i.y = fmul float %4, %i.x
  %i.z = fptoui float %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.ph
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !119
  %i.ab = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ac = icmp eq i64 %i.b, %.neg
  br i1 %i.ac, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptoui float %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !119
  %i.aj = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !119
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul float %4, %i.am
  %i.ao = fptoui float %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !119
  %i.aq = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_u8.exit, label %.lr.ph.i, !llvm.loop !1354

ma_copy_and_apply_volume_factor_u8.exit:          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_s16(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 7 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s16.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 8
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !122
  %i.j = sitofp <8 x i16> %wide.load to <8 x float>
  %i.k = fmul <8 x float> %broadcast.splat, %i.j
  %i.l = fptosi <8 x float> %i.k to <8 x i16>
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader6
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.ph
  %i.p = load i16, ptr %i.o, align 2, !tbaa !122
  %i.q = sitofp i16 %i.p to float
  %i.r = fmul float %4, %i.q
  %i.s = fptosi float %i.r to i16
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.ph
  store i16 %i.s, ptr %i.t, align 2, !tbaa !122
  %i.u = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader6 ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp eq i64 %i.b, %.neg
  br i1 %i.v, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !122
  %i.y = sitofp i16 %i.x to float
  %i.z = fmul float %4, %i.y
  %i.aa = fptosi float %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !122
  %i.ac = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !122
  %i.af = sitofp i16 %i.ae to float
  %i.ag = fmul float %4, %i.af
  %i.ah = fptosi float %i.ag to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !122
  %i.aj = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aj, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_s16.exit, label %.lr.ph.i, !llvm.loop !1356

ma_copy_and_apply_volume_factor_s16.exit:         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_s24(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 2 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not29.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond27.i = and i1 %or.cond.not29.i, %i.e
  br i1 %or.cond27.i, label %.lr.ph.i, label %ma_copy_and_apply_volume_factor_s24.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.026.i = phi i64 [ %i.ai, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = mul i64 %.026.i, 3                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !119
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = add i64 %i.f, 1                          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !119
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 16
  %i.p = or disjoint i32 %i.o, %i.j
  %i.q = add i64 %i.f, 2                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !119
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw i32 %i.t, 24
  %i.v = or disjoint i32 %i.p, %i.u
  %i.w = sitofp i32 %i.v to float
  %i.x = fmul float %4, %i.w
  %i.y = fptosi float %i.x to i32                 ; 3 uses
  %i.z = lshr i32 %i.y, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !119
  %i.ac = lshr i32 %i.y, 16
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !119
  %i.af = lshr i32 %i.y, 24
  %i.ag = trunc nuw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !119
  %i.ai = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.b
  br i1 %exitcond.not.i, label %ma_copy_and_apply_volume_factor_s24.exit, label %.lr.ph.i, !llvm.loop !9

ma_copy_and_apply_volume_factor_s24.exit:         ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_s32(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 7 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i = and i1 %or.cond.not15.i, %i.e
  br i1 %or.cond13.i, label %.lr.ph.i.preheader, label %ma_copy_and_apply_volume_factor_s32.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 8
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %i.g, %i.f
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !118
  %wide.load6 = load <4 x i32>, ptr %i.j, align 4, !tbaa !118
  %i.k = sitofp <4 x i32> %wide.load to <4 x float>
  %i.l = sitofp <4 x i32> %wide.load6 to <4 x float>
  %i.m = fmul <4 x float> %broadcast.splat, %i.k
  %i.n = fmul <4 x float> %broadcast.splat, %i.l
  %i.o = fptosi <4 x float> %i.m to <4 x i32>
  %i.p = fptosi <4 x float> %i.n to <4 x i32>
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !118
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !118
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader7
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012.i.ph
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %i.v = sitofp i32 %i.u to float
  %i.w = fmul float %4, %i.v
  %i.x = fptosi float %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i.ph
  store i32 %i.x, ptr %i.y, align 4, !tbaa !118
  %i.z = or disjoint i64 %.012.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader7
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader7 ], [ %i.z, %.lr.ph.i.prol ]
  %i.aa = icmp eq i64 %i.b, %.neg
  br i1 %i.aa, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !118
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fmul float %4, %i.ad
  %i.af = fptosi float %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !118
  %i.ah = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !118
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul float %4, %i.ak
  %i.am = fptosi float %i.al to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  store i32 %i.am, ptr %i.an, align 4, !tbaa !118
  %i.ao = add nuw i64 %.012.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i.1, label %ma_copy_and_apply_volume_factor_s32.exit, label %.lr.ph.i, !llvm.loop !1358

ma_copy_and_apply_volume_factor_s32.exit:         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames_f32(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = mul i64 %2, %i.a                         ; 14 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %ma_copy_and_apply_volume_factor_f32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq float %4, 1.000000e+00
  br i1 %i.e, label %bb.c, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.b
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader23.i
  %min.iters.check = icmp ult i64 %i.b, 8
  %5 = ptrtoaddr ptr %0 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x float>, ptr %i.g, align 4, !tbaa !349
  %wide.load11 = load <4 x float>, ptr %i.h, align 4, !tbaa !349
  %i.i = fmul <4 x float> %broadcast.splat, %wide.load
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load11
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x float> %i.i, ptr %i.k, align 4, !tbaa !349
  store <4 x float> %i.j, ptr %i.l, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i.preheader28

.lr.ph.i.preheader28:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader28, %.lr.ph.i.prol
  %.125.i.prol = phi i64 [ %i.r, %.lr.ph.i.prol ], [ %.125.i.ph, %.lr.ph.i.preheader28 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader28 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i.prol
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fmul float %4, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i.prol
  store float %i.p, ptr %i.q, align 4, !tbaa !349
  %i.r = add nuw i64 %.125.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1360

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader28
  %.125.i.unr = phi i64 [ %.125.i.ph, %.lr.ph.i.preheader28 ], [ %i.r, %.lr.ph.i.prol ]
  %i.s = sub i64 %.125.i.ph, %i.b
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ne ptr %0, %1
  %i.v = icmp ne i64 %i.b, 0
  %or.cond28.i = and i1 %i.u, %i.v
  br i1 %or.cond28.i, label %.lr.ph27.i.preheader, label %ma_copy_and_apply_volume_factor_f32.exit

.lr.ph27.i.preheader:                             ; preds = %bb.c
  %min.iters.check15 = icmp ult i64 %i.b, 8
  %7 = ptrtoaddr ptr %0 to i64
  %8 = ptrtoaddr ptr %1 to i64
  %i.w = sub i64 %8, %7
  %diff.check13 = icmp ugt i64 %i.w, -32
  %or.cond26 = or i1 %min.iters.check15, %diff.check13
  br i1 %or.cond26, label %.lr.ph27.i.preheader27, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph27.i.preheader
  %n.vec17 = and i64 %i.b, -8                     ; 3 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next22, %vector.body18 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load20 = load <4 x float>, ptr %i.x, align 4, !tbaa !349
  %wide.load21 = load <4 x float>, ptr %i.y, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index19 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x float> %wide.load20, ptr %i.z, align 4, !tbaa !349
  store <4 x float> %wide.load21, ptr %i.aa, align 4, !tbaa !349
  %index.next22 = add nuw i64 %index19, 8         ; 2 uses
  %i.ab = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.ab, label %middle.block23, label %vector.body18, !llvm.loop !1361

middle.block23:                                   ; preds = %vector.body18
  %cmp.n24 = icmp eq i64 %i.b, %n.vec17
  br i1 %cmp.n24, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph27.i.preheader27

.lr.ph27.i.preheader27:                           ; preds = %.lr.ph27.i.preheader, %middle.block23
  %.026.i.ph = phi i64 [ 0, %.lr.ph27.i.preheader ], [ %n.vec17, %middle.block23 ] ; 3 uses
  %xtraiter30 = and i64 %i.b, 3                   ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph27.i.prol.loopexit, label %.lr.ph27.i.prol

.lr.ph27.i.prol:                                  ; preds = %.lr.ph27.i.preheader27, %.lr.ph27.i.prol
  %.026.i.prol = phi i64 [ %i.af, %.lr.ph27.i.prol ], [ %.026.i.ph, %.lr.ph27.i.preheader27 ] ; 3 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph27.i.prol ], [ 0, %.lr.ph27.i.preheader27 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !349
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i.prol
  store float %i.ad, ptr %i.ae, align 4, !tbaa !349
  %i.af = add nuw i64 %.026.i.prol, 1             ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph27.i.prol.loopexit, label %.lr.ph27.i.prol, !llvm.loop !1362

.lr.ph27.i.prol.loopexit:                         ; preds = %.lr.ph27.i.prol, %.lr.ph27.i.preheader27
  %.026.i.unr = phi i64 [ %.026.i.ph, %.lr.ph27.i.preheader27 ], [ %i.af, %.lr.ph27.i.prol ]
  %i.ag = sub i64 %.026.i.ph, %i.b
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.prol.loopexit, %.lr.ph27.i
  %.026.i = phi i64 [ %i.ax, %.lr.ph27.i ], [ %.026.i.unr, %.lr.ph27.i.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i
  store float %i.aj, ptr %i.ak, align 4, !tbaa !349
  %i.al = add nuw i64 %.026.i, 1                  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !349
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  store float %i.an, ptr %i.ao, align 4, !tbaa !349
  %i.ap = add nuw i64 %.026.i, 2                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !349
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  store float %i.ar, ptr %i.as, align 4, !tbaa !349
  %i.at = add nuw i64 %.026.i, 3                  ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !349
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store float %i.av, ptr %i.aw, align 4, !tbaa !349
  %i.ax = add nuw i64 %.026.i, 4                  ; 2 uses
  %exitcond30.not.i.3 = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond30.not.i.3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph27.i, !llvm.loop !1363

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.125.i = phi i64 [ %i.br, %.lr.ph.i ], [ %.125.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %4, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i
  store float %i.ba, ptr %i.bb, align 4, !tbaa !349
  %i.bc = add nuw i64 %.125.i, 1                  ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !349
  %i.bf = fmul float %4, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  store float %i.bf, ptr %i.bg, align 4, !tbaa !349
  %i.bh = add nuw i64 %.125.i, 2                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !349
  %i.bk = fmul float %4, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  store float %i.bk, ptr %i.bl, align 4, !tbaa !349
  %i.bm = add nuw i64 %.125.i, 3                  ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = fmul float %4, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  store float %i.bp, ptr %i.bq, align 4, !tbaa !349
  %i.br = add nuw i64 %.125.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.br, %i.b
  br i1 %exitcond.not.i.3, label %ma_copy_and_apply_volume_factor_f32.exit, label %.lr.ph.i, !llvm.loop !1364

ma_copy_and_apply_volume_factor_f32.exit:         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph27.i.prol.loopexit, %.lr.ph27.i, %middle.block, %middle.block23, %bb.a, %.preheader23.i, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_factor_pcm_frames(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  switch i32 %3, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %4 to i64
  %i.b = mul i64 %2, %i.a                         ; 11 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null
  %or.cond.not15.i.i = and i1 %i.c, %i.d
  %i.e = icmp ne i64 %i.b, 0
  %or.cond13.i.i = and i1 %or.cond.not15.i.i, %i.e
  br i1 %or.cond13.i.i, label %iter.check, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check121 = icmp ult i64 %i.b, 4
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %7, %6
  %diff.check119 = icmp ugt i64 %i.f, -16
  %or.cond = or i1 %min.iters.check121, %diff.check119
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.b, 12
  %n.vec124 = and i64 %i.b, -16                   ; 4 uses
  %broadcast.splatinsert125 = insertelement <16 x float> poison, float %5, i64 0
  %broadcast.splat126 = shufflevector <16 x float> %broadcast.splatinsert125, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body127

vector.body127:                                   ; preds = %vector.ph123, %vector.body127
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body127 ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index128
  %wide.load129 = load <16 x i8>, ptr %i.h, align 1, !tbaa !119
  %i.i = uitofp <16 x i8> %wide.load129 to <16 x float>
  %i.j = fmul <16 x float> %broadcast.splat126, %i.i
  %i.k = fptoui <16 x float> %i.j to <16 x i8>
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index128
  store <16 x i8> %i.k, ptr %i.l, align 1, !tbaa !119
  %index.next130 = add nuw i64 %index128, 16      ; 2 uses
  %i.m = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.m, label %middle.block131, label %vector.body127, !llvm.loop !1365

middle.block131:                                  ; preds = %vector.body127
  %cmp.n132 = icmp eq i64 %i.b, %n.vec124
  br i1 %cmp.n132, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block131
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.b, -4                    ; 3 uses
  %broadcast.splatinsert134 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat135 = shufflevector <4 x float> %broadcast.splatinsert134, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index136
  %wide.load137 = load <4 x i8>, ptr %i.n, align 1, !tbaa !119
  %i.o = uitofp <4 x i8> %wide.load137 to <4 x float>
  %i.p = fmul <4 x float> %broadcast.splat135, %i.o
  %i.q = fptoui <4 x float> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index136
  store <4 x i8> %i.q, ptr %i.r, align 1, !tbaa !119
  %index.next138 = add nuw i64 %index136, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1366

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.b, %n.vec133
  br i1 %cmp.n139, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec124, %vec.epilog.iter.check ], [ %n.vec133, %vec.epilog.middle.block ] ; 5 uses
  %.neg167 = or disjoint i64 %.012.i.i.ph, 1
  %xtraiter163 = and i64 %i.b, 1
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i.ph
  %i.u = load i8, ptr %i.t, align 1, !tbaa !119
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul float %5, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.i.ph
  store i8 %i.x, ptr %i.y, align 1, !tbaa !119
  %i.z = or disjoint i64 %.012.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %i.aa = icmp eq i64 %i.b, %.neg167
  br i1 %i.aa, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %.012.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.012.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul float %5, %i.ad
  %i.af = fptoui float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.i
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !119
  %i.ah = add nuw i64 %.012.i.i, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !119
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul float %5, %i.ak
  %i.am = fptoui float %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1, !tbaa !119
  %i.ao = add nuw i64 %.012.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ao, %i.b
  br i1 %exitcond.not.i.i.1, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i, !llvm.loop !1367

bb.c:                                             ; preds = %bb.a
  %i.ap = zext i32 %4 to i64
  %i.aq = mul i64 %2, %i.ap                       ; 7 uses
  %i.ar = icmp ne ptr %0, null
  %i.as = icmp ne ptr %1, null
  %or.cond.not15.i.i25 = and i1 %i.ar, %i.as
  %i.at = icmp ne i64 %i.aq, 0
  %or.cond13.i.i26 = and i1 %or.cond.not15.i.i25, %i.at
  br i1 %or.cond13.i.i26, label %.lr.ph.i.i27.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph.i.i27.preheader:                           ; preds = %bb.c
  %min.iters.check106 = icmp ult i64 %i.aq, 8
  %8 = ptrtoaddr ptr %0 to i64
  %9 = ptrtoaddr ptr %1 to i64
  %i.au = sub i64 %9, %8
  %diff.check104 = icmp ugt i64 %i.au, -16
  %or.cond141 = or i1 %min.iters.check106, %diff.check104
  br i1 %or.cond141, label %.lr.ph.i.i27.preheader145, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.i27.preheader
  %n.vec108 = and i64 %i.aq, -8                   ; 3 uses
  %broadcast.splatinsert109 = insertelement <8 x float> poison, float %5, i64 0
  %broadcast.splat110 = shufflevector <8 x float> %broadcast.splatinsert109, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph107
  %index112 = phi i64 [ 0, %vector.ph107 ], [ %index.next114, %vector.body111 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index112
  %wide.load113 = load <8 x i16>, ptr %i.av, align 2, !tbaa !122
  %i.aw = sitofp <8 x i16> %wide.load113 to <8 x float>
  %i.ax = fmul <8 x float> %broadcast.splat110, %i.aw
  %i.ay = fptosi <8 x float> %i.ax to <8 x i16>
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index112
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !122
  %index.next114 = add nuw i64 %index112, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.ba, label %middle.block115, label %vector.body111, !llvm.loop !1368

middle.block115:                                  ; preds = %vector.body111
  %cmp.n116 = icmp eq i64 %i.aq, %n.vec108
  br i1 %cmp.n116, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i27.preheader145

.lr.ph.i.i27.preheader145:                        ; preds = %.lr.ph.i.i27.preheader, %middle.block115
  %.012.i.i28.ph = phi i64 [ 0, %.lr.ph.i.i27.preheader ], [ %n.vec108, %middle.block115 ] ; 5 uses
  %.neg166 = or disjoint i64 %.012.i.i28.ph, 1
  %xtraiter160 = and i64 %i.aq, 1
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i.i27.prol.loopexit, label %.lr.ph.i.i27.prol

.lr.ph.i.i27.prol:                                ; preds = %.lr.ph.i.i27.preheader145
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.i28.ph
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !122
  %i.bd = sitofp i16 %i.bc to float
  %i.be = fmul float %5, %i.bd
  %i.bf = fptosi float %i.be to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.i28.ph
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !122
  %i.bh = or disjoint i64 %.012.i.i28.ph, 1
  br label %.lr.ph.i.i27.prol.loopexit

.lr.ph.i.i27.prol.loopexit:                       ; preds = %.lr.ph.i.i27.prol, %.lr.ph.i.i27.preheader145
  %.012.i.i28.unr = phi i64 [ %.012.i.i28.ph, %.lr.ph.i.i27.preheader145 ], [ %i.bh, %.lr.ph.i.i27.prol ]
  %i.bi = icmp eq i64 %i.aq, %.neg166
  br i1 %i.bi, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.prol.loopexit, %.lr.ph.i.i27
  %.012.i.i28 = phi i64 [ %i.bw, %.lr.ph.i.i27 ], [ %.012.i.i28.unr, %.lr.ph.i.i27.prol.loopexit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.012.i.i28
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !122
  %i.bl = sitofp i16 %i.bk to float
  %i.bm = fmul float %5, %i.bl
  %i.bn = fptosi float %i.bm to i16
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.012.i.i28
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !122
  %i.bp = add nuw i64 %.012.i.i28, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !122
  %i.bs = sitofp i16 %i.br to float
  %i.bt = fmul float %5, %i.bs
  %i.bu = fptosi float %i.bt to i16
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !122
  %i.bw = add nuw i64 %.012.i.i28, 2              ; 2 uses
  %exitcond.not.i.i29.1 = icmp eq i64 %i.bw, %i.aq
  br i1 %exitcond.not.i.i29.1, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i27, !llvm.loop !1369

bb.d:                                             ; preds = %bb.a
  %i.bx = zext i32 %4 to i64
  %i.by = mul i64 %2, %i.bx                       ; 2 uses
  %i.bz = icmp ne ptr %0, null
  %i.ca = icmp ne ptr %1, null
  %or.cond.not29.i.i = and i1 %i.bz, %i.ca
  %i.cb = icmp ne i64 %i.by, 0
  %or.cond27.i.i = and i1 %or.cond.not29.i.i, %i.cb
  br i1 %or.cond27.i.i, label %.lr.ph.i.i30, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph.i.i30:                                     ; preds = %bb.d, %.lr.ph.i.i30
  %.026.i.i = phi i64 [ %i.df, %.lr.ph.i.i30 ], [ 0, %bb.d ] ; 2 uses
  %i.cc = mul i64 %.026.i.i, 3                    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !119
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = add i64 %i.cc, 1                        ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !119
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 16
  %i.cm = or disjoint i32 %i.cl, %i.cg
  %i.cn = add i64 %i.cc, 2                        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !119
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 24
  %i.cs = or disjoint i32 %i.cm, %i.cr
  %i.ct = sitofp i32 %i.cs to float
  %i.cu = fmul float %5, %i.ct
  %i.cv = fptosi float %i.cu to i32               ; 3 uses
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !119
  %i.cz = lshr i32 %i.cv, 16
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  store i8 %i.da, ptr %i.db, align 1, !tbaa !119
  %i.dc = lshr i32 %i.cv, 24
  %i.dd = trunc nuw i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !119
  %i.df = add nuw i64 %.026.i.i, 1                ; 2 uses
  %exitcond.not.i.i31 = icmp eq i64 %i.df, %i.by
  br i1 %exitcond.not.i.i31, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i30, !llvm.loop !9

bb.e:                                             ; preds = %bb.a
  %i.dg = zext i32 %4 to i64
  %i.dh = mul i64 %2, %i.dg                       ; 7 uses
  %i.di = icmp ne ptr %0, null
  %i.dj = icmp ne ptr %1, null
  %or.cond.not15.i.i32 = and i1 %i.di, %i.dj
  %i.dk = icmp ne i64 %i.dh, 0
  %or.cond13.i.i33 = and i1 %or.cond.not15.i.i32, %i.dk
  br i1 %or.cond13.i.i33, label %.lr.ph.i.i34.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph.i.i34.preheader:                           ; preds = %bb.e
  %min.iters.check90 = icmp ult i64 %i.dh, 8
  %10 = ptrtoaddr ptr %0 to i64
  %11 = ptrtoaddr ptr %1 to i64
  %i.dl = sub i64 %11, %10
  %diff.check88 = icmp ugt i64 %i.dl, -32
  %or.cond142 = or i1 %min.iters.check90, %diff.check88
  br i1 %or.cond142, label %.lr.ph.i.i34.preheader148, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph.i.i34.preheader
  %n.vec92 = and i64 %i.dh, -8                    ; 3 uses
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph91
  %index96 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body95 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load97 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !118
  %wide.load98 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !118
  %i.do = sitofp <4 x i32> %wide.load97 to <4 x float>
  %i.dp = sitofp <4 x i32> %wide.load98 to <4 x float>
  %i.dq = fmul <4 x float> %broadcast.splat94, %i.do
  %i.dr = fmul <4 x float> %broadcast.splat94, %i.dp
  %i.ds = fptosi <4 x float> %i.dq to <4 x i32>
  %i.dt = fptosi <4 x float> %i.dr to <4 x i32>
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index96 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <4 x i32> %i.ds, ptr %i.du, align 4, !tbaa !118
  store <4 x i32> %i.dt, ptr %i.dv, align 4, !tbaa !118
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.dw = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.dw, label %middle.block100, label %vector.body95, !llvm.loop !1370

middle.block100:                                  ; preds = %vector.body95
  %cmp.n101 = icmp eq i64 %i.dh, %n.vec92
  br i1 %cmp.n101, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i34.preheader148

.lr.ph.i.i34.preheader148:                        ; preds = %.lr.ph.i.i34.preheader, %middle.block100
  %.012.i.i35.ph = phi i64 [ 0, %.lr.ph.i.i34.preheader ], [ %n.vec92, %middle.block100 ] ; 5 uses
  %.neg = or disjoint i64 %.012.i.i35.ph, 1
  %xtraiter157 = and i64 %i.dh, 1
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph.i.i34.prol.loopexit, label %.lr.ph.i.i34.prol

.lr.ph.i.i34.prol:                                ; preds = %.lr.ph.i.i34.preheader148
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012.i.i35.ph
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !118
  %i.dz = sitofp i32 %i.dy to float
  %i.ea = fmul float %5, %i.dz
  %i.eb = fptosi float %i.ea to i32
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i.i35.ph
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !118
  %i.ed = or disjoint i64 %.012.i.i35.ph, 1
  br label %.lr.ph.i.i34.prol.loopexit

.lr.ph.i.i34.prol.loopexit:                       ; preds = %.lr.ph.i.i34.prol, %.lr.ph.i.i34.preheader148
  %.012.i.i35.unr = phi i64 [ %.012.i.i35.ph, %.lr.ph.i.i34.preheader148 ], [ %i.ed, %.lr.ph.i.i34.prol ]
  %i.ee = icmp eq i64 %i.dh, %.neg
  br i1 %i.ee, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %.lr.ph.i.i34.prol.loopexit, %.lr.ph.i.i34
  %.012.i.i35 = phi i64 [ %i.es, %.lr.ph.i.i34 ], [ %.012.i.i35.unr, %.lr.ph.i.i34.prol.loopexit ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012.i.i35
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !118
  %i.eh = sitofp i32 %i.eg to float
  %i.ei = fmul float %5, %i.eh
  %i.ej = fptosi float %i.ei to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i.i35
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !118
  %i.el = add nuw i64 %.012.i.i35, 1              ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !118
  %i.eo = sitofp i32 %i.en to float
  %i.ep = fmul float %5, %i.eo
  %i.eq = fptosi float %i.ep to i32
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !118
  %i.es = add nuw i64 %.012.i.i35, 2              ; 2 uses
  %exitcond.not.i.i36.1 = icmp eq i64 %i.es, %i.dh
  br i1 %exitcond.not.i.i36.1, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i34, !llvm.loop !1371

bb.f:                                             ; preds = %bb.a
  %i.et = zext i32 %4 to i64
  %i.eu = mul i64 %2, %i.et                       ; 14 uses
  %i.ev = icmp eq ptr %0, null
  %i.ew = icmp eq ptr %1, null
  %or.cond.i.i = or i1 %i.ev, %i.ew
  br i1 %or.cond.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ex = fcmp oeq float %5, 1.000000e+00
  br i1 %i.ex, label %bb.h, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.g
  %.not.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %.preheader23.i.i
  %min.iters.check = icmp ult i64 %i.eu, 8
  %12 = ptrtoaddr ptr %0 to i64
  %13 = ptrtoaddr ptr %1 to i64
  %i.ey = sub i64 %13, %12
  %diff.check = icmp ugt i64 %i.ey, -32
  %or.cond143 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond143, label %.lr.ph.i.i37.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i37.preheader
  %n.vec = and i64 %i.eu, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load = load <4 x float>, ptr %i.ez, align 4, !tbaa !349
  %wide.load72 = load <4 x float>, ptr %i.fa, align 4, !tbaa !349
  %i.fb = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fc = fmul <4 x float> %broadcast.splat, %wide.load72
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x float> %i.fb, ptr %i.fd, align 4, !tbaa !349
  store <4 x float> %i.fc, ptr %i.fe, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !1372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37.preheader152

.lr.ph.i.i37.preheader152:                        ; preds = %.lr.ph.i.i37.preheader, %middle.block
  %.125.i.i.ph = phi i64 [ 0, %.lr.ph.i.i37.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.eu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i37.prol.loopexit, label %.lr.ph.i.i37.prol

.lr.ph.i.i37.prol:                                ; preds = %.lr.ph.i.i37.preheader152, %.lr.ph.i.i37.prol
  %.125.i.i.prol = phi i64 [ %i.fk, %.lr.ph.i.i37.prol ], [ %.125.i.i.ph, %.lr.ph.i.i37.preheader152 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i37.prol ], [ 0, %.lr.ph.i.i37.preheader152 ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i.i.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !349
  %i.fi = fmul float %5, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i.i.prol
  store float %i.fi, ptr %i.fj, align 4, !tbaa !349
  %i.fk = add nuw i64 %.125.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i37.prol.loopexit, label %.lr.ph.i.i37.prol, !llvm.loop !1373

.lr.ph.i.i37.prol.loopexit:                       ; preds = %.lr.ph.i.i37.prol, %.lr.ph.i.i37.preheader152
  %.125.i.i.unr = phi i64 [ %.125.i.i.ph, %.lr.ph.i.i37.preheader152 ], [ %i.fk, %.lr.ph.i.i37.prol ]
  %i.fl = sub i64 %.125.i.i.ph, %i.eu
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37

bb.h:                                             ; preds = %bb.g
  %i.fn = icmp ne ptr %0, %1
  %i.fo = icmp ne i64 %i.eu, 0
  %or.cond28.i.i = and i1 %i.fn, %i.fo
  br i1 %or.cond28.i.i, label %.lr.ph27.i.i.preheader, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

.lr.ph27.i.i.preheader:                           ; preds = %bb.h
  %min.iters.check76 = icmp ult i64 %i.eu, 8
  %14 = ptrtoaddr ptr %0 to i64
  %15 = ptrtoaddr ptr %1 to i64
  %i.fp = sub i64 %15, %14
  %diff.check74 = icmp ugt i64 %i.fp, -32
  %or.cond144 = or i1 %min.iters.check76, %diff.check74
  br i1 %or.cond144, label %.lr.ph27.i.i.preheader150, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph27.i.i.preheader
  %n.vec78 = and i64 %i.eu, -8                    ; 3 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next83, %vector.body79 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index80 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load81 = load <4 x float>, ptr %i.fq, align 4, !tbaa !349
  %wide.load82 = load <4 x float>, ptr %i.fr, align 4, !tbaa !349
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index80 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <4 x float> %wide.load81, ptr %i.fs, align 4, !tbaa !349
  store <4 x float> %wide.load82, ptr %i.ft, align 4, !tbaa !349
  %index.next83 = add nuw i64 %index80, 8         ; 2 uses
  %i.fu = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.fu, label %middle.block84, label %vector.body79, !llvm.loop !1374

middle.block84:                                   ; preds = %vector.body79
  %cmp.n85 = icmp eq i64 %i.eu, %n.vec78
  br i1 %cmp.n85, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph27.i.i.preheader150

.lr.ph27.i.i.preheader150:                        ; preds = %.lr.ph27.i.i.preheader, %middle.block84
  %.026.i.i39.ph = phi i64 [ 0, %.lr.ph27.i.i.preheader ], [ %n.vec78, %middle.block84 ] ; 3 uses
  %xtraiter154 = and i64 %i.eu, 3                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol

.lr.ph27.i.i.prol:                                ; preds = %.lr.ph27.i.i.preheader150, %.lr.ph27.i.i.prol
  %.026.i.i39.prol = phi i64 [ %i.fy, %.lr.ph27.i.i.prol ], [ %.026.i.i39.ph, %.lr.ph27.i.i.preheader150 ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph27.i.i.prol ], [ 0, %.lr.ph27.i.i.preheader150 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i.i39.prol
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !349
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i.i39.prol
  store float %i.fw, ptr %i.fx, align 4, !tbaa !349
  %i.fy = add nuw i64 %.026.i.i39.prol, 1         ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph27.i.i.prol.loopexit, label %.lr.ph27.i.i.prol, !llvm.loop !1375

.lr.ph27.i.i.prol.loopexit:                       ; preds = %.lr.ph27.i.i.prol, %.lr.ph27.i.i.preheader150
  %.026.i.i39.unr = phi i64 [ %.026.i.i39.ph, %.lr.ph27.i.i.preheader150 ], [ %i.fy, %.lr.ph27.i.i.prol ]
  %i.fz = sub i64 %.026.i.i39.ph, %i.eu
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i
  %.026.i.i39 = phi i64 [ %i.gq, %.lr.ph27.i.i ], [ %.026.i.i39.unr, %.lr.ph27.i.i.prol.loopexit ] ; 6 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026.i.i39
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !349
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026.i.i39
  store float %i.gc, ptr %i.gd, align 4, !tbaa !349
  %i.ge = add nuw i64 %.026.i.i39, 1              ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !349
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ge
  store float %i.gg, ptr %i.gh, align 4, !tbaa !349
  %i.gi = add nuw i64 %.026.i.i39, 2              ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !349
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gi
  store float %i.gk, ptr %i.gl, align 4, !tbaa !349
  %i.gm = add nuw i64 %.026.i.i39, 3              ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !349
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gm
  store float %i.go, ptr %i.gp, align 4, !tbaa !349
  %i.gq = add nuw i64 %.026.i.i39, 4              ; 2 uses
  %exitcond30.not.i.i.3 = icmp eq i64 %i.gq, %i.eu
  br i1 %exitcond30.not.i.i.3, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph27.i.i, !llvm.loop !1376

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.prol.loopexit, %.lr.ph.i.i37
  %.125.i.i = phi i64 [ %i.hk, %.lr.ph.i.i37 ], [ %.125.i.i.unr, %.lr.ph.i.i37.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.125.i.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !349
  %i.gt = fmul float %5, %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.125.i.i
  store float %i.gt, ptr %i.gu, align 4, !tbaa !349
  %i.gv = add nuw i64 %.125.i.i, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !349
  %i.gy = fmul float %5, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gv
  store float %i.gy, ptr %i.gz, align 4, !tbaa !349
  %i.ha = add nuw i64 %.125.i.i, 2                ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !349
  %i.hd = fmul float %5, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ha
  store float %i.hd, ptr %i.he, align 4, !tbaa !349
  %i.hf = add nuw i64 %.125.i.i, 3                ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !349
  %i.hi = fmul float %5, %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hf
  store float %i.hi, ptr %i.hj, align 4, !tbaa !349
  %i.hk = add nuw i64 %.125.i.i, 4                ; 2 uses
  %exitcond.not.i.i38.3 = icmp eq i64 %i.hk, %i.eu
  br i1 %exitcond.not.i.i38.3, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i37, !llvm.loop !1377

ma_copy_and_apply_volume_factor_pcm_frames_u8.exit: ; preds = %.lr.ph.i.i37.prol.loopexit, %.lr.ph.i.i37, %.lr.ph27.i.i.prol.loopexit, %.lr.ph27.i.i, %.lr.ph.i.i34.prol.loopexit, %.lr.ph.i.i34, %.lr.ph.i.i30, %.lr.ph.i.i27.prol.loopexit, %.lr.ph.i.i27, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %middle.block84, %middle.block100, %middle.block115, %middle.block131, %vec.epilog.middle.block, %bb.h, %.preheader23.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_pcm_frames_u8(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = mul i64 %1, %i.a                         ; 9 uses
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne i64 %i.b, 0
  %or.cond13.i.i = and i1 %i.c, %i.d
  br i1 %or.cond13.i.i, label %iter.check, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %i.b, 16
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.b, 12
  %n.vec = and i64 %i.b, -16                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !tbaa !119
  %i.g = uitofp <16 x i8> %wide.load to <16 x float>
  %i.h = fmul <16 x float> %broadcast.splat, %i.g
  %i.i = fptoui <16 x float> %i.h to <16 x i8>
  store <16 x i8> %i.i, ptr %i.f, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !1378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !348

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.b, -4                      ; 3 uses
  %broadcast.splatinsert7 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat8 = shufflevector <4 x float> %broadcast.splatinsert7, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index9 ; 2 uses
  %wide.load10 = load <4 x i8>, ptr %i.k, align 1, !tbaa !119
  %i.l = uitofp <4 x i8> %wide.load10 to <4 x float>
  %i.m = fmul <4 x float> %broadcast.splat8, %i.l
  %i.n = fptoui <4 x float> %i.m to <4 x i8>
  store <4 x i8> %i.n, ptr %i.k, align 1, !tbaa !119
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.o = icmp eq i64 %index.next11, %n.vec6
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1379

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.b, %n.vec6
  br i1 %cmp.n12, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.012.i.i ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !119
  %i.r = uitofp i8 %i.q to float
  %i.s = fmul float %3, %i.r
  %i.t = fptoui float %i.s to i8
  store i8 %i.t, ptr %i.p, align 1, !tbaa !119
  %i.u = add nuw i64 %.012.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %i.b
  br i1 %exitcond.not.i.i, label %ma_copy_and_apply_volume_factor_pcm_frames_u8.exit, label %.lr.ph.i.i, !llvm.loop !1380

ma_copy_and_apply_volume_factor_pcm_frames_u8.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_apply_volume_factor_pcm_frames_s16(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = zext i32 %2 to i64
end_hunk_1
begin_hunk_2_@ma_copy_and_apply_volume_and_clip_samples_u8:bb.a
  %i.as = ashr i32 %i.ar, 16
  %i.at = tail call i32 @llvm.smax.i32(i32 %i.as, i32 -128)
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.at, i32 127)
  %i.av = trunc nsw i32 %i.au to i8
  %i.aw = xor i8 %i.av, -128
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !119
  %i.ay = add nuw i64 %.08, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1393

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_and_clip_samples_s16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = fmul float %3, 2.560000e+02
  %i.b = fptosi float %i.a to i16
  %i.c = sext i16 %i.b to i32                     ; 2 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !118
  %wide.load9 = load <4 x i32>, ptr %i.e, align 4, !tbaa !118
  %i.f = mul nsw <4 x i32> %wide.load, %broadcast.splat
  %i.g = mul nsw <4 x i32> %wide.load9, %broadcast.splat
  %i.h = ashr <4 x i32> %i.f, splat (i32 8)
  %i.i = ashr <4 x i32> %i.g, splat (i32 8)
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.h, <4 x i32> splat (i32 -32768))
  %i.k = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.i, <4 x i32> splat (i32 -32768))
  %i.l = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.j, <4 x i32> splat (i32 32767))
  %i.m = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.k, <4 x i32> splat (i32 32767))
  %i.n = trunc nsw <4 x i32> %i.l to <4 x i16>
  %i.o = trunc nsw <4 x i32> %i.m to <4 x i16>
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store <4 x i16> %i.n, ptr %i.p, align 2, !tbaa !122
  store <4 x i16> %i.o, ptr %i.q, align 2, !tbaa !122
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.08.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08 = phi i64 [ %i.aa, %scalar.ph ], [ %.08.ph, %scalar.ph.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08
  %i.t = load i32, ptr %i.s, align 4, !tbaa !118
  %i.u = mul nsw i32 %i.t, %i.c
  %i.v = ashr i32 %i.u, 8
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 -32768)
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.w, i32 32767)
  %i.y = trunc nsw i32 %i.x to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.08
  store i16 %i.y, ptr %i.z, align 2, !tbaa !122
  %i.aa = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1397

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_and_clip_samples_s24(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = fmul float %3, 2.560000e+02
  %i.b = fptosi float %i.a to i16
  %i.c = sext i16 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.e = load i64, ptr %i.d, align 8, !tbaa !164
  %i.f = mul nsw i64 %i.e, %i.c
  %i.g = ashr i64 %i.f, 8
  %i.h = tail call i64 @llvm.smax.i64(i64 %i.g, i64 -8388608)
  %i.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 8388607) ; 3 uses
  %i.j = trunc i64 %i.i to i8
  %i.k = mul i64 %.015, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 3 uses
  store i8 %i.j, ptr %i.l, align 1, !tbaa !119
  %i.m = lshr i64 %i.i, 8
  %i.n = trunc i64 %i.m to i8
  %i.o = getelementptr i8, ptr %i.l, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !119
  %i.p = lshr i64 %i.i, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr i8, ptr %i.l, i64 2
  store i8 %i.q, ptr %i.r, align 1, !tbaa !119
  %i.s = add nuw i64 %.015, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_and_clip_samples_s32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = fmul float %3, 2.560000e+02
  %i.b = fptosi float %i.a to i16
  %i.c = sext i16 %i.b to i64                     ; 3 uses
  %xtraiter = and i64 %2, 1
  %i.d = icmp eq i64 %2, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.08 = phi i64 [ 0, %.lr.ph.new ], [ %i.v, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08
  %i.f = load i64, ptr %i.e, align 8, !tbaa !164
  %i.g = mul nsw i64 %i.f, %i.c
  %i.h = ashr i64 %i.g, 8
  %i.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 -2147483648)
  %i.j = tail call i64 @llvm.smin.i64(i64 %i.i, i64 2147483647)
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08
  store i32 %i.k, ptr %i.l, align 4, !tbaa !118
  %i.m = or disjoint i64 %.08, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164
  %i.p = mul nsw i64 %i.o, %i.c
  %i.q = ashr i64 %i.p, 8
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.r, i64 2147483647)
  %i.t = trunc nsw i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  store i32 %i.t, ptr %i.u, align 4, !tbaa !118
  %i.v = add nuw i64 %.08, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !17

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.08.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08.epil.init
  %i.x = load i64, ptr %i.w, align 8, !tbaa !164
  %i.y = mul nsw i64 %i.x, %i.c
  %i.z = ashr i64 %i.y, 8
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 2147483647)
  %i.ac = trunc nsw i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.epil.init
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_and_clip_samples_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, -8                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !349
  %wide.load8 = load <4 x float>, ptr %i.e, align 4, !tbaa !349
  %i.f = fmul <4 x float> %broadcast.splat, %wide.load ; 3 uses
  %i.g = fmul <4 x float> %broadcast.splat, %wide.load8 ; 3 uses
  %i.h = fcmp olt <4 x float> %i.f, splat (float -1.000000e+00)
  %i.i = fcmp olt <4 x float> %i.g, splat (float -1.000000e+00)
  %i.j = fcmp ogt <4 x float> %i.f, splat (float 1.000000e+00)
  %i.k = fcmp ogt <4 x float> %i.g, splat (float 1.000000e+00)
  %i.l = select <4 x i1> %i.j, <4 x float> splat (float 1.000000e+00), <4 x float> %i.f
  %i.m = select <4 x i1> %i.k, <4 x float> splat (float 1.000000e+00), <4 x float> %i.g
  %i.n = select <4 x i1> %i.h, <4 x float> splat (float -1.000000e+00), <4 x float> %i.l
  %i.o = select <4 x i1> %i.i, <4 x float> splat (float -1.000000e+00), <4 x float> %i.m
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x float> %i.n, ptr %i.p, align 4, !tbaa !349
  store <4 x float> %i.o, ptr %i.q, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %.07.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.07.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader9
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07.ph
  %i.t = load float, ptr %i.s, align 4, !tbaa !349
  %i.u = fmul float %3, %i.t                      ; 3 uses
  %i.v = fcmp olt float %i.u, -1.000000e+00
  %i.w = fcmp ogt float %i.u, 1.000000e+00
  %..i.prol = select i1 %i.w, float 1.000000e+00, float %i.u
  %.0.i.prol = select i1 %i.v, float -1.000000e+00, float %..i.prol
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07.ph
  store float %.0.i.prol, ptr %i.x, align 4, !tbaa !349
  %i.y = or disjoint i64 %.07.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader9
  %.07.unr = phi i64 [ %.07.ph, %.lr.ph.preheader9 ], [ %i.y, %.lr.ph.prol ]
  %i.z = icmp eq i64 %2, %.neg
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07 = phi i64 [ %i.an, %.lr.ph ], [ %.07.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !349
  %i.ac = fmul float %3, %i.ab                    ; 3 uses
  %i.ad = fcmp olt float %i.ac, -1.000000e+00
  %i.ae = fcmp ogt float %i.ac, 1.000000e+00
  %..i = select i1 %i.ae, float 1.000000e+00, float %i.ac
  %.0.i = select i1 %i.ad, float -1.000000e+00, float %..i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07
  store float %.0.i, ptr %i.af, align 4, !tbaa !349
  %i.ag = add nuw i64 %.07, 1                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !349
  %i.aj = fmul float %3, %i.ai                    ; 3 uses
  %i.ak = fcmp olt float %i.aj, -1.000000e+00
  %i.al = fcmp ogt float %i.aj, 1.000000e+00
  %..i.1 = select i1 %i.al, float 1.000000e+00, float %i.aj
  %.0.i.1 = select i1 %i.ak, float -1.000000e+00, float %..i.1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  store float %.0.i.1, ptr %i.am, align 4, !tbaa !349
  %i.an = add nuw i64 %.07, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.an, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1399

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_copy_and_apply_volume_and_clip_pcm_frames(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = fcmp oeq float %5, 1.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ma_clip_pcm_frames(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %ma_silence_pcm_frames.exit

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp oeq float %5, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %3, 1
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = zext i32 %4 to i64
  %i.e = mul i64 %2, %i.d                         ; 2 uses
  %.not18.i = icmp eq i64 %i.e, 0
  br i1 %.not18.i, label %ma_silence_pcm_frames.exit, label %.lr.ph17.preheader.i

.lr.ph17.preheader.i:                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 -128, i64 %i.e, i1 false), !tbaa !119
  br label %ma_silence_pcm_frames.exit

bb.f:                                             ; preds = %bb.d
  %i.f = zext i32 %3 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !118
  %i.i = mul i32 %i.h, %4
  %i.j = zext i32 %i.i to i64
  %i.k = mul i64 %2, %i.j                         ; 2 uses
  %.not.i13.i = icmp eq i64 %i.k, 0
  br i1 %.not.i13.i, label %ma_silence_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.m, %ma_zero_memory_default.exit.i.i ], [ %0, %bb.f ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.l, %ma_zero_memory_default.exit.i.i ], [ %i.k, %bb.f ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i, label %ma_zero_memory_default.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.g, %.lr.ph.i
  %i.l = sub nuw i64 %.08.i14.i, %spec.store.select.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %ma_silence_pcm_frames.exit, label %.lr.ph.i, !llvm.loop !7

bb.h:                                             ; preds = %bb.c
  %i.n = zext i32 %4 to i64                       ; 2 uses
  %i.o = mul i64 %2, %i.n                         ; 27 uses
  switch i32 %3, label %ma_silence_pcm_frames.exit [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %.not.i33 = icmp eq i64 %i.o, 0
  br i1 %.not.i33, label %ma_silence_pcm_frames.exit, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.i
  %i.p = fmul float %5, 2.560000e+02
  %i.q = fptosi float %i.p to i16
  %i.r = sext i16 %i.q to i32
  %i.s = shl nsw i32 %i.r, 8                      ; 4 uses
  %min.iters.check92 = icmp ult i64 %i.o, 8
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph.i34
  %i.t = getelementptr i8, ptr %0, i64 %i.o
  %i.u = mul i64 %2, %i.n
  %i.v = shl i64 %i.u, 1
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %bound0 = icmp ult ptr %0, %i.w
  %bound1 = icmp ult ptr %1, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph91.preheader, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck93
  %n.vec95 = and i64 %i.o, -8                     ; 3 uses
  %broadcast.splatinsert96 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat97 = shufflevector <8 x i32> %broadcast.splatinsert96, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph94
  %index99 = phi i64 [ 0, %vector.ph94 ], [ %index.next101, %vector.body98 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index99
  %wide.load100 = load <8 x i16>, ptr %i.x, align 2, !tbaa !122, !alias.scope !1409
  %i.y = sext <8 x i16> %wide.load100 to <8 x i32>
  %i.z = mul <8 x i32> %broadcast.splat97, %i.y
  %i.aa = ashr <8 x i32> %i.z, splat (i32 16)
  %i.ab = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aa, <8 x i32> splat (i32 -128))
  %i.ac = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ab, <8 x i32> splat (i32 127))
  %i.ad = trunc nsw <8 x i32> %i.ac to <8 x i8>
  %i.ae = xor <8 x i8> %i.ad, splat (i8 -128)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index99
  store <8 x i8> %i.ae, ptr %i.af, align 1, !tbaa !119, !alias.scope !1410, !noalias !1409
  %index.next101 = add nuw i64 %index99, 8        ; 2 uses
  %i.ag = icmp eq i64 %index.next101, %n.vec95
  br i1 %i.ag, label %middle.block102, label %vector.body98, !llvm.loop !1403

middle.block102:                                  ; preds = %vector.body98
  %cmp.n103 = icmp eq i64 %i.o, %n.vec95
  br i1 %cmp.n103, label %ma_silence_pcm_frames.exit, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %vector.memcheck93, %.lr.ph.i34, %middle.block102
  %.08.i.ph = phi i64 [ 0, %vector.memcheck93 ], [ 0, %.lr.ph.i34 ], [ %n.vec95, %middle.block102 ] ; 5 uses
  %.neg116 = or disjoint i64 %.08.i.ph, 1
  %xtraiter114 = and i64 %i.o, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %scalar.ph91.prol.loopexit, label %scalar.ph91.prol

scalar.ph91.prol:                                 ; preds = %scalar.ph91.preheader
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.08.i.ph
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !122
  %i.aj = sext i16 %i.ai to i32
  %i.ak = mul i32 %i.s, %i.aj
  %i.al = ashr i32 %i.ak, 16
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 -128)
  %i.an = tail call i32 @llvm.smin.i32(i32 %i.am, i32 127)
  %i.ao = trunc nsw i32 %i.an to i8
  %i.ap = xor i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.08.i.ph
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !119
  %i.ar = or disjoint i64 %.08.i.ph, 1
  br label %scalar.ph91.prol.loopexit

scalar.ph91.prol.loopexit:                        ; preds = %scalar.ph91.prol, %scalar.ph91.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %scalar.ph91.preheader ], [ %i.ar, %scalar.ph91.prol ]
  %i.as = icmp eq i64 %i.o, %.neg116
  br i1 %i.as, label %ma_silence_pcm_frames.exit, label %scalar.ph91

scalar.ph91:                                      ; preds = %scalar.ph91.prol.loopexit, %scalar.ph91
  %.08.i = phi i64 [ %i.bo, %scalar.ph91 ], [ %.08.i.unr, %scalar.ph91.prol.loopexit ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.08.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !122
  %i.av = sext i16 %i.au to i32
  %i.aw = mul i32 %i.s, %i.av
  %i.ax = ashr i32 %i.aw, 16
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -128)
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 127)
  %i.ba = trunc nsw i32 %i.az to i8
  %i.bb = xor i8 %i.ba, -128
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.08.i
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !119
  %i.bd = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !122
  %i.bg = sext i16 %i.bf to i32
  %i.bh = mul i32 %i.s, %i.bg
  %i.bi = ashr i32 %i.bh, 16
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -128)
  %i.bk = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 127)
  %i.bl = trunc nsw i32 %i.bk to i8
  %i.bm = xor i8 %i.bl, -128
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !119
  %i.bo = add nuw i64 %.08.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bo, %i.o
  br i1 %exitcond.not.i.1, label %ma_silence_pcm_frames.exit, label %scalar.ph91, !llvm.loop !1404

bb.j:                                             ; preds = %bb.h
  %.not.i35 = icmp eq i64 %i.o, 0
  br i1 %.not.i35, label %ma_silence_pcm_frames.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.j
  %i.bp = fmul float %5, 2.560000e+02
  %i.bq = fptosi float %i.bp to i16
  %i.br = sext i16 %i.bq to i32                   ; 2 uses
  %min.iters.check76 = icmp ult i64 %i.o, 8
  br i1 %min.iters.check76, label %scalar.ph75.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.i36
  %n.vec78 = and i64 %i.o, -8                     ; 3 uses
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next85, %vector.body81 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index82 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load83 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !118
  %wide.load84 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !118
  %i.bu = mul nsw <4 x i32> %wide.load83, %broadcast.splat80
  %i.bv = mul nsw <4 x i32> %wide.load84, %broadcast.splat80
  %i.bw = ashr <4 x i32> %i.bu, splat (i32 8)
  %i.bx = ashr <4 x i32> %i.bv, splat (i32 8)
  %i.by = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bw, <4 x i32> splat (i32 -32768))
  %i.bz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bx, <4 x i32> splat (i32 -32768))
  %i.ca = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.by, <4 x i32> splat (i32 32767))
  %i.cb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bz, <4 x i32> splat (i32 32767))
  %i.cc = trunc nsw <4 x i32> %i.ca to <4 x i16>
  %i.cd = trunc nsw <4 x i32> %i.cb to <4 x i16>
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index82 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <4 x i16> %i.cc, ptr %i.ce, align 2, !tbaa !122
  store <4 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !122
  %index.next85 = add nuw i64 %index82, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cg, label %middle.block86, label %vector.body81, !llvm.loop !1405

middle.block86:                                   ; preds = %vector.body81
  %cmp.n87 = icmp eq i64 %i.o, %n.vec78
  br i1 %cmp.n87, label %ma_silence_pcm_frames.exit, label %scalar.ph75.preheader

scalar.ph75.preheader:                            ; preds = %.lr.ph.i36, %middle.block86
  %.08.i37.ph = phi i64 [ 0, %.lr.ph.i36 ], [ %n.vec78, %middle.block86 ]
  br label %scalar.ph75

scalar.ph75:                                      ; preds = %scalar.ph75.preheader, %scalar.ph75
  %.08.i37 = phi i64 [ %i.cp, %scalar.ph75 ], [ %.08.i37.ph, %scalar.ph75.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08.i37
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !118
  %i.cj = mul nsw i32 %i.ci, %i.br
  %i.ck = ashr i32 %i.cj, 8
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 -32768)
  %i.cm = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 32767)
  %i.cn = trunc nsw i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.08.i37
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !122
  %i.cp = add nuw i64 %.08.i37, 1                 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %i.cp, %i.o
  br i1 %exitcond.not.i38, label %ma_silence_pcm_frames.exit, label %scalar.ph75, !llvm.loop !1406

bb.k:                                             ; preds = %bb.h
  %.not.i39 = icmp eq i64 %i.o, 0
  br i1 %.not.i39, label %ma_silence_pcm_frames.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.k
  %i.cq = fmul float %5, 2.560000e+02
  %i.cr = fptosi float %i.cq to i16
  %i.cs = sext i16 %i.cr to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i40
  %.015.i = phi i64 [ 0, %.lr.ph.i40 ], [ %i.di, %bb.l ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.i
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !164
  %i.cv = mul nsw i64 %i.cu, %i.cs
  %i.cw = ashr i64 %i.cv, 8
  %i.cx = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 -8388608)
  %i.cy = tail call i64 @llvm.smin.i64(i64 %i.cx, i64 8388607) ; 3 uses
  %i.cz = trunc i64 %i.cy to i8
  %i.da = mul i64 %.015.i, 3
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 3 uses
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !119
  %i.dc = lshr i64 %i.cy, 8
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr i8, ptr %i.db, i64 1
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !119
  %i.df = lshr i64 %i.cy, 16
  %i.dg = trunc i64 %i.df to i8
  %i.dh = getelementptr i8, ptr %i.db, i64 2
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !119
  %i.di = add nuw i64 %.015.i, 1                  ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.di, %i.o
  br i1 %exitcond.not.i41, label %ma_silence_pcm_frames.exit, label %bb.l, !llvm.loop !16

bb.m:                                             ; preds = %bb.h
  %.not.i42 = icmp eq i64 %i.o, 0
  br i1 %.not.i42, label %ma_silence_pcm_frames.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.m
  %i.dj = fmul float %5, 2.560000e+02
  %i.dk = fptosi float %i.dj to i16
  %i.dl = sext i16 %i.dk to i64                   ; 3 uses
  %xtraiter111 = and i64 %i.o, 1
  %i.dm = icmp eq i64 %i.o, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph.i43.new

.lr.ph.i43.new:                                   ; preds = %.lr.ph.i43
  %unroll_iter = and i64 %i.o, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i43.new
  %.08.i44 = phi i64 [ 0, %.lr.ph.i43.new ], [ %i.ee, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i43.new ], [ %niter.next.1, %bb.n ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08.i44
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !164
  %i.dp = mul nsw i64 %i.do, %i.dl
  %i.dq = ashr i64 %i.dp, 8
  %i.dr = tail call i64 @llvm.smax.i64(i64 %i.dq, i64 -2147483648)
  %i.ds = tail call i64 @llvm.smin.i64(i64 %i.dr, i64 2147483647)
  %i.dt = trunc nsw i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.i44
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !118
  %i.dv = or disjoint i64 %.08.i44, 1             ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !164
  %i.dy = mul nsw i64 %i.dx, %i.dl
  %i.dz = ashr i64 %i.dy, 8
  %i.ea = tail call i64 @llvm.smax.i64(i64 %i.dz, i64 -2147483648)
  %i.eb = tail call i64 @llvm.smin.i64(i64 %i.ea, i64 2147483647)
  %i.ec = trunc nsw i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dv
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !118
  %i.ee = add nuw i64 %.08.i44, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ma_silence_pcm_frames.exit.loopexit108.unr-lcssa, label %bb.n, !llvm.loop !17

bb.o:                                             ; preds = %bb.h
  %.not.i46 = icmp eq i64 %i.o, 0
  br i1 %.not.i46, label %ma_silence_pcm_frames.exit, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %bb.o
  %min.iters.check = icmp ult i64 %i.o, 8
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %1 to i64
  %i.ef = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.ef, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i47.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i47.preheader
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load = load <4 x float>, ptr %i.eg, align 4, !tbaa !349
  %wide.load74 = load <4 x float>, ptr %i.eh, align 4, !tbaa !349
  %i.ei = fmul <4 x float> %broadcast.splat, %wide.load ; 3 uses
  %i.ej = fmul <4 x float> %broadcast.splat, %wide.load74 ; 3 uses
  %i.ek = fcmp olt <4 x float> %i.ei, splat (float -1.000000e+00)
  %i.el = fcmp olt <4 x float> %i.ej, splat (float -1.000000e+00)
  %i.em = fcmp ogt <4 x float> %i.ei, splat (float 1.000000e+00)
  %i.en = fcmp ogt <4 x float> %i.ej, splat (float 1.000000e+00)
  %i.eo = select <4 x i1> %i.em, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ei
  %i.ep = select <4 x i1> %i.en, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ej
  %i.eq = select <4 x i1> %i.ek, <4 x float> splat (float -1.000000e+00), <4 x float> %i.eo
  %i.er = select <4 x i1> %i.el, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ep
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x float> %i.eq, ptr %i.es, align 4, !tbaa !349
  store <4 x float> %i.er, ptr %i.et, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !1407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %ma_silence_pcm_frames.exit, label %.lr.ph.i47.preheader109

.lr.ph.i47.preheader109:                          ; preds = %.lr.ph.i47.preheader, %middle.block
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i47.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.07.i.ph, 1
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.i47.preheader109
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07.i.ph
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !349
  %i.ex = fmul float %5, %i.ew                    ; 3 uses
  %i.ey = fcmp olt float %i.ex, -1.000000e+00
  %i.ez = fcmp ogt float %i.ex, 1.000000e+00
  %..i.i.prol = select i1 %i.ez, float 1.000000e+00, float %i.ex
  %.0.i.i.prol = select i1 %i.ey, float -1.000000e+00, float %..i.i.prol
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07.i.ph
  store float %.0.i.i.prol, ptr %i.fa, align 4, !tbaa !349
  %i.fb = or disjoint i64 %.07.i.ph, 1
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.i47.preheader109
  %.07.i.unr = phi i64 [ %.07.i.ph, %.lr.ph.i47.preheader109 ], [ %i.fb, %.lr.ph.i47.prol ]
  %i.fc = icmp eq i64 %i.o, %.neg
  br i1 %i.fc, label %ma_silence_pcm_frames.exit, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %.07.i = phi i64 [ %i.fq, %.lr.ph.i47 ], [ %.07.i.unr, %.lr.ph.i47.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07.i
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !349
  %i.ff = fmul float %5, %i.fe                    ; 3 uses
  %i.fg = fcmp olt float %i.ff, -1.000000e+00
  %i.fh = fcmp ogt float %i.ff, 1.000000e+00
  %..i.i = select i1 %i.fh, float 1.000000e+00, float %i.ff
  %.0.i.i = select i1 %i.fg, float -1.000000e+00, float %..i.i
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07.i
  store float %.0.i.i, ptr %i.fi, align 4, !tbaa !349
  %i.fj = add nuw i64 %.07.i, 1                   ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !349
  %i.fm = fmul float %5, %i.fl                    ; 3 uses
  %i.fn = fcmp olt float %i.fm, -1.000000e+00
  %i.fo = fcmp ogt float %i.fm, 1.000000e+00
  %..i.i.1 = select i1 %i.fo, float 1.000000e+00, float %i.fm
  %.0.i.i.1 = select i1 %i.fn, float -1.000000e+00, float %..i.i.1
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fj
  store float %.0.i.i.1, ptr %i.fp, align 4, !tbaa !349
  %i.fq = add nuw i64 %.07.i, 2                   ; 2 uses
  %exitcond.not.i48.1 = icmp eq i64 %i.fq, %i.o
  br i1 %exitcond.not.i48.1, label %ma_silence_pcm_frames.exit, label %.lr.ph.i47, !llvm.loop !1408

ma_silence_pcm_frames.exit.loopexit108.unr-lcssa: ; preds = %bb.n
  %lcmp.mod112.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %ma_silence_pcm_frames.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ma_silence_pcm_frames.exit.loopexit108.unr-lcssa, %.lr.ph.i43
  %.08.i44.epil.init = phi i64 [ 0, %.lr.ph.i43 ], [ %i.ee, %ma_silence_pcm_frames.exit.loopexit108.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08.i44.epil.init
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !164
  %i.ft = mul nsw i64 %i.fs, %i.dl
  %i.fu = ashr i64 %i.ft, 8
  %i.fv = tail call i64 @llvm.smax.i64(i64 %i.fu, i64 -2147483648)
  %i.fw = tail call i64 @llvm.smin.i64(i64 %i.fv, i64 2147483647)
  %i.fx = trunc nsw i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.i44.epil.init
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !118
  br label %ma_silence_pcm_frames.exit

ma_silence_pcm_frames.exit:                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.epil.preheader, %ma_silence_pcm_frames.exit.loopexit108.unr-lcssa, %bb.l, %scalar.ph75, %scalar.ph91.prol.loopexit, %scalar.ph91, %ma_zero_memory_default.exit.i.i, %middle.block, %middle.block86, %middle.block102, %bb.o, %bb.m, %bb.k, %bb.j, %bb.i, %bb.f, %.lr.ph17.preheader.i, %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_mix_pcm_frames_f32(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp oeq float %4, 0.000000e+00
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %3 to i64                       ; 3 uses
  %i.f = mul i64 %2, %i.e                         ; 13 uses
  %i.g = fcmp oeq float %4, 1.000000e+00
  %.not35 = icmp eq i64 %i.f, 0                   ; 2 uses
  br i1 %i.g, label %.preheader, label %.preheader30

.preheader30:                                     ; preds = %bb.c
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader30
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = mul i64 %2, %i.e
  %i.i = shl i64 %i.h, 2                          ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  %bound0 = icmp ult ptr %0, %i.k
  %bound1 = icmp ult ptr %1, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x float>, ptr %i.l, align 4, !tbaa !349, !alias.scope !1422
  %wide.load45 = load <4 x float>, ptr %i.m, align 4, !tbaa !349, !alias.scope !1422
  %i.n = fmul <4 x float> %broadcast.splat, %wide.load
  %i.o = fmul <4 x float> %broadcast.splat, %wide.load45
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load46 = load <4 x float>, ptr %i.p, align 4, !tbaa !349, !alias.scope !1423, !noalias !1422
  %wide.load47 = load <4 x float>, ptr %i.q, align 4, !tbaa !349, !alias.scope !1423, !noalias !1422
  %i.r = fadd <4 x float> %wide.load46, %i.n
  %i.s = fadd <4 x float> %wide.load47, %i.o
  store <4 x float> %i.r, ptr %i.p, align 4, !tbaa !349, !alias.scope !1423, !noalias !1422
  store <4 x float> %i.s, ptr %i.q, align 4, !tbaa !349, !alias.scope !1423, !noalias !1422
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader72

.lr.ph.preheader72:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.132.ph, 1
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader72
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.132.ph
  %i.v = load float, ptr %i.u, align 4, !tbaa !349
  %i.w = fmul float %4, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.132.ph ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = fadd float %i.y, %i.w
  store float %i.z, ptr %i.x, align 4, !tbaa !349
  %i.aa = or disjoint i64 %.132.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader72
  %.132.unr = phi i64 [ %.132.ph, %.lr.ph.preheader72 ], [ %i.aa, %.lr.ph.prol ]
  %i.ab = icmp eq i64 %i.f, %.neg
end_hunk_2
begin_hunk_3_@ma_pcm_rb_get_subbuffer_offset:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_pcm_rb_get_subbuffer_ptr(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readnone captures(ret: address, provenance) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !354  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %ma_rb_get_subbuffer_ptr.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !352
  br label %ma_rb_get_subbuffer_ptr.exit

ma_rb_get_subbuffer_ptr.exit:                     ; preds = %bb.b, %bb.c
  %.0.shrunk.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %.0.i.i.i = zext i32 %.0.shrunk.i.i.i to i64
  %i.h = mul nuw i64 %.0.i.i.i, %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %ma_rb_get_subbuffer_ptr.exit
  %.0 = phi ptr [ %i.i, %ma_rb_get_subbuffer_ptr.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_pcm_rb_get_format(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !355
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_pcm_rb_get_channels(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = load i32, ptr %i.b, align 4, !tbaa !356
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_pcm_rb_get_sample_rate(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !357
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_pcm_rb_set_sample_rate(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %1, ptr %i.b, align 8, !tbaa !357
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_result_description(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, 403              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 404
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ma_result_description, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.98, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma__malloc_default(i64 noundef %0, ptr nofree readnone captures(none) %1) #41 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #67
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ma_calloc(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %ma_zero_memory_default.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !126
  %i.d = tail call ptr %i.b(i64 noundef %0, ptr noundef %i.c) #55, !inline_history !127
  br label %ma_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %0) #67
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 4 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %ma_zero_memory_default.exit, label %bb.e

bb.e:                                             ; preds = %ma_malloc.exit
  %.not8 = icmp eq i64 %0, 0
  br i1 %.not8, label %ma_zero_memory_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i, i8 0, i64 %0, i1 false)
  br label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.b, %bb.f, %bb.e, %ma_malloc.exit
  %.0.i7 = phi ptr [ %.0.i, %bb.f ], [ null, %ma_malloc.exit ], [ %.0.i, %bb.e ], [ null, %bb.b ]
  ret ptr %.0.i7
}

; Function Attrs: nounwind uwtable
define ptr @ma_realloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135  ; 2 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %2, align 8, !tbaa !126
  %i.d = tail call ptr %i.b(ptr noundef %0, i64 noundef %1, ptr noundef %i.c) #55
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ma__free_default(ptr noundef captures(none) %0, ptr nofree readnone captures(none) %1) #43 {
bb.a:
  tail call void @free(ptr noundef %0) #55
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ma_blend_f32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = fsub float 1.000000e+00, %3              ; 4 uses
  %wide.trip.count = zext i32 %4 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %5 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %1 to i64
  %i.b = sub i64 %6, %5
  %diff.check = icmp ugt i64 %i.b, -32
  %7 = ptrtoaddr ptr %2 to i64
  %i.c = sub i64 %7, %5
  %diff.check11 = icmp ugt i64 %i.c, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x float>, ptr %i.d, align 4, !tbaa !349
  %wide.load14 = load <4 x float>, ptr %i.e, align 4, !tbaa !349
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load15 = load <4 x float>, ptr %i.f, align 4, !tbaa !349
  %wide.load16 = load <4 x float>, ptr %i.g, align 4, !tbaa !349
  %i.h = fmul <4 x float> %broadcast.splat13, %wide.load15
  %i.i = fmul <4 x float> %broadcast.splat13, %wide.load16
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %i.h)
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load14, <4 x float> %broadcast.splat, <4 x float> %i.i)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x float> %i.j, ptr %i.l, align 4, !tbaa !349
  store <4 x float> %i.k, ptr %i.m, align 4, !tbaa !349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !2185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.p = load float, ptr %i.o, align 4, !tbaa !349
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.r = load float, ptr %i.q, align 4, !tbaa !349
  %i.s = fmul float %3, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.p, float %i.a, float %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store float %i.t, ptr %i.u, align 4, !tbaa !349
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.v = add nsw i64 %wide.trip.count, -1
  %i.w = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.w, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fmul float %3, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float %i.a, float %i.ab)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.ac, ptr %i.ad, align 4, !tbaa !349
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.af = load float, ptr %i.ae, align 4, !tbaa !349
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !349
  %i.ai = fmul float %3, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.a, float %i.ai)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.aj, ptr %i.ak, align 4, !tbaa !349
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !2186

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_source_read_pcm_frames(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp eq i64 %2, 0
  %i.f = icmp eq ptr %0, null
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.i = load ptr, ptr %0, align 8, !tbaa !358
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !585  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 %i.k(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !586
  %.not36.i = icmp eq i32 %i.m, 0
  br i1 %.not36.i, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %bb.e
  %i.n = load i32, ptr %i.a, align 4, !tbaa !118
  %i.o = load i32, ptr %i.b, align 4, !tbaa !118  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.fr = freeze i32 %i.h
  %.not77 = icmp eq i32 %.fr, 0
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.s ; 2 uses
  br i1 %.not77, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %.048115.us = phi i64 [ %i.ab, %bb.o ], [ 0, %.lr.ph ] ; 4 uses
  %.051114.us = phi ptr [ %.253.us, %bb.o ], [ %1, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.u = sub nuw i64 %2, %.048115.us
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !361  ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %ma_data_source_resolve_current.exit89.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !587
  %.not.i86.us = icmp eq ptr %i.x, null
  br i1 %.not.i86.us, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !588
  %.not9.i87.us = icmp eq ptr %i.y, null
  br i1 %.not9.i87.us, label %ma_data_source_resolve_current.exit89.us, label %.thread

ma_data_source_resolve_current.exit89.us:         ; preds = %bb.g, %.lr.ph.split.us
  %.0.i85.us = phi ptr [ %i.v, %.lr.ph.split.us ], [ %0, %bb.g ] ; 4 uses
  %i.z = call fastcc i32 @ma_data_source_read_pcm_frames_within_range(ptr noundef nonnull %.0.i85.us, ptr noundef %.051114.us, i64 noundef %i.u, ptr noundef nonnull %i.d) ; 2 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.ab = add i64 %i.aa, %.048115.us              ; 8 uses
  switch i32 %i.z, label %.thread [
    i32 -17, label %bb.h
    i32 0, label %bb.m
  ]

bb.h:                                             ; preds = %ma_data_source_resolve_current.exit89.us
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i85.us, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !587 ; 3 uses
  %.not78.us = icmp eq ptr %i.ad, null
  br i1 %.not78.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !361
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i85.us, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !588 ; 2 uses
  %.not79.us = icmp eq ptr %i.af, null
  br i1 %.not79.us, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr %i.af(ptr noundef nonnull %.0.i85.us) #55 ; 3 uses
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !361
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ai = phi ptr [ %i.ag, %bb.k ], [ %i.ad, %bb.i ] ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !358
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !589 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread, label %ma_data_source_seek_to_pcm_frame.exit92.us

end_hunk_3
