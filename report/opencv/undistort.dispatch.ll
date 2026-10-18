Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/undistort.dispatch?download=true
inline.NumInlined: 812
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv23initUndistortRectifyMapERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEEiRKNS_12_OutputArrayES7_:bb.a
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @__func__._ZN2cv23initUndistortRectifyMapERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEEiRKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.3, i32 noundef 116) #25
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  unreachable

bb.ed:                                            ; preds = %bb.ea
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

bb.ee:                                            ; preds = %bb.eb
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = load ptr, ptr %48, align 8, !tbaa !43   ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %bb.ee
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !44
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396, %bb.ed
  %.pn156 = phi { ptr, i32 } [ %i.jc, %bb.ed ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396 ], [ %i.jd, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br label %.body338

.thread507:                                       ; preds = %bb.de, %bb.dg, %bb.dh, %bb.di, %bb.dk, %bb.dm, %bb.do
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !68 ; 2 uses
  %.not158 = icmp eq i32 %i.jk, 1
  br i1 %.not158, label %bb.el, label %bb.ef

bb.ef:                                            ; preds = %.thread507
  %i.jl = load i32, ptr %22, align 8, !tbaa !51
  %i.jm = and i32 %i.jl, 16384
  %.not537 = icmp eq i32 %i.jm, 0
  br i1 %.not537, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %50, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.jn = load ptr, ptr %50, align 8, !tbaa !57   ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8
  invoke void %i.jq(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull align 8 dereferenceable(688) %50, ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ej, !inline_history !0

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.eh
  %i.jr = getelementptr inbounds nuw i8, ptr %50, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jr) #23
  %i.js = getelementptr inbounds nuw i8, ptr %50, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.js) #23
  %i.jt = getelementptr inbounds nuw i8, ptr %50, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jt) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  %.pre = load i32, ptr %i.jj, align 8, !tbaa !68
  br label %bb.el

