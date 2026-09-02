Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_distances?download=true
inline.NumInlined: 2391
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN6colvar11eigenvector4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
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
  %i.aal = shufflevector <2 x double> %i.zy, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aam = shufflevector <2 x double> %broadcast.splatinsert862, <2 x double> %broadcast.splatinsert868, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.aan = shufflevector <2 x double> %broadcast.splatinsert860, <2 x double> %broadcast.splatinsert866, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph858
  %index879 = phi i64 [ 0, %vector.ph858 ], [ %index.next881, %vector.body878 ] ; 3 uses
  %i.aao = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %index879 ; 4 uses
  %i.aap = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %index879 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  %i.aar = load double, ptr %i.aao, align 8, !tbaa !99, !noalias !470
  %i.aas = load double, ptr %i.aaq, align 8, !tbaa !99, !noalias !470
  %i.aat = insertelement <2 x double> poison, double %i.aar, i64 0
  %i.aau = insertelement <2 x double> %i.aat, double %i.aas, i64 1 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aap, i64 32
  %i.aax = load double, ptr %i.aav, align 8, !tbaa !102, !noalias !470
  %i.aay = load double, ptr %i.aaw, align 8, !tbaa !102, !noalias !470
  %i.aaz = insertelement <2 x double> poison, double %i.aax, i64 0
  %i.aba = insertelement <2 x double> %i.aaz, double %i.aay, i64 1 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aap, i64 40
  %i.abd = load double, ptr %i.abb, align 8, !tbaa !101, !noalias !470
  %i.abe = load double, ptr %i.abc, align 8, !tbaa !101, !noalias !470
  %i.abf = insertelement <2 x double> poison, double %i.abd, i64 0
  %i.abg = insertelement <2 x double> %i.abf, double %i.abe, i64 1 ; 2 uses
  %i.abh = fmul <2 x double> %broadcast.splat873, %i.aba
  %i.abi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat875, <2 x double> %i.aau, <2 x double> %i.abh)
  %i.abj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat877, <2 x double> %i.abg, <2 x double> %i.abi)
  %i.abk = shufflevector <2 x double> %i.abg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abl = shufflevector <2 x double> %i.aau, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abm = shufflevector <2 x double> %i.aba, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abn = fmul <4 x double> %i.aan, %i.abm
  %i.abo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aam, <4 x double> %i.abl, <4 x double> %i.abn)
  %i.abp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aal, <4 x double> %i.abk, <4 x double> %i.abo)
  %i.abq = shufflevector <2 x double> %i.abj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec880 = shufflevector <4 x double> %i.abp, <4 x double> %i.abq, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec880, ptr %i.aao, align 8, !tbaa !97
  %index.next881 = add nuw i64 %index879, 2       ; 2 uses
  %i.abr = icmp eq i64 %index.next881, %n.vec859
  br i1 %i.abr, label %middle.block882, label %vector.body878, !llvm.loop !435

middle.block882:                                  ; preds = %vector.body878
  %cmp.n883 = icmp eq i64 %i.aaj, %n.vec859
  br i1 %cmp.n883, label %.noexc.i416, label %scalar.ph856.preheader

scalar.ph856.preheader:                           ; preds = %.lr.ph547, %middle.block882
  %.073545.ph = phi i64 [ 0, %.lr.ph547 ], [ %n.vec859, %middle.block882 ]
  %i.abs = insertelement <2 x double> poison, double %i.zv, i64 0
  %i.abt = insertelement <2 x double> %i.abs, double %i.zi, i64 1
  %i.abu = insertelement <2 x double> poison, double %i.zd, i64 0
  %i.abv = insertelement <2 x double> %i.abu, double %i.zx, i64 1
  br label %scalar.ph856

