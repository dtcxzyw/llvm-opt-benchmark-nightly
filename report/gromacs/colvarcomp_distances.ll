Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_distances?download=true
inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6colvar11eigenvector4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %bound1845 = icmp ult ptr %23, %i.vf
  %found.conflict846 = and i1 %bound0844, %bound1845
  %conflict.rdx847 = or i1 %found.conflict843, %found.conflict846
  %bound0848 = icmp ult ptr %i.vc, %i.rq
  %bound1849 = icmp ult ptr %23, %i.vg
  %found.conflict850 = and i1 %bound0848, %bound1849
  %conflict.rdx851 = or i1 %conflict.rdx847, %found.conflict850
  %bound0852 = icmp ult ptr %i.vh, %i.vl
  %bound1853 = icmp ult ptr %i.vk, %i.vj
  %found.conflict854 = and i1 %bound0852, %bound1853
  %conflict.rdx855 = or i1 %conflict.rdx851, %found.conflict854
  %bound0856 = icmp ult ptr %i.vh, %i.rr
  %bound1857 = icmp ult ptr %i.rq, %i.vj
  %found.conflict858 = and i1 %bound0856, %bound1857
  %conflict.rdx859 = or i1 %conflict.rdx855, %found.conflict858
  %bound0860 = icmp ult ptr %i.vk, %i.rr
  %bound1861 = icmp ult ptr %i.rq, %i.vl
  %found.conflict862 = and i1 %bound0860, %bound1861
  %conflict.rdx863 = or i1 %conflict.rdx859, %found.conflict862
  %bound0864 = icmp ult ptr %i.vm, %i.vp
  %bound1865 = icmp ult ptr %i.vo, %i.vn
  %found.conflict866 = and i1 %bound0864, %bound1865
  %conflict.rdx867 = or i1 %conflict.rdx863, %found.conflict866
  %bound0868 = icmp ult ptr %i.vm, %i.vq
  %bound1869 = icmp ult ptr %i.rr, %i.vn
  %found.conflict870 = and i1 %bound0868, %bound1869
  %conflict.rdx871 = or i1 %conflict.rdx867, %found.conflict870
  %bound0872 = icmp ult ptr %i.vo, %i.vq
  %bound1873 = icmp ult ptr %i.rr, %i.vp
  %found.conflict874 = and i1 %bound0872, %bound1873
  %conflict.rdx875 = or i1 %conflict.rdx871, %found.conflict874
  br i1 %conflict.rdx875, label %scalar.ph838.preheader, label %vector.ph876

vector.ph876:                                     ; preds = %vector.memcheck840
  %n.vec877 = and i64 %i.va, -2                   ; 3 uses
  %broadcast.splatinsert882 = insertelement <2 x double> poison, double %i.ii, i64 0
  %broadcast.splat883 = shufflevector <2 x double> %broadcast.splatinsert882, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vr = load <2 x double>, ptr %23, align 16
  %i.vs = load <2 x double>, ptr %i.rq, align 8
  %i.vt = load double, ptr %i.rr, align 16, !tbaa !101, !alias.scope !469
  %broadcast.splatinsert890 = insertelement <2 x double> poison, double %i.vt, i64 0
  %broadcast.splat891 = shufflevector <2 x double> %broadcast.splatinsert890, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vu = shufflevector <2 x double> %i.vr, <2 x double> %i.vs, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.vv = shufflevector <2 x double> %i.ih, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vector.body884

