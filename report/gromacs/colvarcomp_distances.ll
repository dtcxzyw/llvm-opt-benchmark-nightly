Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_distances?download=true
inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6colvar11eigenvector4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.vv = load double, ptr %i.vt, align 8, !tbaa !102, !alias.scope !460, !noalias !461
  %i.vw = insertelement <2 x double> poison, double %i.vu, i64 0
  %i.vx = insertelement <2 x double> %i.vw, double %i.vv, i64 1
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %i.wa = load double, ptr %i.vy, align 8, !tbaa !101, !alias.scope !462, !noalias !463
  %i.wb = load double, ptr %i.vz, align 8, !tbaa !101, !alias.scope !462, !noalias !463
  %i.wc = insertelement <2 x double> poison, double %i.wa, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.wb, i64 1
  %i.we = fsub <2 x double> %i.wd, %broadcast.splat849
  %i.wf = shufflevector <2 x double> %i.vr, <2 x double> %i.vx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wg = fsub <4 x double> %i.wf, %i.vj
  %i.wh = shufflevector <2 x double> %i.we, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec850 = shufflevector <4 x double> %i.wg, <4 x double> %i.wh, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec850, ptr %i.vm, align 8, !tbaa !97
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %index843 ; 4 uses
  %i.wj = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %i.vl ; 3 uses
  %i.wk = load double, ptr %i.wi, align 8, !tbaa !99, !alias.scope !464, !noalias !465
  %i.wl = load double, ptr %i.wj, align 8, !tbaa !99, !alias.scope !464, !noalias !465
  %i.wm = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.wn = insertelement <2 x double> %i.wm, double %i.wl, i64 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wq = load double, ptr %i.wo, align 8, !tbaa !102, !alias.scope !466, !noalias !467
  %i.wr = load double, ptr %i.wp, align 8, !tbaa !102, !alias.scope !466, !noalias !467
  %i.ws = insertelement <2 x double> poison, double %i.wq, i64 0
  %i.wt = insertelement <2 x double> %i.ws, double %i.wr, i64 1
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.ww = load double, ptr %i.wu, align 8, !tbaa !101, !alias.scope !468, !noalias !457
  %i.wx = load double, ptr %i.wv, align 8, !tbaa !101, !alias.scope !468, !noalias !457
  %i.wy = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.wz = insertelement <2 x double> %i.wy, double %i.wx, i64 1
  %i.xa = fsub <2 x double> %i.wz, %broadcast.splat841
  %i.xb = shufflevector <2 x double> %i.wn, <2 x double> %i.wt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xc = fsub <4 x double> %i.xb, %i.vk
  %i.xd = shufflevector <2 x double> %i.xa, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec851 = shufflevector <4 x double> %i.xc, <4 x double> %i.xd, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec851, ptr %i.wi, align 8, !tbaa !97
  %index.next852 = add nuw i64 %index843, 2       ; 2 uses
  %i.xe = icmp eq i64 %index.next852, %n.vec835
  br i1 %i.xe, label %middle.block853, label %vector.body842, !llvm.loop !427

middle.block853:                                  ; preds = %vector.body842
  %cmp.n854 = icmp eq i64 %i.va, %n.vec835
  br i1 %cmp.n854, label %.loopexit520, label %scalar.ph832.preheader

scalar.ph832.preheader:                           ; preds = %vector.memcheck785, %.lr.ph544, %middle.block853
  %.074543.ph = phi i64 [ 0, %vector.memcheck785 ], [ 0, %.lr.ph544 ], [ %n.vec835, %middle.block853 ]
  br label %scalar.ph832

