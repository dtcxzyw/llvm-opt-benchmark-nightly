Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/centroid?download=true
inline.NumInlined: 2135
inline.NumDeleted: 1317
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3igl8centroidIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELi3ELi1ELin1ELi3EEENS2_IfLi3ELi1ELi0ELi3ELi1EEEfEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_:bb.a
  %i.ca = fadd <2 x float> %i.bx, %i.bz
  %i.cb = fadd <2 x float> %i.al, %i.aq           ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.cb
  %i.cd = fadd <2 x float> %i.cc, %i.ca
  %i.ce = fmul <2 x float> %i.cd, %i.bv
  %i.cf = load <2 x float>, ptr %2, align 4, !tbaa !26
  %i.cg = fadd <2 x float> %i.cf, %i.ce           ; 2 uses
  store <2 x float> %i.cg, ptr %2, align 4, !tbaa !26
  %i.ch = fmul float %i.bj, f0x3D2AAAAB
  %i.ci = fadd float %i.bl, %i.ao                 ; 2 uses
  %i.cj = fmul float %i.ci, %i.ci
  %i.ck = fadd float %i.ao, %i.ar                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fadd float %i.cj, %i.cl
  %i.cn = fadd float %i.bl, %i.ar                 ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fadd float %i.co, %i.cm
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = load float, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  %i.cs = fadd float %i.cq, %i.cr                 ; 2 uses
  store float %i.cs, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !36
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELi3ELi1ELin1ELi3EEENS2_IfLi3ELi1ELi0ELi3ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @_ZN3igl8centroidIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IjLin1ELi3ELi1ELin1ELi3EEENS2_IfLi3ELi1ELi0ELi3ELi1EEEfEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @_ZN3igl8centroidIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLi1ELi3ELi1ELi1ELi3EEEfEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi3ELi1ELin1ELi3EEENS2_IfLi1ELi3ELi1ELi1ELi3EEEfEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !26
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store float 0.000000e+00, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  store float 0.000000e+00, ptr %3, align 4, !tbaa !26
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %i.e = load <2 x float>, ptr %2, align 4, !tbaa !26
  %.pre147 = load float, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !46
  %i.g = load ptr, ptr %0, align 8, !tbaa !29, !noalias !47 ; 3 uses
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load float, ptr %3, align 4, !tbaa !26
  %i.h = fpext float %.pre to double
  %i.i = fmul double %i.h, 2.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.j = phi float [ %i.cs, %._crit_edge.loopexit ], [ %.pre147, %.._crit_edge_crit_edge ]
  %i.k = phi double [ %i.i, %._crit_edge.loopexit ], [ 0.000000e+00, %.._crit_edge_crit_edge ]
  %i.l = phi <2 x float> [ %i.cg, %._crit_edge.loopexit ], [ %i.e, %.._crit_edge_crit_edge ]
  %i.m = fdiv double 1.000000e+00, %i.k
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.l, %i.p
  store <2 x float> %i.q, ptr %2, align 4, !tbaa !26
  %i.r = fmul float %i.j, %i.n
  store float %i.r, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv, 12
  %i.s = getelementptr i8, ptr %i.f, i64 %.idx.i.i.i ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  %i.u = sext i32 %i.t to i64
  %.idx.i.i.i.i = mul nsw i64 %i.u, 12
  %i.v = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i.i.i.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = getelementptr i8, ptr %i.s, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !13
  %i.z = sext i32 %i.y to i64
  %.idx.i.i.i.i32 = mul nsw i64 %i.z, 12
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i.i.i.i32 ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %i.ad = getelementptr i8, ptr %i.s, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = sext i32 %i.ae to i64
  %.idx.i.i.i.i34 = mul nsw i64 %i.af, 12
  %i.ag = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i.i.i.i34 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  %i.aj = load float, ptr %3, align 4, !tbaa !26
  %i.ak = fpext float %i.aj to double
  %i.al = load <2 x float>, ptr %i.v, align 4, !tbaa !26 ; 4 uses
  %i.am = load <2 x float>, ptr %i.w, align 4, !tbaa !26 ; 4 uses
  %i.an = load <2 x float>, ptr %i.aa, align 4, !tbaa !26 ; 3 uses
  %i.ao = load float, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ag, align 4, !tbaa !26 ; 3 uses
  %i.ar = load float, ptr %i.ai, align 4, !tbaa !26 ; 2 uses
  %i.as = load <2 x float>, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.at = fsub <2 x float> %i.ap, %i.am           ; 2 uses
  %i.au = fsub <2 x float> %i.as, %i.am           ; 2 uses
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.aw = shufflevector <2 x float> %i.am, <2 x float> %i.al, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ax = fsub <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = shufflevector <2 x float> %i.ap, <2 x float> %i.an, <2 x i32> <i32 1, i32 2>
  %i.az = fsub <2 x float> %i.ay, %i.aw           ; 2 uses
  %i.ba = fneg <2 x float> %i.au
  %i.bb = fmul <2 x float> %i.az, %i.ba
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.ax, <2 x float> %i.bb) ; 2 uses
  %i.bd = extractelement <2 x float> %i.ax, i64 1
  %i.be = fneg float %i.bd
  %i.bf = extractelement <2 x float> %i.at, i64 0
  %i.bg = fmul float %i.bf, %i.be
  %i.bh = extractelement <2 x float> %i.az, i64 1
  %i.bi = extractelement <2 x float> %i.au, i64 0
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bg) ; 2 uses
  %i.bk = fmul <2 x float> %i.al, %i.bc           ; 2 uses
  %i.bl = extractelement <2 x float> %i.am, i64 1 ; 3 uses
  %i.bm = fmul float %i.bl, %i.bj
  %i.bn = extractelement <2 x float> %i.bk, i64 1
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = extractelement <2 x float> %i.bk, i64 0
  %i.bq = fadd float %i.bp, %i.bo
  %i.br = fpext float %i.bq to double
  %i.bs = fdiv double %i.br, 6.000000e+00
  %i.bt = fadd double %i.bs, %i.ak
  %i.bu = fptrunc double %i.bt to float
  store float %i.bu, ptr %3, align 4, !tbaa !26
  %i.bv = fmul <2 x float> %i.bc, splat (float f0x3D2AAAAB)
  %i.bw = fadd <2 x float> %i.al, %i.an           ; 2 uses
  %i.bx = fmul <2 x float> %i.bw, %i.bw
  %i.by = fadd <2 x float> %i.an, %i.aq           ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by
  %i.ca = fadd <2 x float> %i.bx, %i.bz
  %i.cb = fadd <2 x float> %i.al, %i.aq           ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.cb
  %i.cd = fadd <2 x float> %i.cc, %i.ca
  %i.ce = fmul <2 x float> %i.cd, %i.bv
  %i.cf = load <2 x float>, ptr %2, align 4, !tbaa !26
  %i.cg = fadd <2 x float> %i.cf, %i.ce           ; 2 uses
  store <2 x float> %i.cg, ptr %2, align 4, !tbaa !26
  %i.ch = fmul float %i.bj, f0x3D2AAAAB
  %i.ci = fadd float %i.bl, %i.ao                 ; 2 uses
  %i.cj = fmul float %i.ci, %i.ci
  %i.ck = fadd float %i.ao, %i.ar                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fadd float %i.cj, %i.cl
  %i.cn = fadd float %i.bl, %i.ar                 ; 2 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fadd float %i.co, %i.cm
  %i.cq = fmul float %i.ch, %i.cp
  %i.cr = load float, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  %i.cs = fadd float %i.cq, %i.cr                 ; 2 uses
  store float %i.cs, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i.i.i.i, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !43
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.d, label %.lr.ph.i, label %_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = and i64 %i.b, 2147483647
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.g = fmul double %8, 2.000000e+00
  br label %_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.h = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.bu, %bb.b ]
  %3 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %19, %bb.b ]
  %.0 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %8, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !23, !noalias !51 ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l ; 3 uses
  %i.o = load i64, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !11 ; 3 uses
  %.sroa.0119.0.vec.insert.i = insertelement <2 x double> poison, double %i.p, i64 0
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load double, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %.sroa.0119.8.vec.insert.i = insertelement <2 x double> %.sroa.0119.0.vec.insert.i, double %i.r, i64 1 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.o, 4 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 5 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.j, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.x ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x double> poison, double %i.z, i64 0
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.o
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i, double %i.ab, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11 ; 4 uses
  %.idx.i = shl i64 %i.u, 3
  %i.ae = getelementptr i8, ptr %i.j, i64 %.idx.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ag ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %.sroa.0133.0.vec.insert.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.o
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %.sroa.0133.8.vec.insert.i = insertelement <2 x double> %.sroa.0133.0.vec.insert.i, double %i.ak, i64 1 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ad, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.t, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fsub <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.am, i64 1
  %i.au = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.t, i64 1
  %i.aw = fsub <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.ai, i64 1
  %i.az = insertelement <2 x double> %i.au, double %i.p, i64 1
  %i.ba = fsub <2 x double> %i.ay, %i.az          ; 3 uses
  %i.bb = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.z, i64 1
  %i.bd = insertelement <2 x double> %i.ap, double %i.p, i64 1
  %i.be = fsub <2 x double> %i.bc, %i.bd          ; 2 uses
  %i.bf = fneg <2 x double> %i.aw
  %i.bg = fmul <2 x double> %i.be, %i.bf
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x double> %i.ba, i64 1
  %i.bj = fneg double %i.bi
  %i.bk = extractelement <2 x double> %i.ba, i64 0
  %i.bl = fmul double %i.bk, %i.bj
  %i.bm = extractelement <2 x double> %i.be, i64 1
  %i.bn = extractelement <2 x double> %i.aw, i64 0
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bn, double %i.bl) ; 2 uses
  %i.bp = fmul <2 x double> %.sroa.0119.8.vec.insert.i, %i.bh ; 2 uses
  %shift = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x double> %i.bp, %shift
  %4 = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %5 = fmul double %i.t, %i.bo
  %6 = fadd double %5, %4
  %7 = fdiv double %6, 6.000000e+00
  %8 = fadd double %.0, %7                        ; 2 uses
  %i.bq = fmul <2 x double> %i.bh, splat (double f0x3FA5555555555555)
  %i.br = fadd <2 x double> %.sroa.0119.8.vec.insert.i, %.sroa.0.8.vec.insert.i ; 2 uses
  %i.bs = fmul <2 x double> %i.br, %i.br
  %i.bt = fadd <2 x double> %.sroa.0.8.vec.insert.i, %.sroa.0133.8.vec.insert.i ; 2 uses
  %9 = fmul <2 x double> %i.bt, %i.bt
  %10 = fadd <2 x double> %i.bs, %9
  %11 = fadd <2 x double> %.sroa.0119.8.vec.insert.i, %.sroa.0133.8.vec.insert.i ; 2 uses
  %12 = fmul <2 x double> %11, %11
  %13 = fadd <2 x double> %12, %10
  %14 = fmul <2 x double> %13, %i.bq
  %i.bu = fadd <2 x double> %i.h, %14             ; 3 uses
  store <2 x double> %i.bu, ptr %2, align 8, !tbaa !12
  %i.bv = fmul double %i.bo, f0x3FA5555555555555
  %i.bw = fadd double %i.t, %i.ad                 ; 2 uses
  %i.bx = fmul double %i.bw, %i.bw
  %i.by = fadd double %i.ad, %i.am                ; 2 uses
  %i.bz = fmul double %i.by, %i.by
  %i.ca = fadd double %i.bx, %i.bz
  %15 = fadd double %i.t, %i.am                   ; 2 uses
  %16 = fmul double %15, %15
  %17 = fadd double %16, %i.ca
  %18 = fmul double %i.bv, %17
  %19 = fadd double %3, %18                       ; 3 uses
  store double %19, ptr %i.e, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !50

