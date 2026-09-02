Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pnp_solver?download=true
inline.NumInlined: 753
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv:bb.a
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ah, ptr %i.ai, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ak, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.an = load double, ptr %i.am, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.an, ptr %i.ao, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.aq, ptr %i.ar, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.at, ptr %i.au, align 8, !tbaa !61
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aw, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !88
  store ptr %4, ptr %i.av, align 8, !tbaa !91
  %i.ax = load i32, ptr %4, align 8, !tbaa !124
  %i.ay = and i32 %i.ax, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ay, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac13P3PSolverImplD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv4usac13P3PSolverImplE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac13P3PSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv4usac13P3PSolverImplE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !125
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(504) %0) #20, !inline_history !125
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac13P3PSolverImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %3 = alloca %"class.cv::Matx.74", align 16      ; 12 uses
  %4 = alloca %"class.cv::Matx.76", align 8       ; 5 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::Matx.74", align 16      ; 8 uses
  %10 = alloca %"class.cv::Matx.56", align 8      ; 5 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %13 = alloca %"class.cv::Vec.75", align 16      ; 5 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !71     ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 2 uses
  %i.f = mul nsw i32 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 2 uses
  %i.i = mul nsw i32 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %i.l = mul nsw i32 %i.k, 5
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr [4 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %i.q = sext i32 %i.i to i64
  %i.r = getelementptr [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.r, i64 16
  %i.u = sext i32 %i.l to i64
  %i.v = getelementptr [4 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %i.y = load float, ptr %i.x, align 4, !tbaa !74
  %i.z = load <2 x float>, ptr %i.o, align 4, !tbaa !74 ; 2 uses
  %i.aa = load float, ptr %i.p, align 4, !tbaa !74
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 0
  %i.ad = fpext <2 x float> %i.ac to <2 x double> ; 5 uses
  %i.ae = fpext <2 x float> %i.z to <2 x double>  ; 4 uses
  %i.af = load <2 x float>, ptr %i.s, align 4, !tbaa !74 ; 2 uses
  %i.ag = load float, ptr %i.t, align 4, !tbaa !74
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 0
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 5 uses
  %i.ak = fpext <2 x float> %i.af to <2 x double> ; 3 uses
  %i.al = load <2 x float>, ptr %i.w, align 4, !tbaa !74
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 3 uses
  %i.an = fpext float %i.y to double              ; 2 uses
  %i.ao = fsub <2 x double> %i.am, %i.ae          ; 3 uses
  %i.ap = shufflevector <2 x double> %i.ad, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.aq = shufflevector <2 x double> %i.aj, <2 x double> %i.am, <2 x i32> <i32 1, i32 2>
  %i.ar = fsub <2 x double> %i.ap, %i.aq          ; 3 uses
  %i.as = shufflevector <2 x double> %i.ae, <2 x double> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.at = shufflevector <2 x double> %i.ak, <2 x double> %i.am, <2 x i32> <i32 1, i32 3>
  %i.au = fsub <2 x double> %i.as, %i.at          ; 3 uses
  %i.av = shufflevector <2 x double> %i.ad, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.aw = insertelement <2 x double> %i.aj, double %i.an, i64 1 ; 2 uses
  %i.ax = fsub <2 x double> %i.av, %i.aw          ; 2 uses
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.ar, <2 x double> zeroinitializer)
  %i.az = shufflevector <2 x double> %i.ar, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.az, <2 x double> zeroinitializer)
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.au, <2 x double> %i.ay)
  %i.bc = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bd = insertelement <2 x double> %i.bc, double %i.an, i64 0
  %i.be = fsub <2 x double> %i.aw, %i.bd          ; 3 uses
  %i.bf = shufflevector <2 x double> %i.ao, <2 x double> %i.au, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bf, <2 x double> %i.ba)
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ax, <2 x double> %i.bb)
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.be, <2 x double> %i.bg)
  %i.bj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bh) ; 6 uses
  %i.bk = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bi) ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !117 ; 3 uses
  %i.bn = extractelement <2 x double> %i.bj, i64 0 ; 3 uses
  %i.bo = fcmp olt double %i.bn, %i.bm
  %i.bp = extractelement <2 x double> %i.bj, i64 1 ; 3 uses
  %i.bq = fcmp olt double %i.bp, %i.bm
  %or.cond338 = or i1 %i.bo, %i.bq
  %i.br = extractelement <2 x double> %i.bk, i64 1 ; 3 uses
  %i.bs = fcmp olt double %i.br, %i.bm
  %or.cond339 = or i1 %i.bs, %or.cond338
  br i1 %or.cond339, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64 ; 3 uses
  %i.bv = mul nsw i32 %i.e, 3
  %i.bw = mul nsw i32 %i.h, 3
  %i.bx = mul nsw i32 %i.k, 3
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.by ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = sext i32 %i.bw to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cb ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  %i.cf = sext i32 %i.bx to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cf ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = load float, ptr %i.bz, align 4, !tbaa !74
  %i.cj = load <2 x float>, ptr %i.ca, align 4, !tbaa !74
  %i.ck = fpext <2 x float> %i.cj to <2 x double> ; 5 uses
  %15 = load float, ptr %i.cc, align 4, !tbaa !74
  %16 = load float, ptr %i.ce, align 4, !tbaa !74
  %17 = load float, ptr %i.cd, align 4, !tbaa !74
  %i.cl = load float, ptr %i.cg, align 4, !tbaa !74
  %i.cm = load <2 x float>, ptr %i.ch, align 4, !tbaa !74
  %i.cn = fpext <2 x float> %i.cm to <2 x double> ; 5 uses
  %i.co = extractelement <2 x double> %i.ck, i64 1
  %i.cp = extractelement <2 x double> %i.cn, i64 1
  %foldExtExtBinop = fmul <2 x double> %i.ck, %i.cn
  %i.cq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cr = fmul <2 x double> %i.bj, %i.bj          ; 10 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0 ; 11 uses
  %foldExtExtBinop603 = fmul <2 x double> %i.cr, %i.cr ; 2 uses
  %i.ct = extractelement <2 x double> %foldExtExtBinop603, i64 0 ; 3 uses
  %i.cu = fmul <2 x double> %i.bk, %i.bk          ; 6 uses
  %i.cv = extractelement <2 x double> %i.cr, i64 1 ; 3 uses
  %i.cw = fmul double %i.cv, %i.cv                ; 10 uses
  %i.cx = fmul double %i.cw, %i.cw                ; 4 uses
  %i.cy = extractelement <2 x double> %i.cu, i64 1 ; 11 uses
  %i.cz = fmul double %i.cy, %i.cy                ; 4 uses
  %i.da = fmul double %i.cw, -4.000000e+00
  %i.db = fmul double %i.cs, %i.da
  %i.dc = fmul double %i.cy, %i.db
  %i.dd = fmul double %i.cw, 2.000000e+00         ; 3 uses
  %i.de = fmul double %i.cs, %i.dd                ; 2 uses
  %i.df = fmul double %i.cw, 8.000000e+00
  %i.dg = fmul double %i.cs, %i.df
  %i.dh = fmul double %i.cy, %i.dg                ; 2 uses
  %i.di = fmul double %i.cx, 4.000000e+00         ; 2 uses
  %i.dj = fneg double %i.di                       ; 2 uses
  %i.dk = fpext float %17 to double               ; 2 uses
  %i.dl = fpext float %16 to double               ; 2 uses
  %i.dm = fpext float %15 to double               ; 2 uses
  %i.dn = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.cl, i64 1
  %i.dp = fpext <2 x float> %i.do to <2 x double> ; 3 uses
  %i.dq = shufflevector <2 x double> %i.ck, <2 x double> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.dr = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.dq, %i.ds
  %i.du = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dp, <2 x double> %i.dt)
  %i.dx = shufflevector <2 x double> %i.ck, <2 x double> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.dy = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dz, <2 x double> %i.dw) ; 8 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0 ; 13 uses
  %i.ec = extractelement <2 x double> %i.dp, i64 0 ; 2 uses
  %18 = extractelement <2 x double> %i.dp, i64 1  ; 2 uses
  %i.ed = tail call double @llvm.fmuladd.f64(double %18, double %i.ec, double %i.cq)
  %19 = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.co, double %i.ed) ; 9 uses
  %foldExtExtBinop605 = fmul <2 x double> %i.ea, %i.ea
  %i.ee = extractelement <2 x double> %foldExtExtBinop605, i64 0 ; 3 uses
  %i.ef = extractelement <2 x double> %i.ea, i64 1 ; 10 uses
  %i.eg = fmul double %i.ef, %i.ef                ; 4 uses
  %i.eh = fmul double %19, %19                    ; 4 uses
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.eg, double %i.cx)
  %i.ej = fmul double %i.dh, %i.eb
  %i.ek = fneg double %19
  %i.el = fmul double %i.dh, %19
  %i.em = fmul double %i.eb, %i.el
  %i.en = fneg double %i.ef
  %i.eo = fmul double %i.em, %i.en
  %i.ep = fneg double %i.dd
  %i.eq = insertelement <2 x double> %i.cr, double 4.000000e+00, i64 0
  %i.er = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %i.eq, %i.es          ; 4 uses
  %i.eu = extractelement <2 x double> %i.et, i64 1 ; 4 uses
  %i.ev = fmul double %i.eu, 2.000000e+00         ; 2 uses
  %i.ew = fneg double %i.ev                       ; 3 uses
  %i.ex = fmul double %i.eu, 4.000000e+00         ; 2 uses
  %i.ey = fmul double %i.cs, %i.ex                ; 3 uses
  %i.ez = extractelement <2 x double> %i.et, i64 0
  %foldExtExtBinop607 = fmul <2 x double> %foldExtExtBinop603, %i.et
  %i.fa = extractelement <2 x double> %foldExtExtBinop607, i64 0 ; 3 uses
  %i.fb = fmul double %i.eu, 8.000000e+00         ; 2 uses
  %i.fc = insertelement <2 x double> %i.cr, double -4.000000e+00, i64 1
  %i.fd = fmul <2 x double> %i.fc, %i.et
  %i.fe = shufflevector <2 x double> %i.cu, <2 x double> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.ff = fmul <2 x double> %i.fe, %i.fd          ; 2 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0 ; 2 uses
  %i.fh = fneg double %i.fg                       ; 2 uses
  %i.fi = fmul double %i.cz, %i.ez                ; 2 uses
  %i.fj = fneg double %i.fi                       ; 2 uses
  %i.fk = fmul double %i.eu, -8.000000e+00
  %i.fl = fmul double %i.cs, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.cs, double %i.ei)
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.cy, double %i.fm)
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ct, double %i.fn)
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.de, double %i.cy, double %i.fo)
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cz, double %i.fp)
  %i.fr = fmul double %i.ey, %19
  %i.fs = fmul double %i.ef, %i.fr                ; 2 uses
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.eg, double %i.fs)
  %i.fu = fmul double %i.fa, %i.ek                ; 2 uses
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.ef, double %i.ft)
  %i.fw = fmul double %i.fg, %19                  ; 2 uses
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.ef, double %i.fv)
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.eb, double %i.fx)
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.ey, double %i.eb, double %i.fy)
  %i.ga = fmul double %i.cy, %i.fb                ; 3 uses
  %i.gb = fmul double %i.fl, %19
  %i.gc = fmul double %i.eb, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.eb, double %i.fz)
  %i.ge = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gc, i64 1
  %i.gg = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.eo, i64 1
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.ea, <2 x double> %i.gh) ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.eb, double %i.gj)
  %i.gl = extractelement <2 x double> %i.gi, i64 1
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.di, double %i.ee, double %i.gl)
  %i.gn = fneg double %i.ey                       ; 2 uses
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.eh, double %i.gm)
  %i.gp = fneg double %i.ga
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.ee, double %i.go)
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.eh, double %i.gq)
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.eg, double %i.gr)
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.eg, double %i.gs)
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.ee, double %i.gt)
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.cx, double 2.000000e+00, double %i.gu)
  %i.gw = fneg double %i.ex
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.cy, double %i.gv)
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.ct, double %i.gx)
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.cz, double %i.gy)
  %i.ha = fmul double %i.cs, %i.fb
  %i.hb = fmul double %i.ha, %i.eh
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.eb, double %i.fs)
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.ef, double %i.hc)
  %i.he = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.ef, double %i.hd)
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.eb, double %i.he)
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.eb, double %i.hf)
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.eb, double %i.hg)
  %i.hi = insertelement <2 x double> %i.ea, double %i.eh, i64 1
  %i.hj = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.cx, i64 1
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.hi, <2 x double> %i.hk) ; 2 uses
  %i.hm = extractelement <2 x double> %i.hl, i64 0
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.eb, double %i.hm)
  %i.ho = fneg double %i.de
  %i.hp = extractelement <2 x double> %i.hl, i64 1
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.cy, double %i.hp)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.cs, double %i.hq)
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cz, double %i.hr)
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ct, double %i.hs)
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.cy, double %i.ht)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hy = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %i.fq, double noundef %i.gk, double noundef %i.gz, double noundef %i.hn, double noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull align 8 dereferenceable(8) %i.hx)
  %i.hz = load ptr, ptr %2, align 8, !tbaa !76    ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !79 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !80
  %.not4.i.i.i.i.i = icmp eq ptr %i.hz, %i.ib
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i ], [ %i.hz, %bb.b ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #20
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ie, %i.ib
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.not.i.i1.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.hz to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ih) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.c
  %i.ii = sext i32 %i.hy to i64
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ii)
  %i.ij = fmul double %i.cs, 2.000000e+00
  %i.ik = shufflevector <2 x double> %i.cu, <2 x double> %i.ea, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.il = fsub <2 x double> %i.cu, %i.ik
  %i.im = fmul <2 x double> %i.cu, %i.ik
  %i.in = shufflevector <2 x double> %i.il, <2 x double> %i.im, <2 x i32> <i32 0, i32 3>
  %i.io = fsub double %i.cy, %i.cv
  %i.ip = fmul double %i.io, 2.000000e+00
  %i.iq = fmul double %i.cs, %i.ip
  %i.ir = fmul double %i.iq, %i.ef
  %i.is = fsub <2 x double> %i.aj, %i.ad
  %i.it = fsub <2 x double> %i.ak, %i.ae
  %i.iu = shufflevector <2 x double> %i.bj, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3>
  %i.iv = fdiv <2 x double> splat (double 1.000000e+00), %i.iu ; 3 uses
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ix = fmul <2 x double> %i.is, %i.iw          ; 9 uses
  %i.iy = fmul <2 x double> %i.it, %i.iw          ; 4 uses
  %i.iz = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ja = fmul <2 x double> %i.ao, %i.iz          ; 6 uses
  %foldExtExtBinop609 = fmul <2 x double> %i.be, %i.iv ; 3 uses
  %i.jb = extractelement <2 x double> %foldExtExtBinop609, i64 1 ; 2 uses
  %i.jc = extractelement <2 x double> %i.ja, i64 1
  %i.jd = fneg double %i.jc
  %i.je = shufflevector <2 x double> %foldExtExtBinop609, <2 x double> %i.ja, <2 x i32> <i32 1, i32 2>
  %i.jf = fneg <2 x double> %i.je
  %i.jg = fmul <2 x double> %i.iy, %i.jf
  %i.jh = extractelement <2 x double> %i.ix, i64 0 ; 2 uses
  %i.ji = fmul double %i.jh, %i.jd
  %i.jj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.ja, <2 x double> %i.jg) ; 3 uses
  %i.jk = extractelement <2 x double> %i.iy, i64 1 ; 4 uses
  %i.jl = call double @llvm.fmuladd.f64(double %i.jk, double %i.jb, double %i.ji) ; 3 uses
  %i.jm = call double @llvm.fmuladd.f64(double %i.jl, double %i.jl, double 0.000000e+00)
  %i.jn = extractelement <2 x double> %i.jj, i64 0 ; 2 uses
  %i.jo = call double @llvm.fmuladd.f64(double %i.jn, double %i.jn, double %i.jm)
  %i.jp = extractelement <2 x double> %i.jj, i64 1 ; 2 uses
  %i.jq = call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.jo)
  %sqrt.i345 = call double @llvm.sqrt.f64(double %i.jq)
  %i.jr = fdiv double 1.000000e+00, %sqrt.i345    ; 2 uses
  %i.js = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x double> %i.jj, %i.jt          ; 10 uses
  %i.jv = fmul double %i.jl, %i.jr                ; 5 uses
  %i.jw = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jx = insertelement <2 x double> %i.jw, double %i.jv, i64 0 ; 3 uses
  %i.jy = fneg <2 x double> %i.jx
  %i.jz = shufflevector <2 x double> %i.ju, <2 x double> %i.ix, <2 x i32> <i32 1, i32 2>
  %i.ka = fneg <2 x double> %i.jz                 ; 3 uses
  %foldExtExtBinop611 = fmul <2 x double> %i.ja, %i.ka
  %i.kb = extractelement <2 x double> %foldExtExtBinop611, i64 0
  %i.kc = shufflevector <2 x double> %i.ja, <2 x double> %foldExtExtBinop609, <2 x i32> <i32 1, i32 3>
  %i.kd = fmul <2 x double> %i.kc, %i.jy
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.ju, <2 x double> %i.kd) ; 7 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  %i.kg = extractelement <2 x double> %i.ju, i64 1
  %i.kh = extractelement <2 x double> %i.ix, i64 1 ; 2 uses
  %i.ki = fneg double %i.jk
  %i.kj = extractelement <2 x double> %i.ke, i64 1 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.ix, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.kl = fneg <2 x double> %i.kk                 ; 2 uses
  %i.km = shufflevector <2 x double> %i.iy, <2 x double> %i.ix, <2 x i32> <i32 1, i32 2>
  %i.kn = extractelement <2 x double> %i.ju, i64 0 ; 3 uses
  %i.ko = fneg double %i.kn
  %i.kp = call double @llvm.fmuladd.f64(double %i.jb, double %i.jv, double %i.kb) ; 3 uses
  %i.kq = fneg double %i.kp                       ; 3 uses
  %i.kr = fmul double %i.jh, %i.kq
  %i.ks = call double @llvm.fmuladd.f64(double %i.jk, double %i.kf, double %i.kr)
  %i.kt = fmul double %i.kg, %i.kq
  %i.ku = call double @llvm.fmuladd.f64(double %i.kn, double %i.kf, double %i.kt)
  %i.kv = fneg double %i.ku
  %i.kw = fmul double %i.kh, %i.kv
  %i.kx = call double @llvm.fmuladd.f64(double %i.jv, double %i.ks, double %i.kw)
  %i.ky = shufflevector <2 x double> %i.ju, <2 x double> %i.ke, <2 x i32> <i32 1, i32 3>
  %i.kz = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = fmul <2 x double> %i.ky, %i.la
  %i.lc = insertelement <2 x double> %i.ju, double %i.kp, i64 1
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.lc, <2 x double> %i.lb) ; 2 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0
  %i.lf = call double @llvm.fmuladd.f64(double %i.kj, double %i.le, double %i.kx) ; 2 uses
  %i.lg = fcmp une double %i.lf, 0.000000e+00
  %i.lh = fdiv double 1.000000e+00, %i.lf         ; 4 uses
  %i.li = insertelement <2 x double> %i.ix, double %i.kp, i64 0 ; 2 uses
  %i.lj = fmul <2 x double> %i.li, %i.kl
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.ke, <2 x double> %i.lj)
  %i.ll = insertelement <2 x double> poison, double %i.lh, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ln = fmul <2 x double> %i.lk, %i.lm
  %i.lo = extractelement <2 x double> %i.ld, i64 1
  %i.lp = fmul double %i.lo, %i.lh
  %i.lq = shufflevector <2 x double> %i.ju, <2 x double> %i.ke, <2 x i32> <i32 0, i32 3>
  %i.lr = shufflevector <2 x double> %i.kl, <2 x double> %i.ka, <2 x i32> <i32 1, i32 2>
  %i.ls = fmul <2 x double> %i.lq, %i.lr
  %i.lt = shufflevector <2 x double> %i.li, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.lu = shufflevector <2 x double> %i.ju, <2 x double> %i.jx, <2 x i32> <i32 1, i32 2>
  %i.lv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.lu, <2 x double> %i.ls)
  %i.lw = fmul <2 x double> %i.lv, %i.lm
  %i.lx = fmul double %i.jv, %i.kq
  %i.ly = call double @llvm.fmuladd.f64(double %i.kj, double %i.kn, double %i.lx)
  %i.lz = fmul double %i.ly, %i.lh
  %i.ma = shufflevector <2 x double> %i.iy, <2 x double> %i.jx, <2 x i32> <i32 1, i32 2>
  %i.mb = fmul <2 x double> %i.ma, %i.ka
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.ju, <2 x double> %i.mb)
  %i.md = fmul <2 x double> %i.mc, %i.lm
  %i.me = fmul double %i.kh, %i.ko
  %i.mf = call double @llvm.fmuladd.f64(double %i.jv, double %i.jk, double %i.me)
  %i.mg = fmul double %i.mf, %i.lh
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.nf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.nm = shufflevector <2 x double> %i.ad, <2 x double> %i.ae, <3 x i32> <i32 0, i32 3, i32 1>
  %i.nn = fneg <2 x double> %i.cu
  %i.no = shufflevector <2 x double> %i.ea, <2 x double> %i.nn, <2 x i32> <i32 0, i32 3>
  %i.np = shufflevector <2 x double> %i.cr, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %bb.e