bb.ei:                                            ; preds = %bb.eg
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %50) #23
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn159 = phi { ptr, i32 } [ %i.jv, %bb.ej ], [ %i.ju, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %.body338

bb.el:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit, %bb.ef, %.thread507
  %i.jw = phi i32 [ %.pre, %_ZN2cv3MataSERKNS_7MatExprE.exit ], [ %i.jk, %bb.ef ], [ 1, %.thread507 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !65 ; 14 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !67
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !67
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !67
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !67
  %i.kg = getelementptr inbounds nuw i8, ptr %22, i64 12
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !69
  %i.ki = add nsw i32 %i.jw, %i.kh                ; 4 uses
  %i.kj = icmp sgt i32 %i.ki, 5
  br i1 %i.kj, label %bb.em, label %.thread508

bb.em:                                            ; preds = %bb.el
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !67 ; 4 uses
  %i.km = icmp samesign ugt i32 %i.ki, 8
  br i1 %i.km, label %bb.en, label %.thread508

bb.en:                                            ; preds = %bb.em
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !67 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !67 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !67 ; 3 uses
  %i.kt = icmp samesign ugt i32 %i.ki, 12
  br i1 %i.kt, label %bb.eo, label %.thread508

bb.eo:                                            ; preds = %bb.en
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !67 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jy, i64 72
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !67 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jy, i64 80
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !67 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.jy, i64 88
  %i.lb = load double, ptr %i.la, align 8, !tbaa !67 ; 2 uses
  %i.lc = icmp samesign ugt i32 %i.ki, 14
  br i1 %i.lc, label %bb.ep, label %.thread508

bb.ep:                                            ; preds = %bb.eo
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jy, i64 96
  %i.le = load double, ptr %i.ld, align 8, !tbaa !67
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jy, i64 104
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !67
  br label %.thread508

.thread508:                                       ; preds = %bb.eo, %bb.en, %bb.el, %bb.em, %bb.ep
  %i.lh = phi double [ %i.le, %bb.ep ], [ 0.000000e+00, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ 0.000000e+00, %bb.eo ] ; 2 uses
  %i.li = phi double [ %i.kz, %bb.ep ], [ 0.000000e+00, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.kz, %bb.eo ]
  %i.lj = phi double [ %i.kv, %bb.ep ], [ 0.000000e+00, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.kv, %bb.eo ]
  %i.lk = phi double [ %i.kq, %bb.ep ], [ %i.kq, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.kq, %bb.eo ]
  %i.ll = phi double [ %i.kl, %bb.ep ], [ %i.kl, %bb.en ], [ %i.kl, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.kl, %bb.eo ]
  %i.lm = phi double [ %i.ko, %bb.ep ], [ %i.ko, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.ko, %bb.eo ]
  %i.ln = phi double [ %i.ks, %bb.ep ], [ %i.ks, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.ks, %bb.eo ]
  %i.lo = phi double [ %i.kx, %bb.ep ], [ 0.000000e+00, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.kx, %bb.eo ]
  %i.lp = phi double [ %i.lb, %bb.ep ], [ 0.000000e+00, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ %i.lb, %bb.eo ]
  %i.lq = phi double [ %i.lg, %bb.ep ], [ 0.000000e+00, %bb.en ], [ 0.000000e+00, %bb.em ], [ 0.000000e+00, %bb.el ], [ 0.000000e+00, %bb.eo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  %i.lr = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %51, i64 64
  %i.lt = call double @cos(double noundef %i.lh) #23 ; 4 uses
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.lu = call double @sin(double noundef %i.lh) #23 ; 5 uses
  %i.lv = call double @cos(double noundef %i.lq) #23 ; 3 uses
  %i.lw = call double @sin(double noundef %i.lq) #23 ; 3 uses
  %i.lx = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.lv, i64 0
  %i.ly = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.lu, i64 1
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> zeroinitializer, <2 x double> %i.ly) ; 2 uses
  %i.ma = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.lu, i64 0
  %i.mb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.lz)
  %i.mc = insertelement <2 x double> poison, double %i.lt, i64 0 ; 2 uses
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = fadd double %i.lw, 0.000000e+00
  %i.mf = insertelement <2 x double> poison, double %i.lv, i64 0 ; 2 uses
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %.sroa.9172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.mh = insertelement <2 x double> poison, double %i.lw, i64 0 ; 2 uses
  %i.mi = insertelement <2 x double> %i.mh, double %i.lu, i64 1
  %i.mj = fneg <2 x double> %i.mi                 ; 3 uses
  %i.mk = insertelement <2 x double> %i.mf, double %i.lt, i64 1
  %i.ml = fadd <2 x double> %i.mk, zeroinitializer
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> zeroinitializer, <2 x double> %i.ml) ; 3 uses
  %i.mn = insertelement <2 x double> %i.mj, double 0.000000e+00, i64 1
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.md, <2 x double> %i.mb) ; 6 uses
  %i.mp = insertelement <2 x double> %i.mj, double 0.000000e+00, i64 0
  %i.mq = fneg <2 x double> %i.mo                 ; 3 uses
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = insertelement <2 x double> %i.mc, double %i.lw, i64 1
  %i.mt = insertelement <2 x double> %i.lz, double 0.000000e+00, i64 1
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> zeroinitializer, <2 x double> %i.mt) ; 2 uses
  %i.mv = extractelement <2 x double> %i.mu, i64 1
  %i.mw = insertelement <2 x double> %i.mh, double %i.lt, i64 1
  %i.mx = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.lu, i64 0
  %i.my = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.mx, <2 x double> %i.mu) ; 3 uses
  %i.mz = insertelement <2 x double> %i.my, double %i.me, i64 0
  %i.na = call double @llvm.fmuladd.f64(double %i.lu, double 0.000000e+00, double %i.mv)
  %i.nb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.mp, <2 x double> %i.mz) ; 4 uses
  %i.nc = shufflevector <2 x double> %i.my, <2 x double> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.nf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> zeroinitializer, <2 x double> %i.ne) ; 2 uses
  %i.ng = shufflevector <2 x double> %i.mo, <2 x double> %i.mm, <2 x i32> <i32 3, i32 1>
  %i.nh = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ni = fadd <2 x double> %i.nf, <double 0.000000e+00, double -0.000000e+00>
  %i.nj = fadd <2 x double> %i.nb, %i.ni
  %i.nk = insertelement <2 x double> %i.mo, double %i.lv, i64 0
  %i.nl = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.lt, i64 0
  %i.nm = insertelement <2 x double> %i.nd, double %i.na, i64 0
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nl, <2 x double> %i.nm) ; 8 uses
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = insertelement <2 x double> %i.nn, double 0.000000e+00, i64 1
  %i.nq = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = shufflevector <2 x double> %i.my, <2 x double> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> %i.nr, <2 x double> zeroinitializer) ; 2 uses
  %i.nt = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ns, <2 x i32> <i32 0, i32 2>
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.mm, <2 x double> %i.nt)
  %i.nv = fadd <2 x double> %i.nu, <double 0.000000e+00, double -0.000000e+00>
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.nb, <2 x double> %i.nv)
  %i.nx = shufflevector <2 x double> %i.mo, <2 x double> %i.nn, <2 x i32> <i32 1, i32 2>
  %i.ny = shufflevector <2 x double> %i.ns, <2 x double> %i.nf, <2 x i32> <i32 1, i32 2>
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> zeroinitializer, <2 x double> %i.ny)
  %i.oa = shufflevector <2 x double> %i.nn, <2 x double> %i.nb, <2 x i32> <i32 0, i32 2>
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.oa, <2 x double> %i.nz)
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> %i.ng, <2 x double> %i.nd)
  %i.od = shufflevector <2 x double> %i.nb, <2 x double> %i.nn, <2 x i32> <i32 1, i32 2>
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.od, <2 x double> %i.oc)
  %shift = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.nn, %shift
  %54 = extractelement <2 x double> %foldExtExtBinop, i64 0
  store <2 x double> %i.nw, ptr %51, align 16
  store <2 x double> %i.ob, ptr %.sroa.5168.0..sroa_idx.i, align 16
  store <2 x double> %i.oe, ptr %i.lr, align 16
  store <2 x double> %i.nj, ptr %.sroa.9172.0..sroa_idx.i, align 16
  store double %54, ptr %i.ls, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  store i32 0, ptr %52, align 4, !tbaa !63
  %i.of = getelementptr inbounds nuw i8, ptr %52, i64 4
  store i32 %.sroa.5.0.extract.trunc, ptr %i.of, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !133
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL34getInitUndistortRectifyMapComputerENS_5Size_IiEERNS_3MatES3_iPKdRNS_4MatxIdLi3ELi3EEEddddddddddddddddE24__cv_trace_location_fn59)
          to label %.noexc400 unwind label %bb.fc

