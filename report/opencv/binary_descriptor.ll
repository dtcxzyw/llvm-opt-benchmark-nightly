Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/binary_descriptor?download=true
inline.NumInlined: 2059
inline.NumDeleted: 783
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector20LeastSquaresLineFit_EPjS3_jRSt6vectorIdSaIdEE:bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.is) #23
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.it) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !118 ; 3 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !113
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !113
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !118
  %i.jc = load ptr, ptr %4, align 8, !tbaa !68
  %i.jd = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %i.iw, i64 1
  %i.jf = fpext <2 x float> %i.je to <2 x double> ; 3 uses
  %i.jg = load <2 x float>, ptr %i.iz, align 4, !tbaa !113
  %i.jh = fpext <2 x float> %i.jg to <2 x double> ; 3 uses
  %i.ji = extractelement <2 x double> %i.jh, i64 1
  %i.jj = fneg double %i.ji
  %i.jk = extractelement <2 x double> %i.jh, i64 0
  %i.jl = fmul double %i.jk, %i.jj
  %i.jm = extractelement <2 x double> %i.jf, i64 0
  %i.jn = extractelement <2 x double> %i.jf, i64 1
  %i.jo = call double @llvm.fmuladd.f64(double %i.jn, double %i.jm, double %i.jl)
  %i.jp = fdiv double 1.000000e+00, %i.jo
  %i.jq = load <2 x float>, ptr %i.jb, align 4, !tbaa !113
  %i.jr = fpext <2 x float> %i.jq to <2 x double> ; 2 uses
  %i.js = fneg <2 x double> %i.jr
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ju = fmul <2 x double> %i.jt, %i.jh
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jr, <2 x double> %i.ju)
  %i.jw = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x double> %i.jx, %i.jv          ; 7 uses
  store <2 x double> %i.jy, ptr %i.jc, align 8, !tbaa !75
  %i.jz = load i32, ptr %i.fm, align 8, !tbaa !216 ; 5 uses
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.lr.ph117.preheader, label %.sink.split

.lr.ph117.preheader:                              ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit109
  %xtraiter170 = and i32 %i.jz, 1
  %i.kb = icmp eq i32 %i.jz, 1
  br i1 %i.kb, label %.lr.ph117.epil.preheader, label %.lr.ph117.preheader.new

.lr.ph117.preheader.new:                          ; preds = %.lr.ph117.preheader
  %unroll_iter = and i32 %i.jz, 2147483646
  %i.kc = extractelement <2 x double> %i.jy, i64 0
  %i.kd = extractelement <2 x double> %i.jy, i64 1
  %i.ke = extractelement <2 x double> %i.jy, i64 0
  %i.kf = extractelement <2 x double> %i.jy, i64 1
  br label %.lr.ph117

