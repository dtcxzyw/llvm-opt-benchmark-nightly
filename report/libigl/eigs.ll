Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZN7Spectra9TridiagQRIdE7computeERKN5Eigen3RefIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEERKd:bb.a
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %i.jp = add i64 %i.jj, %index173                ; 2 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.jp ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jp ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load174 = load <2 x double>, ptr %i.jr, align 8, !tbaa !56
  %wide.load175 = load <2 x double>, ptr %i.js, align 8, !tbaa !56
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store <2 x double> %wide.load174, ptr %i.jq, align 8, !tbaa !56
  store <2 x double> %wide.load175, ptr %i.jt, align 8, !tbaa !56
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.ju, label %middle.block177, label %vector.body172, !llvm.loop !1462

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.jm, %n.vec171
  br i1 %cmp.n178, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader181

.lr.ph.i.i.i.i.i.i.preheader181:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block177
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.jj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.jo, %middle.block177 ] ; 4 uses
  %i.jv = sub i64 %i.jf, %.05.i.i.i.i.i.i.ph
  %xtraiter192 = and i64 %i.jv, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader181, %.lr.ph.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.prol = phi i64 [ %i.jz, %.lr.ph.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader181 ] ; 3 uses
  %prol.iter194 = phi i64 [ %prol.iter194.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader181 ]
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %.05.i.i.i.i.i.i.prol
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.05.i.i.i.i.i.i.prol
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !56
  store double %i.jy, ptr %i.jw, align 8, !tbaa !56
  %i.jz = add nsw i64 %.05.i.i.i.i.i.i.prol, 1    ; 2 uses
  %prol.iter194.next = add i64 %prol.iter194, 1   ; 2 uses
  %prol.iter194.cmp.not = icmp eq i64 %prol.iter194.next, %xtraiter192
  br i1 %prol.iter194.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1463

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader181
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader181 ], [ %i.jz, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ka = sub i64 %.05.i.i.i.i.i.i.ph, %i.jf
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %.05.i.i.i.i.i.i
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.05.i.i.i.i.i.i
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !56
  store double %i.ke, ptr %i.kc, align 8, !tbaa !56
  %i.kf = add nsw i64 %.05.i.i.i.i.i.i, 1         ; 2 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.kf
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.kf
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !56
  store double %i.ki, ptr %i.kg, align 8, !tbaa !56
  %i.kj = add nsw i64 %.05.i.i.i.i.i.i, 2         ; 2 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.kj
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.kj
  %i.km = load double, ptr %i.kl, align 8, !tbaa !56
  store double %i.km, ptr %i.kk, align 8, !tbaa !56
  %i.kn = add nsw i64 %.05.i.i.i.i.i.i, 3         ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.kn
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.kn
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !56
  store double %i.kq, ptr %i.ko, align 8, !tbaa !56
  %i.kr = add nsw i64 %.05.i.i.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.kr, %i.jf
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1464

.lr.ph.i.i.i.i.i84:                               ; preds = %bb.al, %.lr.ph.i.i.i.i.i84
  %.011.i.i.i.i.i = phi i64 [ %i.kv, %.lr.ph.i.i.i.i.i84 ], [ 0, %bb.al ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %.011.i.i.i.i.i
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.011.i.i.i.i.i
  %i.ku = load <2 x double>, ptr %i.kt, align 16, !tbaa !131
  store <2 x double> %i.ku, ptr %i.ks, align 16, !tbaa !131
  %i.kv = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.kw = icmp slt i64 %i.kv, %i.jj
  br i1 %i.kw, label %.lr.ph.i.i.i.i.i84, label %._crit_edge.i.i.i.i.i, !llvm.loop !2

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block177, %._crit_edge.i.i.i.i.i
  %i.kx = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.ky = load ptr, ptr %i.x, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.kz = load i64, ptr %i.d, align 8, !tbaa !307 ; 3 uses
  %i.la = add nsw i64 %i.kz, -2
  %i.lb = icmp sgt i64 %i.kz, 1
  br i1 %i.lb, label %.lr.ph102.preheader, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit
  %.pre110 = load ptr, ptr %i.fl, align 8, !tbaa !119
  %i.lc = add nsw i64 %i.kz, -2
  br label %.lr.ph102

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.an
  %.04498 = phi i64 [ %i.lh, %bb.an ], [ %.04498.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.04498 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !56
  %i.lf = tail call noundef double @llvm.fabs.f64(double %i.le)
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.04498
  %i.lh = add nuw nsw i64 %.04498, 1              ; 2 uses
  %i.li = load <2 x double>, ptr %i.lg, align 8, !tbaa !56
  %i.lj = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.li)
  %i.lk = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.lj)
  %i.ll = fmul double %i.lk, f0x3CB0000000000000
  %i.lm = fcmp ugt double %i.lf, %i.ll
  br i1 %i.lm, label %bb.an, label %bb.am

bb.am:                                            ; preds = %scalar.ph
  store double 0.000000e+00, ptr %i.ld, align 8, !tbaa !56
  br label %bb.an

bb.an:                                            ; preds = %scalar.ph, %bb.am
  %exitcond.not = icmp eq i64 %i.lh, %i.ep
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1465

._crit_edge103:                                   ; preds = %bb.ap, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.ln, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.ap
  %i.lo = phi ptr [ %i.lt, %bb.ap ], [ %.pre110, %.lr.ph102.preheader ]
  %.0101 = phi i64 [ %i.ly, %bb.ap ], [ 0, %.lr.ph102.preheader ] ; 8 uses
  %.042100 = phi ptr [ %i.mw, %bb.ap ], [ %i.ky, %.lr.ph102.preheader ] ; 5 uses
  %.04399 = phi ptr [ %i.mv, %bb.ap ], [ %i.kx, %.lr.ph102.preheader ] ; 5 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.0101
  %i.lq = load ptr, ptr %i.av, align 8, !tbaa !119
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.0101
  call void @_ZN7Spectra17UpperHessenbergQRIdE16compute_rotationERKdS3_RdS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.lp, ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %.04399, ptr noundef nonnull align 8 dereferenceable(8) %.042100)
  %i.ls = load double, ptr %i.a, align 8, !tbaa !56
  %i.lt = load ptr, ptr %i.fl, align 8, !tbaa !119 ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.0101
  store double %i.ls, ptr %i.lu, align 8, !tbaa !56
  %i.lv = load ptr, ptr %i.fx, align 8, !tbaa !119 ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %.0101 ; 2 uses
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !56 ; 2 uses
  %i.ly = add nuw nsw i64 %.0101, 1               ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.ly ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !56 ; 2 uses
  %i.mb = load double, ptr %.04399, align 8, !tbaa !56
  %i.mc = load double, ptr %.042100, align 8, !tbaa !56
  %i.md = fneg double %i.ma
  %i.me = fmul double %i.mc, %i.md
  %i.mf = call double @llvm.fmuladd.f64(double %i.mb, double %i.lx, double %i.me)
  store double %i.mf, ptr %i.lw, align 8, !tbaa !56
  %i.mg = load double, ptr %.042100, align 8, !tbaa !56
  %i.mh = load double, ptr %.04399, align 8, !tbaa !56
  %i.mi = fmul double %i.ma, %i.mh
  %i.mj = call double @llvm.fmuladd.f64(double %i.mg, double %i.lx, double %i.mi)
  store double %i.mj, ptr %i.lz, align 8, !tbaa !56
  %i.mk = icmp slt i64 %.0101, %i.la
  br i1 %i.mk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph102
  %i.ml = load double, ptr %.042100, align 8, !tbaa !56
  %i.mm = fneg double %i.ml
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.ly ; 3 uses
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !56
  %i.mp = fmul double %i.mo, %i.mm
  %i.mq = load ptr, ptr %i.gj, align 8, !tbaa !119
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.0101
  store double %i.mp, ptr %i.mr, align 8, !tbaa !56
  %i.ms = load double, ptr %.04399, align 8, !tbaa !56
  %i.mt = load double, ptr %i.mn, align 8, !tbaa !56
  %i.mu = fmul double %i.ms, %i.mt
  store double %i.mu, ptr %i.mn, align 8, !tbaa !56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph102
  %i.mv = getelementptr inbounds nuw i8, ptr %.04399, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %exitcond105.not = icmp eq i64 %.0101, %i.lc
  br i1 %exitcond105.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !1466
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7Spectra17UpperHessenbergQRIdE8apply_YQEN5Eigen3RefINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS2_11OuterStrideILin1EEEEE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !309, !range !96, !noundef !97
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.31)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #33
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !307  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139  ; 6 uses
  %i.j = icmp sgt i64 %i.g, 1
  br i1 %i.j, label %.lr.ph31, label %._crit_edge.split