vector.body884:                                   ; preds = %vector.body884, %vector.ph876
  %index885 = phi i64 [ 0, %vector.ph876 ], [ %index.next894, %vector.body884 ] ; 4 uses
  %i.vw = or disjoint i64 %index885, 1            ; 2 uses
  %i.vx = getelementptr inbounds nuw [24 x i8], ptr %i.vb, i64 %index885 ; 4 uses
  %i.vy = getelementptr inbounds nuw [24 x i8], ptr %i.vb, i64 %i.vw ; 3 uses
  %i.vz = load double, ptr %i.vx, align 8, !tbaa !99, !alias.scope !470, !noalias !471
  %i.wa = load double, ptr %i.vy, align 8, !tbaa !99, !alias.scope !470, !noalias !471
  %i.wb = insertelement <2 x double> poison, double %i.vz, i64 0
  %i.wc = insertelement <2 x double> %i.wb, double %i.wa, i64 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wf = load double, ptr %i.wd, align 8, !tbaa !102, !alias.scope !472, !noalias !473
  %i.wg = load double, ptr %i.we, align 8, !tbaa !102, !alias.scope !472, !noalias !473
  %i.wh = insertelement <2 x double> poison, double %i.wf, i64 0
  %i.wi = insertelement <2 x double> %i.wh, double %i.wg, i64 1
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wl = load double, ptr %i.wj, align 8, !tbaa !101, !alias.scope !474, !noalias !475
  %i.wm = load double, ptr %i.wk, align 8, !tbaa !101, !alias.scope !474, !noalias !475
  %i.wn = insertelement <2 x double> poison, double %i.wl, i64 0
  %i.wo = insertelement <2 x double> %i.wn, double %i.wm, i64 1
  %i.wp = fsub <2 x double> %i.wo, %broadcast.splat891
  %i.wq = shufflevector <2 x double> %i.wc, <2 x double> %i.wi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.wr = fsub <4 x double> %i.wq, %i.vu
  %i.ws = shufflevector <2 x double> %i.wp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec892 = shufflevector <4 x double> %i.wr, <4 x double> %i.ws, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec892, ptr %i.vx, align 8, !tbaa !97
  %i.wt = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %index885 ; 4 uses
  %i.wu = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %i.vw ; 3 uses
  %i.wv = load double, ptr %i.wt, align 8, !tbaa !99, !alias.scope !476, !noalias !477
  %i.ww = load double, ptr %i.wu, align 8, !tbaa !99, !alias.scope !476, !noalias !477
  %i.wx = insertelement <2 x double> poison, double %i.wv, i64 0
  %i.wy = insertelement <2 x double> %i.wx, double %i.ww, i64 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.xb = load double, ptr %i.wz, align 8, !tbaa !102, !alias.scope !478, !noalias !479
  %i.xc = load double, ptr %i.xa, align 8, !tbaa !102, !alias.scope !478, !noalias !479
  %i.xd = insertelement <2 x double> poison, double %i.xb, i64 0
  %i.xe = insertelement <2 x double> %i.xd, double %i.xc, i64 1
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.xh = load double, ptr %i.xf, align 8, !tbaa !101, !alias.scope !480, !noalias !469
  %i.xi = load double, ptr %i.xg, align 8, !tbaa !101, !alias.scope !480, !noalias !469
  %i.xj = insertelement <2 x double> poison, double %i.xh, i64 0
  %i.xk = insertelement <2 x double> %i.xj, double %i.xi, i64 1
  %i.xl = fsub <2 x double> %i.xk, %broadcast.splat883
  %i.xm = shufflevector <2 x double> %i.wy, <2 x double> %i.xe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xn = fsub <4 x double> %i.xm, %i.vv
  %i.xo = shufflevector <2 x double> %i.xl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec893 = shufflevector <4 x double> %i.xn, <4 x double> %i.xo, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec893, ptr %i.wt, align 8, !tbaa !97
  %index.next894 = add nuw i64 %index885, 2       ; 2 uses
  %i.xp = icmp eq i64 %index.next894, %n.vec877
  br i1 %i.xp, label %middle.block895, label %vector.body884, !llvm.loop !439

middle.block895:                                  ; preds = %vector.body884
  %cmp.n896 = icmp eq i64 %i.va, %n.vec877
  br i1 %cmp.n896, label %.loopexit520, label %scalar.ph838.preheader