bb.d:                                             ; preds = %bb.m
  %i.nq = load ptr, ptr %i.ia, align 8, !tbaa !79
  %i.nr = load ptr, ptr %2, align 8, !tbaa !76
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = sdiv exact i64 %i.nu, 208
  %i.nw = trunc i64 %i.nv to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.n

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.m
  %.0319.idx595 = phi i64 [ 0, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ], [ %.0319.add, %bb.m ] ; 2 uses
  %.0319.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0319.idx595
  %i.nx = load double, ptr %.0319.ptr, align 8, !tbaa !61 ; 6 uses
  %i.ny = fcmp ugt double %i.nx, 0.000000e+00
  br i1 %i.ny, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.nz = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = insertelement <2 x double> <double -2.000000e+00, double poison>, double %i.nx, i64 1
  %i.oc = fmul <2 x double> %i.oa, %i.ob          ; 2 uses
  %i.od = extractelement <2 x double> %i.oc, i64 1 ; 2 uses
  %i.oe = fadd double %i.od, 1.000000e+00
  %i.of = fneg double %i.od
  %i.og = fmul double %i.cs, %i.of
  %i.oh = fmul double %i.ir, %i.nx
  %i.oi = insertelement <2 x double> %i.cr, double %i.oe, i64 0
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.no, <2 x double> %i.oi) ; 3 uses
  %i.ok = extractelement <2 x double> %i.oj, i64 0
  %i.ol = fneg double %i.nx
  %i.om = insertelement <2 x double> %i.oj, double 0.000000e+00, i64 1
  %i.on = insertelement <2 x double> poison, double %i.og, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.ol, i64 1
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.om, <2 x double> %i.oo)
  %i.oq = fmul <2 x double> %i.in, %i.op
  %i.or = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.os = insertelement <2 x double> %i.or, double %19, i64 1
  %i.ot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.os, <2 x double> %i.oq) ; 2 uses
  %i.ou = call double @sqrt(double noundef %i.ok) #20
  %i.ov = extractelement <2 x double> %i.ot, i64 1
  %i.ow = call double @llvm.fmuladd.f64(double %i.ij, double %i.ov, double %i.oh)
  %i.ox = shufflevector <2 x double> %i.ot, <2 x double> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.oy = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.ou, i64 1
  %i.pa = fdiv <2 x double> %i.ox, %i.oz          ; 3 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 1 ; 10 uses
  %i.pc = fmul double %i.nx, %i.pb                ; 10 uses
  %i.pd = extractelement <2 x double> %i.pa, i64 0
  %i.pe = fmul double %i.pd, %i.pb                ; 9 uses
  %i.pf = fcmp ole double %i.pb, 0.000000e+00
  %i.pg = fcmp ole double %i.pc, 0.000000e+00
  %or.cond = or i1 %i.pf, %i.pg
  %i.ph = fcmp ole double %i.pe, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ph
  br i1 %or.cond3, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.pi = fmul double %i.pc, %i.pc
  %i.pj = call double @llvm.fmuladd.f64(double %i.pb, double %i.pb, double %i.pi)
  %i.pk = fmul double %i.pb, 2.000000e+00
  %i.pl = fneg double %i.pc
  %i.pm = fmul double %i.pk, %i.pl
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %i.eb, double %i.pj)
  %i.po = call double @sqrt(double noundef %i.pn) #20
  %i.pp = fsub double %i.po, %i.bn
  %i.pq = fdiv double %i.pp, %i.bn
  %i.pr = call double @llvm.fabs.f64(double %i.pq)
  %i.ps = load double, ptr %i.bl, align 8, !tbaa !117 ; 3 uses
  %i.pt = fcmp ogt double %i.pr, %i.ps
  br i1 %i.pt, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.pu = fmul double %i.pe, %i.pe
  %i.pv = call double @llvm.fmuladd.f64(double %i.pc, double %i.pc, double %i.pu)
  %i.pw = fmul double %i.pc, 2.000000e+00
  %i.px = fneg double %i.pe
  %i.py = fmul double %i.pw, %i.px
  %i.pz = call double @llvm.fmuladd.f64(double %i.py, double %i.ef, double %i.pv)
  %i.qa = call double @sqrt(double noundef %i.pz) #20
  %i.qb = fsub double %i.qa, %i.bp
  %i.qc = fdiv double %i.qb, %i.bp
  %i.qd = call double @llvm.fabs.f64(double %i.qc)
  %i.qe = fcmp ogt double %i.qd, %i.ps
  br i1 %i.qe, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.qf = fmul double %i.pb, %i.pb
  %i.qg = call double @llvm.fmuladd.f64(double %i.pe, double %i.pe, double %i.qf)
  %i.qh = fmul double %i.pe, 2.000000e+00
  %i.qi = fneg double %i.pb
  %i.qj = fmul double %i.qh, %i.qi
  %i.qk = call double @llvm.fmuladd.f64(double %i.qj, double %19, double %i.qg)
  %i.ql = call double @sqrt(double noundef %i.qk) #20
  %i.qm = fsub double %i.ql, %i.br
  %i.qn = fdiv double %i.qm, %i.br
  %i.qo = call double @llvm.fabs.f64(double %i.qn)
  %i.qp = fcmp ogt double %i.qo, %i.ps
  br i1 %i.qp, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.qq = fmul double %i.pb, %i.ec                ; 3 uses
  %i.qr = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qs = fmul <2 x double> %i.qr, %i.ck          ; 5 uses
  %i.qt = fmul double %i.pc, %i.dm
  %i.qu = fmul double %i.pc, %i.dk
  %i.qv = fmul double %i.pc, %i.dl
  %i.qw = fmul double %i.pe, %18
  %i.qx = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.qy = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qz = fmul <2 x double> %i.qy, %i.cn
  %i.ra = extractelement <2 x double> %i.qs, i64 0
  %i.rb = fsub double %i.qu, %i.ra
  %i.rc = fsub <2 x double> %i.qz, %i.qs          ; 4 uses
  %i.rd = extractelement <2 x double> %i.qs, i64 1
  %i.re = fsub double %i.qv, %i.rd                ; 2 uses
  %i.rf = fsub double %i.qt, %i.qq                ; 2 uses
  %i.rg = fsub double %i.qw, %i.qq                ; 2 uses
  %i.rh = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.rf, i64 1 ; 2 uses
  %i.rj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ri, <2 x double> %i.ri, <2 x double> zeroinitializer)
  %i.rk = insertelement <2 x double> %i.rc, double %i.rb, i64 1 ; 3 uses
  %i.rl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rk, <2 x double> %i.rk, <2 x double> %i.rj)
  %i.rm = shufflevector <2 x double> %i.rc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rn = insertelement <2 x double> %i.rm, double %i.re, i64 1 ; 2 uses
  %i.ro = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.rn, <2 x double> %i.rl)
  %i.rp = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ro)
  %i.rq = fdiv <2 x double> splat (double 1.000000e+00), %i.rp ; 5 uses
  %i.rr = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rs = fmul <2 x double> %i.rc, %i.rr          ; 4 uses
  %i.rt = fmul <2 x double> %i.rk, %i.rq          ; 3 uses
  %i.ru = insertelement <2 x double> %i.rc, double %i.rf, i64 0
  %i.rv = shufflevector <2 x double> %i.rq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rw = fmul <2 x double> %i.ru, %i.rv          ; 4 uses
  %i.rx = extractelement <2 x double> %i.rq, i64 0
  %i.ry = fmul double %i.rg, %i.rx                ; 4 uses
  %i.rz = extractelement <2 x double> %i.rs, i64 0
  %i.sa = extractelement <2 x double> %i.rs, i64 1 ; 2 uses
  %i.sb = fneg double %i.sa
  %i.sc = extractelement <2 x double> %i.rq, i64 1
  %i.sd = fmul double %i.re, %i.sc                ; 4 uses
  %i.se = extractelement <2 x double> %i.rw, i64 0
  %i.sf = fmul double %i.se, %i.sb
  %i.sg = shufflevector <2 x double> %i.rs, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sh = insertelement <2 x double> %i.sg, double %i.ry, i64 0
  %i.si = fneg <2 x double> %i.sh
  %i.sj = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.sk = insertelement <2 x double> %i.sj, double %i.sd, i64 1
  %i.sl = fmul <2 x double> %i.sk, %i.si
  %i.sm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rt, <2 x double> %i.rw, <2 x double> %i.sl) ; 3 uses
  %i.sn = extractelement <2 x double> %i.sm, i64 1 ; 2 uses
  %i.so = call double @llvm.fmuladd.f64(double %i.sn, double %i.sn, double 0.000000e+00)
  %i.sp = call double @llvm.fmuladd.f64(double %i.sd, double %i.ry, double %i.sf) ; 3 uses
  %i.sq = call double @llvm.fmuladd.f64(double %i.sp, double %i.sp, double %i.so)
  %i.sr = extractelement <2 x double> %i.sm, i64 0 ; 2 uses
  %i.ss = call noundef double @llvm.fmuladd.f64(double %i.sr, double %i.sr, double %i.sq)
  %sqrt.i344 = call noundef double @llvm.sqrt.f64(double %i.ss)
  %i.st = fdiv double 1.000000e+00, %sqrt.i344    ; 2 uses
  %i.su = insertelement <2 x double> poison, double %i.st, i64 0
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sw = fmul <2 x double> %i.sm, %i.sv          ; 6 uses
  %i.sx = fmul double %i.sp, %i.st                ; 4 uses
  %i.sy = extractelement <2 x double> %i.sw, i64 0 ; 2 uses
  %i.sz = fneg double %i.sy
  %i.ta = fneg double %i.sx
  %i.tb = fmul double %i.ry, %i.sz
  %i.tc = fmul double %i.sa, %i.ta
  %i.td = insertelement <2 x double> poison, double %i.tc, i64 0
  %i.te = insertelement <2 x double> %i.td, double %i.tb, i64 1
  %i.tf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.sw, <2 x double> %i.te) ; 3 uses
  %i.tg = extractelement <2 x double> %i.sw, i64 1
  %i.th = fneg double %i.tg
  %i.ti = fmul double %i.rz, %i.th
  %i.tj = call double @llvm.fmuladd.f64(double %i.ry, double %i.sx, double %i.ti) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  br i1 %i.lg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.6.0 = phi double [ %i.lp, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.sroa.9364.0 = phi double [ %i.lz, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %.sroa.12.0 = phi double [ %i.mg, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.tk = phi <2 x double> [ %i.md, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.tl = phi <2 x double> [ %i.lw, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.tm = phi <2 x double> [ %i.ln, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.tn = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.to = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.to, <2 x double> %i.tm, <2 x double> zeroinitializer)
  %i.tq = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tq, <2 x double> %i.tl, <2 x double> %i.tp)
  %i.ts = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ts, <2 x double> %i.tk, <2 x double> %i.tr)
  store <2 x double> %i.tt, ptr %3, align 16, !tbaa !61, !alias.scope !126
  %i.tu = insertelement <2 x double> %i.tn, double %i.sx, i64 1
  %i.tv = shufflevector <2 x double> %i.tm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tw = insertelement <2 x double> %i.tv, double %.sroa.6.0, i64 0
  %i.tx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> %i.tw, <2 x double> zeroinitializer)
  %i.ty = shufflevector <2 x double> %i.rw, <2 x double> %i.rt, <2 x i32> <i32 0, i32 3>
  %i.tz = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ua = insertelement <2 x double> %i.tz, double %.sroa.9364.0, i64 0
  %i.ub = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ty, <2 x double> %i.ua, <2 x double> %i.tx)
  %i.uc = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ud = insertelement <2 x double> %i.uc, double %.sroa.12.0, i64 0
  %i.ue = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.ud, <2 x double> %i.ub)
  store <2 x double> %i.ue, ptr %i.mh, align 16, !tbaa !61, !alias.scope !126
  %i.uf = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.ug = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uh = insertelement <2 x double> %i.tv, double %.sroa.6.0, i64 1
  %i.ui = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ug, <2 x double> %i.uh, <2 x double> zeroinitializer)
  %i.uj = insertelement <2 x double> %i.tz, double %.sroa.9364.0, i64 1
  %i.uk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.uj, <2 x double> %i.ui)
  %i.ul = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.um = insertelement <2 x double> %i.uc, double %.sroa.12.0, i64 1
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ul, <2 x double> %i.um, <2 x double> %i.uk)
  store <2 x double> %i.un, ptr %i.mj, align 16, !tbaa !61, !alias.scope !126
  %i.uo = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.up = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %i.tm, <2 x double> zeroinitializer)
  %i.uq = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.ur = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.us = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.tl, <2 x double> %i.up)
  %i.ut = insertelement <2 x double> poison, double %i.tj, i64 0
  %i.uu = shufflevector <2 x double> %i.ut, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.tk, <2 x double> %i.us)
  store <2 x double> %i.uv, ptr %i.ml, align 16, !tbaa !61, !alias.scope !126
  %i.uw = call double @llvm.fmuladd.f64(double %i.sy, double %.sroa.6.0, double 0.000000e+00)
  %i.ux = call double @llvm.fmuladd.f64(double %i.sd, double %.sroa.9364.0, double %i.uw)
  %i.uy = call double @llvm.fmuladd.f64(double %i.tj, double %.sroa.12.0, double %i.ux)
  store double %i.uy, ptr %i.mm, align 16, !tbaa !61, !alias.scope !126
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 -1056833530, ptr %5, align 8, !tbaa !88
  store ptr %3, ptr %i.mo, align 8, !tbaa !91
  store i64 12884901891, ptr %i.mn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 -1040056314, ptr %6, align 8, !tbaa !88
  store ptr %4, ptr %i.mp, align 8, !tbaa !91
  store i64 12884901889, ptr %i.mq, align 8
  %i.uz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  call void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.uz)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 -1056833530, ptr %7, align 8, !tbaa !88
  store ptr %4, ptr %i.ms, align 8, !tbaa !91
  store i64 12884901889, ptr %i.mr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i32 -1040056314, ptr %8, align 8, !tbaa !88
  store ptr %3, ptr %i.mt, align 8, !tbaa !91
  store i64 12884901891, ptr %i.mu, align 8
  %i.va = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  call void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.va)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.vb = load <3 x double>, ptr %i.mv, align 8, !tbaa !61, !noalias !129 ; 5 uses
  %i.vc = shufflevector <3 x double> %i.vb, <3 x double> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %i.vd = load double, ptr %i.mw, align 8, !tbaa !61, !noalias !129
  %i.ve = load <2 x double>, ptr %3, align 16, !tbaa !61, !noalias !129 ; 4 uses
  %i.vf = shufflevector <3 x double> %i.vb, <3 x double> poison, <2 x i32> zeroinitializer
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.ve, <2 x double> zeroinitializer)
  %i.vh = load <2 x double>, ptr %i.mi, align 8, !tbaa !61, !noalias !129 ; 4 uses
  %i.vi = shufflevector <3 x double> %i.vb, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.vh, <2 x double> %i.vg)
  %i.vk = load <2 x double>, ptr %i.ml, align 16, !tbaa !61, !noalias !129 ; 4 uses
  %i.vl = shufflevector <3 x double> %i.vb, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vl, <2 x double> %i.vk, <2 x double> %i.vj) ; 3 uses
  store <2 x double> %i.vm, ptr %9, align 16, !tbaa !61, !alias.scope !129
  %i.vn = load double, ptr %i.mh, align 16, !tbaa !61, !noalias !129 ; 4 uses
  %i.vo = load double, ptr %i.mk, align 8, !tbaa !61, !noalias !129 ; 4 uses
  %i.vp = load double, ptr %i.mm, align 16, !tbaa !61, !noalias !129 ; 4 uses
  %i.vq = load <2 x double>, ptr %i.my, align 8, !tbaa !61, !noalias !129 ; 2 uses
  %i.vr = shufflevector <2 x double> %i.ve, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 0> ; 2 uses
  %i.vs = shufflevector <3 x double> %i.vb, <3 x double> %i.vr, <2 x i32> <i32 0, i32 3>
  %i.vt = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vu = insertelement <2 x double> %i.vt, double %i.vn, i64 0
  %i.vv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vs, <2 x double> %i.vu, <2 x double> zeroinitializer)
  %i.vw = insertelement <2 x double> %i.vq, double %i.vd, i64 0
  %i.vx = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vy = insertelement <2 x double> %i.vx, double %i.vo, i64 0
  %i.vz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vw, <2 x double> %i.vy, <2 x double> %i.vv)
  %i.wa = shufflevector <2 x double> %i.vk, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 0> ; 2 uses
  %i.wb = shufflevector <3 x double> %i.vc, <3 x double> %i.wa, <2 x i32> <i32 0, i32 3>
  %i.wc = load <2 x double>, ptr %i.mz, align 8, !tbaa !61, !noalias !129 ; 3 uses
  %i.wd = insertelement <2 x double> %i.wc, double %i.vp, i64 0
  %i.we = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wb, <2 x double> %i.wd, <2 x double> %i.vz) ; 3 uses
  store <2 x double> %i.we, ptr %i.mx, align 16, !tbaa !61, !alias.scope !129
  %i.wf = shufflevector <2 x double> %i.ve, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wg = insertelement <2 x double> %i.wf, double %i.vn, i64 1
  %i.wh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.wg, <2 x double> zeroinitializer)
  %i.wi = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wj = insertelement <2 x double> %i.vx, double %i.vo, i64 1
  %i.wk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wi, <2 x double> %i.wj, <2 x double> %i.wh)
  %i.wl = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wm = shufflevector <2 x double> %i.vk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wn = insertelement <2 x double> %i.wm, double %i.vp, i64 1
  %i.wo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.wn, <2 x double> %i.wk) ; 3 uses
  store <2 x double> %i.wo, ptr %i.na, align 16, !tbaa !61, !alias.scope !129
  %i.wp = load <3 x double>, ptr %i.nb, align 8, !tbaa !61, !noalias !129 ; 5 uses
  %i.wq = load double, ptr %i.nc, align 8, !tbaa !61, !noalias !129
  %i.wr = shufflevector <3 x double> %i.wp, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ws = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wr, <2 x double> %i.ve, <2 x double> zeroinitializer)
  %i.wt = shufflevector <3 x double> %i.wp, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wt, <2 x double> %i.vh, <2 x double> %i.ws)
  %i.wv = shufflevector <3 x double> %i.wp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
end_hunk_0
