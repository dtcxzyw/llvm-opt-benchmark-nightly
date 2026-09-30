Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/geometry?download=true
inline.NumInlined: 139
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2TransformPolygon:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 2 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %2, %i.i                ; 2 uses
  %i.k = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %i.k, %i.l              ; 2 uses
  %i.n = fsub <2 x float> %i.j, %i.m
  %i.o = fadd <2 x float> %i.j, %i.m
  %i.p = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.q = fadd <2 x float> %1, %i.p
  store <2 x float> %i.q, ptr %i.g, align 4, !tbaa !20
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 2 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %2, %i.t                ; 2 uses
  %i.v = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.w = fmul <2 x float> %i.e, %i.v              ; 2 uses
  %i.x = fsub <2 x float> %i.u, %i.w
  %i.y = fadd <2 x float> %i.u, %i.w
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 3>
  %i.aa = fadd <2 x float> %1, %i.z
  store <2 x float> %i.aa, ptr %i.r, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %2, %i.ad              ; 2 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.f, %i.af            ; 2 uses
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fadd <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.aj, ptr %i.ab, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCircleMass(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  %i.c = fmul float %i.b, %i.b                    ; 2 uses
  %i.d = fmul float %1, f0x40490FDB
  %i.e = fmul float %i.d, %i.c                    ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.e, i64 0
  %.sroa.0.4.copyload = load float, ptr %0, align 4, !tbaa !20
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.sroa.0.4.copyload, i64 1
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.4.4.copyload = load float, ptr %.sroa.4.4..sroa_idx, align 4, !tbaa !20
  %.sroa.4.4.vec.insert = insertelement <2 x float> poison, float %.sroa.4.4.copyload, i64 0
  %i.f = fmul float %i.e, 5.000000e-01
  %i.g = fmul float %i.c, %i.f
  %.sroa.4.12.vec.insert = insertelement <2 x float> %.sroa.4.4.vec.insert, float %i.g, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCapsuleMass(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !28 ; 6 uses
  %i.c = fmul float %i.b, %i.b                    ; 2 uses
  %.sroa.017.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !20 ; 3 uses
  %i.e = fsub <2 x float> %.sroa.015.0.copyload, %.sroa.017.0.copyload ; 2 uses
  %i.f = fmul <2 x float> %i.e, %i.e
  %i.g = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.g) ; 4 uses
  %i.h = fmul float %sqrt.i, %sqrt.i
  %i.i = fmul float %i.b, f0x40490FDB
  %i.j = fmul float %i.b, %i.i
  %i.k = fmul float %1, %i.j                      ; 2 uses
  %i.l = fmul float %i.b, 2.000000e+00
  %i.m = fmul float %i.l, %sqrt.i
  %i.n = fmul float %1, %i.m                      ; 2 uses
  %i.o = fadd float %i.k, %i.n
  %.sroa.032.0.vec.insert = insertelement <2 x float> poison, float %i.o, i64 0
  %foldExtExtBinop = fadd <2 x float> %.sroa.017.0.copyload, %.sroa.015.0.copyload
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = fmul float %i.p, 5.000000e-01
  %.sroa.032.4.vec.insert = insertelement <2 x float> %.sroa.032.0.vec.insert, float %i.q, i64 1
  %foldExtExtBinop38 = fadd <2 x float> %.sroa.017.0.copyload, %.sroa.015.0.copyload
  %i.r = extractelement <2 x float> %foldExtExtBinop38, i64 1
  %i.s = fmul float %i.r, 5.000000e-01
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.s, i64 0
  %i.t = fmul float %sqrt.i, 5.000000e-01         ; 3 uses
  %i.u = fmul float %i.c, 5.000000e-01
  %i.v = fmul float %i.t, %i.t
  %i.w = fadd float %i.u, %i.v
  %i.x = fmul float %i.t, 2.000000e+00
  %i.y = fmul float %i.c, 4.000000e+00
  %i.z = fadd float %i.y, %i.h
  %i.aa = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.n, i64 1
  %i.ac = insertelement <2 x float> <float 4.000000e+00, float poison>, float %i.z, i64 1
  %i.ad = fmul <2 x float> %i.ab, %i.ac
  %i.ae = fdiv <2 x float> %i.ad, <float f0x4116CBE4, float 1.200000e+01> ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fmul float %i.af, %i.x
  %i.ah = fadd float %i.w, %i.ag
  %i.ai = fmul float %i.k, %i.ah
  %i.aj = extractelement <2 x float> %i.ae, i64 1
  %i.ak = fadd float %i.aj, %i.ai
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.ak, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.032.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { <2 x float>, <2 x float> } @b2ComputePolygonMass(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.b2MassData, align 8         ; 5 uses
  %3 = alloca [8 x %struct.b2Vec2], align 16      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 6 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 4
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %.sroa_idx, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load float, ptr %i.e, align 4, !tbaa !21 ; 2 uses
  %i.g = fmul float %i.f, %i.f                    ; 2 uses
  %i.h = fmul float %1, f0x40490FDB
  %i.i = fmul float %i.h, %i.g                    ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.i, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.c, i64 1
  %.sroa.4.4.vec.insert.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = fmul float %i.i, 5.000000e-01
  %i.k = fmul float %i.g, %i.j
  %.sroa.4.12.vec.insert.i = insertelement <2 x float> %.sroa.4.4.vec.insert.i, float %i.k, i64 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load float, ptr %i.o, align 4, !tbaa !21 ; 6 uses
  %i.q = fmul float %i.p, %i.p                    ; 2 uses
  %i.r = fsub <2 x float> %i.n, %i.l              ; 2 uses
  %i.s = fmul <2 x float> %i.r, %i.r
  %i.t = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.s)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.t) ; 4 uses
  %i.u = fmul float %sqrt.i.i, %sqrt.i.i
  %i.v = fmul float %i.p, f0x40490FDB
  %i.w = fmul float %i.p, %i.v
  %i.x = fmul float %1, %i.w                      ; 2 uses
  %i.y = fmul float %i.p, 2.000000e+00
  %i.z = fmul float %i.y, %sqrt.i.i
  %i.aa = fmul float %1, %i.z                     ; 2 uses
  %i.ab = fadd float %i.x, %i.aa
  %.sroa.032.0.vec.insert.i = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ac = fadd <2 x float> %i.l, %i.n
  %i.ad = fmul <2 x float> %i.ac, splat (float 5.000000e-01) ; 2 uses
  %i.ae = shufflevector <2 x float> %.sroa.032.0.vec.insert.i, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = fmul float %sqrt.i.i, 5.000000e-01      ; 3 uses
  %i.ah = fmul float %i.q, 5.000000e-01
  %i.ai = fmul float %i.ag, %i.ag
  %i.aj = fadd float %i.ah, %i.ai
  %i.ak = fmul float %i.ag, 2.000000e+00
  %i.al = fmul float %i.q, 4.000000e+00
  %i.am = fadd float %i.al, %i.u
  %i.an = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.aa, i64 1
  %i.ap = insertelement <2 x float> <float 4.000000e+00, float poison>, float %i.am, i64 1
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = fdiv <2 x float> %i.aq, <float f0x4116CBE4, float 1.200000e+01> ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fmul float %i.as, %i.ak
  %i.au = fadd float %i.aj, %i.at
  %i.av = fmul float %i.x, %i.au
  %i.aw = extractelement <2 x float> %i.ar, i64 1
  %i.ax = fadd float %i.aw, %i.av
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %i.af, float %i.ax, i64 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load float, ptr %i.ay, align 4, !tbaa !21 ; 2 uses
  %4 = fcmp ogt float %i.az, 0.000000e+00
  %i.ba = icmp sgt i32 %i.b, 0                    ; 2 uses
  br i1 %4, label %.preheader, label %.preheader150