scalar.ph838.preheader:                           ; preds = %vector.memcheck840, %.lr.ph544, %middle.block895
  %.074543.ph = phi i64 [ 0, %vector.memcheck840 ], [ 0, %.lr.ph544 ], [ %n.vec877, %middle.block895 ]
  br label %scalar.ph838

bb.co:                                            ; preds = %._crit_edge539
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.cj
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

bb.cq:                                            ; preds = %bb.cl
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = load ptr, ptr %24, align 8, !tbaa !118  ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.tr
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.cq
  %i.xv = load i64, ptr %i.tr, align 8, !tbaa !119
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406, %bb.cp
  %.pn179 = phi { ptr, i32 } [ %i.xr, %bb.cp ], [ %i.xs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406 ], [ %i.xs, %bb.cq ] ; 2 uses
  %i.xx = load ptr, ptr %25, align 8, !tbaa !118  ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.sm
  br i1 %i.xy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.xz = load i64, ptr %i.sm, align 8, !tbaa !119
  %i.ya = add i64 %i.xz, 1
  call void @_ZdlPvm(ptr noundef %i.xx, i64 noundef %i.ya) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %bb.co
  %.pn179.pn = phi { ptr, i32 } [ %i.xq, %bb.co ], [ %.pn179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %.pn179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ]
  %i.yb = load ptr, ptr %26, align 8, !tbaa !118  ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.yd = icmp eq ptr %i.yb, %i.yc
  br i1 %i.yd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %i.ye = load i64, ptr %i.yc, align 8, !tbaa !119
  %i.yf = add i64 %i.ye, 1
  call void @_ZdlPvm(ptr noundef %i.yb, i64 noundef %i.yf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.dy

scalar.ph838:                                     ; preds = %scalar.ph838.preheader, %scalar.ph838
  %.074543 = phi i64 [ %i.yu, %scalar.ph838 ], [ %.074543.ph, %scalar.ph838.preheader ] ; 3 uses
  %i.yg = getelementptr inbounds nuw [24 x i8], ptr %i.vb, i64 %.074543 ; 3 uses
  %i.yh = load <2 x double>, ptr %23, align 16, !tbaa !97
  %i.yi = load <2 x double>, ptr %i.yg, align 8, !tbaa !97
  %i.yj = fsub <2 x double> %i.yi, %i.yh
  store <2 x double> %i.yj, ptr %i.yg, align 8, !tbaa !97
  %i.yk = load double, ptr %i.rr, align 16, !tbaa !101
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yg, i64 16 ; 2 uses
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !101
  %i.yn = fsub double %i.ym, %i.yk
  store double %i.yn, ptr %i.yl, align 8, !tbaa !101
  %i.yo = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %.074543 ; 3 uses
  %i.yp = load <2 x double>, ptr %i.yo, align 8, !tbaa !97
  %i.yq = fsub <2 x double> %i.yp, %i.ih
  store <2 x double> %i.yq, ptr %i.yo, align 8, !tbaa !97
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 2 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !101
  %i.yt = fsub double %i.ys, %i.ii
  store double %i.yt, ptr %i.yr, align 8, !tbaa !101
  %i.yu = add nuw i64 %.074543, 1                 ; 2 uses
  %exitcond583.not = icmp eq i64 %i.yu, %i.va
  br i1 %exitcond583.not, label %.loopexit520, label %scalar.ph838, !llvm.loop !440

.loopexit520:                                     ; preds = %scalar.ph838, %middle.block895, %.preheader519, %bb.cn
  %i.yv = getelementptr inbounds nuw i8, ptr %i.uv, i64 97
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !94, !range !95, !noundef !96
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %bb.cr, label %.noexc.i416

bb.cr:                                            ; preds = %.loopexit520
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ut, i64 520
  call void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.yy, ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.yz = load ptr, ptr %i.ab, align 8, !tbaa !161 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 1016
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 1032
  %i.zc = load <2 x double>, ptr %i.za, align 8, !tbaa !97, !noalias !481 ; 9 uses
  %34 = extractelement <2 x double> %i.zc, i64 1  ; 3 uses
  %i.zd = extractelement <2 x double> %i.zc, i64 0 ; 3 uses
  %35 = load <2 x double>, ptr %i.zb, align 8, !tbaa !97, !noalias !481 ; 10 uses
  %i.ze = extractelement <2 x double> %35, i64 0  ; 4 uses
  %36 = fneg double %i.ze                         ; 3 uses
  %37 = extractelement <2 x double> %35, i64 1    ; 2 uses
  %38 = fneg double %37                           ; 3 uses
  %i.zf = fneg double %34                         ; 2 uses
  %39 = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %40 = insertelement <2 x double> %39, double %i.zf, i64 1
  %41 = fmul <2 x double> %39, %40
  %42 = shufflevector <2 x double> %i.zc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %43 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %42, <2 x double> %42, <2 x double> %41) ; 2 uses
  %44 = extractelement <2 x double> %43, i64 0
  %45 = insertelement <2 x double> %35, double %36, i64 1
  %46 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %47 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %48 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %45, <2 x double> %46, <2 x double> %47) ; 2 uses
  %49 = fmul double %i.zd, %38
  %50 = shufflevector <2 x double> %i.zc, <2 x double> %35, <2 x i32> <i32 1, i32 3>
  %51 = insertelement <2 x double> %48, double %49, i64 0
  %52 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %35, <2 x double> %51) ; 3 uses
  %i.zg = insertelement <2 x double> %35, double %i.zf, i64 0
  %i.zh = fmul <2 x double> %i.zc, %i.zg
  %i.zi = shufflevector <2 x double> %i.zh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zj = shufflevector <2 x double> %i.zc, <2 x double> %35, <2 x i32> <i32 0, i32 2>
  %i.zk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zj, <2 x double> %35, <2 x double> %i.zi)
  %53 = call double @llvm.fmuladd.f64(double %36, double %i.ze, double %44)
  %54 = fmul double %34, %i.ze
  %55 = insertelement <2 x double> %i.zc, double %38, i64 1
  %56 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.zl = insertelement <2 x double> poison, double %54, i64 0
  %57 = insertelement <2 x double> %i.zl, double %53, i64 1
  %i.zm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %56, <2 x double> %57) ; 3 uses
  %i.zn = extractelement <2 x double> %52, i64 0
  %i.zo = fmul double %i.zn, 2.000000e+00         ; 2 uses
  %i.zp = extractelement <2 x double> %i.zm, i64 0
  %i.zq = fmul double %i.zp, 2.000000e+00         ; 2 uses
  %i.zr = fmul <2 x double> %i.zk, splat (double 2.000000e+00) ; 2 uses
  %58 = fmul double %i.zd, %36
  %i.zs = insertelement <2 x double> %i.zc, double %38, i64 0
  %59 = insertelement <2 x double> %48, double %58, i64 1
  %60 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zs, <2 x double> %56, <2 x double> %59) ; 3 uses
  %61 = extractelement <2 x double> %60, i64 1
  %62 = fmul double %61, 2.000000e+00             ; 2 uses
  %i.zt = fmul double %i.ze, %37
  %63 = call double @llvm.fmuladd.f64(double %i.zd, double %34, double %i.zt)
  %i.zu = fmul double %63, 2.000000e+00           ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yz, i64 1144
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !127 ; 5 uses
  %.not572 = icmp eq i64 %i.zw, 0
  br i1 %.not572, label %.noexc.i416, label %.lr.ph547

