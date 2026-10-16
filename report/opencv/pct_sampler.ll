Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pct_sampler?download=true
inline.NumInlined: 324
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl6sampleERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  %i.p = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.q = icmp eq i32 %i.p, 65536
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76, !noalias !77
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.s)
          to label %bb.g unwind label %bb.l

bb.f:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.u, align 4, !tbaa !79
  store i32 16842752, ptr %6, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.v, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  invoke void @_ZN2cv11xfeatures2d14pct_signatures15GrayscaleBitmapC1ERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %i.x)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.n

._crit_edge:                                      ; preds = %bb.r, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.i, %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv11xfeatures2d14pct_signatures15GrayscaleBitmapD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #14
  br label %_ZN2cv11xfeatures2d14pct_signatures15GrayscaleBitmapD2Ev.exit

_ZN2cv11xfeatures2d14pct_signatures15GrayscaleBitmapD2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.y

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 9 uses
  %i.bp = phi ptr [ %i.z, %.lr.ph ], [ %i.fg, %bb.r ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !26
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !26
  %i.bx = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.by = icmp slt i32 %i.bx, 2                   ; 2 uses
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 2 uses
  %i.ca = load i64, ptr %i.al, align 8
  %i.cb = mul i64 %i.ca, %indvars.iv
  %.sink.idx.i = select i1 %i.by, i64 0, i64 %i.cb
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink.idx.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cf = load <2 x float>, ptr %i.bq, align 4, !tbaa !26
  %i.cg = load <2 x i32>, ptr %i.ag, align 8, !tbaa !89
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cj = fmul <2 x float> %i.cf, %i.ci
  %i.ck = fptosi <2 x float> %i.cj to <2 x i32>   ; 3 uses
  %i.cl = sitofp <2 x i32> %i.ck to <2 x float>
  %i.cm = fdiv <2 x float> %i.cl, %i.ci           ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %i.co = call float @llvm.fmuladd.f32(float %i.cn, float %i.bt, float %i.bw)
  store float %i.co, ptr %i.cc, align 4, !tbaa !26
  %i.cp = load float, ptr %i.cd, align 4, !tbaa !26
  %i.cq = load float, ptr %i.ce, align 4, !tbaa !26
  %i.cr = load i64, ptr %i.al, align 8
  %i.cs = mul i64 %i.cr, %indvars.iv
  %.sink.idx.i51 = select i1 %i.by, i64 0, i64 %i.cs
  %.sink.i52 = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink.idx.i51
  %i.ct = getelementptr inbounds nuw i8, ptr %.sink.i52, i64 8
  %i.cu = extractelement <2 x float> %i.cm, i64 1
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cp, float %i.cq)
  store float %i.cv, ptr %i.ct, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.cw = extractelement <2 x i32> %i.ck, i64 0   ; 2 uses
  store i32 %i.cw, ptr %8, align 4, !tbaa !91
  %i.cx = extractelement <2 x i32> %i.ck, i64 1   ; 2 uses
  store i32 %i.cx, ptr %i.am, align 4, !tbaa !92
  store i32 1, ptr %i.an, align 4, !tbaa !93
  store i32 1, ptr %i.ao, align 4, !tbaa !94
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(16) %8)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i64 0, ptr %i.aq, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !80
  store ptr %7, ptr %i.ap, align 8, !tbaa !76
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 69, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store i32 0, ptr %i.ar, align 8, !tbaa !78
  store i32 0, ptr %i.as, align 4, !tbaa !79
  store i32 16842752, ptr %11, align 8, !tbaa !80
  store ptr %7, ptr %i.at, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store i64 0, ptr %i.av, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !80
  store ptr %9, ptr %i.au, align 8, !tbaa !76
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 44, i32 noundef 0, i32 noundef 0)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.cy = load ptr, ptr %i.aw, align 8, !tbaa !88 ; 2 uses
  %13 = load float, ptr %i.cy, align 4, !tbaa !26
  %14 = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.cz = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.db = load float, ptr %i.da, align 4, !tbaa !26
  %i.dc = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !26
  %i.df = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.dg = icmp slt i32 %i.df, 2                   ; 3 uses
  %i.dh = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 3 uses
  %i.di = load i64, ptr %i.al, align 8
  %i.dj = mul i64 %i.di, %indvars.iv
  %.sink.idx.i55 = select i1 %i.dg, i64 0, i64 %i.dj
  %.sink.i56 = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink.idx.i55
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink.i56, i64 12
  %i.dl = fpext float %13 to double
  %15 = fadd double %i.dl, 5.000000e-01
  %16 = call double @llvm.floor.f64(double %15)
  %17 = fdiv double %16, 1.000000e+02
  %18 = fpext float %i.db to double
  %19 = fpext float %i.de to double
  %20 = call double @llvm.fmuladd.f64(double %17, double %18, double %19)
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %23 = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %24 = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %25 = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %26 = load <2 x float>, ptr %14, align 4, !tbaa !26
  store float %21, ptr %i.dk, align 4, !tbaa !26
  %i.dm = load float, ptr %22, align 4, !tbaa !26
  %i.dn = load float, ptr %23, align 4, !tbaa !26
  %i.do = load i64, ptr %i.al, align 8
  %i.dp = mul i64 %i.do, %indvars.iv
  %.sink.idx.i57 = select i1 %i.dg, i64 0, i64 %i.dp
  %.sink.i58 = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink.idx.i57
  %i.dq = getelementptr inbounds nuw i8, ptr %.sink.i58, i64 16
  %i.dr = fpext float %i.dm to double
  %i.ds = fpext float %i.dn to double
  %27 = fpext <2 x float> %26 to <2 x double>
  %28 = fadd <2 x double> %27, splat (double 5.000000e-01)
  %29 = call <2 x double> @llvm.floor.v2f64(<2 x double> %28)
  %30 = fdiv <2 x double> %29, splat (double 1.270000e+02) ; 2 uses
  %i.dt = extractelement <2 x double> %30, i64 0
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dr, double %i.ds)
  %i.dv = fptrunc double %i.du to float
  store float %i.dv, ptr %i.dq, align 4, !tbaa !26
  %i.dw = load float, ptr %24, align 4, !tbaa !26
  %i.dx = load float, ptr %25, align 4, !tbaa !26
  %i.dy = load i64, ptr %i.al, align 8
  %i.dz = mul i64 %i.dy, %indvars.iv
  %.sink.idx.i59 = select i1 %i.dg, i64 0, i64 %i.dz
  %.sink.i60 = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sink.idx.i59
  %i.ea = getelementptr inbounds nuw i8, ptr %.sink.i60, i64 20
  %i.eb = fpext float %i.dw to double
  %i.ec = fpext float %i.dx to double
  %31 = extractelement <2 x double> %30, i64 1
  %i.ed = call double @llvm.fmuladd.f64(double %31, double %i.eb, double %i.ec)
  %i.ee = fptrunc double %i.ed to float
  store float %i.ee, ptr %i.ea, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !26
  %i.ef = load i32, ptr %i.ax, align 4, !tbaa !38
  invoke void @_ZN2cv11xfeatures2d14pct_signatures15GrayscaleBitmap18getContrastEntropyEiiRfS3_i(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %i.cw, i32 noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.ef)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.eg = load float, ptr %i.a, align 4, !tbaa !26
  %i.eh = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !26
  %i.ek = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load float, ptr %i.el, align 4, !tbaa !26
  %i.en = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.eo = icmp slt i32 %i.en, 2                   ; 2 uses
  %i.ep = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 2 uses
  %i.eq = load i64, ptr %i.al, align 8
  %i.er = mul i64 %i.eq, %indvars.iv
  %.sink.idx.i61 = select i1 %i.eo, i64 0, i64 %i.er
  %.sink.i62 = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sink.idx.i61
  %i.es = getelementptr inbounds nuw i8, ptr %.sink.i62, i64 24
  %i.et = fdiv float %i.eg, 2.500000e+01
  %i.eu = call float @llvm.fmuladd.f32(float %i.et, float %i.ej, float %i.em)
  store float %i.eu, ptr %i.es, align 4, !tbaa !26
  %i.ev = load float, ptr %i.b, align 4, !tbaa !26
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !26
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !26
  %i.fa = load i64, ptr %i.al, align 8
  %i.fb = mul i64 %i.fa, %indvars.iv
  %.sink.idx.i63 = select i1 %i.eo, i64 0, i64 %i.fb
  %.sink.i64 = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sink.idx.i63
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink.i64, i64 28
  %i.fd = fmul float %i.ev, 2.500000e-01
  %i.fe = call float @llvm.fmuladd.f32(float %i.fd, float %i.ex, float %i.ez)
  store float %i.fe, ptr %i.fc, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = shl i64 %i.fj, 29
  %i.fl = ashr i64 %i.fk, 32
  %i.fm = icmp slt i64 %indvars.iv.next, %i.fl
  br i1 %i.fm, label %bb.n, label %._crit_edge, !llvm.loop !72

bb.s:                                             ; preds = %bb.n
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.w

bb.u:                                             ; preds = %bb.p
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pn40.pn = phi { ptr, i32 } [ %i.fo, %bb.t ], [ %i.fp, %bb.u ], [ %i.fq, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.w ], [ %i.fn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv11xfeatures2d14pct_signatures15GrayscaleBitmapD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.m
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.x ], [ %i.bo, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.l
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.y ], [ %i.bn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.k
  %.pn40.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn, %bb.z ], [ %i.bm, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl14getSampleCountEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl16getGrayscaleBitsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl15getWindowRadiusEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl10getWeightXEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !26
  ret float %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl10getWeightYEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !26
  ret float %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl10getWeightLEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !26
  ret float %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl10getWeightAEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !26
  ret float %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl10getWeightBEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !26
  ret float %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d14pct_signatures15PCTSampler_Impl17getWeightContrastEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
end_hunk_0