.preheader150:                                    ; preds = %bb.d
  br i1 %i.ba, label %.loopexit.thread183, label %._crit_edge

.loopexit.thread183:                              ; preds = %.preheader150
  %i.bb = zext nneg i32 %i.b to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 4 %0, i64 %i.bc, i1 false), !tbaa !20
  %.sroa.031.0.copyload.pre = load <2 x float>, ptr %3, align 16, !tbaa !20
  br label %.lr.ph159

.preheader:                                       ; preds = %bb.d
  br i1 %i.ba, label %.lr.ph154, label %._crit_edge

.lr.ph154:                                        ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.be = fmul nnan float %i.az, 1.412000e+00
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.bd, i64 %wide.trip.count
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %.sroa.054.0.copyload.peel = load <2 x float>, ptr %i.bg, align 4, !tbaa !20
  %.sroa.053.0.copyload.peel = load <2 x float>, ptr %i.bd, align 4, !tbaa !20
  %i.bh = fadd <2 x float> %.sroa.054.0.copyload.peel, %.sroa.053.0.copyload.peel ; 3 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh
  %i.bj = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bi) ; 2 uses
  %i.bk = fcmp ogt float %i.bj, f0x057A0000
  br i1 %i.bk, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.lr.ph154
  %sqrt.i.peel = tail call nnan float @llvm.sqrt.f32(float %i.bj)
  %i.bl = fdiv nnan float 1.000000e+00, %sqrt.i.peel
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bh, %i.bn
  br label %.peel.next