.noexc400:                                        ; preds = %.thread508
  invoke void @_ZN2cv12cpu_baseline34getInitUndistortRectifyMapComputerENS_5Size_IiEERNS_3MatES4_iPKdRNS_4MatxIdLi3ELi3EEEdddddddddddddddd(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %53, i64 %4, ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 8 dereferenceable(208) %28, i32 noundef %spec.store.select, ptr noundef nonnull %i.gn, ptr noundef nonnull align 8 dereferenceable(72) %51, double noundef %i.gu, double noundef %i.gy, double noundef %i.gz, double noundef %i.hb, double noundef %i.jz, double noundef %i.kb, double noundef %i.kd, double noundef %i.kf, double noundef %i.ll, double noundef %i.lm, double noundef %i.lk, double noundef %i.ln, double noundef %i.lj, double noundef %i.lo, double noundef %i.li, double noundef %i.lp)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %.noexc400
  %i.og = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !36, !noalias !133
  %.not.i.i = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %bb.eu unwind label %bb.es, !noalias !133

bb.es:                                            ; preds = %bb.er
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #26, !noalias !133
  unreachable

bb.et:                                            ; preds = %.noexc400
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #23, !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !133
  br label %.body401

bb.eu:                                            ; preds = %bb.er, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !133
  %i.ol = load ptr, ptr %53, align 8, !tbaa !32
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(8) %i.ol, double noundef -1.000000e+00)
          to label %bb.ev unwind label %bb.fd