bb.n:                                             ; preds = %._crit_edge
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.kh, %bb.o ], [ %i.kg, %bb.n ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.u

bb.q:                                             ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit108
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn100 = phi { ptr, i32 } [ %i.kj, %bb.r ], [ %i.ki, %bb.q ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.u

.lr.ph117:                                        ; preds = %.lr.ph117, %.lr.ph117.preheader.new
  %.190115 = phi i32 [ %3, %.lr.ph117.preheader.new ], [ %i.lg, %.lr.ph117 ] ; 3 uses
  %.192114 = phi double [ 0.000000e+00, %.lr.ph117.preheader.new ], [ %i.lh, %.lr.ph117 ]
  %niter = phi i32 [ 0, %.lr.ph117.preheader.new ], [ %niter.next.1, %.lr.ph117 ]
  %i.kk = zext i32 %.190115 to i64                ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !25
  %i.kn = uitofp i32 %i.km to double
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !25
  %i.kq = uitofp i32 %i.kp to double
  %i.kr = fneg double %i.kq
  %i.ks = call double @llvm.fmuladd.f64(double %i.kr, double %i.kc, double %i.kn)
  %i.kt = fsub double %i.ks, %i.kd                ; 2 uses
  %i.ku = add i32 %.190115, 1
  %i.kv = call double @llvm.fmuladd.f64(double %i.kt, double %i.kt, double %.192114)
  %i.kw = zext i32 %i.ku to i64                   ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !25
  %i.kz = uitofp i32 %i.ky to double
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kw
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !25
  %i.lc = uitofp i32 %i.lb to double
  %i.ld = fneg double %i.lc
  %i.le = call double @llvm.fmuladd.f64(double %i.ld, double %i.ke, double %i.kz)
  %i.lf = fsub double %i.le, %i.kf                ; 2 uses
  %i.lg = add i32 %.190115, 2                     ; 2 uses
  %i.lh = call double @llvm.fmuladd.f64(double %i.lf, double %i.lf, double %i.kv) ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.sink.split.loopexit168.unr-lcssa, label %.lr.ph117, !llvm.loop !402

.sink.split.loopexit.unr-lcssa:                   ; preds = %.lr.ph128
  %lcmp.mod177.not = icmp eq i32 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.sink.split, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %.sink.split.loopexit.unr-lcssa, %.lr.ph128.preheader
  %.089126.epil.init = phi i32 [ %3, %.lr.ph128.preheader ], [ %i.fj, %.sink.split.loopexit.unr-lcssa ]
  %.091125.epil.init = phi double [ 0.000000e+00, %.lr.ph128.preheader ], [ %i.fk, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %i.ec to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.li = zext i32 %.089126.epil.init to i64      ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !25
  %i.ll = uitofp i32 %i.lk to double
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.li
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !25
  %i.lo = uitofp i32 %i.ln to double
  %i.lp = fneg double %i.lo
  %i.lq = extractelement <2 x double> %i.eb, i64 0
  %i.lr = call double @llvm.fmuladd.f64(double %i.lp, double %i.lq, double %i.ll)
  %i.ls = extractelement <2 x double> %i.eb, i64 1
  %i.lt = fsub double %i.lr, %i.ls                ; 2 uses
  %i.lu = call double @llvm.fmuladd.f64(double %i.lt, double %i.lt, double %.091125.epil.init)
  br label %.sink.split

.sink.split.loopexit168.unr-lcssa:                ; preds = %.lr.ph117
  %lcmp.mod171.not = icmp eq i32 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.sink.split, label %.lr.ph117.epil.preheader

.lr.ph117.epil.preheader:                         ; preds = %.sink.split.loopexit168.unr-lcssa, %.lr.ph117.preheader
  %.190115.epil.init = phi i32 [ %3, %.lr.ph117.preheader ], [ %i.lg, %.sink.split.loopexit168.unr-lcssa ]
  %.192114.epil.init = phi double [ 0.000000e+00, %.lr.ph117.preheader ], [ %i.lh, %.sink.split.loopexit168.unr-lcssa ]
  %lcmp.mod173 = trunc i32 %i.jz to i1
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.lv = zext i32 %.190115.epil.init to i64      ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !25
  %i.ly = uitofp i32 %i.lx to double
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lv
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !25
  %i.mb = uitofp i32 %i.ma to double
  %i.mc = fneg double %i.mb
  %i.md = extractelement <2 x double> %i.jy, i64 0
  %i.me = call double @llvm.fmuladd.f64(double %i.mc, double %i.md, double %i.ly)
  %i.mf = extractelement <2 x double> %i.jy, i64 1
  %i.mg = fsub double %i.me, %i.mf                ; 2 uses
  %i.mh = call double @llvm.fmuladd.f64(double %i.mg, double %i.mg, double %.192114.epil.init)
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph117.epil.preheader, %.sink.split.loopexit168.unr-lcssa, %.lr.ph128.epil.preheader, %.sink.split.loopexit.unr-lcssa, %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit109, %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit107
  %.192.lcssa.sink = phi double [ %i.lu, %.lr.ph128.epil.preheader ], [ 0.000000e+00, %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit107 ], [ 0.000000e+00, %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit109 ], [ %i.fk, %.sink.split.loopexit.unr-lcssa ], [ %i.lh, %.sink.split.loopexit168.unr-lcssa ], [ %i.mh, %.lr.ph117.epil.preheader ]
  %i.mi = call double @sqrt(double noundef %.192.lcssa.sink) #23
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.a
  %.095 = phi double [ 0.000000e+00, %bb.a ], [ %i.mi, %.sink.split ]
  ret double %.095

bb.u:                                             ; preds = %bb.s, %bb.p, %bb.j, %bb.g
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %bb.j ], [ %.pn102, %bb.g ], [ %.pn100, %bb.s ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %.pn104.pn
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN2cv15line_descriptor16BinaryDescriptor14EDLineDetector20LeastSquaresLineFit_EPjS3_jjjRSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(2784) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::Mat_", align 8          ; 14 uses
  %8 = alloca %"class.cv::Mat_", align 8          ; 10 uses
  %9 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %11 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %16 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %i.a = sub i32 %5, %3
  %i.b = sub i32 %5, %4                           ; 7 uses
  %i.c = icmp slt i32 %i.a, 1
  %i.d = icmp slt i32 %i.b, 1
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 89) ; 0 uses
  %i.f = zext i32 %5 to i64
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.20, i64 noundef 10) ; 0 uses
  %i.i = zext i32 %3 to i64
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.i) ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.21, i64 noundef 13) ; 0 uses
  %i.l = zext i32 %4 to i64
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.l) ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !140
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10), !inline_history !7
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.w, %bb.d ], [ %i.aa, %bb.e ]
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext %.0.i.i.i)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) ; 0 uses
  br label %bb.bb

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.af = load ptr, ptr %6, align 8, !tbaa !68
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.not = icmp eq i64 %i.ai, 16
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 18) ; 0 uses
  %i.ak = load ptr, ptr @_ZSt4cout, align 8, !tbaa !61
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134 ; 6 uses
  %.not.i.i.i120 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i120, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121: ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !140
  %.not.i1.i.i122 = icmp eq i8 %i.ar, 0
  br i1 %.not.i1.i.i122, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 67
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i121
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ap)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef signext i8 %i.aw(ptr noundef nonnull align 8 dereferenceable(570) %i.ap, i8 noundef signext 10), !inline_history !7
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124: ; preds = %bb.i, %bb.j
  %.0.i.i.i123 = phi i8 [ %i.at, %bb.i ], [ %i.ax, %bb.j ]
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i123)
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit124, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 2, i32 noundef %i.b, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.b, i32 noundef 1, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEC2Eii.exit unwind label %bb.l