.peel.next:                                       ; preds = %.lr.ph154, %bb.e
  %.sroa.012.0.i.peel = phi <2 x float> [ %i.bo, %bb.e ], [ zeroinitializer, %.lr.ph154 ]
  %i.bp = load <2 x float>, ptr %0, align 4
  %i.bq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %.sroa.012.0.i.peel
  %i.bt = fadd <2 x float> %i.bp, %i.bs           ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.peel.next, %b2Normalize.exit
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %b2Normalize.exit ] ; 4 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %.sroa.054.0.copyload = load <2 x float>, ptr %i.bv, align 4, !tbaa !20
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.bu, align 4, !tbaa !20
  %i.bw = fadd <2 x float> %.sroa.054.0.copyload, %.sroa.053.0.copyload ; 3 uses
  %i.bx = fmul <2 x float> %i.bw, %i.bw
  %i.by = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bx) ; 2 uses
  %i.bz = fcmp ogt float %i.by, f0x057A0000
  br i1 %i.bz, label %bb.g, label %b2Normalize.exit

bb.g:                                             ; preds = %bb.f
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.by)
  %i.ca = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.cb = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.bw, %i.cc
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.f, %bb.g
  %.sroa.012.0.i = phi <2 x float> [ %i.cd, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.cg = load <2 x float>, ptr %i.cf, align 4
  %i.ch = fmul <2 x float> %i.br, %.sroa.012.0.i
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  store <2 x float> %i.ci, ptr %i.ce, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !80

.loopexit:                                        ; preds = %b2Normalize.exit
  %i.cj = icmp sgt i32 %i.b, 2
  br i1 %i.cj, label %.lr.ph159, label %._crit_edge

.lr.ph159:                                        ; preds = %.loopexit.thread183, %.loopexit
  %.sroa.031.0.copyload185 = phi <2 x float> [ %.sroa.031.0.copyload.pre, %.loopexit.thread183 ], [ %i.bt, %.loopexit ] ; 3 uses
  %i.ck = add nsw i32 %i.b, -1
  %i.cl = shufflevector <2 x float> %.sroa.031.0.copyload185, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %wide.trip.count170 = zext nneg i32 %i.ck to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load <2 x float>, ptr %.phi.trans.insert, align 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %.loopexit, %.preheader150, %.preheader
  %.093.lcssa = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader150 ], [ %i.ee, %bb.h ]
  %.092.lcssa = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader150 ], [ %i.dj, %bb.h ] ; 2 uses
  %.sroa.039.0.lcssa = phi <2 x float> [ zeroinitializer, %.loopexit ], [ zeroinitializer, %.preheader ], [ zeroinitializer, %.preheader150 ], [ %i.ds, %bb.h ]
  %5 = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.bt, %.loopexit ], [ zeroinitializer, %.preheader150 ], [ %.sroa.031.0.copyload185, %bb.h ]
  %i.cm = fmul float %1, %.092.lcssa              ; 2 uses
  store float %i.cm, ptr %2, align 8, !tbaa !84
  %i.cn = fdiv float 1.000000e+00, %.092.lcssa
  %i.co = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cp, %.sroa.039.0.lcssa ; 5 uses
  %i.cr = fadd <2 x float> %5, %i.cq
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> %i.cr, ptr %.4..4..4..4..sroa_idx, align 4, !tbaa !20
  %i.cs = fmul float %1, %.093.lcssa
  %foldExtExtBinop = fmul <2 x float> %i.cq, %i.cq
  %foldExtExtBinop189 = fmul <2 x float> %i.cq, %i.cq
  %shift = shufflevector <2 x float> %foldExtExtBinop189, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.ct = extractelement <2 x float> %foldExtExtBinop191, i64 0
  %i.cu = fmul float %i.cm, %i.ct
  %i.cv = fsub float %i.cs, %i.cu
  %.12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.cv, ptr %.12..12..12..12..sroa_idx, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.0..0..0..0..fca.0.load.pre = load <2 x float>, ptr %2, align 8
  %.8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.8..8..8..8..fca.1.load.pre = load <2 x float>, ptr %.8..8..8..8..fca.1.gep.sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph159, %bb.h
  %i.cw = phi <2 x float> [ %.pre, %.lr.ph159 ], [ %i.cy, %bb.h ]
  %indvars.iv167 = phi i64 [ 1, %.lr.ph159 ], [ %indvars.iv.next168, %bb.h ]
  %.sroa.039.0158 = phi <2 x float> [ zeroinitializer, %.lr.ph159 ], [ %i.ds, %bb.h ]
  %.092157 = phi float [ 0.000000e+00, %.lr.ph159 ], [ %i.dj, %bb.h ]
  %.093156 = phi float [ 0.000000e+00, %.lr.ph159 ], [ %i.ee, %bb.h ]
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next168
  %i.cy = load <2 x float>, ptr %i.cx, align 8    ; 3 uses
  %foldExtExtBinop193 = fsub <2 x float> %i.cy, %.sroa.031.0.copyload185 ; 2 uses
  %i.cz = extractelement <2 x float> %foldExtExtBinop193, i64 1 ; 4 uses
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> %i.cy, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.db = fsub <4 x float> %i.da, %i.cl           ; 7 uses
  %i.dc = extractelement <4 x float> %i.db, i64 0
  %i.dd = fmul float %i.dc, %i.cz
  %i.de = extractelement <4 x float> %i.db, i64 2
  %i.df = extractelement <4 x float> %i.db, i64 3 ; 2 uses
  %i.dg = fmul float %i.df, %i.de
  %i.dh = fsub float %i.dd, %i.dg                 ; 2 uses
  %i.di = fmul float %i.dh, 5.000000e-01          ; 2 uses
  %i.dj = fadd float %.092157, %i.di              ; 2 uses
  %i.dk = fmul float %i.di, f0x3EAAAAAB
  %i.dl = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dm = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> %foldExtExtBinop193, <2 x i32> <i32 0, i32 3>
  %i.do = fadd <2 x float> %i.dl, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.do, %i.dq
  %i.ds = fadd <2 x float> %.sroa.039.0158, %i.dr ; 2 uses
  %i.dt = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.du = fmul <4 x float> %i.db, %i.dt           ; 4 uses
  %shift195 = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop196 = fadd <4 x float> %i.du, %shift195
  %shift198 = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop199 = fadd <4 x float> %shift198, %foldExtExtBinop196
  %i.dv = extractelement <4 x float> %foldExtExtBinop199, i64 0
  %i.dw = fmul float %i.df, %i.cz
  %i.dx = extractelement <4 x float> %i.du, i64 3
  %i.dy = fadd float %i.dx, %i.dw
  %i.dz = fmul float %i.cz, %i.cz
  %i.ea = fadd float %i.dz, %i.dy
  %i.eb = fmul float %i.dh, f0x3DAAAAAB
  %i.ec = fadd float %i.dv, %i.ea
  %i.ed = fmul float %i.eb, %i.ec
  %i.ee = fadd float %.093156, %i.ed              ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge, label %bb.h, !llvm.loop !81

