Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/compound?download=true
inline.NumInlined: 186
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@b3ComputeCompoundAABB:bb.a
  %i.aa = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ab = shufflevector <2 x float> %foldExtExtBinop78, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.ac = fadd <2 x float> %i.y, %i.ab            ; 2 uses
  %i.ad = fmul <2 x float> %i.t, %i.z
  %i.ae = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> %.sroa.4.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.af = fmul <2 x float> %i.ae, %i.ac
  %i.ag = fsub <2 x float> %i.ad, %i.af
  %foldExtExtBinop80 = fmul <2 x float> %.sroa.4.0.copyload, %i.ac
  %foldExtExtBinop82 = fmul <2 x float> %.sroa.4.0.copyload, %i.z
  %shift = shufflevector <2 x float> %foldExtExtBinop82, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop84 = fsub <2 x float> %foldExtExtBinop80, %shift
  %i.ah = extractelement <2 x float> %foldExtExtBinop84, i64 0
  %i.ai = fmul <2 x float> %i.ag, splat (float 2.000000e+00)
  %i.aj = fadd <2 x float> %i.m, %i.ai
  %i.ak = fmul float %i.ah, 2.000000e+00
  %i.al = fadd float %i.q, %i.ak
  %i.am = fadd <2 x float> %.sroa.0.sroa.0.0.copyload, %i.aj ; 2 uses
  %i.an = fadd float %.sroa.0.sroa.4.0.copyload, %i.al ; 2 uses
  %i.ao = fmul <2 x float> %.sroa.4.0.copyload, %.sroa.4.0.copyload ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop86 = fmul <2 x float> %.sroa.4.0.copyload, %.sroa.5.0.copyload
  %i.aq = extractelement <2 x float> %foldExtExtBinop86, i64 0 ; 2 uses
  %i.ar = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.as = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.3.8.vec.extract.i ; 2 uses
  %i.at = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.au = fsub float %.sroa.6.0.copyload, %.sroa.451.0.copyload
  %i.av = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.5.0.copyload, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.aw = insertelement <4 x float> %i.av, float %i.au, i64 0
  %i.ax = shufflevector <2 x float> %.sroa.4.0.copyload, <2 x float> %.sroa.5.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 2>
  %i.ay = insertelement <4 x float> %i.ax, float 5.000000e-01, i64 0
  %i.az = fmul <4 x float> %i.aw, %i.ay           ; 5 uses
  %i.ba = extractelement <4 x float> %i.az, i64 1 ; 2 uses
  %i.bb = extractelement <4 x float> %i.az, i64 2 ; 2 uses
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fsub float %i.aq, %i.at
  %i.be = fmul float %i.bd, 2.000000e+00          ; 3 uses
  %i.bf = fsub float %i.ba, %i.bb
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bc, i64 1
  %i.bi = fmul <2 x float> %i.bh, splat (float 2.000000e+00) ; 3 uses
  %i.bj = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bk = fadd <2 x float> %i.ap, %i.bj
  %i.bl = fmul <2 x float> %i.bk, splat (float 2.000000e+00)
  %i.bm = fsub <2 x float> splat (float 1.000000e+00), %i.bl ; 3 uses
  %i.bn = fadd float %i.as, %i.ar
  %i.bo = fmul float %i.bn, 2.000000e+00          ; 3 uses
  %i.bp = fadd float %i.aq, %i.at
  %i.bq = fsub float %i.as, %i.ar
  %i.br = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bq, i64 1
  %i.bt = fmul <2 x float> %i.bs, splat (float 2.000000e+00) ; 3 uses
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ao)
  %i.bv = fmul float %i.bu, 2.000000e+00
  %i.bw = fsub float 1.000000e+00, %i.bv          ; 3 uses
  %i.bx = fcmp olt float %i.be, 0.000000e+00
  %i.by = fneg float %i.be
  %i.bz = select i1 %i.bx, float %i.by, float %i.be
  %i.ca = fcmp olt <2 x float> %i.bi, zeroinitializer
  %i.cb = fneg <2 x float> %i.bi
  %i.cc = select <2 x i1> %i.ca, <2 x float> %i.cb, <2 x float> %i.bi
  %i.cd = fcmp olt <2 x float> %i.bm, zeroinitializer
  %i.ce = fneg <2 x float> %i.bm
  %i.cf = select <2 x i1> %i.cd, <2 x float> %i.ce, <2 x float> %i.bm
  %i.cg = fcmp olt float %i.bo, 0.000000e+00
  %i.ch = fneg float %i.bo
  %i.ci = select i1 %i.cg, float %i.ch, float %i.bo
  %i.cj = fcmp olt <2 x float> %i.bt, zeroinitializer
  %i.ck = fneg <2 x float> %i.bt
  %i.cl = select <2 x i1> %i.cj, <2 x float> %i.ck, <2 x float> %i.bt
  %i.cm = fcmp olt float %i.bw, 0.000000e+00
  %i.cn = fneg float %i.bw
  %i.co = select i1 %i.cm, float %i.cn, float %i.bw
  %i.cp = fsub <2 x float> %.sroa.552.0.copyload, %.sroa.050.0.copyload
  %i.cq = fmul <2 x float> %i.cp, splat (float 5.000000e-01) ; 4 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = fmul <2 x float> %i.cr, %i.cc
  %i.ct = fmul <2 x float> %i.cq, %i.cf
  %i.cu = fadd <2 x float> %i.cs, %i.ct
  %i.cv = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.cv, %i.cl
  %i.cx = fadd <2 x float> %i.cw, %i.cu           ; 2 uses
  %i.cy = extractelement <2 x float> %i.cq, i64 0
  %i.cz = fmul float %i.cy, %i.bz
  %i.da = extractelement <2 x float> %i.cq, i64 1
  %i.db = fmul float %i.da, %i.ci
  %i.dc = fadd float %i.cz, %i.db
  %i.dd = extractelement <4 x float> %i.az, i64 0
  %i.de = fmul float %i.dd, %i.co
  %i.df = fadd float %i.de, %i.dc                 ; 2 uses
  %i.dg = fsub <2 x float> %i.am, %i.cx
  %i.dh = fsub float %i.an, %i.df
  store <2 x float> %i.dg, ptr %0, align 4, !alias.scope !216
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.dh, ptr %.sroa.28.0..sroa_idx.i, align 4, !alias.scope !216
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dj = fadd <2 x float> %i.am, %i.cx
  %i.dk = fadd float %i.an, %i.df
  store <2 x float> %i.dj, ptr %i.di, align 4, !alias.scope !216
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.dk, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !216
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @b3OverlapCompound(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.b3CompoundOverlapContext, align 8 ; 8 uses
  %4 = alloca %struct.b3AABB, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %0, ptr %3, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !29
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !218
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = load ptr, ptr %2, align 8, !tbaa !219    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !35
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !35
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !220  ; 2 uses
  %.promoted = load <2 x float>, ptr %4, align 8  ; 2 uses
  %.promoted74 = load <2 x float>, ptr %i.f, align 4 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 1
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge84

._crit_edge84:                                    ; preds = %bb.a
  %.sroa.214.0.copyload.pre = load float, ptr %.sroa.237.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.25.0.copyload.pre = load float, ptr %.sroa.25.0..sroa_idx.phi.trans.insert, align 4
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.237.0..sroa_idx.promoted = load float, ptr %.sroa.237.0..sroa_idx, align 8
  %.sroa.227.0..sroa_idx.promoted = load float, ptr %.sroa.227.0..sroa_idx, align 4
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %._crit_edge84
  %.sroa.25.0.copyload = phi float [ %.sroa.25.0.copyload.pre, %._crit_edge84 ], [ %i.ae, %bb.b ]
  %.sroa.214.0.copyload = phi float [ %.sroa.214.0.copyload.pre, %._crit_edge84 ], [ %i.aa, %bb.b ]
  %.sroa.08.4.vec.insert.i7075.lcssa = phi <2 x float> [ %.promoted74, %._crit_edge84 ], [ %i.ac, %bb.b ]
  %.sroa.036.0.copyload73.lcssa = phi <2 x float> [ %.promoted, %._crit_edge84 ], [ %i.y, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !221 ; 3 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fsub <2 x float> %.sroa.036.0.copyload73.lcssa, %i.m
  %i.o = fsub float %.sroa.214.0.copyload, %i.k
  store <2 x float> %i.n, ptr %4, align 8, !tbaa !19
  store float %i.o, ptr %.sroa.214.0..sroa_idx, align 8, !tbaa !19
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.p = fadd <2 x float> %i.m, %.sroa.08.4.vec.insert.i7075.lcssa
  %i.q = fadd float %i.k, %.sroa.25.0.copyload
  store <2 x float> %i.p, ptr %i.f, align 4, !tbaa !19
  store float %i.q, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.r, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3CompoundOverlapCallback, ptr noundef nonnull %3) #19 ; 0 uses
  %i.t = load i8, ptr %i.d, align 8, !tbaa !77, !range !222, !noundef !78
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %i.u

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.sroa.227.0.copyload80 = phi float [ %.sroa.227.0..sroa_idx.promoted, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %i.v = phi float [ %.sroa.237.0..sroa_idx.promoted, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %.sroa.036.0.copyload7377 = phi <2 x float> [ %.promoted, %.lr.ph ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.08.4.vec.insert.i707576 = phi <2 x float> [ %.promoted74, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.w, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.x = fcmp olt <2 x float> %.sroa.036.0.copyload7377, %.sroa.034.0.copyload
  %i.y = select <2 x i1> %i.x, <2 x float> %.sroa.036.0.copyload7377, <2 x float> %.sroa.034.0.copyload ; 2 uses
  %i.z = fcmp olt float %i.v, %.sroa.235.0.copyload
  %i.aa = select i1 %i.z, float %i.v, float %.sroa.235.0.copyload ; 2 uses
  %i.ab = fcmp ogt <2 x float> %.sroa.08.4.vec.insert.i707576, %.sroa.034.0.copyload
  %i.ac = select <2 x i1> %i.ab, <2 x float> %.sroa.08.4.vec.insert.i707576, <2 x float> %.sroa.034.0.copyload ; 2 uses
  %i.ad = fcmp ogt float %.sroa.227.0.copyload80, %.sroa.235.0.copyload
  %i.ae = select i1 %i.ad, float %.sroa.227.0.copyload80, float %.sroa.235.0.copyload ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !217
}

declare i64 @b3DynamicTree_Query(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3CompoundOverlapCallback(i32 %0, i64 noundef %1, ptr noundef %2) #5 {
bb.a:
  %3 = alloca %struct.b3ChildShape, align 8       ; 12 uses
  %4 = alloca %struct.b3Transform, align 8        ; 10 uses
  %i.a = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = load ptr, ptr %2, align 8, !tbaa !75
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %3, ptr noundef %i.b, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.d, align 8 ; 4 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.413.0.copyload = load float, ptr %.sroa.413.0..sroa_idx, align 8 ; 4 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.514.0.copyload = load <2 x float>, ptr %.sroa.514.0..sroa_idx, align 4 ; 5 uses
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.615.0.copyload = load <2 x float>, ptr %.sroa.615.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 6 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.5.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.012.0.copyload, %.sroa.6.0.copyload
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.f = fmul float %.sroa.413.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.g = fsub float %i.e, %i.f
  %i.h = shufflevector <2 x float> %.sroa.012.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.i = insertelement <2 x float> %i.h, float %.sroa.413.0.copyload, i64 1 ; 2 uses
  %i.j = fmul <2 x float> %i.i, %.sroa.5.0.copyload
  %i.k = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.l = fmul <2 x float> %.sroa.012.0.copyload, %i.k
  %i.m = fsub <2 x float> %i.j, %i.l              ; 2 uses
  %i.n = insertelement <2 x float> %i.h, float %.sroa.413.0.copyload, i64 0
  %i.o = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = fmul <2 x float> %i.i, %i.o
  %i.r = fadd <2 x float> %i.p, %i.m              ; 2 uses
  %i.s = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.t = insertelement <2 x float> %i.s, float %i.g, i64 0
  %i.u = fadd <2 x float> %i.q, %i.t              ; 2 uses
  %i.v = fmul <2 x float> %i.k, %i.r
  %i.w = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.u
  %i.y = fsub <2 x float> %i.v, %i.x
  %foldExtExtBinop22 = fmul <2 x float> %.sroa.5.0.copyload, %i.u
  %foldExtExtBinop24 = fmul <2 x float> %.sroa.5.0.copyload, %i.r
  %shift = shufflevector <2 x float> %foldExtExtBinop24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fsub <2 x float> %foldExtExtBinop22, %shift
  %i.z = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.aa = fmul <2 x float> %i.y, splat (float 2.000000e+00)
  %i.ab = fadd <2 x float> %.sroa.012.0.copyload, %i.aa
  %i.ac = fmul float %i.z, 2.000000e+00
  %i.ad = fadd float %.sroa.413.0.copyload, %i.ac
  %i.ae = fadd <2 x float> %.sroa.0.0.copyload, %i.ab
  %i.af = fadd float %.sroa.4.0.copyload, %i.ad
  store <2 x float> %i.ae, ptr %4, align 8, !tbaa !19, !alias.scope !225
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.af, ptr %.sroa.415.0..sroa_idx.i, align 8, !tbaa !19, !alias.scope !225
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ah = shufflevector <2 x float> %.sroa.615.0.copyload, <2 x float> %.sroa.514.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ai = fmul <2 x float> %i.ah, %i.k
  %i.aj = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> %.sroa.615.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ak = fmul <2 x float> %i.aj, %i.w
  %i.al = fsub <2 x float> %i.ai, %i.ak
  %i.am = fmul <2 x float> %.sroa.514.0.copyload, %i.o
  %i.an = fadd <2 x float> %i.am, %i.al
  %i.ao = shufflevector <2 x float> %.sroa.615.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ap = fmul <2 x float> %i.ao, %.sroa.5.0.copyload
  %i.aq = fadd <2 x float> %i.ap, %i.an
  %i.ar = fmul <2 x float> %i.ao, %.sroa.6.0.copyload ; 2 uses
  %i.as = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %.sroa.5.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fmul <2 x float> %i.as, %i.at           ; 2 uses
  %i.av = shufflevector <2 x float> %.sroa.514.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = fmul <2 x float> %i.av, %.sroa.5.0.copyload ; 2 uses
  %i.ax = fsub <2 x float> %i.aw, %i.au
  %i.ay = fadd <2 x float> %i.aw, %i.au
  %i.az = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = shufflevector <2 x float> %.sroa.615.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = fadd <2 x float> %i.az, %i.bc           ; 2 uses
  %i.be = fadd <2 x float> %i.ar, %i.bd
  %i.bf = fsub <2 x float> %i.ar, %i.bd
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.aq, ptr %i.ag, align 4, !tbaa !19, !alias.scope !225
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store <2 x float> %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !19, !alias.scope !225
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42
  switch i32 %i.bi, label %.thread [
    i32 0, label %bb.b
    i32 3, label %.split20
    i32 4, label %.split19
    i32 5, label %.split
  ]

.split20:                                         ; preds = %bb.a
  %i.bj = load ptr, ptr %3, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bl = tail call zeroext i1 @b3OverlapHull(ptr noundef %i.bj, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bk) #19
  br i1 %i.bl, label %bb.c, label %.thread

.split19:                                         ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bn = call zeroext i1 @b3OverlapMesh(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bm) #19
  br i1 %i.bn, label %bb.c, label %.thread

.split:                                           ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bp = call zeroext i1 @b3OverlapSphere(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bo) #19
  br i1 %i.bp, label %bb.c, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.br = call zeroext i1 @b3OverlapCapsule(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bq) #19
  br i1 %i.br, label %bb.c, label %.thread

bb.c:                                             ; preds = %.split20, %.split19, %.split, %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 1, ptr %i.bs, align 8, !tbaa !77
  br label %.thread

.thread:                                          ; preds = %bb.a, %.split20, %.split19, %.split, %bb.b, %bb.c
  %.011 = phi i1 [ true, %.split20 ], [ true, %bb.b ], [ false, %bb.c ], [ true, %.split ], [ true, %.split19 ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i1 %.011
}

; Function Attrs: nounwind uwtable
define void @b3RayCastCompound(ptr dead_on_unwind noalias writable sret(%struct.b3CastOutput) align 4 initializes((0, 48)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b3CompoundCastContext, align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = call i64 @b3DynamicTree_RayCast(ptr noundef nonnull %i.c, ptr noundef %2, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3CompoundRayCastCallback, ptr noundef nonnull %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare i64 @b3DynamicTree_RayCast(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal float @b3CompoundRayCastCallback(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %4 = alloca %struct.b3ChildShape, align 8       ; 16 uses
  %5 = alloca %struct.b3RayCastInput, align 8     ; 11 uses
  %.sroa.24 = alloca [3 x i8], align 1            ; 7 uses
  %6 = alloca %struct.b3CastOutput, align 8       ; 11 uses
  %7 = alloca %struct.b3CastOutput, align 8       ; 11 uses
  %8 = alloca %struct.b3CastOutput, align 8       ; 12 uses
  %9 = alloca %struct.b3CastOutput, align 8       ; 11 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !82
  %i.b = trunc i64 %2 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %4, ptr noundef %i.a, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %0, i64 28, i1 false), !tbaa.struct !29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.096.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.297.0.copyload = load float, ptr %.sroa.297.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.c, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.g = load <2 x float>, ptr %i.f, align 4      ; 3 uses
  %i.h = fsub <2 x float> %.sroa.096.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.i = fsub float %.sroa.297.0.copyload, %.sroa.210.0.copyload.i ; 3 uses
  %i.j = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = insertelement <2 x float> %i.j, float %i.i, i64 1 ; 2 uses
  %i.l = fmul <2 x float> %i.k, %i.e
  %i.m = shufflevector <2 x float> %i.g, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.n = fmul <2 x float> %i.h, %i.m
  %i.o = shufflevector <2 x float> %i.e, <2 x float> %i.g, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.p = fmul <2 x float> %i.h, %i.o
  %i.q = insertelement <2 x float> %i.j, float %i.i, i64 0 ; 2 uses
  %i.r = fmul <2 x float> %i.q, %i.e
  %i.s = fsub <2 x float> %i.l, %i.p
  %i.t = fsub <2 x float> %i.n, %i.r
  %i.u = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.v = fmul <2 x float> %i.q, %i.u
  %i.w = fmul <2 x float> %i.k, %i.u
  %i.x = fsub <2 x float> %i.s, %i.v              ; 2 uses
  %i.y = fsub <2 x float> %i.t, %i.w              ; 2 uses
  %i.z = fmul <2 x float> %i.o, %i.x
  %i.aa = fmul <2 x float> %i.m, %i.y
  %i.ab = fsub <2 x float> %i.z, %i.aa
  %i.ac = fmul <2 x float> %i.ab, splat (float 2.000000e+00)
  %i.ad = fadd <2 x float> %i.h, %i.ac
  store <2 x float> %i.ad, ptr %5, align 8, !tbaa !19
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.088.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 4 uses
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.289.0.copyload = load float, ptr %.sroa.289.0..sroa_idx, align 4 ; 3 uses
  %i.ag = shufflevector <2 x float> %.sroa.088.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.289.0.copyload, i64 1 ; 2 uses
  %i.ai = fmul <2 x float> %i.e, %i.ah
  %i.aj = fmul <2 x float> %i.m, %.sroa.088.0.copyload
  %i.ak = fmul <2 x float> %i.o, %.sroa.088.0.copyload
  %i.al = insertelement <2 x float> %i.ag, float %.sroa.289.0.copyload, i64 0 ; 2 uses
  %i.am = fmul <2 x float> %i.e, %i.al
  %i.an = fsub <2 x float> %i.ai, %i.ak
  %i.ao = fsub <2 x float> %i.aj, %i.am
  %i.ap = fmul <2 x float> %i.u, %i.al
  %i.aq = fmul <2 x float> %i.u, %i.ah
  %i.ar = fsub <2 x float> %i.an, %i.ap           ; 2 uses
  %i.as = fsub <2 x float> %i.ao, %i.aq           ; 2 uses
  %i.at = fmul <2 x float> %i.o, %i.ar
  %i.au = fmul <2 x float> %i.m, %i.as
  %i.av = fsub <2 x float> %i.at, %i.au
  %i.aw = fmul <2 x float> %i.av, splat (float 2.000000e+00)
  %i.ax = fadd <2 x float> %.sroa.088.0.copyload, %i.aw
  %i.ay = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = shufflevector <2 x float> %i.y, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = shufflevector <2 x float> %i.x, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = fsub <2 x float> %i.ba, %i.bd
  %i.bf = fmul <2 x float> %i.be, splat (float 2.000000e+00)
  %i.bg = insertelement <2 x float> poison, float %i.i, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.289.0.copyload, i64 1
  %i.bi = fadd <2 x float> %i.bh, %i.bf           ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  store float %i.bj, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !19
  store <2 x float> %i.ax, ptr %i.ae, align 4, !tbaa !19
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  store float %i.bk, ptr %.sroa.491.0..sroa_idx, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !42
  switch i32 %i.bm, label %.thread [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @b3RayCastCapsule(ptr dead_on_unwind nonnull writable sret(%struct.b3CastOutput) align 4 %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %.sroa.012.0.copyload = load <2 x float>, ptr %6, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !19
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.12.0.copyload = load <2 x float>, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !19
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !19
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !19
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.bn = load i64, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !20
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  %.sroa.23.0.copyload = load i8, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !85
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24.0..sroa_idx, i64 3, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !20
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bq = load ptr, ptr %4, align 8, !tbaa !40
  call void @b3RayCastHull(ptr dead_on_unwind nonnull writable sret(%struct.b3CastOutput) align 4 %7, ptr noundef %i.bq, ptr noundef nonnull %5) #19
  %.sroa.012.0.copyload13 = load <2 x float>, ptr %7, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.10.0.copyload18 = load float, ptr %.sroa.10.0..sroa_idx17, align 8, !tbaa !19
  %.sroa.12.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.12.0.copyload26 = load <2 x float>, ptr %.sroa.12.0..sroa_idx25, align 4, !tbaa !19
  %.sroa.14.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %.sroa.14.0.copyload34 = load float, ptr %.sroa.14.0..sroa_idx33, align 4, !tbaa !19
  %.sroa.16.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.16.0.copyload42 = load float, ptr %.sroa.16.0..sroa_idx41, align 8, !tbaa !19
  %.sroa.17.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %7, i64 28
end_hunk_0
begin_hunk_1_@b3CompoundShapeCastCallback:bb.a
  %i.ef = shufflevector <2 x float> %.sroa.6173.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.eg = fmul <2 x float> %i.ee, %i.ef
  %i.eh = fmul <2 x float> %i.dz, %i.ef
  %i.ei = fadd <2 x float> %i.eg, %i.ed           ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ek = insertelement <2 x float> %i.ej, float %i.dx, i64 0
  %i.el = fadd <2 x float> %i.eh, %i.ek           ; 2 uses
  %i.em = fmul <2 x float> %i.eb, %i.ei
  %i.en = shufflevector <2 x float> %.sroa.6173.0.copyload, <2 x float> %.sroa.5172.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eo = fmul <2 x float> %i.en, %i.el
  %i.ep = fsub <2 x float> %i.em, %i.eo
  %foldExtExtBinop204 = fmul <2 x float> %.sroa.5172.0.copyload, %i.el
  %foldExtExtBinop206 = fmul <2 x float> %.sroa.5172.0.copyload, %i.ei
  %shift208 = shufflevector <2 x float> %foldExtExtBinop206, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop209 = fsub <2 x float> %foldExtExtBinop204, %shift208
  %i.eq = extractelement <2 x float> %foldExtExtBinop209, i64 0
  %i.er = fmul <2 x float> %i.ep, splat (float 2.000000e+00)
  %i.es = fadd <2 x float> %.sroa.12.0, %i.er
  %i.et = fmul float %i.eq, 2.000000e+00
  %i.eu = fadd float %.sroa.14.0, %i.et
  %i.ev = fadd <2 x float> %.sroa.0170.0.copyload, %i.es
  %i.ew = fadd float %.sroa.4171.0.copyload, %i.eu
  %foldExtExtBinop211 = fmul <2 x float> %.sroa.012.0, %.sroa.6173.0.copyload
  %i.ex = extractelement <2 x float> %foldExtExtBinop211, i64 0
  %i.ey = fmul float %.sroa.10.0, %.sroa.011.0.vec.extract.i.i
  %i.ez = fsub float %i.ex, %i.ey
  %i.fa = shufflevector <2 x float> %.sroa.012.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fb = insertelement <2 x float> %i.fa, float %.sroa.10.0, i64 1 ; 2 uses
  %i.fc = fmul <2 x float> %i.fb, %.sroa.5172.0.copyload
  %i.fd = fmul <2 x float> %.sroa.012.0, %i.eb
  %i.fe = fsub <2 x float> %i.fc, %i.fd           ; 2 uses
  %i.ff = insertelement <2 x float> %i.fa, float %.sroa.10.0, i64 0
  %i.fg = fmul <2 x float> %i.ff, %i.ef
  %i.fh = fmul <2 x float> %i.fb, %i.ef
  %i.fi = fadd <2 x float> %i.fg, %i.fe           ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fk = insertelement <2 x float> %i.fj, float %i.ez, i64 0
  %i.fl = fadd <2 x float> %i.fh, %i.fk           ; 2 uses
  %i.fm = fmul <2 x float> %i.eb, %i.fi
  %i.fn = fmul <2 x float> %i.en, %i.fl
  %i.fo = fsub <2 x float> %i.fm, %i.fn
  %foldExtExtBinop213 = fmul <2 x float> %.sroa.5172.0.copyload, %i.fl
  %foldExtExtBinop215 = fmul <2 x float> %.sroa.5172.0.copyload, %i.fi
  %shift217 = shufflevector <2 x float> %foldExtExtBinop215, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop218 = fsub <2 x float> %foldExtExtBinop213, %shift217
  %i.fp = extractelement <2 x float> %foldExtExtBinop218, i64 0
  %i.fq = fmul <2 x float> %i.fo, splat (float 2.000000e+00)
  %i.fr = fadd <2 x float> %.sroa.012.0, %i.fq
  %i.fs = fmul float %i.fp, 2.000000e+00
  %i.ft = fadd float %.sroa.10.0, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !83 ; 10 uses
  store <2 x float> %i.fr, ptr %i.fv, align 4, !tbaa !19
  %.sroa.10.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store float %i.ft, ptr %.sroa.10.0..sroa_idx23, align 4, !tbaa !19
  %.sroa.12.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store <2 x float> %i.ev, ptr %.sroa.12.0..sroa_idx31, align 4, !tbaa !19
  %.sroa.14.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  store float %i.ew, ptr %.sroa.14.0..sroa_idx39, align 4, !tbaa !19
  %.sroa.16.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store float %.sroa.16.0, ptr %.sroa.16.0..sroa_idx47, align 4, !tbaa !19
  %.sroa.17.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  store i64 %.sroa.17.sroa.0.0, ptr %.sroa.17.0..sroa_idx52, align 4, !tbaa !20
  %.sroa.1753.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.fv, i64 36
  store i32 %i.d, ptr %.sroa.1753.0..sroa_idx60, align 4, !tbaa !20
  %.sroa.18.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx68, align 4, !tbaa !20
  %.sroa.23.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.fv, i64 44
  store i8 %.sroa.23.0, ptr %.sroa.23.0..sroa_idx76, align 4, !tbaa !85
  %.sroa.24.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.fv, i64 45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24.0..sroa_idx81, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.24, i64 3, i1 false), !tbaa.struct !78
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %..thread_crit_edge, %bb.h
  %.0 = phi float [ %.sroa.16.0, %bb.h ], [ %.pre, %..thread_crit_edge ], [ %i.f, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret float %.0
}

; Function Attrs: nounwind uwtable
define void @b3QueryCompound(ptr noundef %0, ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.b3CompoundQueryContext, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %0, ptr %4, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.c, ptr noundef nonnull byval(%struct.b3AABB) align 8 %1, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @TreeQueryCallbackFcn, ptr noundef nonnull %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @TreeQueryCallbackFcn(i32 %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = load ptr, ptr %2, align 8, !tbaa !93
  %i.d = trunc i64 %1 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = tail call zeroext i1 %i.b(ptr noundef %i.c, i32 noundef %i.d, ptr noundef %i.f) #19
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @b3MakeCompoundChildSweep(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Sweep) align 4 captures(none) initializes((0, 68)) %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %.sroa.010.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.411.0.copyload = load float, ptr %.sroa.411.0..sroa_idx, align 8 ; 4 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.512.0.copyload = load <2 x float>, ptr %.sroa.512.0..sroa_idx, align 4 ; 5 uses
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.613.0.copyload = load <2 x float>, ptr %.sroa.613.0..sroa_idx, align 4 ; 4 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.58.0.copyload = load <2 x float>, ptr %.sroa.58.0..sroa_idx, align 4 ; 11 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.69.0.copyload = load <2 x float>, ptr %.sroa.69.0..sroa_idx, align 4 ; 8 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.58.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.010.0.copyload, %.sroa.69.0.copyload
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.b = fmul float %.sroa.411.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = insertelement <2 x float> %i.d, float %.sroa.411.0.copyload, i64 1 ; 2 uses
  %i.f = fmul <2 x float> %i.e, %.sroa.58.0.copyload
  %i.g = shufflevector <2 x float> %.sroa.58.0.copyload, <2 x float> %.sroa.69.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.h = fmul <2 x float> %.sroa.010.0.copyload, %i.g
  %i.i = fsub <2 x float> %i.f, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.d, float %.sroa.411.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.e, %i.k
  %i.n = fadd <2 x float> %i.l, %i.i              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.g, %i.n
  %i.s = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> %.sroa.58.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.58.0.copyload, %i.q
  %foldExtExtBinop17 = fmul <2 x float> %.sroa.58.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop19 = fsub <2 x float> %foldExtExtBinop15, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop19, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fadd <2 x float> %.sroa.010.0.copyload, %i.w
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fadd float %.sroa.411.0.copyload, %i.y
  %i.aa = fadd <2 x float> %.sroa.07.0.copyload, %i.x ; 2 uses
  %i.ab = fadd float %.sroa.4.0.copyload, %i.z    ; 2 uses
  %i.ac = shufflevector <2 x float> %.sroa.613.0.copyload, <2 x float> %.sroa.512.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x float> %.sroa.58.0.copyload, <2 x float> %.sroa.69.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = shufflevector <2 x float> %.sroa.512.0.copyload, <2 x float> %.sroa.613.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ag = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> %.sroa.58.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ah = fmul <2 x float> %i.af, %i.ag
  %i.ai = fsub <2 x float> %i.ae, %i.ah
  %i.aj = fmul <2 x float> %.sroa.512.0.copyload, %i.k
  %i.ak = fadd <2 x float> %i.aj, %i.ai
  %i.al = shufflevector <2 x float> %.sroa.613.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.am = fmul <2 x float> %i.al, %.sroa.58.0.copyload
  %i.an = fadd <2 x float> %i.am, %i.ak           ; 2 uses
  %i.ao = fmul <2 x float> %i.al, %.sroa.69.0.copyload ; 2 uses
  %i.ap = shufflevector <2 x float> %.sroa.512.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = shufflevector <2 x float> %.sroa.58.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fmul <2 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %.sroa.512.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.as, %.sroa.58.0.copyload ; 2 uses
  %i.au = fsub <2 x float> %i.at, %i.ar
  %i.av = fadd <2 x float> %i.at, %i.ar
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = shufflevector <2 x float> %.sroa.613.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x float> %.sroa.69.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = fmul <2 x float> %i.ax, %i.ay
  %i.ba = fadd <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bb = fadd <2 x float> %i.ao, %i.ba
  %i.bc = fsub <2 x float> %i.ao, %i.ba
  %i.bd = shufflevector <2 x float> %i.bb, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3> ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.aa, ptr %i.be, align 4, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ab, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.aa, ptr %i.bf, align 4, !tbaa !19
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ab, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> %i.an, ptr %i.bg, align 4, !tbaa !19
  %.sroa.9.12..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  store <2 x float> %i.bd, ptr %.sroa.9.12..sroa_idx5, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.an, ptr %i.bh, align 4, !tbaa !19
  %.sroa.9.12..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> %i.bd, ptr %.sroa.9.12..sroa_idx, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @b3CollideMoverAndCompound(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.b3CompoundMoverContext, align 8 ; 9 uses
  %5 = alloca %struct.b3AABB, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %2, ptr %4, align 8, !tbaa !98
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !29
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.036.0.copyload = load <2 x float>, ptr %3, align 4 ; 4 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4 ; 4 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.g = fcmp olt float %.sroa.237.0.copyload, %.sroa.235.0.copyload
  %i.h = select i1 %i.g, float %.sroa.237.0.copyload, float %.sroa.235.0.copyload
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = fcmp ogt float %.sroa.237.0.copyload, %.sroa.235.0.copyload
  %i.k = select i1 %i.j, float %.sroa.237.0.copyload, float %.sroa.235.0.copyload
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !102 ; 3 uses
  %i.n = fcmp olt <2 x float> %.sroa.036.0.copyload, %.sroa.034.0.copyload
  %i.o = select <2 x i1> %i.n, <2 x float> %.sroa.036.0.copyload, <2 x float> %.sroa.034.0.copyload
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fsub <2 x float> %i.o, %i.q
  %i.s = fsub float %i.h, %i.m
  store <2 x float> %i.r, ptr %5, align 8, !tbaa !19
  store float %i.s, ptr %.sroa.439.0..sroa_idx, align 8, !tbaa !19
  %i.t = fcmp ogt <2 x float> %.sroa.036.0.copyload, %.sroa.034.0.copyload
  %i.u = select <2 x i1> %i.t, <2 x float> %.sroa.036.0.copyload, <2 x float> %.sroa.034.0.copyload
  %i.v = fadd <2 x float> %i.u, %i.q
  %i.w = fadd float %i.k, %i.m
  store <2 x float> %i.v, ptr %i.i, align 4, !tbaa !19
  store float %i.w, ptr %.sroa.429.0..sroa_idx, align 4, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.x, ptr noundef nonnull byval(%struct.b3AABB) align 8 %5, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3CompoundMoverCallback, ptr noundef nonnull %4) #19 ; 0 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %i.z
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @b3CompoundMoverCallback(i32 %0, i64 noundef %1, ptr nofree noundef captures(none) %2) #5 {
bb.a:
  %3 = alloca %struct.b3ChildShape, align 8       ; 13 uses
  %4 = alloca %struct.b3Capsule, align 8          ; 11 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = load ptr, ptr %2, align 8, !tbaa !98
  call void @b3GetCompoundChild(ptr dead_on_unwind nonnull writable sret(%struct.b3ChildShape) align 8 %3, ptr noundef %i.b, i32 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.046.0.copyload = load <2 x float>, ptr %i.d, align 8
  %.sroa.247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.247.0.copyload = load float, ptr %.sroa.247.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %i.c, align 8 ; 2 uses
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 4      ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 4      ; 3 uses
  %i.i = fsub <2 x float> %.sroa.046.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.j = fsub float %.sroa.247.0.copyload, %.sroa.210.0.copyload.i ; 3 uses
  %i.k = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1 ; 2 uses
  %i.m = fmul <2 x float> %i.l, %i.f
  %i.n = shufflevector <2 x float> %i.h, <2 x float> %i.f, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.o = fmul <2 x float> %i.i, %i.n
  %i.p = shufflevector <2 x float> %i.f, <2 x float> %i.h, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.q = fmul <2 x float> %i.i, %i.p
  %i.r = insertelement <2 x float> %i.k, float %i.j, i64 0 ; 2 uses
  %i.s = fmul <2 x float> %i.r, %i.f
  %i.t = fsub <2 x float> %i.m, %i.q
  %i.u = fsub <2 x float> %i.o, %i.s
  %i.v = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.w = fmul <2 x float> %i.r, %i.v
  %i.x = fmul <2 x float> %i.l, %i.v
  %i.y = fsub <2 x float> %i.t, %i.w              ; 2 uses
  %i.z = fsub <2 x float> %i.u, %i.x              ; 2 uses
  %i.aa = fmul <2 x float> %i.p, %i.y
  %i.ab = fmul <2 x float> %i.n, %i.z
  %i.ac = fsub <2 x float> %i.aa, %i.ab
  %i.ad = fmul <2 x float> %i.ac, splat (float 2.000000e+00)
  %i.ae = fadd <2 x float> %i.i, %i.ad
  store <2 x float> %i.ae, ptr %4, align 8, !tbaa !19
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.ag, align 4
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 4
  %i.ah = fsub <2 x float> %.sroa.038.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.ai = fsub float %.sroa.239.0.copyload, %.sroa.210.0.copyload.i ; 3 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %i.ai, i64 1 ; 2 uses
  %i.al = fmul <2 x float> %i.f, %i.ak
  %i.am = fmul <2 x float> %i.n, %i.ah
  %i.an = fmul <2 x float> %i.p, %i.ah
  %i.ao = insertelement <2 x float> %i.aj, float %i.ai, i64 0 ; 2 uses
  %i.ap = fmul <2 x float> %i.f, %i.ao
  %i.aq = fsub <2 x float> %i.al, %i.an
  %i.ar = fsub <2 x float> %i.am, %i.ap
  %i.as = fmul <2 x float> %i.v, %i.ao
  %i.at = fmul <2 x float> %i.v, %i.ak
  %i.au = fsub <2 x float> %i.aq, %i.as           ; 2 uses
  %i.av = fsub <2 x float> %i.ar, %i.at           ; 2 uses
  %i.aw = fmul <2 x float> %i.p, %i.au
  %i.ax = fmul <2 x float> %i.n, %i.av
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = shufflevector <2 x float> %i.z, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = shufflevector <2 x float> %i.y, <2 x float> %i.au, <2 x i32> <i32 1, i32 3>
  %i.be = fmul <2 x float> %i.bc, %i.bd
  %i.bf = fsub <2 x float> %i.bb, %i.be           ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 0
  %i.bh = fmul float %i.bg, 2.000000e+00
  %i.bi = fadd float %i.j, %i.bh
  store float %i.bi, ptr %.sroa.449.0..sroa_idx, align 8, !tbaa !19
  %i.bj = fmul <2 x float> %i.ay, splat (float 2.000000e+00)
  %i.bk = fadd <2 x float> %i.ah, %i.bj
  %i.bl = extractelement <2 x float> %i.bf, i64 1
  %i.bm = fmul float %i.bl, 2.000000e+00
  %i.bn = fadd float %i.ai, %i.bm
  store <2 x float> %i.bk, ptr %i.af, align 4, !tbaa !19
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.bn, ptr %.sroa.441.0..sroa_idx, align 4, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !236
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.bp, ptr %i.bq, align 8, !tbaa !102
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !101 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !99
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [40 x i8], ptr %i.bv, i64 %i.bw ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !42
  switch i32 %i.bz, label %._crit_edge [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.ca = call i32 @b3CollideMoverAndCapsule(ptr noundef %i.bx, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.cb = load ptr, ptr %3, align 8, !tbaa !40
  %i.cc = call i32 @b3CollideMoverAndHull(ptr noundef %i.bx, ptr noundef %i.cb, ptr noundef nonnull %4) #19
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !100
  %i.ce = sub nsw i32 %i.cd, %i.bt
  %i.cf = call i32 @b3CollideMoverAndMesh(ptr noundef %i.bx, i32 noundef %i.ce, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.cg = call i32 @b3CollideMoverAndSphere(ptr noundef %i.bx, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.cg, %bb.e ], [ %i.ca, %bb.b ], [ %i.cc, %bb.c ], [ %i.cf, %bb.d ] ; 4 uses
  %i.ch = icmp sgt i32 %.0, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 60
  %wide.trip.count = zext nneg i32 %.0 to i64
  %.pre = load <2 x float>, ptr %i.e, align 4     ; 8 uses
  %.pre95 = load <2 x float>, ptr %i.g, align 4   ; 5 uses
  %.sroa.0.0.copyload.pre = load <2 x float>, ptr %i.c, align 8
  %.sroa.4.0.copyload.pre = load float, ptr %.sroa.210.0..sroa_idx.i, align 8
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.pre, i64 0 ; 3 uses
end_hunk_1