bb.co:                                            ; preds = %._crit_edge539
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.cj
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.cq:                                            ; preds = %bb.cl
  %i.xh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xi = load ptr, ptr %24, align 8, !tbaa !118  ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.tr
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.cq
  %i.xk = load i64, ptr %i.tr, align 8, !tbaa !119
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.cp
  %.pn179 = phi { ptr, i32 } [ %i.xg, %bb.cp ], [ %i.xh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %i.xh, %bb.cq ] ; 2 uses
  %i.xm = load ptr, ptr %25, align 8, !tbaa !118  ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.sm
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.xo = load i64, ptr %i.sm, align 8, !tbaa !119
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %bb.co
  %.pn179.pn = phi { ptr, i32 } [ %i.xf, %bb.co ], [ %.pn179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.pn179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ]
  %i.xq = load ptr, ptr %26, align 8, !tbaa !118  ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.xs = icmp eq ptr %i.xq, %i.xr
  br i1 %i.xs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %i.xt = load i64, ptr %i.xr, align 8, !tbaa !119
  %i.xu = add i64 %i.xt, 1
  call void @_ZdlPvm(ptr noundef %i.xq, i64 noundef %i.xu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.dy

scalar.ph832:                                     ; preds = %scalar.ph832.preheader, %scalar.ph832
  %.074543 = phi i64 [ %i.yj, %scalar.ph832 ], [ %.074543.ph, %scalar.ph832.preheader ] ; 3 uses
  %i.xv = getelementptr inbounds nuw [24 x i8], ptr %i.vb, i64 %.074543 ; 3 uses
  %i.xw = load <2 x double>, ptr %23, align 16, !tbaa !97
  %i.xx = load <2 x double>, ptr %i.xv, align 8, !tbaa !97
  %i.xy = fsub <2 x double> %i.xx, %i.xw
  store <2 x double> %i.xy, ptr %i.xv, align 8, !tbaa !97
  %i.xz = load double, ptr %i.rr, align 16, !tbaa !101
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  %i.yb = load double, ptr %i.ya, align 8, !tbaa !101
  %i.yc = fsub double %i.yb, %i.xz
  store double %i.yc, ptr %i.ya, align 8, !tbaa !101
  %i.yd = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %.074543 ; 3 uses
  %i.ye = load <2 x double>, ptr %i.yd, align 8, !tbaa !97
  %i.yf = fsub <2 x double> %i.ye, %i.ih
  store <2 x double> %i.yf, ptr %i.yd, align 8, !tbaa !97
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 16 ; 2 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !101
  %i.yi = fsub double %i.yh, %i.ii
  store double %i.yi, ptr %i.yg, align 8, !tbaa !101
  %i.yj = add nuw i64 %.074543, 1                 ; 2 uses
  %exitcond583.not = icmp eq i64 %i.yj, %i.va
  br i1 %exitcond583.not, label %.loopexit520, label %scalar.ph832, !llvm.loop !428

.loopexit520:                                     ; preds = %scalar.ph832, %middle.block853, %.preheader519, %bb.cn
  %i.yk = getelementptr inbounds nuw i8, ptr %i.uv, i64 97
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !94, !range !95, !noundef !96
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %bb.cr, label %.noexc.i416

bb.cr:                                            ; preds = %.loopexit520
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ut, i64 520
  call void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.yn, ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.yo = load ptr, ptr %i.ab, align 8, !tbaa !161 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 1016
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 1032
  %i.yr = load <2 x double>, ptr %i.yp, align 8, !tbaa !97, !noalias !469 ; 9 uses
  %i.ys = shufflevector <2 x double> %i.yr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.yt = extractelement <2 x double> %i.yr, i64 1 ; 4 uses
  %i.yu = fmul double %i.yt, %i.yt
  %i.yv = extractelement <2 x double> %i.yr, i64 0 ; 4 uses
  %i.yw = call double @llvm.fmuladd.f64(double %i.yv, double %i.yv, double %i.yu)
  %i.yx = load <2 x double>, ptr %i.yq, align 8, !tbaa !97, !noalias !469 ; 9 uses
  %i.yy = extractelement <2 x double> %i.yx, i64 0 ; 5 uses
  %i.yz = fneg double %i.yy                       ; 3 uses
  %i.za = call double @llvm.fmuladd.f64(double %i.yz, double %i.yy, double %i.yw)
  %i.zb = extractelement <2 x double> %i.yx, i64 1 ; 5 uses
  %i.zc = fneg double %i.zb                       ; 3 uses
  %i.zd = call double @llvm.fmuladd.f64(double %i.zc, double %i.zb, double %i.za) ; 2 uses
  %i.ze = fneg double %i.yt                       ; 2 uses
  %i.zf = fmul double %i.yt, %i.ze
  %i.zg = call double @llvm.fmuladd.f64(double %i.yv, double %i.yv, double %i.zf) ; 2 uses
  %i.zh = call double @llvm.fmuladd.f64(double %i.yy, double %i.yy, double %i.zg)
  %i.zi = call double @llvm.fmuladd.f64(double %i.zc, double %i.zb, double %i.zh) ; 2 uses
  %i.zj = call double @llvm.fmuladd.f64(double %i.yz, double %i.yy, double %i.zg)
  %i.zk = call double @llvm.fmuladd.f64(double %i.zb, double %i.zb, double %i.zj) ; 2 uses
  %i.zl = insertelement <2 x double> %i.yx, double %i.ze, i64 0
  %i.zm = fmul <2 x double> %i.yr, %i.zl
  %i.zn = shufflevector <2 x double> %i.zm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zo = shufflevector <2 x double> %i.yr, <2 x double> %i.yx, <2 x i32> <i32 0, i32 2>
  %i.zp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zo, <2 x double> %i.yx, <2 x double> %i.zn)
  %i.zq = shufflevector <2 x double> %i.yx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zr = insertelement <2 x double> %i.zq, double %i.zc, i64 0
  %i.zs = fmul <2 x double> %i.yr, %i.zr
  %i.zt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ys, <2 x double> %i.yx, <2 x double> %i.zs) ; 2 uses
  %i.zu = extractelement <2 x double> %i.zt, i64 0
  %i.zv = fmul double %i.zu, 2.000000e+00         ; 2 uses
  %i.zw = extractelement <2 x double> %i.zt, i64 1
  %i.zx = fmul double %i.zw, 2.000000e+00         ; 2 uses
  %i.zy = fmul <2 x double> %i.zp, splat (double 2.000000e+00) ; 2 uses
  %i.zz = shufflevector <2 x double> %i.yx, <2 x double> %i.yr, <2 x i32> <i32 0, i32 2>
  %i.aaa = insertelement <2 x double> %i.zq, double %i.yz, i64 1
  %i.aab = fmul <2 x double> %i.zz, %i.aaa
  %i.aac = shufflevector <2 x double> %i.yr, <2 x double> %i.yx, <2 x i32> <i32 1, i32 3>
  %i.aad = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yr, <2 x double> %i.aac, <2 x double> %i.aab) ; 2 uses
  %i.aae = extractelement <2 x double> %i.aad, i64 1
  %i.aaf = fmul double %i.aae, 2.000000e+00       ; 2 uses
  %i.aag = extractelement <2 x double> %i.aad, i64 0
  %i.aah = fmul double %i.aag, 2.000000e+00       ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.yo, i64 1144
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !127 ; 5 uses
  %.not572 = icmp eq i64 %i.aaj, 0
  br i1 %.not572, label %.noexc.i416, label %.lr.ph547