bb.ev:                                            ; preds = %bb.eu
  %i.om = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !33 ; 8 uses
  %.not.i.i403 = icmp eq ptr %i.on, null
  br i1 %.not.i.i403, label %_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 4 uses
  %i.op = load atomic i64, ptr %i.oo acquire, align 8 ; 2 uses
  %i.oq = icmp eq i64 %i.op, 4294967297
  %i.or = trunc i64 %i.op to i32                  ; 2 uses
  br i1 %i.oq, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.oo, align 8, !tbaa !23
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i32 0, ptr %i.os, align 4, !tbaa !24
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !10
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #23, !inline_history !123
  %i.ow = load ptr, ptr %i.on, align 8, !tbaa !10
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #23, !inline_history !123
  br label %_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ey:                                            ; preds = %bb.ew
  %i.oz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.pa = add nsw i32 %i.or, -1
  store i32 %i.pa, ptr %i.oo, align 8, !tbaa !11
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.pb = atomicrmw volatile add ptr %i.oo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i = phi i32 [ %i.or, %bb.ez ], [ %i.pb, %bb.fa ]
  %i.pc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.pc, label %bb.fb, label %_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !70

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.on) #23
  br label %_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ev, %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  ret void

bb.fc:                                            ; preds = %.thread508
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body401

bb.fd:                                            ; preds = %bb.eu
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #23
  br label %.body401

