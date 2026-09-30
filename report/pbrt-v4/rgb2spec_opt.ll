Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/rgb2spec_opt?download=true
inline.NumInlined: 342
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z13eval_residualPKdS0_Pd:bb.a
  %i.af = fadd double %i.n, %i.ae                 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 2264
  %i.ag = load double, ptr %gep.1, align 8, !tbaa !13
  %i.ah = fmul double %i.ac, %i.ag
  %i.ai = fadd double %i.m, %i.ah                 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4528
  %i.aj = load double, ptr %gep.2, align 8, !tbaa !13
  %i.ak = fmul double %i.ac, %i.aj
  %i.al = fadd double %i.l, %i.ak                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 283
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z13eval_jacobianPKdS0_PPd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %i.b = alloca [3 x double], align 16            ; 7 uses
  %i.c = alloca [3 x double], align 16            ; 7 uses
  %i.d = alloca [3 x double], align 16            ; 7 uses
  %i.e = alloca [3 x double], align 16            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.phi.trans.insert40.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  br label %bb.c

bb.b:                                             ; preds = %_Z13eval_residualPKdS0_Pd.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  ret void

bb.c:                                             ; preds = %bb.a, %_Z13eval_residualPKdS0_Pd.exit27
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_Z13eval_residualPKdS0_Pd.exit27 ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !13
  %i.s = fadd double %i.r, -1.000000e-04
  store double %i.s, ptr %i.q, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %.pre.i = load double, ptr %i.e, align 16, !tbaa !13
  %.pre39.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  %.pre41.i = load double, ptr %.phi.trans.insert40.i, align 16, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.t = phi double [ 0.000000e+00, %bb.c ], [ %i.at, %bb.d ]
  %i.u = phi double [ 0.000000e+00, %bb.c ], [ %i.aq, %bb.d ]
  %i.v = phi double [ 0.000000e+00, %bb.c ], [ %i.an, %bb.d ]
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @lambda_tbl, i64 %indvars.iv.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !13
  %i.y = fadd double %i.x, -3.600000e+02
  %i.z = fdiv double %i.y, 4.700000e+02           ; 3 uses
  %i.aa = fmul double %i.z, 0.000000e+00
  %i.ab = fadd double %.pre.i, %i.aa
  %i.ac = fmul double %i.z, %i.ab
  %i.ad = fadd double %.pre39.i, %i.ac
  %i.ae = fmul double %i.z, %i.ad
  %i.af = fadd double %.pre41.i, %i.ae            ; 3 uses
  %i.ag = fmul double %i.af, 5.000000e-01
  %i.ah = fmul double %i.af, %i.af
  %i.ai = fadd double %i.ah, 1.000000e+00
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.ai)
  %i.aj = fdiv double %i.ag, %sqrt.i.i
  %i.ak = fadd double %i.aj, 5.000000e-01         ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr @rgb_tbl, i64 %indvars.iv.i ; 3 uses
  %i.al = load double, ptr %invariant.gep.i, align 8, !tbaa !13
  %i.am = fmul double %i.al, %i.ak
  %i.an = fadd double %i.v, %i.am                 ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 2264
  %i.ao = load double, ptr %gep.1.i, align 8, !tbaa !13
  %i.ap = fmul double %i.ao, %i.ak
  %i.aq = fadd double %i.u, %i.ap                 ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 4528
  %i.ar = load double, ptr %gep.2.i, align 8, !tbaa !13
  %i.as = fmul double %i.ar, %i.ak
  %i.at = fadd double %i.t, %i.as                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 283
  br i1 %exitcond.not.i, label %_Z13eval_residualPKdS0_Pd.exit, label %bb.d, !llvm.loop !0