.lr.ph547:                                        ; preds = %bb.cr
  %i.aak = load ptr, ptr %i.lf, align 8, !tbaa !146 ; 3 uses
  %min.iters.check857 = icmp eq i64 %i.aaj, 1
  br i1 %min.iters.check857, label %scalar.ph856.preheader, label %vector.ph858

vector.ph858:                                     ; preds = %.lr.ph547
  %n.vec859 = and i64 %i.aaj, -2                  ; 3 uses
  %broadcast.splatinsert860 = insertelement <2 x double> poison, double %i.zv, i64 0
  %broadcast.splatinsert862 = insertelement <2 x double> poison, double %i.zd, i64 0
  %broadcast.splatinsert866 = insertelement <2 x double> poison, double %i.zi, i64 0
  %broadcast.splatinsert868 = insertelement <2 x double> poison, double %i.zx, i64 0
  %broadcast.splatinsert872 = insertelement <2 x double> poison, double %i.aah, i64 0
  %broadcast.splat873 = shufflevector <2 x double> %broadcast.splatinsert872, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert874 = insertelement <2 x double> poison, double %i.aaf, i64 0
  %broadcast.splat875 = shufflevector <2 x double> %broadcast.splatinsert874, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert876 = insertelement <2 x double> poison, double %i.zk, i64 0
  %broadcast.splat877 = shufflevector <2 x double> %broadcast.splatinsert876, <2 x double> poison, <2 x i32> zeroinitializer
  %34 = shufflevector <2 x double> %i.zy, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %35 = shufflevector <2 x double> %broadcast.splatinsert862, <2 x double> %broadcast.splatinsert868, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.aal = shufflevector <2 x double> %broadcast.splatinsert860, <2 x double> %broadcast.splatinsert866, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph858
  %index879 = phi i64 [ 0, %vector.ph858 ], [ %index.next881, %vector.body878 ] ; 3 uses
  %i.aam = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %index879 ; 4 uses
  %i.aan = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %index879 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = load double, ptr %i.aam, align 8, !tbaa !99, !noalias !470
  %i.aaq = load double, ptr %i.aao, align 8, !tbaa !99, !noalias !470
  %i.aar = insertelement <2 x double> poison, double %i.aap, i64 0
  %i.aas = insertelement <2 x double> %i.aar, double %i.aaq, i64 1 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aan, i64 32
  %i.aav = load double, ptr %i.aat, align 8, !tbaa !102, !noalias !470
  %i.aaw = load double, ptr %i.aau, align 8, !tbaa !102, !noalias !470
  %i.aax = insertelement <2 x double> poison, double %i.aav, i64 0
  %i.aay = insertelement <2 x double> %i.aax, double %i.aaw, i64 1 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aan, i64 40
  %i.abb = load double, ptr %i.aaz, align 8, !tbaa !101, !noalias !470
  %i.abc = load double, ptr %i.aba, align 8, !tbaa !101, !noalias !470
  %i.abd = insertelement <2 x double> poison, double %i.abb, i64 0
  %i.abe = insertelement <2 x double> %i.abd, double %i.abc, i64 1 ; 2 uses
  %36 = fmul <2 x double> %broadcast.splat873, %i.aay
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat875, <2 x double> %i.aas, <2 x double> %36)
  %38 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat877, <2 x double> %i.abe, <2 x double> %37)
  %39 = shufflevector <2 x double> %i.abe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %40 = shufflevector <2 x double> %i.aas, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %41 = shufflevector <2 x double> %i.aay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %42 = fmul <4 x double> %i.aal, %41
  %43 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %35, <4 x double> %40, <4 x double> %42)
  %i.abf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %34, <4 x double> %39, <4 x double> %43)
  %i.abg = shufflevector <2 x double> %38, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec880 = shufflevector <4 x double> %i.abf, <4 x double> %i.abg, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec880, ptr %i.aam, align 8, !tbaa !97
  %index.next881 = add nuw i64 %index879, 2       ; 2 uses
  %i.abh = icmp eq i64 %index.next881, %n.vec859
  br i1 %i.abh, label %middle.block882, label %vector.body878, !llvm.loop !435