.body401:                                         ; preds = %bb.fc, %bb.et, %bb.fd
  %.pn161 = phi { ptr, i32 } [ %i.pe, %bb.fd ], [ %i.pd, %bb.fc ], [ %i.ok, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  br label %.body338

.body338:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331, %bb.dv, %bb.dw, %bb.dy, %bb.dz, %bb.dx, %.body401, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161, %.body401 ], [ %.pn159, %bb.ek ], [ %.pn156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398 ], [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i331 ], [ %i.ix, %bb.dv ], [ %i.iy, %bb.dw ], [ %i.iz, %bb.dx ], [ %i.jb, %bb.dz ], [ %i.ja, %bb.dy ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #23
  br label %bb.fe

bb.fe:                                            ; preds = %.body338, %bb.du
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn, %.body338 ], [ %.pn142.pn.pn, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br label %.body267

.body267:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ca, %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281, %bb.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, %bb.bn, %.body263, %.body258, %bb.ay, %.body254, %bb.ar
  %.pn161.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn, %bb.fe ], [ %.pn140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281 ], [ %.pn136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293 ], [ %.pn124, %.body254 ], [ %i.cv, %bb.bn ], [ %i.bw, %bb.ar ], [ %.pn131, %.body263 ], [ %.pn129, %.body258 ], [ %.pn126.pn, %bb.ay ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ei, %bb.ca ], [ %i.ej, %bb.cb ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i295 ], [ %i.fn, %bb.cn ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %.body252

.body252:                                         ; preds = %bb.al, %.body267
  %.pn161.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn, %.body267 ], [ %i.bk, %bb.al ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #23
  br label %bb.ff

bb.ff:                                            ; preds = %.body252, %bb.aq
  %.pn161.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn, %.body252 ], [ %.pn122, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.af, %bb.ac
  %.pn161.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn.pn, %bb.ff ], [ %.pn120, %bb.af ], [ %i.aq, %bb.ac ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #23
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ab
  %.pn161.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn.pn.pn, %bb.fg ], [ %i.ap, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fh ], [ %i.ao, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #23
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.l
  %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fi ], [ %i.w, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #23
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.k
  %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fj ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.j
end_hunk_0
begin_hunk_1_@_ZNSt15_Sp_counted_ptrIPN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerELN9__gnu_cxx12_Lock_policyE2EED0Ev:bb.a
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(184) %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #20 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !51
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 6
  store i32 %i.d, ptr %0, align 8, !tbaa !51
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !51     ; 3 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 6
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !66
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4Mat_IdEaSERKNS_3MatE, ptr noundef nonnull @.str.19, i32 noundef 1630) #25
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.w = load i64, ptr %i.u, align 8, !tbaa !44
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.n ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 -2113863674, ptr %5, align 8, !tbaa !60
  store ptr %0, ptr %i.y, align 8, !tbaa !38
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g, %bb.d, %bb.b
  %.014 = phi ptr [ %0, %bb.b ], [ %0, %bb.d ], [ %i.m, %bb.g ], [ %0, %bb.p ]
  ret ptr %.014

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn16 = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn16
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!14 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!15 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!16 = !{!"p1 double", !12, i64 0}
!17 = !{!"p1 _ZTSN2cv4MatxIdLi3ELi3EEE", !12, i64 0}
!18 = !{!"double", !5, i64 0}
!19 = !{!"_ZTSN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerE", !14, i64 0, !15, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !16, i64 40, !17, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176}
!20 = !{!19, !6, i64 32}
!21 = !{!19, !16, i64 40}
!22 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!23 = !{!22, !6, i64 8}
!24 = !{!22, !6, i64 12}
!25 = !{!"p1 _ZTSN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerE", !12, i64 0}
!26 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv12cpu_baseline12_GLOBAL__N_131initUndistortRectifyMapComputerELN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0, !25, i64 16}
!27 = !{!26, !25, i64 16}
!28 = !{!"p1 _ZTSN2cv16ParallelLoopBodyE", !12, i64 0}
!29 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!30 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !30, i64 8}
!32 = !{!31, !28, i64 0}
!33 = !{!30, !29, i64 0}
!34 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !12, i64 0}
!35 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !34, i64 0, !6, i64 8}
!36 = !{!35, !6, i64 8}
!37 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !12, i64 8, !15, i64 16}
!38 = !{!37, !12, i64 8}
!39 = !{!"p1 omnipotent char", !12, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !39, i64 0}
!41 = !{!"long", !5, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !41, i64 8, !5, i64 16}
!43 = !{!42, !39, i64 0}
!44 = !{!5, !5, i64 0}
!45 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!46 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!47 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!48 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !47, i64 4, !6, i64 8, !5, i64 12}
!49 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!50 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !45, i64 56, !46, i64 64, !48, i64 72, !49, i64 128}
!51 = !{!50, !6, i64 0}
!52 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!53 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !5, i64 0}
!54 = !{!"_ZTSN2cv3VecIdLi4EEE", !53, i64 0}
!55 = !{!"_ZTSN2cv7Scalar_IdEE", !54, i64 0}
!56 = !{!"_ZTSN2cv7MatExprE", !52, i64 0, !6, i64 8, !50, i64 16, !50, i64 224, !50, i64 432, !18, i64 640, !18, i64 648, !55, i64 656}
!57 = !{!56, !52, i64 0}
!58 = !{!15, !6, i64 0}
!59 = !{!15, !6, i64 4}
!60 = !{!37, !6, i64 0}
!61 = !{!48, !6, i64 0}
!62 = !{!"_ZTSN2cv5RangeE", !6, i64 0, !6, i64 4}
!63 = !{!62, !6, i64 0}
!64 = !{!62, !6, i64 4}
!65 = !{!50, !39, i64 24}
!66 = !{!50, !6, i64 4}
!67 = !{!18, !18, i64 0}
!68 = !{!50, !6, i64 8}
!69 = !{!50, !6, i64 12}
!70 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!71 = !{!41, !41, i64 0}
!72 = !{!"p1 _ZTSN2cv6Point_IfEE", !12, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 0}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!73, !72, i64 8}
!77 = !{!73, !72, i64 16}
!78 = !{!"float", !5, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_ZTSN2cv12TermCriteriaE", !6, i64 0, !6, i64 4, !18, i64 8}
!81 = !{!80, !6, i64 0}
!82 = !{!80, !6, i64 4}
!83 = !{!80, !18, i64 8}
!84 = distinct !{null, null, null, null, null, null}
!85 = !{!13, !13, i64 0}
!86 = !{!17, !17, i64 0}
!87 = !{!19, !18, i64 56}
!88 = !{!19, !18, i64 64}
!89 = !{!19, !18, i64 72}
!90 = !{!19, !18, i64 80}
!91 = !{!19, !18, i64 88}
!92 = !{!19, !18, i64 96}
!93 = !{!19, !18, i64 104}
!94 = !{!19, !18, i64 112}
!95 = !{!19, !18, i64 120}
!96 = !{!19, !18, i64 128}
!97 = !{!19, !18, i64 136}
!98 = !{!19, !18, i64 144}
!99 = !{!19, !18, i64 152}
!100 = !{!19, !18, i64 160}
!101 = !{!19, !18, i64 168}
!102 = !{!19, !18, i64 176}
!103 = distinct !{!103, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!104 = distinct !{!104, !103, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!106 = distinct !{!106, !105, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!108 = distinct !{!108, !107, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!110 = distinct !{!110, !109, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!112 = distinct !{!112, !111, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!114 = distinct !{!114, !113, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!115 = distinct !{!115, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!116 = distinct !{!116, !115, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK2cv3Mat8colRangeEii"}
!118 = distinct !{!118, !117, !"_ZNK2cv3Mat8colRangeEii: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!120 = distinct !{!120, !119, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZN2cvL34getInitUndistortRectifyMapComputerENS_5Size_IiEERNS_3MatES3_iPKdRNS_4MatxIdLi3ELi3EEEdddddddddddddddd"}
!122 = distinct !{!122, !121, !"_ZN2cvL34getInitUndistortRectifyMapComputerENS_5Size_IiEERNS_3MatES3_iPKdRNS_4MatxIdLi3ELi3EEEdddddddddddddddd: argument 0"}
!123 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv16ParallelLoopBodyELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!124 = !{!104}
!125 = !{!106}
!126 = !{!108}
!127 = !{!110}
!128 = !{!112}
!129 = !{!114}
!130 = !{!116}
!131 = !{!118}
!132 = !{!120}
!133 = !{!122}
!134 = !{!40, !39, i64 0}
!135 = !{!42, !41, i64 8}
!136 = distinct !{null, null}
!137 = distinct !{!137, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!138 = distinct !{!138, !137, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!140 = distinct !{!140, !139, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!142 = distinct !{!142, !141, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!144 = distinct !{!144, !143, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!146 = distinct !{!146, !145, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!148 = distinct !{!148, !147, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!149 = distinct !{!149, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!150 = distinct !{!150, !149, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!151 = distinct !{!151, !75, !173}
!152 = distinct !{!152, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_"}
!153 = distinct !{!153, !152, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!154 = distinct !{!154, !152, !"_ZSt19__relocate_object_aIN2cv6Point_IiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!155 = distinct !{!155, !75}
!156 = distinct !{!156, i1 true, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_"}
!157 = distinct !{!157, !156, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aIN2cv6Point_IfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!159 = distinct !{!159, !75}
!160 = distinct !{!160, !75}
!161 = distinct !{!161, !75}
!162 = distinct !{!162, !75}
!163 = distinct !{!163, i1 true, !"_ZNK2cv6Point_IfEcvNS_3VecIfLi2EEEEv"}
!164 = distinct !{!164, !163, !"_ZNK2cv6Point_IfEcvNS_3VecIfLi2EEEEv: argument 0"}
end_hunk_1
