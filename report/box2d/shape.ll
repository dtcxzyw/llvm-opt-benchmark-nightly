Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/shape?download=true
inline.NumInlined: 200
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2ComputeShapeExtent:bb.a
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !219 ; 2 uses
  %i.aq = fadd float %.0.lcssa, %i.ap
  %.sroa.049.0.vec.insert54 = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ar = fadd float %.067.lcssa, %i.ap
  %.sroa.049.4.vec.insert62 = insertelement <2 x float> %.sroa.049.0.vec.insert54, float %i.ar, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.as = phi <2 x float> [ %i.ai, %.lr.ph ], [ %i.bi, %bb.e ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.at, align 4 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.av = load <2 x float>, ptr %i.au, align 4    ; 2 uses
  %i.aw = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fsub <2 x float> %i.aw, %i.aj           ; 2 uses
  %i.ay = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fsub <2 x float> %i.ay, %i.ak           ; 2 uses
  %i.ba = shufflevector <2 x float> %i.av, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.bb = fmul <2 x float> %i.ba, %i.ax
  %i.bc = shufflevector <2 x float> %i.av, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bd = fmul <2 x float> %i.bc, %i.az
  %i.be = fadd <2 x float> %i.bb, %i.bd           ; 3 uses
  %i.bf = shufflevector <2 x float> %i.as, <2 x float> %i.be, <2 x i32> <i32 0, i32 3>
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.bh = fcmp olt <2 x float> %i.bf, %i.bg
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.as, <2 x float> %i.be ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !218

bb.f:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bk = load <2 x float>, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bm = load <2 x float>, ptr %i.bl, align 8
  %i.bn = fsub <2 x float> %i.bk, %1              ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo) ; 2 uses
  %i.bq = fsub <2 x float> %i.bm, %1              ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bq
  %i.bs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.br) ; 2 uses
  %i.bt = fcmp ogt float %i.bp, %i.bs
  %i.bu = select i1 %i.bt, float %i.bp, float %i.bs
  %sqrt138 = tail call float @llvm.sqrt.f32(float %i.bu)
  %.sroa.049.4.vec.insert64 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt138, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bw = load <2 x float>, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = load <2 x float>, ptr %i.bx, align 8
  %i.bz = fsub <2 x float> %i.bw, %1              ; 2 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bz
  %i.cb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ca) ; 2 uses
  %i.cc = fsub <2 x float> %i.by, %1              ; 2 uses
  %i.cd = fmul <2 x float> %i.cc, %i.cc
  %i.ce = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cd) ; 2 uses
  %i.cf = fcmp ogt float %i.cb, %i.ce
  %i.cg = select i1 %i.cf, float %i.cb, float %i.ce
  %sqrt139 = tail call float @llvm.sqrt.f32(float %i.cg)
  %.sroa.049.4.vec.insert66 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt139, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %._crit_edge, %bb.c, %bb.b
  %.sroa.049.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.049.4.vec.insert, %bb.b ], [ %.sroa.049.4.vec.insert60, %bb.c ], [ %.sroa.049.4.vec.insert62, %._crit_edge ], [ %.sroa.049.4.vec.insert64, %bb.f ], [ %.sroa.049.4.vec.insert66, %bb.g ]
  ret <2 x float> %.sroa.049.0
}

; Function Attrs: nounwind uwtable
define hidden void @b2RayCastShape(ptr dead_on_unwind noalias nofree writable sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.b2RayCastInput, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
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
  store <2 x float> %i.j, ptr %5, align 8
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
  store <2 x float> %i.u, ptr %i.k, align 8
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
  call void @b2RayCastCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.x, ptr noundef nonnull %5) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.y, ptr noundef nonnull %5) #9
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.z, ptr noundef nonnull %5) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %5, i1 noundef zeroext false) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @b2RayCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %5, i1 noundef zeroext true) #9
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
  store <2 x float> %i.am, ptr %i.ac, align 4
  %i.an = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %4, %i.ao              ; 2 uses
  %i.aq = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = fsub <2 x float> %i.ap, %i.as
  %i.au = fadd <2 x float> %i.ap, %i.as
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.av, ptr %0, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 4 dereferenceable(88) %1, i64 88, i1 false), !tbaa.struct !225
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !224  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.lcssa = phi i32 [ %i.e, %bb.b ], [ %i.ad, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load <2 x float>, ptr %i.i, align 4      ; 2 uses
  %i.k = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fmul <2 x float> %i.k, %i.j              ; 2 uses
  %i.m = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %6 = fmul <2 x float> %i.m, %i.j
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = fadd <2 x float> %i.l, %7
  %i.o = fsub <2 x float> %i.l, %7
  %i.p = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.p, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !93
  switch i32 %i.r, label %.critedge [
    i32 1, label %bb.d
    i32 0, label %bb.e
    i32 3, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load <2 x float>, ptr %i.t, align 4
  %i.v = fsub <2 x float> %i.u, %3                ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x float> %4, %i.w                ; 2 uses
  %i.y = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.g, %i.y              ; 2 uses
  %i.aa = fadd <2 x float> %i.x, %i.z
  %i.ab = fsub <2 x float> %i.x, %i.z
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ac, ptr %i.s, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !224 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.c, label %._crit_edge, !llvm.loop !220

bb.d:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %5) #9
  br label %bb.j

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %5) #9
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.ai, ptr noundef nonnull %5) #9
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2ShapeCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.aj, ptr noundef nonnull %5) #9
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %.sroa.09.0.copyload = load <2 x float>, ptr %5, align 8 ; 3 uses
  %i.ak = icmp sgt i32 %.lcssa, 1
  br i1 %i.ak, label %.lr.ph76.preheader, label %._crit_edge77