middle.block882:                                  ; preds = %vector.body878
  %cmp.n883 = icmp eq i64 %i.aaj, %n.vec859
  br i1 %cmp.n883, label %.noexc.i416, label %scalar.ph856.preheader

scalar.ph856.preheader:                           ; preds = %.lr.ph547, %middle.block882
  %.073545.ph = phi i64 [ 0, %.lr.ph547 ], [ %n.vec859, %middle.block882 ]
  %i.abi = insertelement <2 x double> poison, double %i.zv, i64 0
  %i.abj = insertelement <2 x double> %i.abi, double %i.zi, i64 1
  %i.abk = insertelement <2 x double> poison, double %i.zd, i64 0
  %i.abl = insertelement <2 x double> %i.abk, double %i.zx, i64 1
  br label %scalar.ph856

scalar.ph856:                                     ; preds = %scalar.ph856.preheader, %scalar.ph856
  %.073545 = phi i64 [ %i.ace, %scalar.ph856 ], [ %.073545.ph, %scalar.ph856.preheader ] ; 2 uses
  %i.abm = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %.073545 ; 4 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 16 ; 2 uses
  %i.abp = load double, ptr %i.abn, align 8, !tbaa !102, !noalias !470 ; 2 uses
  %i.abq = load double, ptr %i.abm, align 8, !tbaa !99, !noalias !470 ; 2 uses
  %i.abr = load double, ptr %i.abo, align 8, !tbaa !101, !noalias !470 ; 2 uses
  %i.abs = insertelement <2 x double> poison, double %i.abp, i64 0
  %i.abt = shufflevector <2 x double> %i.abs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abu = fmul <2 x double> %i.abj, %i.abt
  %i.abv = insertelement <2 x double> poison, double %i.abq, i64 0
  %i.abw = shufflevector <2 x double> %i.abv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abl, <2 x double> %i.abw, <2 x double> %i.abu)
  %i.aby = insertelement <2 x double> poison, double %i.abr, i64 0
  %i.abz = shufflevector <2 x double> %i.aby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %i.abz, <2 x double> %i.abx)
  %i.acb = fmul double %i.aah, %i.abp
  %i.acc = call double @llvm.fmuladd.f64(double %i.aaf, double %i.abq, double %i.acb)
  %i.acd = call double @llvm.fmuladd.f64(double %i.zk, double %i.abr, double %i.acc)
  store <2 x double> %i.aca, ptr %i.abm, align 8, !tbaa !97
  store double %i.acd, ptr %i.abo, align 8, !tbaa !97
  %i.ace = add nuw i64 %.073545, 1                ; 2 uses
  %exitcond584.not = icmp eq i64 %i.ace, %i.aaj
  br i1 %exitcond584.not, label %.noexc.i416, label %scalar.ph856, !llvm.loop !436

