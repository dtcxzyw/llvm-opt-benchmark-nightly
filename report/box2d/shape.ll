Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/shape?download=true
inline.NumInlined: 200
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2ComputeShapeMass
define hidden { <2 x float>, <2 x float> } @b2ComputeShapeMass(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load float, ptr %i.d, align 8, !tbaa !142
  %i.f = tail call { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr noundef nonnull %i.c, float noundef %i.e) #11 ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load float, ptr %i.j, align 8, !tbaa !142
  %i.l = tail call { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr noundef nonnull %i.i, float noundef %i.k) #11 ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load float, ptr %i.p, align 8, !tbaa !142
  %i.r = tail call { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr noundef nonnull %i.o, float noundef %i.q) #11 ; 2 uses
  %i.s = extractvalue { <2 x float>, <2 x float> } %i.r, 0
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.r, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %i.s, %bb.d ], [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ zeroinitializer, %bb.a ]
  %.sroa.6.0 = phi <2 x float> [ %i.t, %bb.d ], [ %i.h, %bb.b ], [ %i.n, %bb.c ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr noundef, float noundef) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr noundef, float noundef) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden <2 x float> @b2ComputeShapeExtent(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.h [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.f
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load float, ptr %i.d, align 8, !tbaa !85 ; 2 uses
  %.sroa.049.0.vec.insert = insertelement <2 x float> poison, float %i.e, i64 0
  %i.f = load <2 x float>, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load <2 x float>, ptr %i.g, align 8
  %i.i = fsub <2 x float> %i.f, %1                ; 2 uses
  %i.j = fmul <2 x float> %i.i, %i.i
  %i.k = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.j) ; 2 uses
  %i.l = fsub <2 x float> %i.h, %1                ; 2 uses
  %i.m = fmul <2 x float> %i.l, %i.l
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m) ; 2 uses
  %i.o = fcmp ogt float %i.k, %i.n
  %i.p = select i1 %i.o, float %i.k, float %i.n
  %i.q = tail call float @sqrtf(float noundef %i.p) #11
  %i.r = fadd float %i.e, %i.q
  %.sroa.049.4.vec.insert = insertelement <2 x float> %.sroa.049.0.vec.insert, float %i.r, i64 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load float, ptr %i.t, align 8, !tbaa !85 ; 2 uses
  %.sroa.049.0.vec.insert52 = insertelement <2 x float> poison, float %i.u, i64 0
  %i.v = load <2 x float>, ptr %i.s, align 8
  %i.w = fsub <2 x float> %i.v, %1                ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.w
  %i.y = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.x)
  %i.z = tail call float @sqrtf(float noundef %i.y) #11
  %i.aa = fadd float %i.u, %i.z
  %.sroa.049.4.vec.insert60 = insertelement <2 x float> %.sroa.049.0.vec.insert52, float %i.aa, i64 1
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = tail call float @b2GetLengthUnitsPerMeter() #11
  %i.ad = fmul float %i.ac, 1.000000e+05
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !149 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0 ; 2 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.af to i64
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> %1, <2 x i32> <i32 0, i32 2>
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.an = phi <2 x float> [ %i.ah, %bb.d ], [ %i.bl, %bb.e ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !219 ; 2 uses
  %i.aq = extractelement <2 x float> %i.an, i64 0
  %i.ar = fadd float %i.aq, %i.ap
  %.sroa.049.0.vec.insert54 = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.as = extractelement <2 x float> %i.an, i64 1
  %i.at = tail call float @sqrtf(float noundef %i.as) #11
  %i.au = fadd float %i.ap, %i.at
  %.sroa.049.4.vec.insert62 = insertelement <2 x float> %.sroa.049.0.vec.insert54, float %i.au, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.av = phi <2 x float> [ %i.ah, %.lr.ph ], [ %i.bl, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.aw, align 4, !tbaa !68 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ay = load <2 x float>, ptr %i.ax, align 4    ; 2 uses
  %i.az = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x float> %i.az, %i.al           ; 2 uses
  %i.bb = shufflevector <2 x float> %.sroa.07.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fsub <2 x float> %i.bb, %i.am           ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> %i.ba, <2 x i32> <i32 0, i32 3>
  %i.be = fmul <2 x float> %i.bd, %i.ba
  %i.bf = shufflevector <2 x float> %i.ay, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bg = fmul <2 x float> %i.bf, %i.bc
  %i.bh = fadd <2 x float> %i.be, %i.bg           ; 3 uses
  %i.bi = shufflevector <2 x float> %i.av, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.bk = fcmp olt <2 x float> %i.bi, %i.bj
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.av, <2 x float> %i.bh ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !218

bb.f:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load <2 x float>, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load <2 x float>, ptr %i.bo, align 8
  %i.bq = fsub <2 x float> %i.bn, %1              ; 2 uses
  %i.br = fmul <2 x float> %i.bq, %i.bq
  %i.bs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.br) ; 2 uses
  %i.bt = fsub <2 x float> %i.bp, %1              ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt
  %i.bv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bu) ; 2 uses
  %i.bw = fcmp ogt float %i.bs, %i.bv
  %i.bx = select i1 %i.bw, float %i.bs, float %i.bv
  %i.by = tail call float @sqrtf(float noundef %i.bx) #11
  %.sroa.049.4.vec.insert64 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.by, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ca = load <2 x float>, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load <2 x float>, ptr %i.cb, align 8
  %i.cd = fsub <2 x float> %i.ca, %1              ; 2 uses
  %i.ce = fmul <2 x float> %i.cd, %i.cd
  %i.cf = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ce) ; 2 uses
  %i.cg = fsub <2 x float> %i.cc, %1              ; 2 uses
  %i.ch = fmul <2 x float> %i.cg, %i.cg
  %i.ci = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ch) ; 2 uses
  %i.cj = fcmp ogt float %i.cf, %i.ci
  %i.ck = select i1 %i.cj, float %i.cf, float %i.ci
  %i.cl = tail call float @sqrtf(float noundef %i.ck) #11
  %.sroa.049.4.vec.insert66 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cl, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %._crit_edge, %bb.c, %bb.b
  %.sroa.049.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.049.4.vec.insert, %bb.b ], [ %.sroa.049.4.vec.insert60, %bb.c ], [ %.sroa.049.4.vec.insert62, %._crit_edge ], [ %.sroa.049.4.vec.insert64, %bb.f ], [ %.sroa.049.4.vec.insert66, %bb.g ]
  ret <2 x float> %.sroa.049.0
}

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
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x float>, ptr %i.k, align 4      ; 2 uses
  %i.m = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = fmul <2 x float> %i.o, %i.p              ; 2 uses
  %i.r = fadd <2 x float> %i.n, %i.q
  %i.s = fsub <2 x float> %i.n, %i.q
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.t, ptr %6, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !93
  switch i32 %i.v, label %bb.h [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.w, ptr noundef nonnull %5) #11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.x, ptr noundef nonnull %5) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.y, ptr noundef nonnull %5) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2RayCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.z, ptr noundef nonnull %5, i1 noundef zeroext false) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @b2RayCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %5, i1 noundef zeroext true) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %4, %i.ad              ; 2 uses
  %i.af = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %i.ae, %i.ah
  %i.aj = fadd <2 x float> %i.ae, %i.ah
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fadd <2 x float> %3, %i.ak
  store <2 x float> %i.al, ptr %i.ab, align 4, !tbaa !68
  %i.am = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %4, %i.an              ; 2 uses
  %i.ap = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = fsub <2 x float> %i.ao, %i.ar
  %i.at = fadd <2 x float> %i.ao, %i.ar
  %i.au = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.au, ptr %0, align 4, !tbaa !68
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
  %i.al = add nsw i32 %i.e, -2
  %i.am = icmp ult i32 %i.al, 7
  br i1 %i.am, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter = and i64 %i.ak, -8
  br label %.lr.ph76

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge77, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.preheader
  %indvars.iv80.epil.init = phi i64 [ 1, %.lr.ph76.preheader ], [ %indvars.iv.next81.7, %._crit_edge77.loopexit.unr-lcssa ]
  %.sroa.09.074.epil.init = phi <2 x float> [ %.sroa.09.0.copyload, %.lr.ph76.preheader ], [ %i.ck, %._crit_edge77.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph76.epil

.lr.ph76.epil:                                    ; preds = %.lr.ph76.epil, %.lr.ph76.epil.preheader
  %indvars.iv80.epil = phi i64 [ %indvars.iv80.epil.init, %.lr.ph76.epil.preheader ], [ %indvars.iv.next81.epil, %.lr.ph76.epil ] ; 2 uses
  %.sroa.09.074.epil = phi <2 x float> [ %.sroa.09.074.epil.init, %.lr.ph76.epil.preheader ], [ %i.ap, %.lr.ph76.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph76.epil.preheader ], [ %epil.iter.next, %.lr.ph76.epil ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80.epil
  %i.ao = load <2 x float>, ptr %i.an, align 8
  %i.ap = fadd <2 x float> %.sroa.09.074.epil, %i.ao ; 2 uses
  %indvars.iv.next81.epil = add nuw nsw i64 %indvars.iv80.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge77, label %.lr.ph76.epil, !llvm.loop !221

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.epil, %bb.h
  %.sroa.09.0.lcssa = phi <2 x float> [ %.sroa.09.0.copyload, %bb.h ], [ %i.ck, %._crit_edge77.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph76.epil ]
  %i.aq = sitofp i32 %i.e to float
  %i.ar = fdiv nnan float 1.000000e+00, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.au = load <2 x float>, ptr %i.at, align 8
  %i.av = load <2 x float>, ptr %i.as, align 8    ; 2 uses
  %i.aw = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %.sroa.09.0.lcssa
  %i.az = fsub <2 x float> %i.au, %i.av
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = fsub <2 x float> %i.ay, %i.av
  %i.bc = fmul <2 x float> %i.bb, %i.ba           ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = extractelement <2 x float> %i.bc, i64 1
  %i.bf = fcmp uge float %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %.critedge

.lr.ph76:                                         ; preds = %.lr.ph76, %.lr.ph76.preheader.new
  %indvars.iv80 = phi i64 [ 1, %.lr.ph76.preheader.new ], [ %indvars.iv.next81.7, %.lr.ph76 ] ; 9 uses
  %.sroa.09.074 = phi <2 x float> [ %.sroa.09.0.copyload, %.lr.ph76.preheader.new ], [ %i.ck, %.lr.ph76 ]
  %niter = phi i64 [ 0, %.lr.ph76.preheader.new ], [ %niter.next.7, %.lr.ph76 ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bh = load <2 x float>, ptr %i.bg, align 8
  %i.bi = fadd <2 x float> %.sroa.09.074, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load <2 x float>, ptr %i.bk, align 8
  %i.bm = fadd <2 x float> %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load <2 x float>, ptr %i.bo, align 8
  %i.bq = fadd <2 x float> %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load <2 x float>, ptr %i.bs, align 8
  %i.bu = fadd <2 x float> %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load <2 x float>, ptr %i.bw, align 8
  %i.by = fadd <2 x float> %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load <2 x float>, ptr %i.ca, align 8
  %i.cc = fadd <2 x float> %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load <2 x float>, ptr %i.ce, align 8
  %i.cg = fadd <2 x float> %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load <2 x float>, ptr %i.ci, align 8
  %i.ck = fadd <2 x float> %i.cg, %i.cj           ; 3 uses
  %indvars.iv.next81.7 = add nuw nsw i64 %indvars.iv80, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !222

bb.i:                                             ; preds = %._crit_edge77
  call void @b2ShapeCastSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2CastOutput) align 4 %0, ptr noundef nonnull %i.as, ptr noundef nonnull %5) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cl, align 4    ; 2 uses
  %i.cn = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %i.cm
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = fmul <2 x float> %i.k, %i.cm            ; 2 uses
  %i.cr = fsub <2 x float> %i.cq, %i.cp
  %i.cs = fadd <2 x float> %i.cq, %i.cp
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = fadd <2 x float> %3, %i.ct
  store <2 x float> %i.cu, ptr %i.cl, align 4, !tbaa !68
  %i.cv = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.cw = fmul <2 x float> %i.cn, %i.cv
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = fmul <2 x float> %i.k, %i.cv            ; 2 uses
  %i.cz = fsub <2 x float> %i.cy, %i.cx
  %i.da = fadd <2 x float> %i.cy, %i.cx
  %i.db = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.db, ptr %0, align 4, !tbaa !68
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
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load <2 x float>, ptr %i.k, align 4
  %i.m = fsub <2 x float> %i.l, %3                ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %4, %i.n                ; 2 uses
  %i.p = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = fadd <2 x float> %i.o, %i.r
  %i.t = fsub <2 x float> %i.o, %i.r
  %i.u = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.u, ptr %6, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !228
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.w, ptr %i.x, align 8, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !93
  switch i32 %i.z, label %bb.i [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.aa) #11
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndCircle(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ab) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndPolygon(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ac) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @b2CollideMoverAndSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ad) #11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 152
  call void @b2CollideMoverAndSegment(ptr dead_on_unwind nonnull writable sret(%struct.b2PlaneResult) align 4 %0, ptr noundef nonnull %5, ptr noundef nonnull %i.ae) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !231, !range !77, !noundef !78
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %4, %i.aj              ; 2 uses
  %i.al = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = fsub <2 x float> %i.ak, %i.an
  %i.ap = fadd <2 x float> %i.ak, %i.an
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.aq, ptr %0, align 4, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.a, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