_ZN2cv4Mat_IfEC2Eii.exit:                         ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !243
  %i.bc = zext i32 %3 to i64                      ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !186
  %i.bh = mul i32 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.bk = add i32 %i.bh, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  switch i8 %i.bn, label %bb.ay [
    i8 -1, label %.lr.ph132
    i8 0, label %.lr.ph
  ]

.lr.ph132:                                        ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !118 ; 6 uses
  %i.bq = ptrtoaddr ptr %i.bp to i64
  %i.br = zext nneg i32 %i.b to i64               ; 11 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !118 ; 5 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %min.iters.check195 = icmp ult i32 %i.b, 12
  br i1 %min.iters.check195, label %scalar.ph194.preheader, label %vector.scevcheck189

vector.scevcheck189:                              ; preds = %.lr.ph132
  %i.bv = add nsw i64 %i.br, -1                   ; 2 uses
  %i.bw = trunc nsw i64 %i.bv to i32
  %i.bx = xor i32 %4, -1
  %i.by = icmp ult i32 %i.bx, %i.bw
  %i.bz = icmp ugt i64 %i.bv, 4294967295
  %i.ca = or i1 %i.by, %i.bz
  br i1 %i.ca, label %scalar.ph194.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %vector.scevcheck189
  %i.cb = sub i64 %i.bu, %i.bq                    ; 2 uses
  %i.cc = add i64 %i.cb, -1
  %diff.check191 = icmp ult i64 %i.cc, 15
  %i.cd = shl nuw nsw i64 %i.br, 2
  %i.ce = sub i64 %i.cd, %i.cb
  %diff.check192 = icmp ugt i64 %i.ce, -16
  %conflict.rdx193 = or i1 %diff.check191, %diff.check192
  br i1 %conflict.rdx193, label %scalar.ph194.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck190
  %n.vec197 = and i64 %i.br, 2147483644           ; 5 uses
  %i.cf = shl nuw nsw i64 %n.vec197, 2
  %i.cg = getelementptr i8, ptr %i.bp, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %n.vec197 to i32
  %i.ci = add i32 %4, %i.ch
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next203, %vector.body198 ] ; 4 uses
  %i.cj = shl i64 %index199, 2
  %next.gep200 = getelementptr i8, ptr %i.bp, i64 %i.cj ; 2 uses
  %i.ck = trunc i64 %index199 to i32
  %i.cl = add i32 %4, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %next.gep200, i64 %i.br
  store <4 x float> splat (float 1.000000e+00), ptr %i.cm, align 4, !tbaa !113
  %i.cn = zext i32 %i.cl to i64                   ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cn
  %wide.load201 = load <4 x i32>, ptr %i.co, align 4, !tbaa !25
  %i.cp = uitofp <4 x i32> %wide.load201 to <4 x float>
  store <4 x float> %i.cp, ptr %next.gep200, align 4, !tbaa !113
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cn
  %wide.load202 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !25
  %i.cr = uitofp <4 x i32> %wide.load202 to <4 x float>
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index199
  store <4 x float> %i.cr, ptr %i.cs, align 4, !tbaa !113
  %index.next203 = add nuw i64 %index199, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next203, %n.vec197
  br i1 %i.ct, label %middle.block204, label %vector.body198, !llvm.loop !403