.lr.ph31:                                         ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.o = load ptr, ptr %1, align 8, !tbaa !301    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !139  ; 3 uses
  %i.r = icmp sgt i64 %i.i, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph31
  %i.s = add nsw i64 %i.g, -2
  %i.t = shl i64 %i.q, 3                          ; 2 uses
  %i.u = shl i64 %i.i, 3                          ; 2 uses
  %i.v = getelementptr i8, ptr %i.o, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.u
  %scevgep36 = getelementptr i8, ptr %i.o, i64 %i.t
  %scevgep37 = getelementptr i8, ptr %i.o, i64 %i.u
  %min.iters.check = icmp eq i64 %i.i, 1
  %bound0 = icmp ult ptr %i.o, %scevgep
  %bound1 = icmp ult ptr %scevgep36, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.i, 9223372036854775806      ; 3 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %exitcond32.not = icmp eq i64 %.02830, %i.s
  br i1 %exitcond32.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !1470

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph31, %bb.e
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %.02830 = phi i64 [ %i.ac, %..loopexit_crit_edge ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02830
  %i.x = load double, ptr %i.w, align 8, !tbaa !56 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.02830
  %i.z = load double, ptr %i.y, align 8, !tbaa !56 ; 3 uses
  %i.aa = mul nsw i64 %i.q, %.02830
  %i.ab = getelementptr [8 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %i.ac = add nuw nsw i64 %.02830, 1              ; 2 uses
  %i.ad = mul nsw i64 %i.q, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.o, i64 %i.ad ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.x, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert38 = insertelement <2 x double> poison, double %i.z, i64 0
  %broadcast.splat39 = shufflevector <2 x double> %broadcast.splatinsert38, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.af, align 8, !tbaa !56, !alias.scope !1476, !noalias !1477 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %wide.load40 = load <2 x double>, ptr %i.ag, align 8, !tbaa !56, !alias.scope !1477 ; 2 uses
  %i.ah = fneg <2 x double> %wide.load40
  %i.ai = fmul <2 x double> %broadcast.splat39, %i.ah
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.ai)
  store <2 x double> %i.aj, ptr %i.af, align 8, !tbaa !56, !alias.scope !1476, !noalias !1477
  %i.ak = fmul <2 x double> %broadcast.splat, %wide.load40
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat39, <2 x double> %wide.load, <2 x double> %i.ak)
  store <2 x double> %i.al, ptr %i.ag, align 8, !tbaa !56, !alias.scope !1477
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1474

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.029.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.ax, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.029 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.029 ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !56
  %i.ar = fneg double %i.aq
  %i.as = fmul double %i.z, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ao, double %i.as)
  store double %i.at, ptr %i.an, align 8, !tbaa !56
  %i.au = load double, ptr %i.ap, align 8, !tbaa !56
  %i.av = fmul double %i.x, %i.au
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ao, double %i.av)
  store double %i.aw, ptr %i.ap, align 8, !tbaa !56
  %i.ax = add nuw nsw i64 %.029, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.i
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !1475
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Spectra7ArnoldiIdNS_9ArnoldiOpIdNS_21SymGEigsShiftInvertOpIZN3igl7spectra4eigsIdN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_8SparseLUINS6_12SparseMatrixIdLi0EiEENS6_14COLAMDOrderingIiEEEEEEbRKNSB_IT_Li0EiEESJ_iSG_RNS6_15PlainObjectBaseIT0_EERNSK_IT1_EEE11ShiftInvertZNS5_IdS8_S9_SF_EEbSJ_SJ_iSG_SN_SQ_E13SparseMatProdEESS_EEE10compress_VERKS8_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.42", align 8  ; 15 uses
  %3 = alloca %"class.Eigen::Product.2171", align 8 ; 12 uses
  %4 = alloca %"class.Eigen::Block.907", align 8  ; 10 uses
  %5 = alloca %"class.Eigen::Product.2178", align 8 ; 10 uses
  %6 = alloca %"class.Eigen::Block.907", align 8  ; 10 uses
  %7 = alloca %"class.Eigen::Matrix.38", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !253  ; 4 uses
  %i.d = add nsw i64 %i.c, 1                      ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !161  ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = icmp eq i64 %i.d, 0
  %or.cond.i.i.i.i = or i1 %i.g, %i.f
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 9223372036854775807, %i.d
  %i.i = icmp sgt i64 %i.e, %i.h
  br i1 %i.i, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = mul nsw i64 %i.e, %i.d                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.m = icmp sgt i64 %i.j, 0
  br i1 %i.m, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %i.j, 2305843009213693951
  br i1 %i.n, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.o = shl nuw i64 %i.j, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #35 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.invoke, label %.sink.split.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d, %bb.b
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.c
  %.sink.i = phi ptr [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr %.sink.i, ptr %2, align 8, !tbaa !124
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.r, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn25.pn.pn, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.invoke
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.t) #33
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.u = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ]
  store i64 %i.e, ptr %i.k, align 8, !tbaa !125
  store i64 %i.d, ptr %i.l, align 8, !tbaa !126
  %i.v = icmp sgt i64 %i.c, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IllEERKT_RKT0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_7ProductINS1_IS3_Lin1ELin1ELb1EEENS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS4_RKNS5_IT_EE.exit
  %i.ag = phi i64 [ %i.c, %.lr.ph ], [ %i.av, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_7ProductINS1_IS3_Lin1ELin1ELb1EEENS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS4_RKNS5_IT_EE.exit ]
  %.01888 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_7ProductINS1_IS3_Lin1ELin1ELb1EEENS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS4_RKNS5_IT_EE.exit ] ; 4 uses
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !249
  %i.ai = add nuw nsw i64 %.01888, 1              ; 3 uses
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !124
  %i.am = load i64, ptr %i.x, align 8, !tbaa !125
  %i.an = mul nsw i64 %i.am, %.01888
  %i.ao = getelementptr [8 x i8], ptr %i.al, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !125, !noalias !1508 ; 2 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !124, !noalias !1508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.876.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.aq, ptr %3, align 8
  store i64 %i.ap, ptr %.sroa.573.0..sroa_idx, align 8
  store i64 %i.ak, ptr %.sroa.674.0..sroa_idx, align 8
  store ptr %i.y, ptr %.sroa.775.0..sroa_idx, align 8
  store i64 %i.ap, ptr %.sroa.977.0..sroa_idx, align 8
  store ptr %i.ao, ptr %i.aa, align 8
  store i64 %i.ak, ptr %.sroa.580.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.ar = load ptr, ptr %2, align 8, !tbaa !124, !noalias !1509
  %i.as = load i64, ptr %i.k, align 8, !tbaa !125, !noalias !1509 ; 3 uses
  %i.at = mul nsw i64 %i.as, %.01888
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.at
  store ptr %i.au, ptr %4, align 8, !tbaa !311, !alias.scope !1509
  store i64 %i.as, ptr %i.ab, align 8, !tbaa !139, !alias.scope !1509
  store ptr %2, ptr %i.ac, align 8, !tbaa !163, !alias.scope !1509
  store i64 0, ptr %i.ad, align 8, !tbaa !139, !alias.scope !1509
  store i64 %.01888, ptr %i.ae, align 8, !tbaa !139, !alias.scope !1509
  store i64 %i.as, ptr %i.af, align 8, !tbaa !1512, !alias.scope !1509
  invoke void @_ZN5Eigen8internal25generic_product_impl_baseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb1EEENS_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS0_20generic_product_implIS5_SB_NS_10DenseShapeESD_Li7EEEE6evalToINS2_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RKSB_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(19) %i.aa)
          to label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_7ProductINS1_IS3_Lin1ELin1ELb1EEENS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS4_RKNS5_IT_EE.exit unwind label %bb.g

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS_10MatrixBaseEEaSINS_7ProductINS1_IS3_Lin1ELin1ELb1EEENS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS4_RKNS5_IT_EE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.av = load i64, ptr %i.b, align 8, !tbaa !253 ; 3 uses
  %i.aw = icmp slt i64 %i.ai, %i.av
  br i1 %i.aw, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !1482

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.r
end_hunk_0