declare void @b2CollideMoverAndCapsule(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2CollideMoverAndCircle(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2CollideMoverAndPolygon(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @b2CollideMoverAndSegment(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @b2CreateShapeProxy(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3, <2 x float> %4, i1 noundef zeroext %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #11
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4, !tbaa !150
  %i.f = tail call { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr noundef %0, <2 x float> %3, <2 x float> %4, float noundef %i.c) #11 ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0 ; 2 uses
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %i.g, ptr %i.i, align 8, !tbaa !68
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %i.h, ptr %.sroa.65.0..sroa_idx.i, align 8, !tbaa !68
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
  %i.x = tail call i32 @b2BroadPhase_CreateProxy(ptr noundef %1, i32 noundef %2, <2 x float> %i.v, <2 x float> %i.w, i64 noundef %i.t, i32 noundef %i.u, i1 noundef zeroext %5) #11
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
  tail call void @b2BroadPhase_DestroyProxy(ptr noundef %1, i32 noundef %i.b) #11
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
  tail call void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef nonnull %i.c, i32 noundef 2, float noundef %i.e) #11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load float, ptr %i.g, align 8, !tbaa !85
  tail call void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef nonnull %i.f, i32 noundef 1, float noundef %i.h) #11
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.k = load i32, ptr %i.j, align 4, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.m = load float, ptr %i.l, align 8, !tbaa !85
  tail call void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef nonnull %i.i, i32 noundef %i.k, float noundef %i.m) #11
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef nonnull %i.n, i32 noundef 2, float noundef 0.000000e+00) #11
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4 %0, ptr noundef nonnull %i.o, i32 noundef 2, float noundef 0.000000e+00) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %0, i8 0, i64 72, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @b2Shape_GetBody(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.e = shl i64 %0, 32
  %sext.i = add i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !98
  %i.j = tail call i64 @b2MakeBodyId(ptr noundef %i.c, i32 noundef %i.i) #11
  ret i64 %i.j
}