scalar.ph856:                                     ; preds = %scalar.ph856.preheader, %scalar.ph856
  %.073545 = phi i64 [ %i.acf, %scalar.ph856 ], [ %.073545.ph, %scalar.ph856.preheader ] ; 2 uses
  %i.abw = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %.073545 ; 4 uses
  %34 = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16 ; 2 uses
  %35 = load double, ptr %34, align 8, !tbaa !102, !noalias !470 ; 2 uses
  %36 = load double, ptr %i.abw, align 8, !tbaa !99, !noalias !470 ; 2 uses
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !101, !noalias !470 ; 2 uses
  %37 = insertelement <2 x double> poison, double %35, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abz = fmul <2 x double> %i.abt, %38
  %39 = insertelement <2 x double> poison, double %36, i64 0
  %i.aca = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abv, <2 x double> %i.aca, <2 x double> %i.abz)
  %40 = insertelement <2 x double> poison, double %i.aby, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zy, <2 x double> %41, <2 x double> %i.acb)
  %i.acc = fmul double %i.aah, %35
  %i.acd = call double @llvm.fmuladd.f64(double %i.aaf, double %36, double %i.acc)
  %i.ace = call double @llvm.fmuladd.f64(double %i.zk, double %i.aby, double %i.acd)
  store <2 x double> %42, ptr %i.abw, align 8, !tbaa !97
  store double %i.ace, ptr %i.abx, align 8, !tbaa !97
  %i.acf = add nuw i64 %.073545, 1                ; 2 uses
  %exitcond584.not = icmp eq i64 %i.acf, %i.aaj
  br i1 %exitcond584.not, label %.noexc.i416, label %scalar.ph856, !llvm.loop !436

.noexc.i416:                                      ; preds = %scalar.ph856, %middle.block882, %bb.cr, %.loopexit520
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.acg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.acg, ptr %27, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 107, ptr %i.d, align 8, !tbaa !117
  %i.ach = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc417 unwind label %bb.ct ; 3 uses

.noexc417:                                        ; preds = %.noexc.i416
  store ptr %i.ach, ptr %27, align 8, !tbaa !118
  %i.aci = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  store i64 %i.aci, ptr %i.acg, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(107) %i.ach, ptr noundef nonnull align 1 dereferenceable(107) @.str.90, i64 107, i1 false)
  %i.acj = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.aci, ptr %i.acj, align 8, !tbaa !120
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.aci
  store i8 0, ptr %i.ack, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 10)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %.noexc417
  %i.acl = load ptr, ptr %27, align 8, !tbaa !118 ; 2 uses
  %i.acm = icmp eq ptr %i.acl, %i.acg
  br i1 %i.acm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.cs
  %i.acn = load i64, ptr %i.acg, align 8, !tbaa !119
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.acl, i64 noundef %i.aco) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  %i.acp = load ptr, ptr %i.ab, align 8, !tbaa !161 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 1144
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !127 ; 11 uses
  %.not573 = icmp eq i64 %i.acr, 0
  br i1 %.not573, label %.loopexit, label %.lr.ph549

.lr.ph549:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.acs = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 3 uses
  %i.act = load ptr, ptr %i.lf, align 8, !tbaa !146 ; 3 uses
  %i.acu = add i64 %i.acr, -1                     ; 2 uses
  %xtraiter909 = and i64 %i.acr, 1
  %i.acv = icmp eq i64 %i.acu, 0
  br i1 %i.acv, label %.epil.preheader908, label %.lr.ph549.new

.lr.ph549.new:                                    ; preds = %.lr.ph549
  %unroll_iter913 = and i64 %i.acr, -2
  br label %bb.cv

._crit_edge550.unr-lcssa:                         ; preds = %bb.cv
  %lcmp.mod911.not = icmp eq i64 %xtraiter909, 0
  br i1 %lcmp.mod911.not, label %._crit_edge550, label %.epil.preheader908