.lr.ph547:                                        ; preds = %bb.cr
  %i.zx = load ptr, ptr %i.lf, align 8, !tbaa !146 ; 3 uses
  %min.iters.check899 = icmp eq i64 %i.zw, 1
  br i1 %min.iters.check899, label %scalar.ph898.preheader, label %vector.ph900

vector.ph900:                                     ; preds = %.lr.ph547
  %n.vec901 = and i64 %i.zw, -2                   ; 3 uses
  %broadcast.splatinsert902 = insertelement <2 x double> poison, double %i.zo, i64 0
  %broadcast.splatinsert910 = insertelement <2 x double> poison, double %i.zq, i64 0
  %broadcast.splatinsert914 = insertelement <2 x double> poison, double %i.zu, i64 0
  %broadcast.splat915 = shufflevector <2 x double> %broadcast.splatinsert914, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert916 = insertelement <2 x double> poison, double %62, i64 0
  %broadcast.splat917 = shufflevector <2 x double> %broadcast.splatinsert916, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat919 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.zy = shufflevector <2 x double> %i.zr, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %64 = shufflevector <2 x double> %i.zm, <2 x double> %broadcast.splatinsert910, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.zz = shufflevector <2 x double> %broadcast.splatinsert902, <2 x double> %60, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body920