middle.block204:                                  ; preds = %vector.body198
  %cmp.n205 = icmp eq i64 %n.vec197, %i.br
  br i1 %cmp.n205, label %._crit_edge133, label %scalar.ph194.preheader

scalar.ph194.preheader:                           ; preds = %vector.memcheck190, %vector.scevcheck189, %.lr.ph132, %middle.block204
  %indvars.iv135.ph = phi i64 [ 0, %vector.memcheck190 ], [ 0, %vector.scevcheck189 ], [ 0, %.lr.ph132 ], [ %n.vec197, %middle.block204 ] ; 4 uses
  %.073129.ph = phi ptr [ %i.bp, %vector.memcheck190 ], [ %i.bp, %vector.scevcheck189 ], [ %i.bp, %.lr.ph132 ], [ %i.cg, %middle.block204 ] ; 4 uses
  %.090128.ph = phi i32 [ %4, %vector.memcheck190 ], [ %4, %vector.scevcheck189 ], [ %4, %.lr.ph132 ], [ %i.ci, %middle.block204 ] ; 3 uses
  %xtraiter209 = and i64 %i.br, 1
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %scalar.ph194.prol.loopexit, label %scalar.ph194.prol

scalar.ph194.prol:                                ; preds = %scalar.ph194.preheader
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.073129.ph, i64 %i.br
  store float 1.000000e+00, ptr %i.cu, align 4, !tbaa !113
  %i.cv = zext i32 %.090128.ph to i64             ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !25
  %i.cy = uitofp i32 %i.cx to float
  %i.cz = getelementptr inbounds nuw i8, ptr %.073129.ph, i64 4
  store float %i.cy, ptr %.073129.ph, align 4, !tbaa !113
  %i.da = add i32 %.090128.ph, 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !25
  %i.dd = uitofp i32 %i.dc to float
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv135.ph
  store float %i.dd, ptr %i.de, align 4, !tbaa !113
  %indvars.iv.next136.prol = or disjoint i64 %indvars.iv135.ph, 1
  br label %scalar.ph194.prol.loopexit

scalar.ph194.prol.loopexit:                       ; preds = %scalar.ph194.prol, %scalar.ph194.preheader
  %indvars.iv135.unr = phi i64 [ %indvars.iv135.ph, %scalar.ph194.preheader ], [ %indvars.iv.next136.prol, %scalar.ph194.prol ]
  %.073129.unr = phi ptr [ %.073129.ph, %scalar.ph194.preheader ], [ %i.cz, %scalar.ph194.prol ]
  %.090128.unr = phi i32 [ %.090128.ph, %scalar.ph194.preheader ], [ %i.da, %scalar.ph194.prol ]
  %i.df = add nsw i64 %i.br, -1
  %i.dg = icmp eq i64 %indvars.iv135.ph, %i.df
  br i1 %i.dg, label %._crit_edge133, label %scalar.ph194

._crit_edge133:                                   ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194, %middle.block204
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.m unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