.epil.preheader908:                               ; preds = %._crit_edge550.unr-lcssa, %.lr.ph549
  %.072548.epil.init = phi i64 [ 0, %.lr.ph549 ], [ %i.aeo, %._crit_edge550.unr-lcssa ] ; 2 uses
  %lcmp.mod912 = trunc i64 %i.acr to i1
  call void @llvm.assume(i1 %lcmp.mod912)
  %i.acw = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %.072548.epil.init ; 2 uses
  %i.acx = getelementptr inbounds nuw [24 x i8], ptr %i.act, i64 %.072548.epil.init ; 3 uses
  %i.acy = load <2 x double>, ptr %i.acw, align 8, !tbaa !97
  %i.acz = load <2 x double>, ptr %i.acx, align 8, !tbaa !97
  %i.ada = fsub <2 x double> %i.acz, %i.acy
  store <2 x double> %i.ada, ptr %i.acx, align 8, !tbaa !97
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !101
  %i.add = getelementptr inbounds nuw i8, ptr %i.acx, i64 16 ; 2 uses
  %i.ade = load double, ptr %i.add, align 8, !tbaa !101
  %i.adf = fsub double %i.ade, %i.adc
  store double %i.adf, ptr %i.add, align 8, !tbaa !101
  br label %._crit_edge550

._crit_edge550:                                   ; preds = %._crit_edge550.unr-lcssa, %.epil.preheader908
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acp, i64 368
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !92
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 33
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !94, !range !95, !noundef !96
  %i.adk = trunc nuw i8 %i.adj to i1
  br i1 %i.adk, label %.lr.ph554, label %.lr.ph557

.lr.ph554:                                        ; preds = %._crit_edge550
  %i.adl = load ptr, ptr %i.ag, align 8, !tbaa !146 ; 3 uses
  %xtraiter916 = and i64 %i.acr, 1
  %i.adm = icmp eq i64 %i.acu, 0
  br i1 %i.adm, label %.epil.preheader915, label %.lr.ph554.new

.lr.ph554.new:                                    ; preds = %.lr.ph554
  %unroll_iter920 = and i64 %i.acr, -2
  br label %bb.cw

bb.ct:                                            ; preds = %.noexc.i416
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