vector.body920:                                   ; preds = %vector.body920, %vector.ph900
  %index921 = phi i64 [ 0, %vector.ph900 ], [ %index.next923, %vector.body920 ] ; 3 uses
  %i.aaa = getelementptr inbounds nuw [24 x i8], ptr %i.zx, i64 %index921 ; 4 uses
  %i.aab = getelementptr inbounds nuw [24 x i8], ptr %i.zx, i64 %index921 ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  %i.aad = load double, ptr %i.aaa, align 8, !tbaa !99, !noalias !482
  %i.aae = load double, ptr %i.aac, align 8, !tbaa !99, !noalias !482
  %i.aaf = insertelement <2 x double> poison, double %i.aad, i64 0
  %i.aag = insertelement <2 x double> %i.aaf, double %i.aae, i64 1 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 32
  %i.aaj = load double, ptr %i.aah, align 8, !tbaa !102, !noalias !482
  %i.aak = load double, ptr %i.aai, align 8, !tbaa !102, !noalias !482
  %i.aal = insertelement <2 x double> poison, double %i.aaj, i64 0
  %i.aam = insertelement <2 x double> %i.aal, double %i.aak, i64 1 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aab, i64 40
  %i.aap = load double, ptr %i.aan, align 8, !tbaa !101, !noalias !482
  %i.aaq = load double, ptr %i.aao, align 8, !tbaa !101, !noalias !482
  %i.aar = insertelement <2 x double> poison, double %i.aap, i64 0
  %i.aas = insertelement <2 x double> %i.aar, double %i.aaq, i64 1 ; 2 uses
  %i.aat = fmul <2 x double> %broadcast.splat915, %i.aam
  %i.aau = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat917, <2 x double> %i.aag, <2 x double> %i.aat)
  %i.aav = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat919, <2 x double> %i.aas, <2 x double> %i.aau)
  %i.aaw = shufflevector <2 x double> %i.aas, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aax = shufflevector <2 x double> %i.aag, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aay = shufflevector <2 x double> %i.aam, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aaz = fmul <4 x double> %i.zz, %i.aay
  %i.aba = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %64, <4 x double> %i.aax, <4 x double> %i.aaz)
  %i.abb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.zy, <4 x double> %i.aaw, <4 x double> %i.aba)
  %i.abc = shufflevector <2 x double> %i.aav, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec922 = shufflevector <4 x double> %i.abb, <4 x double> %i.abc, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec922, ptr %i.aaa, align 8, !tbaa !97
  %index.next923 = add nuw i64 %index921, 2       ; 2 uses
  %i.abd = icmp eq i64 %index.next923, %n.vec901
  br i1 %i.abd, label %middle.block924, label %vector.body920, !llvm.loop !447

middle.block924:                                  ; preds = %vector.body920
  %cmp.n925 = icmp eq i64 %i.zw, %n.vec901
  br i1 %cmp.n925, label %.noexc.i416, label %scalar.ph898.preheader

scalar.ph898.preheader:                           ; preds = %.lr.ph547, %middle.block924
  %.073545.ph = phi i64 [ 0, %.lr.ph547 ], [ %n.vec901, %middle.block924 ]
  %i.abe = insertelement <2 x double> poison, double %i.zo, i64 0
  %65 = shufflevector <2 x double> %i.abe, <2 x double> %60, <2 x i32> <i32 0, i32 2>
  %66 = shufflevector <2 x double> %i.zm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abf = insertelement <2 x double> %66, double %i.zq, i64 1
  %67 = extractelement <2 x double> %52, i64 1
  br label %scalar.ph898