declare i64 @b2MakeBodyId(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @b2Shape_GetWorld(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %0, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 2 uses
  %i.a = and i32 %.sroa.1.0.extract.trunc, 65535
  %i.b = tail call ptr @b2GetWorld(i32 noundef %i.a) #11
  %i.c = add i32 %.sroa.1.0.extract.trunc, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2504
  %i.e = load i16, ptr %i.d, align 8, !tbaa !154
  %.sroa.2.0.insert.ext = zext i16 %i.e to i32
  %.sroa.2.0.insert.shift = shl nuw i32 %.sroa.2.0.insert.ext, 16
  %.sroa.02.0.insert.ext = and i32 %i.c, 65535
  %.sroa.02.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.shift, %.sroa.02.0.insert.ext
  ret i32 %.sroa.02.0.insert.insert
}

; Function Attrs: nounwind uwtable
define void @b2Shape_SetUserData(i64 %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.e = shl i64 %0, 32
  %sext.i = add i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %1, ptr %i.h, align 8, !tbaa !143
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @b2Shape_GetUserData(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.e = shl i64 %0, 32
  %sext.i = add i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b2Shape_IsSensor(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11
  %i.d = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.e = shl i64 %0, 32
  %sext.i = add i64 %i.e, -4294967296
  %i.f = ashr exact i64 %sext.i, 32
  %i.g = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !112
  %i.j = icmp ne i32 %i.i, -1
  ret i1 %i.j
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b2Shape_TestPoint(i64 %0, <2 x float> %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.b2RecBuffer, align 8        ; 9 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11 ; 3 uses
end_hunk_0
begin_hunk_1_@b2Shape_GetSensorCapacity:bb.a
}

; Function Attrs: nounwind uwtable
define noundef i32 @b2Shape_GetSensorData(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorldLocked(i32 noundef %i.b) #11 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !112  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2176
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [56 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !117
  %i.s = tail call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %2) ; 7 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !118  ; 3 uses
  %i.u = icmp sgt i32 %i.s, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %i.s, 1
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !121
  %i.y = add nsw i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !122
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !123
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i16 %i.aa, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !123
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !121
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !122
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !70
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !123
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 %i.ag, ptr %.sroa.5.0..sroa_idx.1, align 2, !tbaa !123
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !260

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.epil.init ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !121
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !122
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init ; 3 uses
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !70
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i16 %.sroa.2.0.extract.trunc, ptr %.sroa.4.0..sroa_idx.epil, align 4, !tbaa !123
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.an, i64 6
  store i16 %i.am, ptr %.sroa.5.0..sroa_idx.epil, align 2, !tbaa !123
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.s, %bb.c ], [ %i.s, %.loopexit.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2Shape_GetAABB(i64 %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.i, align 8, !tbaa !68
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !68
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi <2 x float> [ %.sroa.03.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.4.0 = phi <2 x float> [ %.sroa.4.0.copyload, %bb.b ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @b2Shape_ComputeMassData(i64 %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %b2ComputeShapeMass.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !93
  switch i32 %i.j, label %b2ComputeShapeMass.exit [
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !142
  %i.n = tail call { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr noundef nonnull %i.k, float noundef %i.m) #11 ; 2 uses
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.n, 0
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.n, 1
  br label %b2ComputeShapeMass.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.s = load float, ptr %i.r, align 8, !tbaa !142
  %i.t = tail call { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr noundef nonnull %i.q, float noundef %i.s) #11 ; 2 uses
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.t, 0
  %i.v = extractvalue { <2 x float>, <2 x float> } %i.t, 1
  br label %b2ComputeShapeMass.exit

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.y = load float, ptr %i.x, align 8, !tbaa !142
  %i.z = tail call { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr noundef nonnull %i.w, float noundef %i.y) #11 ; 2 uses
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.z, 0
  %i.ab = extractvalue { <2 x float>, <2 x float> } %i.z, 1
  br label %b2ComputeShapeMass.exit

b2ComputeShapeMass.exit:                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.03.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.aa, %bb.e ], [ %i.o, %bb.c ], [ %i.u, %bb.d ], [ zeroinitializer, %bb.b ]
  %.sroa.4.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ab, %bb.e ], [ %i.p, %bb.c ], [ %i.v, %bb.d ], [ zeroinitializer, %bb.b ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define <2 x float> @b2Shape_GetClosestPoint(i64 %0, <2 x float> %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.b2Vec2, align 8             ; 4 uses
  %3 = alloca %struct.b2DistanceInput, align 4    ; 8 uses
  %4 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %5 = alloca %struct.b2SimplexCache, align 8     ; 4 uses
  %6 = alloca %struct.b2DistanceOutput, align 8   ; 4 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #11 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 2144
  %.val = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1920
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !98
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [104 x i8], ptr %i.j, i64 %i.m
  %i.o = tail call { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef nonnull %i.c, ptr noundef %i.n) #11 ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0 ; 2 uses
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @b2MakeShapeDistanceProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %3, ptr noundef %i.h)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %4, ptr noundef nonnull %2, i32 noundef 1, float noundef 0.000000e+00) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.r, ptr noundef nonnull align 4 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !261
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 144
  %.sroa.05.0.vec.extract.i.i = extractelement <2 x float> %i.q, i64 0 ; 2 uses
  %i.t = fmul float %.sroa.05.0.vec.extract.i.i, 0.000000e+00
  %.sroa.05.4.vec.extract.i.i = extractelement <2 x float> %i.q, i64 1 ; 2 uses
  %i.u = fsub float %i.t, %.sroa.05.4.vec.extract.i.i
  %i.v = fmul float %.sroa.05.4.vec.extract.i.i, 0.000000e+00
  %i.w = fadd float %.sroa.05.0.vec.extract.i.i, %i.v
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %.sroa.010.0.vec.insert.i.i = insertelement <2 x float> %i.x, float %i.u, i64 1
  %i.y = fsub <2 x float> %1, %i.p                ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul <2 x float> %i.q, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = fadd <2 x float> %i.aa, %i.ad
  %i.af = fsub <2 x float> %i.aa, %i.ad
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ag, ptr %i.s, align 4, !tbaa !68
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  store <2 x float> %.sroa.010.0.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i8 1, ptr %i.ah, align 4, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %6, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #11
  %i.ai = load <2 x float>, ptr %6, align 8       ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.q, %i.aj            ; 2 uses
  %i.al = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = fsub <2 x float> %i.ak, %i.an
  %i.ap = fadd <2 x float> %i.ak, %i.an
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ar = fadd <2 x float> %i.p, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.014.0 = phi <2 x float> [ %i.ar, %bb.b ], [ zeroinitializer, %bb.a ]
  ret <2 x float> %.sroa.014.0
}

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @b2Shape_ApplyWind(i64 %0, <2 x float> %1, float noundef %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.b2RecArgs_ShapeApplyWind, align 8 ; 9 uses
  %.sroa.3157.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %4 to i8
  %i.b = trunc nuw i64 %.sroa.3157.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b2GetWorld(i32 noundef %i.c) #11 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 %0, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %1, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %2, ptr %i.i, align 8, !tbaa !266
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %3, ptr %i.j, align 4, !tbaa !267
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.a, ptr %i.k, align 8, !tbaa !268
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.l, i8 0, i64 3, i1 false)
  call void @b2RecWrite_ShapeApplyWind(ptr noundef nonnull %i.g, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr i8, ptr %i.d, i64 2144
  %.val = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.n = shl i64 %0, 32
  %sext.i = add i64 %i.n, -4294967296
  %i.o = ashr exact i64 %sext.i, 32
  %i.p = getelementptr inbounds [296 x i8], ptr %.val, i64 %i.o ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !93
  switch i32 %i.r, label %bb.u [
    i32 3, label %bb.e
    i32 1, label %bb.e
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 1920
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !98
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [104 x i8], ptr %i.t, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %i.z = load i32, ptr %i.y, align 4, !tbaa !152
  %.not161 = icmp eq i32 %i.z, 2
  br i1 %.not161, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !151
  %i.ac = icmp slt i32 %i.ab, 3
  %brmerge = or i1 %4, %i.ac
  br i1 %brmerge, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.ad = call ptr @b2GetBodySim(ptr noundef nonnull %i.d, ptr noundef nonnull %i.x) #11 ; 6 uses
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !151
  %.not162 = icmp eq i32 %i.ae, 2
  br i1 %.not162, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = call zeroext i1 @b2WakeBody(ptr noundef nonnull %i.d, ptr noundef nonnull %i.x) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = call ptr @b2GetBodyState(ptr noundef nonnull %i.d, ptr noundef nonnull %i.x) #11 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.3.0.copyload = load <2 x float>, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !68 ; 12 uses
  %i.ah = call float @b2GetLengthUnitsPerMeter() #11 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = fmul float %i.ah, %i.ai
  %i.ak = fdiv float 1.225000e+00, %i.aj          ; 3 uses
  %i.al = load i32, ptr %i.q, align 4, !tbaa !93
  switch i32 %i.al, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %bb.l
    i32 3, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.an = load float, ptr %i.am, align 8, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.ao, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = fsub <2 x float> %.sroa.080.0.copyload, %i.aq ; 2 uses
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %.sroa.3.0.copyload, %i.as ; 2 uses
  %i.au = shufflevector <2 x float> %.sroa.3.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.av = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fmul <2 x float> %i.au, %i.av           ; 2 uses
  %i.ax = fsub <2 x float> %i.at, %i.aw
  %i.ay = fadd <2 x float> %i.at, %i.aw
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !270
  %i.bc = load <2 x float>, ptr %i.ag, align 4    ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.az
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = fsub <2 x float> %i.bc, %i.bg
  %i.bi = fadd <2 x float> %i.bc, %i.bg
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bk = insertelement <2 x float> poison, float %2, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %i.bj
  %i.bn = fsub <2 x float> %1, %i.bm              ; 3 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, f0x057A0000
  br i1 %i.bq, label %bb.k, label %b2GetLengthAndNormalize.exit

bb.k:                                             ; preds = %bb.j
  %i.br = call float @sqrtf(float noundef %i.bp) #11 ; 2 uses
  %i.bs = fdiv float 1.000000e+00, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.bn, %i.bu
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.j, %bb.k
  %.sink.i = phi float [ %i.br, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %.sroa.015.0.i = phi <2 x float> [ %i.bv, %bb.k ], [ zeroinitializer, %bb.j ]
  %i.bw = fmul float %i.an, 2.000000e+00
  %i.bx = fmul float %i.ak, 5.000000e-01
  %i.by = fmul float %i.bx, %i.bw
  %i.bz = fmul float %i.by, %.sink.i
  %i.ca = fmul float %.sink.i, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %.sroa.015.0.i  ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = fmul <2 x float> %i.az, %i.ce           ; 2 uses
  %shift = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.cf, %shift
  %i.cg = extractelement <2 x float> %foldExtExtBinop, i64 0
  br label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.ch, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cj = load <2 x float>, ptr %i.ci, align 4
  %i.ck = fsub <2 x float> %.sroa.070.0.copyload, %i.cj ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %.sroa.3.0.copyload, %i.cl ; 2 uses
  %i.cn = shufflevector <2 x float> %.sroa.3.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cq = fsub <2 x float> %i.cm, %i.cp
  %i.cr = fadd <2 x float> %i.cm, %i.cp
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !270
end_hunk_1