bb.i:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %.8..8..8..fca.1.load = phi <2 x float> [ %.8..8..8..8..fca.1.load.pre, %._crit_edge ], [ %.sroa.3.12.vec.insert.i, %bb.c ], [ %.sroa.4.12.vec.insert.i, %bb.b ]
  %.0..0..0..fca.0.load = phi <2 x float> [ %.0..0..0..0..fca.0.load.pre, %._crit_edge ], [ %i.ae, %bb.c ], [ %.sroa.0.4.vec.insert.i, %bb.b ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.0..0..0..fca.0.load, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.8..8..8..fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCircleAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #9 {
bb.a:
  %.val = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val3 = load float, ptr %i.a, align 4, !tbaa !26
  %i.b = fpext float %.val3 to double
  %i.c = fadd double %i.b, 0.000000e+00
  %i.d = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fmul <2 x float> %2, %i.d                ; 2 uses
  %i.f = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.g = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.h = fmul <2 x float> %i.f, %i.g              ; 2 uses
  %i.i = fsub <2 x float> %i.e, %i.h
  %i.j = fadd <2 x float> %i.e, %i.h
  %i.k = shufflevector <2 x float> %i.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 3>
  %i.l = fadd <2 x float> %1, %i.k
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.c, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = fsub <2 x double> %i.m, %i.o
  %i.q = fptrunc <2 x double> %i.p to <2 x float>
  %i.r = fadd <2 x double> %i.o, %i.m
  %i.s = fptrunc <2 x double> %i.r to <2 x float>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.s, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCapsuleAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4        ; 2 uses
  %i.b = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.c = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !28
  %i.h = fpext float %i.g to double
  %i.i = fadd double %i.h, 0.000000e+00
  %i.j = shufflevector <2 x float> %i.a, <2 x float> %i.e, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.k = fmul <4 x float> %i.b, %i.j              ; 2 uses
  %i.l = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.m = shufflevector <2 x float> %i.a, <2 x float> %i.e, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.n = fmul <4 x float> %i.l, %i.m              ; 2 uses
  %i.o = fsub <4 x float> %i.k, %i.n
  %i.p = fadd <4 x float> %i.k, %i.n
  %i.q = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.r = fadd <4 x float> %i.c, %i.q              ; 4 uses
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.t = fcmp olt <4 x float> %i.r, %i.s
  %i.u = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.w = select <4 x i1> %i.t, <4 x float> %i.u, <4 x float> %i.v
  %i.x = fpext <4 x float> %i.w to <4 x double>   ; 2 uses
  %i.y = insertelement <4 x double> poison, double %i.i, i64 0 ; 2 uses
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.aa = fsub <4 x double> %i.x, %i.z
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ae = shufflevector <4 x double> %i.y, <4 x double> poison, <2 x i32> zeroinitializer
  %i.af = fadd <2 x double> %i.ad, %i.ae
  %i.ag = fptrunc <2 x double> %i.af to <2 x float>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ac, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.ag, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputePolygonAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4        ; 2 uses
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x float> %2, %i.b                ; 2 uses
  %i.d = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fmul <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = fsub <2 x float> %i.c, %i.f
  %i.h = fadd <2 x float> %i.c, %i.f
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.j = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.k = fadd <4 x float> %i.i, %i.j
  %i.l = fpext <4 x float> %i.k to <4 x double>   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader.i, label %b2ComputePolygonFatAABB.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.p = phi <4 x double> [ %i.l, %.lr.ph.preheader.i ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %2, %i.s                ; 2 uses
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.d, %i.u              ; 2 uses
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = fadd <2 x float> %i.t, %i.v
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.z = fadd <2 x float> %1, %i.y
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ac = fcmp ogt <4 x double> %i.p, %i.ab
  %i.ad = fcmp olt <4 x double> %i.p, %i.ab
  %i.ae = shufflevector <4 x i1> %i.ac, <4 x i1> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.af = select <4 x i1> %i.ae, <4 x double> %i.ab, <4 x double> %i.p ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonFatAABB.exit, label %.lr.ph.i, !llvm.loop !3

b2ComputePolygonFatAABB.exit:                     ; preds = %.lr.ph.i, %bb.a
end_hunk_0