_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi1ELi0ELi3ELi1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.cb = phi double [ %19, %._crit_edge.loopexit.i ], [ 0.000000e+00, %bb.a ]
  %i.cc = phi <2 x double> [ %i.bu, %._crit_edge.loopexit.i ], [ zeroinitializer, %bb.a ]
  %i.cd = phi double [ %i.g, %._crit_edge.loopexit.i ], [ 0.000000e+00, %bb.a ]
  %i.ce = fdiv double 1.000000e+00, %i.cd         ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.cc, %i.cg
  store <2 x double> %i.ch, ptr %2, align 8, !tbaa !12
  %i.ci = fmul double %i.cb, %i.ce
  store double %i.ci, ptr %i.e, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.d, label %.lr.ph.i, label %_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i = and i64 %i.b, 2147483647
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.g = fmul double %8, 2.000000e+00
  br label %_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.h = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.bu, %bb.b ]
  %3 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %19, %bb.b ]
  %.0 = phi double [ 0.000000e+00, %.lr.ph.i ], [ %8, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !23, !noalias !54 ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l ; 3 uses
  %i.o = load i64, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !11 ; 3 uses
  %.sroa.0119.0.vec.insert.i = insertelement <2 x double> poison, double %i.p, i64 0
  %i.q = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.r = load double, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %.sroa.0119.8.vec.insert.i = insertelement <2 x double> %.sroa.0119.0.vec.insert.i, double %i.r, i64 1 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.o, 4 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 5 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.j, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.x ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x double> poison, double %i.z, i64 0
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.o
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %.sroa.0.8.vec.insert.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i, double %i.ab, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11 ; 4 uses
  %.idx.i = shl i64 %i.u, 3
  %i.ae = getelementptr i8, ptr %i.j, i64 %.idx.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ag ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %.sroa.0133.0.vec.insert.i = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.o
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %.sroa.0133.8.vec.insert.i = insertelement <2 x double> %.sroa.0133.0.vec.insert.i, double %i.ak, i64 1 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ad, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.t, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fsub <2 x double> %i.ao, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.am, i64 1
  %i.au = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.t, i64 1
  %i.aw = fsub <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.ai, i64 1
  %i.az = insertelement <2 x double> %i.au, double %i.p, i64 1
  %i.ba = fsub <2 x double> %i.ay, %i.az          ; 3 uses
  %i.bb = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.z, i64 1
  %i.bd = insertelement <2 x double> %i.ap, double %i.p, i64 1
  %i.be = fsub <2 x double> %i.bc, %i.bd          ; 2 uses
  %i.bf = fneg <2 x double> %i.aw
  %i.bg = fmul <2 x double> %i.be, %i.bf
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ba, <2 x double> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x double> %i.ba, i64 1
  %i.bj = fneg double %i.bi
  %i.bk = extractelement <2 x double> %i.ba, i64 0
  %i.bl = fmul double %i.bk, %i.bj
  %i.bm = extractelement <2 x double> %i.be, i64 1
  %i.bn = extractelement <2 x double> %i.aw, i64 0
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bn, double %i.bl) ; 2 uses
  %i.bp = fmul <2 x double> %.sroa.0119.8.vec.insert.i, %i.bh ; 2 uses
  %shift = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x double> %i.bp, %shift
  %4 = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %5 = fmul double %i.t, %i.bo
  %6 = fadd double %5, %4
  %7 = fdiv double %6, 6.000000e+00
  %8 = fadd double %.0, %7                        ; 2 uses
  %i.bq = fmul <2 x double> %i.bh, splat (double f0x3FA5555555555555)
  %i.br = fadd <2 x double> %.sroa.0119.8.vec.insert.i, %.sroa.0.8.vec.insert.i ; 2 uses
  %i.bs = fmul <2 x double> %i.br, %i.br
  %i.bt = fadd <2 x double> %.sroa.0.8.vec.insert.i, %.sroa.0133.8.vec.insert.i ; 2 uses
  %9 = fmul <2 x double> %i.bt, %i.bt
  %10 = fadd <2 x double> %i.bs, %9
  %11 = fadd <2 x double> %.sroa.0119.8.vec.insert.i, %.sroa.0133.8.vec.insert.i ; 2 uses
  %12 = fmul <2 x double> %11, %11
  %13 = fadd <2 x double> %12, %10
  %14 = fmul <2 x double> %13, %i.bq
  %i.bu = fadd <2 x double> %i.h, %14             ; 3 uses
  store <2 x double> %i.bu, ptr %2, align 8, !tbaa !12
  %i.bv = fmul double %i.bo, f0x3FA5555555555555
  %i.bw = fadd double %i.t, %i.ad                 ; 2 uses
  %i.bx = fmul double %i.bw, %i.bw
  %i.by = fadd double %i.ad, %i.am                ; 2 uses
  %i.bz = fmul double %i.by, %i.by
  %i.ca = fadd double %i.bx, %i.bz
  %15 = fadd double %i.t, %i.am                   ; 2 uses
  %16 = fmul double %15, %15
  %17 = fadd double %16, %i.ca
  %18 = fmul double %i.bv, %17
  %19 = fadd double %3, %18                       ; 3 uses
  store double %19, ptr %i.e, align 8, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !0