scalar.ph898:                                     ; preds = %scalar.ph898.preheader, %scalar.ph898
  %.073545 = phi i64 [ %i.aby, %scalar.ph898 ], [ %.073545.ph, %scalar.ph898.preheader ] ; 2 uses
  %i.abg = getelementptr inbounds nuw [24 x i8], ptr %i.zx, i64 %.073545 ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 16 ; 2 uses
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !101, !noalias !482 ; 2 uses
  %i.abk = load double, ptr %i.abg, align 8, !tbaa !99, !noalias !482 ; 2 uses
  %i.abl = load double, ptr %i.abh, align 8, !tbaa !102, !noalias !482 ; 2 uses
  %i.abm = insertelement <2 x double> poison, double %i.abl, i64 0
  %i.abn = shufflevector <2 x double> %i.abm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abo = fmul <2 x double> %65, %i.abn
  %i.abp = insertelement <2 x double> poison, double %i.abk, i64 0
  %i.abq = shufflevector <2 x double> %i.abp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abf, <2 x double> %i.abq, <2 x double> %i.abo)
  %i.abs = insertelement <2 x double> poison, double %i.abj, i64 0
  %i.abt = shufflevector <2 x double> %i.abs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zr, <2 x double> %i.abt, <2 x double> %i.abr)
  %i.abv = fmul double %i.zu, %i.abl
  %i.abw = call double @llvm.fmuladd.f64(double %62, double %i.abk, double %i.abv)
  %i.abx = call double @llvm.fmuladd.f64(double %67, double %i.abj, double %i.abw)
  store <2 x double> %i.abu, ptr %i.abg, align 8, !tbaa !97
  store double %i.abx, ptr %i.abi, align 8, !tbaa !97
  %i.aby = add nuw i64 %.073545, 1                ; 2 uses
  %exitcond584.not = icmp eq i64 %i.aby, %i.zw
  br i1 %exitcond584.not, label %.noexc.i416, label %scalar.ph898, !llvm.loop !448

.noexc.i416:                                      ; preds = %scalar.ph898, %middle.block924, %bb.cr, %.loopexit520
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.abz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.abz, ptr %27, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 107, ptr %i.d, align 8, !tbaa !117
  %i.aca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc417 unwind label %bb.ct ; 3 uses

.noexc417:                                        ; preds = %.noexc.i416
  store ptr %i.aca, ptr %27, align 8, !tbaa !118
  %i.acb = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  store i64 %i.acb, ptr %i.abz, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(107) %i.aca, ptr noundef nonnull align 1 dereferenceable(107) @.str.90, i64 107, i1 false)
  %i.acc = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.acb, ptr %i.acc, align 8, !tbaa !120
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.acb
  store i8 0, ptr %i.acd, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 10)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %.noexc417
  %i.ace = load ptr, ptr %27, align 8, !tbaa !118 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, %i.abz
  br i1 %i.acf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.cs
  %i.acg = load i64, ptr %i.abz, align 8, !tbaa !119
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.ach) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.aci = load ptr, ptr %i.ab, align 8, !tbaa !161 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 1144
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !127 ; 11 uses
  %.not573.not = icmp eq i64 %i.ack, 0
  br i1 %.not573.not, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.acl = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 3 uses
  %i.acm = load ptr, ptr %i.lf, align 8, !tbaa !146 ; 3 uses
  %i.acn = add i64 %i.ack, -1                     ; 2 uses
  %xtraiter951 = and i64 %i.ack, 1
  %i.aco = icmp eq i64 %i.acn, 0
  br i1 %i.aco, label %.epil.preheader950, label %.lr.ph549.new