scalar.ph194:                                     ; preds = %scalar.ph194.prol.loopexit, %scalar.ph194
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %scalar.ph194 ], [ %indvars.iv135.unr, %scalar.ph194.prol.loopexit ] ; 3 uses
  %.073129 = phi ptr [ %i.dy, %scalar.ph194 ], [ %.073129.unr, %scalar.ph194.prol.loopexit ] ; 4 uses
  %.090128 = phi i32 [ %i.dz, %scalar.ph194 ], [ %.090128.unr, %scalar.ph194.prol.loopexit ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.073129, i64 %i.br
  store float 1.000000e+00, ptr %i.di, align 4, !tbaa !113
  %i.dj = zext i32 %.090128 to i64                ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !25
  %i.dm = uitofp i32 %i.dl to float
  %i.dn = getelementptr inbounds nuw i8, ptr %.073129, i64 4 ; 2 uses
  store float %i.dm, ptr %.073129, align 4, !tbaa !113
  %i.do = add i32 %.090128, 1
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !25
  %i.dr = uitofp i32 %i.dq to float
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv135
  store float %i.dr, ptr %i.ds, align 4, !tbaa !113
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.br
  store float 1.000000e+00, ptr %i.dt, align 4, !tbaa !113
  %i.du = zext i32 %i.do to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !25
  %i.dx = uitofp i32 %i.dw to float
  %i.dy = getelementptr inbounds nuw i8, ptr %.073129, i64 8
  store float %i.dx, ptr %i.dn, align 4, !tbaa !113
  %i.dz = add i32 %.090128, 2
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.du
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !25
  %i.ec = uitofp i32 %i.eb to float
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv135
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.ec, ptr %i.ee, align 4, !tbaa !113
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %exitcond139.not.1 = icmp eq i64 %indvars.iv.next136.1, %i.br
  br i1 %exitcond139.not.1, label %._crit_edge133, label %scalar.ph194, !llvm.loop !404

bb.m:                                             ; preds = %._crit_edge133
  invoke void @_ZN2cvmlERKNS_3MatERKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(688) %10)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  %i.eg = load ptr, ptr %9, align 8, !tbaa !238   ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull align 8 dereferenceable(688) %9, ptr noundef nonnull align 8 dereferenceable(208) %i.ef, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit unwind label %bb.t, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit:             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ek) #23
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.el) #23
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.em) #23
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.en) #23
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eo) #23
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ep) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.er = load ptr, ptr %11, align 8, !tbaa !238  ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !61
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 8 dereferenceable(688) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.eq, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit113 unwind label %bb.x, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit113:          ; preds = %bb.o
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ev) #23
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ew) #23
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ex) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %i.ey, ptr noundef nonnull align 8 dereferenceable(208) %i.ef)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit113
  %i.ez = load ptr, ptr %12, align 8, !tbaa !238  ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.ey, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit114 unwind label %bb.aa, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit114:          ; preds = %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fd) #23
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fe) #23
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ff) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(208) %i.fg, ptr noundef nonnull align 8 dereferenceable(208) %i.eq)
          to label %bb.q unwind label %bb.ac

bb.q:                                             ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit114
  %i.fh = load ptr, ptr %13, align 8, !tbaa !238  ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !61
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.fg, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit115 unwind label %bb.ad, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit115:          ; preds = %bb.q
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fl) #23
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fm) #23
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.sink.split