_Z13eval_residualPKdS0_Pd.exit:                   ; preds = %bb.d
  store double %i.an, ptr %i.b, align 16, !tbaa !13
  store double %i.aq, ptr %i.g, align 8, !tbaa !13
  store double %i.at, ptr %i.f, align 16, !tbaa !13
  call void @_Z7cie_labPd(ptr noundef nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_Z7cie_labPd(ptr noundef nonnull %i.c)
  %i.au = load <2 x double>, ptr %i.b, align 16, !tbaa !13
  %i.av = load <2 x double>, ptr %i.c, align 16, !tbaa !13
  %i.aw = fsub <2 x double> %i.av, %i.au          ; 2 uses
  store <2 x double> %i.aw, ptr %i.c, align 16, !tbaa !13
  %i.ax = load double, ptr %i.f, align 16, !tbaa !13
  %i.ay = load double, ptr %i.h, align 16, !tbaa !13
  %i.az = fsub double %i.ay, %i.ax                ; 2 uses
  store double %i.az, ptr %i.h, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.ba = load double, ptr %i.q, align 8, !tbaa !13
  %i.bb = fadd double %i.ba, 1.000000e-04
  store double %i.bb, ptr %i.q, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %.pre.i15 = load double, ptr %i.e, align 16, !tbaa !13
  %.pre39.i17 = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !13
  %.pre41.i19 = load double, ptr %.phi.trans.insert40.i, align 16, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_Z13eval_residualPKdS0_Pd.exit
  %i.bc = phi double [ 0.000000e+00, %_Z13eval_residualPKdS0_Pd.exit ], [ %i.cc, %bb.e ]
  %i.bd = phi double [ 0.000000e+00, %_Z13eval_residualPKdS0_Pd.exit ], [ %i.bz, %bb.e ]
  %i.be = phi double [ 0.000000e+00, %_Z13eval_residualPKdS0_Pd.exit ], [ %i.bw, %bb.e ]
  %indvars.iv.i20 = phi i64 [ 0, %_Z13eval_residualPKdS0_Pd.exit ], [ %indvars.iv.next.i25, %bb.e ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @lambda_tbl, i64 %indvars.iv.i20
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13
  %i.bh = fadd double %i.bg, -3.600000e+02
  %i.bi = fdiv double %i.bh, 4.700000e+02         ; 3 uses
  %i.bj = fmul double %i.bi, 0.000000e+00
  %i.bk = fadd double %.pre.i15, %i.bj
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = fadd double %.pre39.i17, %i.bl
  %i.bn = fmul double %i.bi, %i.bm
  %i.bo = fadd double %.pre41.i19, %i.bn          ; 3 uses
  %i.bp = fmul double %i.bo, 5.000000e-01
  %i.bq = fmul double %i.bo, %i.bo
  %i.br = fadd double %i.bq, 1.000000e+00
  %sqrt.i.i21 = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = fdiv double %i.bp, %sqrt.i.i21
  %i.bt = fadd double %i.bs, 5.000000e-01         ; 3 uses
  %invariant.gep.i22 = getelementptr inbounds nuw [8 x i8], ptr @rgb_tbl, i64 %indvars.iv.i20 ; 3 uses
  %i.bu = load double, ptr %invariant.gep.i22, align 8, !tbaa !13
  %i.bv = fmul double %i.bu, %i.bt
  %i.bw = fadd double %i.be, %i.bv                ; 2 uses
  %gep.1.i23 = getelementptr inbounds nuw i8, ptr %invariant.gep.i22, i64 2264
  %i.bx = load double, ptr %gep.1.i23, align 8, !tbaa !13
  %i.by = fmul double %i.bx, %i.bt
  %i.bz = fadd double %i.bd, %i.by                ; 2 uses
  %gep.2.i24 = getelementptr inbounds nuw i8, ptr %invariant.gep.i22, i64 4528
  %i.ca = load double, ptr %gep.2.i24, align 8, !tbaa !13
  %i.cb = fmul double %i.ca, %i.bt
  %i.cc = fadd double %i.bc, %i.cb                ; 2 uses
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, 283
  br i1 %exitcond.not.i26, label %_Z13eval_residualPKdS0_Pd.exit27, label %bb.e, !llvm.loop !0

_Z13eval_residualPKdS0_Pd.exit27:                 ; preds = %bb.e
  store double %i.bw, ptr %i.a, align 16, !tbaa !13
  store double %i.bz, ptr %i.j, align 8, !tbaa !13
  store double %i.cc, ptr %i.i, align 16, !tbaa !13
  call void @_Z7cie_labPd(ptr noundef nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_Z7cie_labPd(ptr noundef nonnull %i.d)
  %i.cd = load <2 x double>, ptr %i.a, align 16, !tbaa !13
  %i.ce = load <2 x double>, ptr %i.d, align 16, !tbaa !13
  %i.cf = fsub <2 x double> %i.ce, %i.cd          ; 2 uses
  store <2 x double> %i.cf, ptr %i.d, align 16, !tbaa !13
  %i.cg = load double, ptr %i.i, align 16, !tbaa !13
  %i.ch = load double, ptr %i.k, align 16, !tbaa !13
  %i.ci = fsub double %i.ch, %i.cg                ; 2 uses
  store double %i.ci, ptr %i.k, align 16, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ck = fsub <2 x double> %i.cf, %i.aw
  %i.cl = fdiv <2 x double> %i.ck, splat (double 2.000000e-04) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  store double %i.cm, ptr %i.cj, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.co = extractelement <2 x double> %i.cl, i64 1
  store double %i.co, ptr %i.cn, align 8, !tbaa !13
  %i.cp = fsub double %i.ci, %i.az
  %i.cq = fdiv double %i.cp, 2.000000e-04
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store double %i.cq, ptr %i.cr, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12gauss_newtonPKdPdi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %i.b = alloca [3 x double], align 16            ; 5 uses
  %i.c = alloca [3 x double], align 16            ; 5 uses
  %i.d = alloca [3 x ptr], align 16               ; 12 uses
  %i.e = alloca [3 x double], align 16            ; 9 uses
  %i.f = alloca [4 x i32], align 16               ; 9 uses
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph
  %.03651 = phi i32 [ 0, %.lr.ph ], [ %i.ft, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store ptr %i.a, ptr %i.d, align 16, !tbaa !20
  store ptr %i.b, ptr %i.h, align 8, !tbaa !20
  store ptr %i.c, ptr %i.i, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @_Z13eval_residualPKdS0_Pd(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.e)
  call void @_Z13eval_jacobianPKdS0_PPd(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store i32 0, ptr %i.f, align 16, !tbaa !14
  store i32 1, ptr %i.l, align 4, !tbaa !14
  store i32 2, ptr %i.m, align 8, !tbaa !14
  %i.p = load double, ptr %i.a, align 16, !tbaa !13 ; 2 uses
  %i.q = call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp one double %i.p, 0.000000e+00
  %spec.select78.i = select i1 %i.r, double %i.q, double 0.000000e+00 ; 2 uses
  %i.s = load double, ptr %i.b, align 16, !tbaa !13
  %i.t = call double @llvm.fabs.f64(double %i.s)  ; 2 uses
  %i.u = fcmp ogt double %i.t, %spec.select78.i   ; 2 uses
  %spec.select.i.1 = zext i1 %i.u to i32
  %spec.select78.i.156 = select i1 %i.u, double %i.t, double %spec.select78.i ; 2 uses
  %i.v = load double, ptr %i.c, align 16, !tbaa !13
  %i.w = call double @llvm.fabs.f64(double %i.v)  ; 2 uses
  %i.x = fcmp ogt double %i.w, %spec.select78.i.156 ; 2 uses
  %spec.select.i.257 = select i1 %i.x, i32 2, i32 %spec.select.i.1 ; 2 uses
  %spec.select78.i.258 = select i1 %i.x, double %i.w, double %spec.select78.i.156
  %i.y = fcmp olt double %spec.select78.i.258, 1.000000e-15
  br i1 %i.y, label %bb.f, label %bb.d

.loopexit.i:                                      ; preds = %bb.d, %bb.e
  %i.z = load ptr, ptr %i.d, align 16, !tbaa !20  ; 4 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !20  ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13
  %i.ad = fdiv double %i.ac, %i.aa                ; 3 uses
  store double %i.ad, ptr %i.ab, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13
  %i.ag = fmul double %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13
  %i.aj = fsub double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = fmul double %i.ad, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13
  %i.ap = fsub double %i.ao, %i.am
  store double %i.ap, ptr %i.an, align 8, !tbaa !13
  %i.aq = load double, ptr %i.z, align 8, !tbaa !13
  %i.ar = load ptr, ptr %i.i, align 16, !tbaa !20 ; 4 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13
  %i.at = fdiv double %i.as, %i.aq                ; 3 uses
  store double %i.at, ptr %i.ar, align 8, !tbaa !13
  %i.au = load double, ptr %i.ae, align 8, !tbaa !13
  %i.av = fmul double %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = fsub double %i.ax, %i.av                ; 2 uses
  store double %i.ay, ptr %i.aw, align 8, !tbaa !13
  %i.az = load double, ptr %i.ak, align 8, !tbaa !13
  %i.ba = fmul double %i.at, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13
  %i.bd = fsub double %i.bc, %i.ba
  store double %i.bd, ptr %i.bb, align 8, !tbaa !13
  %.pre67 = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.be = call double @llvm.fabs.f64(double %.pre67)
  %i.bf = fcmp one double %.pre67, 0.000000e+00
  %spec.select78.i.1 = select i1 %i.bf, double %i.be, double 0.000000e+00 ; 2 uses
  %i.bg = call double @llvm.fabs.f64(double %i.ay) ; 2 uses
  %i.bh = fcmp ule double %i.bg, %spec.select78.i.1 ; 2 uses
  %spec.select78.i.1.1 = select i1 %i.bh, double %spec.select78.i.1, double %i.bg
  %i.bi = fcmp olt double %spec.select78.i.1.1, 1.000000e-15
  br i1 %i.bi, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  br i1 %i.bh, label %.loopexit.i.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = load <2 x i32>, ptr %i.l, align 4, !tbaa !14
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bk, ptr %i.l, align 4, !tbaa !14
  %i.bl = load ptr, ptr %i.n, align 16, !tbaa !20
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !20
  store ptr %i.ab, ptr %i.n, align 16, !tbaa !20
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %bb.c, %bb.b
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13
  %i.bp = load ptr, ptr %i.i, align 16, !tbaa !20 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13
  %i.bs = fdiv double %i.br, %i.bo                ; 3 uses
  store double %i.bs, ptr %i.bq, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13
  %i.bv = fmul double %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13
  %i.by = fsub double %i.bx, %i.bv                ; 4 uses
  store double %i.by, ptr %i.bw, align 8, !tbaa !13
  %i.bz = call double @llvm.fabs.f64(double %i.by)
  %i.ca = fcmp ueq double %i.by, 0.000000e+00
  %i.cb = fcmp olt double %i.bz, 1.000000e-15
  %i.cc = or i1 %i.ca, %i.cb
  br i1 %i.cc, label %bb.f, label %._crit_edge49.i.2

bb.d:                                             ; preds = %.lr.ph.i
  %.not77.i = icmp eq i32 %spec.select.i.257, 0
  br i1 %.not77.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cd = zext nneg i32 %spec.select.i.257 to i64 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  store i32 %i.cf, ptr %i.f, align 16, !tbaa !14
  store i32 0, ptr %i.ce, align 4, !tbaa !14
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cd ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  store ptr %i.ch, ptr %i.d, align 16, !tbaa !20
  store ptr %i.a, ptr %i.cg, align 8, !tbaa !20
  br label %.loopexit.i

bb.f:                                             ; preds = %.loopexit.i.1, %.loopexit.i, %.lr.ph.i
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 4) ; 0 uses
  %i.cj = load double, ptr %0, align 8, !tbaa !13
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.cj) ; 2 uses
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !13
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, double noundef %i.cn) ; 2 uses
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.co, double noundef %i.cr)
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cs), !inline_history !111 ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 3) ; 0 uses
  %i.cv = load double, ptr %1, align 8, !tbaa !13
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.cv) ; 2 uses
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.cy = load double, ptr %i.j, align 8, !tbaa !13
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, double noundef %i.cy) ; 2 uses
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.db = load double, ptr %i.k, align 8, !tbaa !13
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, double noundef %i.db)
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.dc), !inline_history !111 ; 0 uses
  %i.de = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull @.str.4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #33
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.de) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  resume { ptr, i32 } %i.df