.lr.ph549.new:                                    ; preds = %.lr.ph549
  %unroll_iter955 = and i64 %i.ack, -2
  br label %bb.cv

._crit_edge550.unr-lcssa:                         ; preds = %bb.cv
  %lcmp.mod953.not = icmp eq i64 %xtraiter951, 0
  br i1 %lcmp.mod953.not, label %._crit_edge550, label %.epil.preheader950

.epil.preheader950:                               ; preds = %._crit_edge550.unr-lcssa, %.lr.ph549
  %.072548.epil.init = phi i64 [ 0, %.lr.ph549 ], [ %i.aeh, %._crit_edge550.unr-lcssa ] ; 2 uses
  %lcmp.mod954 = trunc i64 %i.ack to i1
  call void @llvm.assume(i1 %lcmp.mod954)
  %i.acp = getelementptr inbounds nuw [24 x i8], ptr %i.acl, i64 %.072548.epil.init ; 2 uses
  %i.acq = getelementptr inbounds nuw [24 x i8], ptr %i.acm, i64 %.072548.epil.init ; 3 uses
  %i.acr = load <2 x double>, ptr %i.acp, align 8, !tbaa !97
  %i.acs = load <2 x double>, ptr %i.acq, align 8, !tbaa !97
  %i.act = fsub <2 x double> %i.acs, %i.acr
  store <2 x double> %i.act, ptr %i.acq, align 8, !tbaa !97
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !101
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acq, i64 16 ; 2 uses
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !101
  %i.acy = fsub double %i.acx, %i.acv
  store double %i.acy, ptr %i.acw, align 8, !tbaa !101
  br label %._crit_edge550

._crit_edge550:                                   ; preds = %._crit_edge550.unr-lcssa, %.epil.preheader950
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aci, i64 368
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !92
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 33
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !94, !range !95, !noundef !96
  %i.add = trunc nuw i8 %i.adc to i1
  br i1 %i.add, label %.lr.ph554, label %.lr.ph557

.lr.ph554:                                        ; preds = %._crit_edge550
  %i.ade = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 3 uses
  %xtraiter958 = and i64 %i.ack, 1
  %i.adf = icmp eq i64 %i.acn, 0
  br i1 %i.adf, label %.epil.preheader957, label %.lr.ph554.new

.lr.ph554.new:                                    ; preds = %.lr.ph554
  %unroll_iter962 = and i64 %i.ack, -2
  br label %bb.cw

bb.ct:                                            ; preds = %.noexc.i416
  %i.adg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

