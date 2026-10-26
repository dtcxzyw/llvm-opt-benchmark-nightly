Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/shape?download=true
inline.NumInlined: 200
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2ComputeShapeExtent:bb.a

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define hidden void @b2RayCastShape(ptr dead_on_unwind noalias nofree writable sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.b2RayCastInput, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !84
  %i.a = load <2 x float>, ptr %1, align 4
  %i.b = fsub <2 x float> %i.a, %3                ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.d = fmul <2 x float> %4, %i.c                ; 2 uses
  %i.e = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fadd <2 x float> %i.d, %i.g
  %i.i = fsub <2 x float> %i.d, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.j, ptr %5, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load <2 x float>, ptr %i.l, align 4      ; 2 uses
  %i.n = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.m              ; 2 uses
  %i.p = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = fmul <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = fadd <2 x float> %i.o, %i.r
  %i.t = fsub <2 x float> %i.o, %i.r
  %i.u = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.u, ptr %i.k, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93
  switch i32 %i.w, label %bb.h [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.x, ptr noundef nonnull %5) #11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.y, ptr noundef nonnull %5) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.z, ptr noundef nonnull %5) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %5, i1 noundef zeroext false) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @b2RayCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %5, i1 noundef zeroext true) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %4, %i.ae              ; 2 uses
  %i.ag = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = fsub <2 x float> %i.af, %i.ai
  %i.ak = fadd <2 x float> %i.af, %i.ai
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = fadd <2 x float> %3, %i.al
  store <2 x float> %i.am, ptr %i.ac, align 4, !tbaa !68
  %i.an = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %4, %i.ao              ; 2 uses
  %i.aq = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = fsub <2 x float> %i.ap, %i.as
  %i.au = fadd <2 x float> %i.ap, %i.as
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.av, ptr %0, align 4, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

declare void @b2RayCastCapsule(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2RayCastCircle(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2RayCastPolygon(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2RayCastSegment(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b2ShapeCastShape(ptr dead_on_unwind noalias nofree writable sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.b2ShapeCastInput, align 8   ; 21 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !224
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 4 dereferenceable(88) %1, i64 88, i1 false), !tbaa.struct !225
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.e = load i32, ptr %i.d, align 8, !tbaa !224  ; 6 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.e to i64
  %i.g = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %i.k = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul <2 x float> %i.k, %i.j              ; 2 uses
  %i.m = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fmul <2 x float> %i.m, %i.n              ; 2 uses
  %i.p = fadd <2 x float> %i.l, %i.o
  %i.q = fsub <2 x float> %i.l, %i.o
  %i.r = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.r, ptr %i.h, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !93
  switch i32 %i.t, label %.critedge [
    i32 1, label %bb.d
    i32 0, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = load <2 x float>, ptr %i.v, align 4
  %i.x = fsub <2 x float> %i.w, %3                ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x float> %4, %i.y                ; 2 uses
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.g, %i.aa            ; 2 uses
  %i.ac = fadd <2 x float> %i.z, %i.ab
  %i.ad = fsub <2 x float> %i.z, %i.ab
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ae, ptr %i.u, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !220

bb.d:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.af, ptr noundef nonnull %5) #11
  br label %bb.j

bb.e:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %5) #11
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %5) #11
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ai, ptr noundef nonnull %5) #11
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %.sroa.09.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !68 ; 3 uses
  %i.aj = icmp sgt i32 %i.e, 1
  br i1 %i.aj, label %.lr.ph76.preheader, label %._crit_edge77

.lr.ph76.preheader:                               ; preds = %bb.h
  %wide.trip.count83 = zext nneg i32 %i.e to i64
  %i.ak = add nsw i64 %wide.trip.count83, -1      ; 2 uses
  %xtraiter = and i64 %i.ak, 7                    ; 3 uses
  %6 = add nsw i32 %i.e, -2
  %i.al = icmp ult i32 %6, 7
  br i1 %i.al, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter = and i64 %i.ak, -8
  br label %.lr.ph76

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.preheader
  %indvars.iv80.epil.init = phi i64 [ 1, %.lr.ph76.preheader ], [ %indvars.iv.next81.7, %._crit_edge77.loopexit.unr-lcssa ]
  %.sroa.09.074.epil.init = phi <2 x float> [ %.sroa.09.0.copyload, %.lr.ph76.preheader ], [ %i.cj, %._crit_edge77.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph76.epil

.lr.ph76.epil:                                    ; preds = %.lr.ph76.epil, %.lr.ph76.epil.preheader
  %indvars.iv80.epil = phi i64 [ %indvars.iv80.epil.init, %.lr.ph76.epil.preheader ], [ %indvars.iv.next81.epil, %.lr.ph76.epil ] ; 2 uses
  %.sroa.09.074.epil = phi <2 x float> [ %.sroa.09.074.epil.init, %.lr.ph76.epil.preheader ], [ %i.ao, %.lr.ph76.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph76.epil.preheader ], [ %epil.iter.next, %.lr.ph76.epil ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80.epil
  %i.an = load <2 x float>, ptr %i.am, align 8
  %i.ao = fadd <2 x float> %.sroa.09.074.epil, %i.an ; 2 uses
  %indvars.iv.next81.epil = add nuw nsw i64 %indvars.iv80.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %.lr.ph76.epil, !llvm.loop !221

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.epil, %bb.h
  %.sroa.09.0.lcssa = phi <2 x float> [ %.sroa.09.0.copyload, %bb.h ], [ %i.cj, %._crit_edge77.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph76.epil ]
  %i.ap = sitofp i32 %i.e to float
  %i.aq = fdiv nnan float 1.000000e+00, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.at = load <2 x float>, ptr %i.as, align 8
  %i.au = load <2 x float>, ptr %i.ar, align 8    ; 2 uses
  %i.av = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %.sroa.09.0.lcssa
  %i.ay = fsub <2 x float> %i.at, %i.au
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = fsub <2 x float> %i.ax, %i.au
  %i.bb = fmul <2 x float> %i.ba, %i.az           ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = extractelement <2 x float> %i.bb, i64 1
  %i.be = fcmp uge float %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %.critedge

.lr.ph76:                                         ; preds = %.lr.ph76, %.lr.ph76.preheader.new
  %indvars.iv80 = phi i64 [ 1, %.lr.ph76.preheader.new ], [ %indvars.iv.next81.7, %.lr.ph76 ] ; 9 uses
  %.sroa.09.074 = phi <2 x float> [ %.sroa.09.0.copyload, %.lr.ph76.preheader.new ], [ %i.cj, %.lr.ph76 ]
  %niter = phi i64 [ 0, %.lr.ph76.preheader.new ], [ %niter.next.7, %.lr.ph76 ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bg = load <2 x float>, ptr %i.bf, align 8
  %i.bh = fadd <2 x float> %.sroa.09.074, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load <2 x float>, ptr %i.bj, align 8
  %i.bl = fadd <2 x float> %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load <2 x float>, ptr %i.bn, align 8
  %i.bp = fadd <2 x float> %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load <2 x float>, ptr %i.br, align 8
  %i.bt = fadd <2 x float> %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load <2 x float>, ptr %i.bv, align 8
  %i.bx = fadd <2 x float> %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load <2 x float>, ptr %i.bz, align 8
  %i.cb = fadd <2 x float> %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load <2 x float>, ptr %i.cd, align 8
  %i.cf = fadd <2 x float> %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ci = load <2 x float>, ptr %i.ch, align 8
  %i.cj = fadd <2 x float> %i.cf, %i.ci           ; 3 uses
  %indvars.iv.next81.7 = add nuw nsw i64 %indvars.iv80, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !222

bb.i:                                             ; preds = %._crit_edge77
  call void @b2ShapeCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ar, ptr noundef nonnull %5) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cl = load <2 x float>, ptr %i.ck, align 4    ; 2 uses
  %i.cm = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %i.cl
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = fmul <2 x float> %i.k, %i.cl            ; 2 uses
  %i.cq = fsub <2 x float> %i.cp, %i.co
  %i.cr = fadd <2 x float> %i.cp, %i.co
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.ct = fadd <2 x float> %3, %i.cs
  store <2 x float> %i.ct, ptr %i.ck, align 4, !tbaa !68
  %i.cu = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.cv = fmul <2 x float> %i.cm, %i.cu
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = fmul <2 x float> %i.k, %i.cu            ; 2 uses
  %i.cy = fsub <2 x float> %i.cx, %i.cw
  %i.cz = fadd <2 x float> %i.cx, %i.cw
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.da, ptr %0, align 4, !tbaa !68
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge77, %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.critedge
  ret void
}

declare void @b2ShapeCastCapsule(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2ShapeCastCircle(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2ShapeCastPolygon(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2ShapeCastSegment(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b2CollideMover(ptr dead_on_unwind noalias nofree writable sret(%struct.b2PlaneResult) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.b2Capsule, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = load <2 x float>, ptr %1, align 4
  %i.b = fsub <2 x float> %i.a, %3                ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.d = fmul <2 x float> %4, %i.c                ; 2 uses
  %i.e = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fadd <2 x float> %i.d, %i.g
  %i.i = fsub <2 x float> %i.d, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.j, ptr %5, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load <2 x float>, ptr %i.l, align 4
  %i.n = fsub <2 x float> %i.m, %3                ; 2 uses
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fmul <2 x float> %4, %i.o                ; 2 uses
  %i.q = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.q, %i.r              ; 2 uses
  %i.t = fadd <2 x float> %i.p, %i.s
  %i.u = fsub <2 x float> %i.p, %i.s
  %i.v = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.v, ptr %i.k, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load float, ptr %i.w, align 4, !tbaa !228
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.x, ptr %i.y, align 8, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !93
  switch i32 %i.aa, label %bb.i [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ab) #11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ac) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ad) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ae) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @b2CollideMoverAndSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.af) #11
  br label %bb.g

end_hunk_0