bb.cu:                                            ; preds = %.noexc417
  %i.ado = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adp = load ptr, ptr %27, align 8, !tbaa !118 ; 2 uses
  %i.adq = icmp eq ptr %i.adp, %i.acg
  br i1 %i.adq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %bb.cu
  %i.adr = load i64, ptr %i.acg, align 8, !tbaa !119
  %i.ads = add i64 %i.adr, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.ads) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422, %bb.ct
  %.pn184 = phi { ptr, i32 } [ %i.adn, %bb.ct ], [ %i.ado, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422 ], [ %i.ado, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.dx

bb.cv:                                            ; preds = %bb.cv, %.lr.ph549.new
  %.072548 = phi i64 [ 0, %.lr.ph549.new ], [ %i.aeo, %bb.cv ] ; 4 uses
  %niter914 = phi i64 [ 0, %.lr.ph549.new ], [ %niter914.next.1, %bb.cv ]
  %i.adt = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %.072548 ; 2 uses
  %i.adu = getelementptr inbounds nuw [24 x i8], ptr %i.act, i64 %.072548 ; 3 uses
  %i.adv = load <2 x double>, ptr %i.adt, align 8, !tbaa !97
  %i.adw = load <2 x double>, ptr %i.adu, align 8, !tbaa !97
  %i.adx = fsub <2 x double> %i.adw, %i.adv
  store <2 x double> %i.adx, ptr %i.adu, align 8, !tbaa !97
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adt, i64 16
  %i.adz = load double, ptr %i.ady, align 8, !tbaa !101
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adu, i64 16 ; 2 uses
  %i.aeb = load double, ptr %i.aea, align 8, !tbaa !101
  %i.aec = fsub double %i.aeb, %i.adz
  store double %i.aec, ptr %i.aea, align 8, !tbaa !101
  %i.aed = or disjoint i64 %.072548, 1            ; 2 uses
  %i.aee = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %i.aed ; 2 uses
  %i.aef = getelementptr inbounds nuw [24 x i8], ptr %i.act, i64 %i.aed ; 3 uses
  %i.aeg = load <2 x double>, ptr %i.aee, align 8, !tbaa !97
  %i.aeh = load <2 x double>, ptr %i.aef, align 8, !tbaa !97
  %i.aei = fsub <2 x double> %i.aeh, %i.aeg
  store <2 x double> %i.aei, ptr %i.aef, align 8, !tbaa !97
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !101
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !101
  %i.aen = fsub double %i.aem, %i.aek
  store double %i.aen, ptr %i.ael, align 8, !tbaa !101
  %i.aeo = add nuw i64 %.072548, 2                ; 2 uses
  %niter914.next.1 = add nuw i64 %niter914, 2     ; 2 uses
  %niter914.ncmp.1 = icmp eq i64 %niter914.next.1, %unroll_iter913
  br i1 %niter914.ncmp.1, label %._crit_edge550.unr-lcssa, label %bb.cv, !llvm.loop !437

bb.cw:                                            ; preds = %bb.cw, %.lr.ph554.new
  %.071553 = phi i64 [ 0, %.lr.ph554.new ], [ %i.afc, %bb.cw ] ; 3 uses
  %niter921 = phi i64 [ 0, %.lr.ph554.new ], [ %niter921.next.1, %bb.cw ]
  %i.aep = getelementptr inbounds nuw [24 x i8], ptr %i.adl, i64 %.071553 ; 3 uses
  %i.aeq = load <2 x double>, ptr %i.aep, align 8, !tbaa !97
  %i.aer = fadd <2 x double> %i.ih, %i.aeq
  store <2 x double> %i.aer, ptr %i.aep, align 8, !tbaa !97
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 16 ; 2 uses
  %i.aet = load double, ptr %i.aes, align 8, !tbaa !101
  %i.aeu = fadd double %i.ii, %i.aet
  store double %i.aeu, ptr %i.aes, align 8, !tbaa !101
  %i.aev = getelementptr inbounds nuw [24 x i8], ptr %i.adl, i64 %.071553 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 24 ; 2 uses
  %i.aex = load <2 x double>, ptr %i.aew, align 8, !tbaa !97
  %i.aey = fadd <2 x double> %i.ih, %i.aex
  store <2 x double> %i.aey, ptr %i.aew, align 8, !tbaa !97
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aev, i64 40 ; 2 uses
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !101
  %i.afb = fadd double %i.ii, %i.afa
  store double %i.afb, ptr %i.aez, align 8, !tbaa !101
  %i.afc = add nuw i64 %.071553, 2                ; 2 uses
  %niter921.next.1 = add i64 %niter921, 2         ; 2 uses
  %niter921.ncmp.1 = icmp eq i64 %niter921.next.1, %unroll_iter920
  br i1 %niter921.ncmp.1, label %.lr.ph557.loopexit.unr-lcssa, label %bb.cw, !llvm.loop !438

.noexc.i426:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.afd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.afd, ptr %28, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 39, ptr %i.c, align 8, !tbaa !117
  %i.afe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc427 unwind label %bb.cy ; 3 uses

.noexc427:                                        ; preds = %.noexc.i426
  store ptr %i.afe, ptr %28, align 8, !tbaa !118
  %i.aff = load i64, ptr %i.c, align 8, !tbaa !117 ; 3 uses
  store i64 %i.aff, ptr %i.afd, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.afe, ptr noundef nonnull align 1 dereferenceable(39) @.str.91, i64 39, i1 false)
  %i.afg = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.aff, ptr %i.afg, align 8, !tbaa !120
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.aff
  store i8 0, ptr %i.afh, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 10)
          to label %bb.cx unwind label %bb.cz
end_hunk_0