._crit_edge49.i.2:                                ; preds = %.loopexit.i.1
  %i.dg = load i32, ptr %i.f, align 16, !tbaa !14
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !13 ; 3 uses
  %i.dk = load i32, ptr %i.l, align 4, !tbaa !14
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.dp = load double, ptr %i.do, align 8, !tbaa !13
  %i.dq = fmul double %i.dp, %i.dj
  %i.dr = fsub double %i.dn, %i.dq                ; 2 uses
  %i.ds = load i32, ptr %i.m, align 8, !tbaa !14
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !13
  %i.dw = load double, ptr %i.bp, align 8, !tbaa !13
  %i.dx = fmul double %i.dw, %i.dj
  %i.dy = fsub double %i.dv, %i.dx
  %i.dz = fmul double %i.bs, %i.dr
  %i.ea = fsub double %i.dy, %i.dz
  %i.eb = fdiv double %i.ea, %i.by                ; 3 uses
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !13
  %i.ef = fmul double %i.ee, %i.eb
  %i.eg = fsub double %i.dr, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !13
  %i.ej = load ptr, ptr %i.d, align 16, !tbaa !20 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !13
  %i.eo = fmul double %i.en, %i.eb
  %i.ep = load double, ptr %i.ej, align 8, !tbaa !13
  %i.eq = fdiv double %i.eg, %i.ei                ; 2 uses
  %i.er = fmul double %i.el, %i.eq
  %i.es = fsub double %i.dj, %i.er
  %i.et = fsub double %i.es, %i.eo
  %i.eu = fdiv double %i.et, %i.ep
  %i.ev = load <2 x double>, ptr %1, align 8, !tbaa !13
  %i.ew = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.eq, i64 1
  %i.ey = fsub <2 x double> %i.ev, %i.ex          ; 3 uses
  store <2 x double> %i.ey, ptr %1, align 8, !tbaa !13
  %i.ez = load <2 x double>, ptr %i.e, align 16, !tbaa !13 ; 2 uses
  %i.fa = fmul <2 x double> %i.ez, %i.ez          ; 2 uses
  %shift = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.fa, %shift
  %i.fb = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fc = load double, ptr %i.k, align 8, !tbaa !13
  %i.fd = fsub double %i.fc, %i.eb                ; 4 uses
  store double %i.fd, ptr %i.k, align 8, !tbaa !13
  %i.fe = load double, ptr %i.o, align 16, !tbaa !13 ; 2 uses
  %i.ff = fmul double %i.fe, %i.fe
  %i.fg = fadd double %i.fb, %i.ff
  %i.fh = extractelement <2 x double> %i.ey, i64 0 ; 3 uses
  %i.fi = extractelement <2 x double> %i.ey, i64 1 ; 3 uses
  %i.fj = fcmp olt double %i.fh, %i.fi
  %i.fk = select i1 %i.fj, double %i.fi, double %i.fh ; 2 uses
  %i.fl = fcmp olt double %i.fk, %i.fd
  %i.fm = select i1 %i.fl, double %i.fd, double %i.fk ; 2 uses
  %i.fn = fcmp ogt double %i.fm, 2.000000e+02
  br i1 %i.fn, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge49.i.2
  %i.fo = fdiv nnan double 2.000000e+02, %i.fm    ; 3 uses
  %i.fp = fmul double %i.fo, %i.fh
  store double %i.fp, ptr %1, align 8, !tbaa !13
  %i.fq = fmul double %i.fo, %i.fi
  store double %i.fq, ptr %i.j, align 8, !tbaa !13
  %i.fr = fmul double %i.fo, %i.fd
  store double %i.fr, ptr %i.k, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge49.i.2
  %i.fs = fcmp olt double %i.fg, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ft = add nuw nsw i32 %.03651, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ft, %2
  %or.cond = select i1 %i.fs, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.i, !llvm.loop !112

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI10ThreadPoolSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI10ThreadPoolEclEPS0_.exit

_ZNKSt14default_deleteI10ThreadPoolEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN10ThreadPoolD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %i.a) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #34
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI10ThreadPoolEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