.lr.ph76.preheader:                               ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  %i.al = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.al, 7                    ; 3 uses
  %i.am = add nsw i32 %.lcssa, -2
  %i.an = icmp ult i32 %i.am, 7
  br i1 %i.an, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter = and i64 %i.al, -8
  br label %.lr.ph76

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.preheader
  %indvars.iv81.epil.init = phi i64 [ 1, %.lr.ph76.preheader ], [ %indvars.iv.next82.7, %._crit_edge77.loopexit.unr-lcssa ]
  %.sroa.09.074.epil.init = phi <2 x float> [ %.sroa.09.0.copyload, %.lr.ph76.preheader ], [ %i.cl, %._crit_edge77.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph76.epil

.lr.ph76.epil:                                    ; preds = %.lr.ph76.epil, %.lr.ph76.epil.preheader
  %indvars.iv81.epil = phi i64 [ %indvars.iv81.epil.init, %.lr.ph76.epil.preheader ], [ %indvars.iv.next82.epil, %.lr.ph76.epil ] ; 2 uses
  %.sroa.09.074.epil = phi <2 x float> [ %.sroa.09.074.epil.init, %.lr.ph76.epil.preheader ], [ %i.aq, %.lr.ph76.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph76.epil.preheader ], [ %epil.iter.next, %.lr.ph76.epil ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81.epil
  %i.ap = load <2 x float>, ptr %i.ao, align 8
  %i.aq = fadd <2 x float> %.sroa.09.074.epil, %i.ap ; 2 uses
  %indvars.iv.next82.epil = add nuw nsw i64 %indvars.iv81.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %.lr.ph76.epil, !llvm.loop !221

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.epil, %bb.h
  %.sroa.09.0.lcssa = phi <2 x float> [ %.sroa.09.0.copyload, %bb.h ], [ %i.cl, %._crit_edge77.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph76.epil ]
  %i.ar = sitofp i32 %.lcssa to float
  %i.as = fdiv nnan float 1.000000e+00, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.av = load <2 x float>, ptr %i.au, align 8
  %i.aw = load <2 x float>, ptr %i.at, align 8    ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.ay, %.sroa.09.0.lcssa
  %i.ba = fsub <2 x float> %i.av, %i.aw
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = fsub <2 x float> %i.az, %i.aw
  %i.bd = fmul <2 x float> %i.bc, %i.bb           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = extractelement <2 x float> %i.bd, i64 1
  %i.bg = fcmp uge float %i.be, %i.bf
  br i1 %i.bg, label %bb.i, label %.critedge

.lr.ph76:                                         ; preds = %.lr.ph76, %.lr.ph76.preheader.new
  %indvars.iv81 = phi i64 [ 1, %.lr.ph76.preheader.new ], [ %indvars.iv.next82.7, %.lr.ph76 ] ; 9 uses
  %.sroa.09.074 = phi <2 x float> [ %.sroa.09.0.copyload, %.lr.ph76.preheader.new ], [ %i.cl, %.lr.ph76 ]
  %niter = phi i64 [ 0, %.lr.ph76.preheader.new ], [ %niter.next.7, %.lr.ph76 ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.bi = load <2 x float>, ptr %i.bh, align 8
  %i.bj = fadd <2 x float> %.sroa.09.074, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load <2 x float>, ptr %i.bl, align 8
  %i.bn = fadd <2 x float> %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load <2 x float>, ptr %i.bp, align 8
  %i.br = fadd <2 x float> %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load <2 x float>, ptr %i.bt, align 8
  %i.bv = fadd <2 x float> %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load <2 x float>, ptr %i.bx, align 8
  %i.bz = fadd <2 x float> %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load <2 x float>, ptr %i.cb, align 8
  %i.cd = fadd <2 x float> %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load <2 x float>, ptr %i.cf, align 8
  %i.ch = fadd <2 x float> %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv81
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load <2 x float>, ptr %i.cj, align 8
  %i.cl = fadd <2 x float> %i.ch, %i.ck           ; 3 uses
  %indvars.iv.next82.7 = add nuw nsw i64 %indvars.iv81, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !222

bb.i:                                             ; preds = %._crit_edge77
  call void @b2ShapeCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.at, ptr noundef nonnull %5) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 4    ; 2 uses
  %i.co = fmul <2 x float> %i.m, %i.cn
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = fmul <2 x float> %i.k, %i.cn            ; 2 uses
  %i.cr = fsub <2 x float> %i.cq, %i.cp
  %i.cs = fadd <2 x float> %i.cq, %i.cp
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = fadd <2 x float> %3, %i.ct
  store <2 x float> %i.cu, ptr %i.cm, align 4
  %i.cv = load <2 x float>, ptr %0, align 4       ; 2 uses
  %8 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %4, %8                 ; 2 uses
  %i.cx = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %9 = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = fmul <2 x float> %i.cx, %9              ; 2 uses
  %i.cz = fsub <2 x float> %i.cw, %i.cy
  %i.da = fadd <2 x float> %i.cw, %i.cy
  %i.db = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.db, ptr %0, align 4
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge77, %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
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
  store <2 x float> %i.j, ptr %5, align 8
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
  store <2 x float> %i.v, ptr %i.k, align 8
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
  call void @b2CollideMoverAndCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ab) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ac) #9
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ad) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ae) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @b2CollideMoverAndSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.af) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !231, !range !77, !noundef !78
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %4, %i.ak              ; 2 uses
  %i.am = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.an = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul <2 x float> %i.am, %i.an           ; 2 uses
  %i.ap = fsub <2 x float> %i.al, %i.ao
  %i.aq = fadd <2 x float> %i.al, %i.ao
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> %i.aq, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ar, ptr %0, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