.noexc.i416:                                      ; preds = %scalar.ph856, %middle.block882, %bb.cr, %.loopexit520
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.acf = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.acf, ptr %27, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 107, ptr %i.d, align 8, !tbaa !117
  %i.acg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc417 unwind label %bb.ct ; 3 uses

.noexc417:                                        ; preds = %.noexc.i416
  store ptr %i.acg, ptr %27, align 8, !tbaa !118
  %i.ach = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  store i64 %i.ach, ptr %i.acf, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(107) %i.acg, ptr noundef nonnull align 1 dereferenceable(107) @.str.90, i64 107, i1 false)
  %i.aci = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.ach, ptr %i.aci, align 8, !tbaa !120
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.ach
  store i8 0, ptr %i.acj, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 10)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %.noexc417
  %i.ack = load ptr, ptr %27, align 8, !tbaa !118 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.acf
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.cs
  %i.acm = load i64, ptr %i.acf, align 8, !tbaa !119
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.aco = load ptr, ptr %i.ab, align 8, !tbaa !161 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 1144
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !127 ; 11 uses
  %.not573 = icmp eq i64 %i.acq, 0
  br i1 %.not573, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.acr = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 3 uses
  %i.acs = load ptr, ptr %i.lf, align 8, !tbaa !146 ; 3 uses
  %i.act = add i64 %i.acq, -1                     ; 2 uses
  %xtraiter909 = and i64 %i.acq, 1
  %i.acu = icmp eq i64 %i.act, 0
  br i1 %i.acu, label %.epil.preheader908, label %.lr.ph549.new

.lr.ph549.new:                                    ; preds = %.lr.ph549
  %unroll_iter913 = and i64 %i.acq, -2
  br label %bb.cv

._crit_edge550.unr-lcssa:                         ; preds = %bb.cv
  %lcmp.mod911.not = icmp eq i64 %xtraiter909, 0
  br i1 %lcmp.mod911.not, label %._crit_edge550, label %.epil.preheader908

.epil.preheader908:                               ; preds = %._crit_edge550.unr-lcssa, %.lr.ph549
  %.072548.epil.init = phi i64 [ 0, %.lr.ph549 ], [ %i.aen, %._crit_edge550.unr-lcssa ] ; 2 uses
  %lcmp.mod912 = trunc i64 %i.acq to i1
  call void @llvm.assume(i1 %lcmp.mod912)
  %i.acv = getelementptr inbounds nuw [24 x i8], ptr %i.acr, i64 %.072548.epil.init ; 2 uses
  %i.acw = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %.072548.epil.init ; 3 uses
  %i.acx = load <2 x double>, ptr %i.acv, align 8, !tbaa !97
  %i.acy = load <2 x double>, ptr %i.acw, align 8, !tbaa !97
  %i.acz = fsub <2 x double> %i.acy, %i.acx
  store <2 x double> %i.acz, ptr %i.acw, align 8, !tbaa !97
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !101
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 16 ; 2 uses
  %i.add = load double, ptr %i.adc, align 8, !tbaa !101
  %i.ade = fsub double %i.add, %i.adb
  store double %i.ade, ptr %i.adc, align 8, !tbaa !101
  br label %._crit_edge550