bb.r:                                             ; preds = %._crit_edge133
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %bb.m
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.n
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn102 = phi { ptr, i32 } [ %i.fq, %bb.t ], [ %i.fp, %bb.s ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn102.pn = phi { ptr, i32 } [ %.pn102, %bb.u ], [ %i.fo, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.az

bb.w:                                             ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn105 = phi { ptr, i32 } [ %i.fs, %bb.x ], [ %i.fr, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.az

bb.z:                                             ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit113
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.p
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn107 = phi { ptr, i32 } [ %i.fu, %bb.aa ], [ %i.ft, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.az

bb.ac:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit114
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn109 = phi { ptr, i32 } [ %i.fw, %bb.ad ], [ %i.fv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.az

.lr.ph:                                           ; preds = %_ZN2cv4Mat_IfEC2Eii.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !118 ; 6 uses
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %i.ga = zext nneg i32 %i.b to i64               ; 11 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !118 ; 5 uses
  %i.gd = ptrtoaddr ptr %i.gc to i64
  %min.iters.check = icmp ult i32 %i.b, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.ge = add nsw i64 %i.ga, -1                   ; 2 uses
  %i.gf = trunc nsw i64 %i.ge to i32
  %i.gg = xor i32 %4, -1
  %i.gh = icmp ult i32 %i.gg, %i.gf
  %i.gi = icmp ugt i64 %i.ge, 4294967295
  %i.gj = or i1 %i.gh, %i.gi
  br i1 %i.gj, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gk = sub i64 %i.gd, %i.fz                    ; 2 uses
  %i.gl = add i64 %i.gk, -1
  %diff.check = icmp ult i64 %i.gl, 15
  %i.gm = shl nuw nsw i64 %i.ga, 2
  %i.gn = sub i64 %i.gm, %i.gk
  %diff.check185 = icmp ugt i64 %i.gn, -16
  %conflict.rdx = or i1 %diff.check, %diff.check185
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ga, 2147483644              ; 5 uses
  %i.go = shl nuw nsw i64 %n.vec, 2
  %i.gp = getelementptr i8, ptr %i.fy, i64 %i.go
  %i.gq = trunc nuw nsw i64 %n.vec to i32
  %i.gr = add i32 %4, %i.gq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fy, i64 %i.gs ; 2 uses
  %i.gt = trunc i64 %index to i32
  %i.gu = add i32 %4, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %next.gep, i64 %i.ga
  store <4 x float> splat (float 1.000000e+00), ptr %i.gv, align 4, !tbaa !113
  %i.gw = zext i32 %i.gu to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gw
  %wide.load = load <4 x i32>, ptr %i.gx, align 4, !tbaa !25
  %i.gy = uitofp <4 x i32> %wide.load to <4 x float>
  store <4 x float> %i.gy, ptr %next.gep, align 4, !tbaa !113
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %wide.load186 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !25
  %i.ha = uitofp <4 x i32> %wide.load186 to <4 x float>
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index
  store <4 x float> %i.ha, ptr %i.hb, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ga
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.1126.ph = phi ptr [ %i.fy, %vector.memcheck ], [ %i.fy, %vector.scevcheck ], [ %i.fy, %.lr.ph ], [ %i.gp, %middle.block ] ; 4 uses
  %.191125.ph = phi i32 [ %4, %vector.memcheck ], [ %4, %vector.scevcheck ], [ %4, %.lr.ph ], [ %i.gr, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ga, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.1126.ph, i64 %i.ga
  store float 1.000000e+00, ptr %i.hd, align 4, !tbaa !113
  %i.he = zext i32 %.191125.ph to i64             ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !25
  %i.hh = uitofp i32 %i.hg to float
  %i.hi = getelementptr inbounds nuw i8, ptr %.1126.ph, i64 4
  store float %i.hh, ptr %.1126.ph, align 4, !tbaa !113
  %i.hj = add i32 %.191125.ph, 1
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.he
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !25
  %i.hm = uitofp i32 %i.hl to float
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.ph
  store float %i.hm, ptr %i.hn, align 4, !tbaa !113
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1126.unr = phi ptr [ %.1126.ph, %scalar.ph.preheader ], [ %i.hi, %scalar.ph.prol ]
  %.191125.unr = phi i32 [ %.191125.ph, %scalar.ph.preheader ], [ %i.hj, %scalar.ph.prol ]
  %i.ho = add nsw i64 %i.ga, -1
  %i.hp = icmp eq i64 %indvars.iv.ph, %i.ho
  br i1 %i.hp, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.af unwind label %bb.ak

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.1126 = phi ptr [ %i.ig, %scalar.ph ], [ %.1126.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.191125 = phi i32 [ %i.ih, %scalar.ph ], [ %.191125.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.1126, i64 %i.ga
  store float 1.000000e+00, ptr %i.hq, align 4, !tbaa !113
  %i.hr = zext i32 %.191125 to i64                ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !25
  %i.hu = uitofp i32 %i.ht to float
  %i.hv = getelementptr inbounds nuw i8, ptr %.1126, i64 4 ; 2 uses
  store float %i.hu, ptr %.1126, align 4, !tbaa !113
  %i.hw = add i32 %.191125, 1
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hr
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !25
  %i.hz = uitofp i32 %i.hy to float
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  store float %i.hz, ptr %i.ia, align 4, !tbaa !113
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ga
  store float 1.000000e+00, ptr %i.ib, align 4, !tbaa !113
  %i.ic = zext i32 %i.hw to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !25
  %i.if = uitofp i32 %i.ie to float
  %i.ig = getelementptr inbounds nuw i8, ptr %.1126, i64 8
  store float %i.if, ptr %i.hv, align 4, !tbaa !113
  %i.ih = add i32 %.191125, 2
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ic
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !25
  %i.ik = uitofp i32 %i.ij to float
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store float %i.ik, ptr %i.im, align 4, !tbaa !113
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ga
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !406

bb.af:                                            ; preds = %._crit_edge
  invoke void @_ZN2cvmlERKNS_3MatERKNS_7MatExprE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(688) %15)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  %i.io = load ptr, ptr %14, align 8, !tbaa !238  ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !61
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8
  invoke void %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.in, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit116 unwind label %bb.am, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit116:          ; preds = %bb.ag
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.is) #23
  %i.it = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.it) #23
  %i.iu = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.iu) #23
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.iv) #23
  %i.iw = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.iw) #23
  %i.ix = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ix) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit116
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.iz = load ptr, ptr %16, align 8, !tbaa !238  ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !61
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 8 dereferenceable(688) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.iy, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit117 unwind label %bb.aq, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit117:          ; preds = %bb.ah
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jd) #23
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.je) #23
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(208) %i.jg, ptr noundef nonnull align 8 dereferenceable(208) %i.in)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit117
  %i.jh = load ptr, ptr %17, align 8, !tbaa !238  ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !61
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull align 8 dereferenceable(688) %17, ptr noundef nonnull align 8 dereferenceable(208) %i.jg, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit118 unwind label %bb.at, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit118:          ; preds = %bb.ai
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jl) #23
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jm) #23
  %i.jn = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  invoke void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, ptr noundef nonnull align 8 dereferenceable(208) %i.jo, ptr noundef nonnull align 8 dereferenceable(208) %i.iy)
          to label %bb.aj unwind label %bb.av