bb.cu:                                            ; preds = %.noexc417
  %i.adh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adi = load ptr, ptr %27, align 8, !tbaa !118 ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.abz
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.cu
  %i.adk = load i64, ptr %i.abz, align 8, !tbaa !119
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422, %bb.ct
  %.pn184 = phi { ptr, i32 } [ %i.adg, %bb.ct ], [ %i.adh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422 ], [ %i.adh, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.dx

bb.cv:                                            ; preds = %bb.cv, %.lr.ph549.new
  %.072548 = phi i64 [ 0, %.lr.ph549.new ], [ %i.aeh, %bb.cv ] ; 4 uses
  %niter956 = phi i64 [ 0, %.lr.ph549.new ], [ %niter956.next.1, %bb.cv ]
  %i.adm = getelementptr inbounds nuw [24 x i8], ptr %i.acl, i64 %.072548 ; 2 uses
  %i.adn = getelementptr inbounds nuw [24 x i8], ptr %i.acm, i64 %.072548 ; 3 uses
  %i.ado = load <2 x double>, ptr %i.adm, align 8, !tbaa !97
  %i.adp = load <2 x double>, ptr %i.adn, align 8, !tbaa !97
  %i.adq = fsub <2 x double> %i.adp, %i.ado
  store <2 x double> %i.adq, ptr %i.adn, align 8, !tbaa !97
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !101
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 16 ; 2 uses
  %i.adu = load double, ptr %i.adt, align 8, !tbaa !101
  %i.adv = fsub double %i.adu, %i.ads
  store double %i.adv, ptr %i.adt, align 8, !tbaa !101
  %i.adw = or disjoint i64 %.072548, 1            ; 2 uses
  %i.adx = getelementptr inbounds nuw [24 x i8], ptr %i.acl, i64 %i.adw ; 2 uses
  %i.ady = getelementptr inbounds nuw [24 x i8], ptr %i.acm, i64 %i.adw ; 3 uses
  %i.adz = load <2 x double>, ptr %i.adx, align 8, !tbaa !97
  %i.aea = load <2 x double>, ptr %i.ady, align 8, !tbaa !97
  %i.aeb = fsub <2 x double> %i.aea, %i.adz
  store <2 x double> %i.aeb, ptr %i.ady, align 8, !tbaa !97
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aed = load double, ptr %i.aec, align 8, !tbaa !101
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ady, i64 16 ; 2 uses
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !101
  %i.aeg = fsub double %i.aef, %i.aed
  store double %i.aeg, ptr %i.aee, align 8, !tbaa !101
  %i.aeh = add nuw i64 %.072548, 2                ; 2 uses
  %niter956.next.1 = add nuw i64 %niter956, 2     ; 2 uses
  %niter956.ncmp.1 = icmp eq i64 %niter956.next.1, %unroll_iter955
  br i1 %niter956.ncmp.1, label %._crit_edge550.unr-lcssa, label %bb.cv, !llvm.loop !449

bb.cw:                                            ; preds = %bb.cw, %.lr.ph554.new
  %.071553 = phi i64 [ 0, %.lr.ph554.new ], [ %i.aev, %bb.cw ] ; 3 uses
  %niter963 = phi i64 [ 0, %.lr.ph554.new ], [ %niter963.next.1, %bb.cw ]
  %i.aei = getelementptr inbounds nuw [24 x i8], ptr %i.ade, i64 %.071553 ; 3 uses
  %i.aej = load <2 x double>, ptr %i.aei, align 8, !tbaa !97
  %i.aek = fadd <2 x double> %i.ih, %i.aej
  store <2 x double> %i.aek, ptr %i.aei, align 8, !tbaa !97
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 16 ; 2 uses
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !101
  %i.aen = fadd double %i.ii, %i.aem
  store double %i.aen, ptr %i.ael, align 8, !tbaa !101
  %i.aeo = getelementptr inbounds nuw [24 x i8], ptr %i.ade, i64 %.071553 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 24 ; 2 uses
  %i.aeq = load <2 x double>, ptr %i.aep, align 8, !tbaa !97
  %i.aer = fadd <2 x double> %i.ih, %i.aeq
  store <2 x double> %i.aer, ptr %i.aep, align 8, !tbaa !97
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 40 ; 2 uses
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !101
  %i.aeu = fadd double %i.ii, %i.aet
  store double %i.aeu, ptr %i.aes, align 8, !tbaa !101
  %i.aev = add nuw i64 %.071553, 2                ; 2 uses
  %niter963.next.1 = add i64 %niter963, 2         ; 2 uses
  %niter963.ncmp.1 = icmp eq i64 %niter963.next.1, %unroll_iter962
  br i1 %niter963.ncmp.1, label %.lr.ph557.loopexit.unr-lcssa, label %bb.cw, !llvm.loop !450

.noexc.i426:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.aew = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.aew, ptr %28, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 39, ptr %i.c, align 8, !tbaa !117
  %i.aex = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc427 unwind label %bb.cy ; 3 uses

.noexc427:                                        ; preds = %.noexc.i426
  store ptr %i.aex, ptr %28, align 8, !tbaa !118
  %i.aey = load i64, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  store i64 %i.aey, ptr %i.aew, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.aex, ptr noundef nonnull align 1 dereferenceable(39) @.str.91, i64 39, i1 false)
  %i.aez = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.aey, ptr %i.aez, align 8, !tbaa !120
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.aey
  store i8 0, ptr %i.afa, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 10)
end_hunk_0