._crit_edge550:                                   ; preds = %._crit_edge550.unr-lcssa, %.epil.preheader908
  %i.adf = getelementptr inbounds nuw i8, ptr %i.aco, i64 368
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !92
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 33
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !94, !range !95, !noundef !96
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %.lr.ph554, label %.lr.ph557

.lr.ph554:                                        ; preds = %._crit_edge550
  %i.adk = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 3 uses
  %xtraiter916 = and i64 %i.acq, 1
  %i.adl = icmp eq i64 %i.act, 0
  br i1 %i.adl, label %.epil.preheader915, label %.lr.ph554.new

.lr.ph554.new:                                    ; preds = %.lr.ph554
  %unroll_iter920 = and i64 %i.acq, -2
  br label %bb.cw

bb.ct:                                            ; preds = %.noexc.i416
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

bb.cu:                                            ; preds = %.noexc417
  %i.adn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ado = load ptr, ptr %27, align 8, !tbaa !118 ; 2 uses
  %i.adp = icmp eq ptr %i.ado, %i.acf
  br i1 %i.adp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.cu
  %i.adq = load i64, ptr %i.acf, align 8, !tbaa !119
  %i.adr = add i64 %i.adq, 1
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422, %bb.ct
  %.pn184 = phi { ptr, i32 } [ %i.adm, %bb.ct ], [ %i.adn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422 ], [ %i.adn, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.dx

bb.cv:                                            ; preds = %bb.cv, %.lr.ph549.new
  %.072548 = phi i64 [ 0, %.lr.ph549.new ], [ %i.aen, %bb.cv ] ; 4 uses
  %niter914 = phi i64 [ 0, %.lr.ph549.new ], [ %niter914.next.1, %bb.cv ]
  %i.ads = getelementptr inbounds nuw [24 x i8], ptr %i.acr, i64 %.072548 ; 2 uses
  %i.adt = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %.072548 ; 3 uses
  %i.adu = load <2 x double>, ptr %i.ads, align 8, !tbaa !97
  %i.adv = load <2 x double>, ptr %i.adt, align 8, !tbaa !97
  %i.adw = fsub <2 x double> %i.adv, %i.adu
  store <2 x double> %i.adw, ptr %i.adt, align 8, !tbaa !97
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !101
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adt, i64 16 ; 2 uses
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !101
  %i.aeb = fsub double %i.aea, %i.ady
  store double %i.aeb, ptr %i.adz, align 8, !tbaa !101
  %i.aec = or disjoint i64 %.072548, 1            ; 2 uses
  %i.aed = getelementptr inbounds nuw [24 x i8], ptr %i.acr, i64 %i.aec ; 2 uses
  %i.aee = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %i.aec ; 3 uses
  %i.aef = load <2 x double>, ptr %i.aed, align 8, !tbaa !97
  %i.aeg = load <2 x double>, ptr %i.aee, align 8, !tbaa !97
  %i.aeh = fsub <2 x double> %i.aeg, %i.aef
  store <2 x double> %i.aeh, ptr %i.aee, align 8, !tbaa !97
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !101
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 2 uses
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !101
  %i.aem = fsub double %i.ael, %i.aej
  store double %i.aem, ptr %i.aek, align 8, !tbaa !101
  %i.aen = add nuw i64 %.072548, 2                ; 2 uses
  %niter914.next.1 = add nuw i64 %niter914, 2     ; 2 uses
  %niter914.ncmp.1 = icmp eq i64 %niter914.next.1, %unroll_iter913
  br i1 %niter914.ncmp.1, label %._crit_edge550.unr-lcssa, label %bb.cv, !llvm.loop !437

bb.cw:                                            ; preds = %bb.cw, %.lr.ph554.new
  %.071553 = phi i64 [ 0, %.lr.ph554.new ], [ %i.afb, %bb.cw ] ; 3 uses
  %niter921 = phi i64 [ 0, %.lr.ph554.new ], [ %niter921.next.1, %bb.cw ]
  %i.aeo = getelementptr inbounds nuw [24 x i8], ptr %i.adk, i64 %.071553 ; 3 uses
  %i.aep = load <2 x double>, ptr %i.aeo, align 8, !tbaa !97
  %i.aeq = fadd <2 x double> %i.ih, %i.aep
  store <2 x double> %i.aeq, ptr %i.aeo, align 8, !tbaa !97
end_hunk_0