bb.aj:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit118
  %i.jp = load ptr, ptr %18, align 8, !tbaa !238  ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !61
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  invoke void %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %i.jo, i32 noundef 5)
          to label %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit119 unwind label %bb.aw, !inline_history !15

_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit119:          ; preds = %bb.aj
  %i.jt = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jt) #23
  %i.ju = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ju) #23
  %i.jv = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.jv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.sink.split

bb.ak:                                            ; preds = %._crit_edge
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.af
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ag
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.jy, %bb.am ], [ %i.jx, %bb.al ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.jw, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.az

bb.ap:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit116
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ah
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn96 = phi { ptr, i32 } [ %i.ka, %bb.aq ], [ %i.jz, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.az

bb.as:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit117
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ai
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %17) #23
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn98 = phi { ptr, i32 } [ %i.kc, %bb.at ], [ %i.kb, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.az

bb.av:                                            ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit118
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.aj
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn100 = phi { ptr, i32 } [ %i.ke, %bb.aw ], [ %i.kd, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.az

.sink.split:                                      ; preds = %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit115, %_ZN2cv4Mat_IfEaSERKNS_7MatExprE.exit119
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !118 ; 3 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !113
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !113
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !118
  %i.kn = load ptr, ptr %6, align 8, !tbaa !68
  %i.ko = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.kh, i64 1
  %i.kq = fpext <2 x float> %i.kp to <2 x double> ; 3 uses
  %i.kr = load <2 x float>, ptr %i.kk, align 4, !tbaa !113
  %i.ks = fpext <2 x float> %i.kr to <2 x double> ; 3 uses
  %i.kt = extractelement <2 x double> %i.ks, i64 1
  %i.ku = fneg double %i.kt
  %i.kv = extractelement <2 x double> %i.ks, i64 0
  %i.kw = fmul double %i.kv, %i.ku
  %i.kx = extractelement <2 x double> %i.kq, i64 0
  %i.ky = extractelement <2 x double> %i.kq, i64 1
  %i.kz = call double @llvm.fmuladd.f64(double %i.ky, double %i.kx, double %i.kw)
  %i.la = fdiv double 1.000000e+00, %i.kz
  %i.lb = load <2 x float>, ptr %i.km, align 4, !tbaa !113
  %i.lc = fpext <2 x float> %i.lb to <2 x double> ; 2 uses
  %i.ld = fneg <2 x double> %i.lc
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lf = fmul <2 x double> %i.le, %i.ks
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.lc, <2 x double> %i.lf)
  %i.lh = insertelement <2 x double> poison, double %i.la, i64 0
end_hunk_0