_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_.exit: ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.cb = phi double [ %19, %._crit_edge.loopexit.i ], [ 0.000000e+00, %bb.a ]
  %i.cc = phi <2 x double> [ %i.bu, %._crit_edge.loopexit.i ], [ zeroinitializer, %bb.a ]
  %i.cd = phi double [ %i.g, %._crit_edge.loopexit.i ], [ 0.000000e+00, %bb.a ]
  %i.ce = fdiv double 1.000000e+00, %i.cd         ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.cc, %i.cg
  store <2 x double> %i.ch, ptr %2, align 8, !tbaa !12
  %i.ci = fmul double %i.cb, %i.ce
  store double %i.ci, ptr %i.e, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl8centroidIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 9 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %6 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %7 = alloca %"class.Eigen::Matrix", align 16    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67
  %.not.i.i.i = icmp eq i64 %i.e, 3
  %.pre = load ptr, ptr %2, align 8, !tbaa !68    ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %.pre) #9
  %i.f = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #10 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !70
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #11
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.b
  store ptr %i.f, ptr %2, align 8, !tbaa !68
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %i.i = phi ptr [ %.pre, %bb.a ], [ %i.f, %.sink.split.i.i.i ] ; 2 uses
  store i64 3, ptr %i.d, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !tbaa !11
  store double 0.000000e+00, ptr %3, align 8, !tbaa !11
  %i.j = icmp sgt i32 %i.c, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS7_ISA_KNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEKNS1_IKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEKNS7_INS8_13scalar_sum_opIddEEKNS7_ISQ_KNS_12CwiseUnaryOpINS8_16scalar_square_opIdEEKNS1_IKNS7_ISQ_SK_SK_EEEEEESZ_EESZ_EEEEEERS4_RKNS0_IT_EE.exit
  %.pre122 = load double, ptr %3, align 8, !tbaa !11
  %.pre123 = load ptr, ptr %2, align 8, !tbaa !68 ; 2 uses
  %.pre124 = load i64, ptr %i.d, align 8, !tbaa !67 ; 4 uses
  %i.s = fmul double %.pre122, 2.000000e+00
  %i.t = fdiv double 1.000000e+00, %i.s           ; 2 uses
  %i.u = sdiv i64 %.pre124, 2
  %i.v = shl nsw i64 %i.u, 1                      ; 2 uses
  %i.w = icmp sgt i64 %.pre124, 1
  br i1 %i.w, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit, %._crit_edge
  %i.x = phi i64 [ %i.v, %._crit_edge ], [ 2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit ] ; 2 uses
  %i.y = phi double [ %i.t, %._crit_edge ], [ +inf, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit ] ; 2 uses
  %i.z = phi ptr [ %.pre123, %._crit_edge ], [ %i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit ] ; 2 uses
  %i.aa = phi i64 [ %.pre124, %._crit_edge ], [ 3, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEl.exit ]
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge
  %i.ad = phi i64 [ %i.v, %._crit_edge ], [ %i.x, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.ae = phi double [ %i.t, %._crit_edge ], [ %i.y, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.af = phi ptr [ %.pre123, %._crit_edge ], [ %i.z, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ag = phi i64 [ %.pre124, %._crit_edge ], [ %i.aa, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ah = icmp slt i64 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEmLERKd.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ai = sub i64 %i.ag, %i.ad                    ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.ai, 4
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.i.i.i.i.preheader147, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec137 = and i64 %i.ai, -4                   ; 3 uses
  %i.aj = add i64 %i.ad, %n.vec137
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.af, i64 %i.ad
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %index139 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load140 = load <2 x double>, ptr %i.al, align 8, !tbaa !11
  %wide.load141 = load <2 x double>, ptr %i.am, align 8, !tbaa !11
  %i.an = fmul <2 x double> %broadcast.splat, %wide.load140
  %i.ao = fmul <2 x double> %broadcast.splat, %wide.load141
  store <2 x double> %i.an, ptr %i.al, align 8, !tbaa !11
  store <2 x double> %i.ao, ptr %i.am, align 8, !tbaa !11
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.ap, label %middle.block143, label %vector.body138, !llvm.loop !55

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %i.ai, %n.vec137
  br i1 %cmp.n144, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEmLERKd.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader147

.lr.ph.i.i.i.i.i.i.i.preheader147:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block143
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block143 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader147, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader147 ] ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = fmul double %i.ae, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !11
  %i.at = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.at, %i.ag
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEmLERKd.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !56

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.i.i.i ; 2 uses
  %i.av = load <2 x double>, ptr %i.au, align 16, !tbaa !12
  %i.aw = fmul <2 x double> %i.ac, %i.av
  store <2 x double> %i.aw, ptr %i.au, align 16, !tbaa !12
  %i.ax = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.x
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !57

_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEmLERKd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block143, %._crit_edge.i.i.i.i.i.i
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS7_ISA_KNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEKNS1_IKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEKNS7_INS8_13scalar_sum_opIddEEKNS7_ISQ_KNS_12CwiseUnaryOpINS8_16scalar_square_opIdEEKNS1_IKNS7_ISQ_SK_SK_EEEEEESZ_EESZ_EEEEEERS4_RKNS0_IT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS7_ISA_KNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS_5ArrayIdLi1ELi3ELi1ELi1ELi3EEEEEKNS1_IKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEKNS7_INS8_13scalar_sum_opIddEEKNS7_ISQ_KNS_12CwiseUnaryOpINS8_16scalar_square_opIdEEKNS1_IKNS7_ISQ_SK_SK_EEEEEESZ_EESZ_EEEEEERS4_RKNS0_IT_EE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.az = load ptr, ptr %1, align 8, !tbaa !20
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load ptr, ptr %0, align 8, !tbaa !23, !noalias !73 ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bc ; 3 uses
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !24  ; 4 uses
  %i.bg = load double, ptr %i.be, align 8, !tbaa !11 ; 3 uses
  store double %i.bg, ptr %4, align 16, !tbaa !11
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  store double %i.bi, ptr %i.l, align 8, !tbaa !11
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.bf, 4 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11 ; 4 uses
  store double %i.bk, ptr %i.m, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.ba, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bo ; 3 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  store double %i.bq, ptr %5, align 8, !tbaa !11
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bf
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  store double %i.bs, ptr %i.n, align 8, !tbaa !11
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !11 ; 3 uses
  store double %i.bu, ptr %i.o, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %.idx = shl i64 %i.bl, 3
  %i.bv = getelementptr i8, ptr %i.ba, i64 %.idx
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bx ; 3 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  store double %i.bz, ptr %6, align 8, !tbaa !11
end_hunk_0