declare void @b2CollideMoverAndCapsule(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2CollideMoverAndCircle(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2CollideMoverAndPolygon(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2CollideMoverAndSegment(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b2CreateShapeProxy(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3, <2 x float> %4, i1 noundef zeroext %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #9
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4, !tbaa !150
  %i.f = tail call { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr noundef %0, <2 x float> %3, <2 x float> %4, float noundef %i.c) #9 ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0 ; 2 uses
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %i.g, ptr %i.i, align 8
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %i.h, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.j = icmp eq i32 %2, 0
  %i.k = select i1 %i.j, float %i.c, float %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.n = insertelement <4 x float> poison, float %i.k, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = fsub <4 x float> %i.m, %i.o
  %i.q = fadd <4 x float> %i.m, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.r, ptr %i.l, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i64, ptr %i.s, align 8, !tbaa !153
  %i.u = load i32, ptr %0, align 8, !tbaa !82
  %i.v = load <2 x float>, ptr %i.l, align 8
  %i.w = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.x = tail call i32 @b2BroadPhase_CreateProxy(ptr noundef %1, i32 noundef %2, <2 x float> %i.v, <2 x float> %i.w, i64 noundef %i.t, i32 noundef %i.u, i1 noundef zeroext %5) #9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.x, ptr %i.y, align 8, !tbaa !103
  ret void
}

declare i32 @b2BroadPhase_CreateProxy(ptr noundef, i32 noundef, <2 x float>, <2 x float>, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b2DestroyShapeProxy(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @b2BroadPhase_DestroyProxy(ptr noundef %1, i32 noundef %i.b) #9
  store i32 -1, ptr %i.a, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @b2BroadPhase_DestroyProxy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b2MakeShapeDistanceProxy(ptr dead_on_unwind noalias writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.g [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load float, ptr %i.d, align 8, !tbaa !85
  tail call void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef nonnull %i.c, i32 noundef 2, float noundef %i.e) #9
  br label %bb.h

bb.c:                                             ; preds = %bb.a
end_hunk_0
