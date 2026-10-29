Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/colorwheel?download=true
inline.NumInlined: 100
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7nanogui10ColorWheel18mouse_button_eventERKNS_5ArrayIiLm2EEEibi:bb.a
  %i.e = icmp eq i32 %2, 0
  %or.cond.not = and i1 %i.e, %i.d
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN7nanogui10ColorWheel15adjust_positionERKNS_5ArrayIiLm2EEENS0_6RegionE(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 3) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.f, ptr %i.g, align 16, !tbaa !51
  %i.h = icmp ne i32 %i.f, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.i, align 16, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ true, %bb.d ], [ %i.h, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN7nanogui10ColorWheel15adjust_positionERKNS_5ArrayIiLm2EEENS0_6RegionE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"class.nanogui::Color", align 8    ; 5 uses
  %4 = alloca %"class.nanogui::Color", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !50
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !50
  %i.d = sub nsw <2 x i32> %i.b, %i.c
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load <2 x i32>, ptr %i.f, align 16, !tbaa !50
  %i.h = sitofp <2 x i32> %i.g to <2 x float>     ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.j = fmul nnan float %i.i, 5.000000e-01
  %i.k = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %i.l = fmul nnan float %i.k, 5.000000e-01
  %i.m = fcmp olt float %i.i, %i.k
  %i.n = select i1 %i.m, float %i.i, float %i.k
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float -5.000000e+00) ; 2 uses
  %i.p = fmul nnan float %i.o, 7.500000e-01       ; 2 uses
  %i.q = extractelement <2 x float> %i.e, i64 0
  %i.r = fsub float %i.q, %i.j                    ; 4 uses
  %i.s = extractelement <2 x float> %i.e, i64 1
  %i.t = fsub float %i.s, %i.l                    ; 5 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %i.w = tail call noundef float @sqrtf(float noundef %i.v) #13 ; 2 uses
  %i.x = and i32 %2, 2
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = fcmp ult float %i.w, %i.p
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = fcmp ole float %i.w, %i.o
  %i.aa = icmp eq i32 %2, 2
  %or.cond = or i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.e, label %bb.m

bb.d:                                             ; preds = %bb.b
  %.old1 = icmp eq i32 %2, 2
  br i1 %.old1, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ab = tail call noundef float @atan2f(float noundef %i.t, float noundef %i.r) #13
  %i.ac = fdiv float %i.ab, f0x40C90FDB           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ae = fcmp olt float %i.ac, 0.000000e+00
  %i.af = fadd float %i.ac, 1.000000e+00
  %storemerge = select i1 %i.ae, float %i.af, float %i.ac ; 4 uses
  store float %storemerge, ptr %i.ad, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !15 ; 3 uses
  %.not111 = icmp eq ptr %i.ah, null
  br i1 %.not111, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ai = fcmp olt float %storemerge, 0.000000e+00
  %i.aj = fadd float %storemerge, 1.000000e+00
  %.036.i.i = select i1 %i.ai, float %i.aj, float %storemerge ; 2 uses
  %i.ak = fmul float %.036.i.i, 6.000000e+00
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  %i.am = sitofp i32 %i.al to float
  %i.an = fneg float %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %.036.i.i, float 6.000000e+00, float %i.an) ; 2 uses
  %i.ap = fsub float 1.000000e+00, %i.ao          ; 3 uses
  %i.aq = fadd float %i.ao, -1.000000e+00
  %i.ar = fadd float %i.aq, 1.000000e+00          ; 3 uses
  %i.as = srem i32 %i.al, 6
  switch i32 %i.as, label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.h:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.i:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.j:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.k:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.l:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.035.i.i = phi float [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ], [ %i.ap, %bb.h ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.j ], [ %i.ar, %bb.k ], [ 1.000000e+00, %bb.l ]
  %.034.i.i = phi float [ 0.000000e+00, %bb.f ], [ %i.ar, %bb.g ], [ 1.000000e+00, %bb.h ], [ 1.000000e+00, %bb.i ], [ %i.ap, %bb.j ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.l ]
  %.0.i.i = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ %i.ar, %bb.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.k ], [ %i.ap, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.av = load float, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %i.aw = fsub float 1.000000e+00, %i.av
  %i.ax = load float, ptr %i.au, align 4, !tbaa !46 ; 2 uses
  %i.ay = fsub float %i.aw, %i.ax
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = insertelement <4 x float> poison, float %.035.i.i, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %.034.i.i, i64 1
  %i.bd = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.i.i, i64 2
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bf = fmul <4 x float> %i.ba, %i.be
  %i.bg = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bi = fmul <4 x float> %i.bh, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.bj = fadd <4 x float> %i.bi, %i.bf
  %i.bk = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = fadd <4 x float> %i.bl, %i.bj           ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.bn, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.w

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !45 ; 4 uses
  %i.bv = fmul float %i.bu, -2.000000e+00
  %i.bw = fmul float %i.bv, f0x40490FDB           ; 2 uses
  %i.bx = tail call noundef float @sinf(float noundef %i.bw) #13 ; 2 uses
  %i.by = tail call noundef float @cosf(float noundef %i.bw) #13 ; 2 uses
  %i.bz = fneg float %i.t
  %i.ca = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.t, i64 1
  %i.cc = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.by, i64 1
  %i.ce = fmul <2 x float> %i.cb, %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bx, i64 1
  %i.ch = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ci, <2 x float> %i.ce) ; 2 uses
  %i.ck = fadd float %i.p, -6.000000e+00          ; 2 uses
  %i.cl = extractelement <2 x float> %i.cj, i64 0
  %i.cm = fsub float %i.ck, %i.cl
  %i.cn = fpext float %i.cm to double
  %i.co = extractelement <2 x float> %i.cj, i64 1
  %i.cp = fpext float %i.co to double
  %i.cq = fmul nnan float %i.ck, 3.000000e+00
  %i.cr = fpext float %i.cq to double
  %i.cs = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> <double f0x3FFBB67AE8584CAA, double f0xBFFBB67AE8584CAA>, <2 x double> %i.cv)
  %i.cx = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fdiv <2 x double> %i.cw, %i.cy          ; 3 uses
  %i.da = fptrunc <2 x double> %i.cz to <2 x float> ; 3 uses
  %i.db = extractelement <2 x float> %i.da, i64 0
  %i.dc = fsub float 1.000000e+00, %i.db
  %i.dd = extractelement <2 x float> %i.da, i64 1
  %i.de = fsub float %i.dc, %i.dd                 ; 4 uses
  %i.df = and i32 %2, 1
  %.not67 = icmp eq i32 %i.df, 0
  br i1 %.not67, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dg = fcmp ole float %i.de, 1.000000e+00
  %i.dh = fcmp oge float %i.de, 0.000000e+00
  %i.di = shufflevector <2 x double> %i.cz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.dj = fcmp ole <4 x double> %i.di, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000, double f0xB690000000000000>
  %i.dk = fcmp oge <4 x double> %i.di, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000, double f0xB690000000000000>
  %i.dl = shufflevector <4 x i1> %i.dj, <4 x i1> %i.dk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = freeze <4 x i1> %i.dl
  %i.dn = bitcast <4 x i1> %i.dm to i4
  %i.do = icmp eq i4 %i.dn, -1
  %op.rdx = and i1 %i.dh, %i.dg
  %op.rdx115 = select i1 %i.do, i1 %op.rdx, i1 false
  %i.dp = icmp eq i32 %2, 1
  %or.cond16 = or i1 %i.dp, %op.rdx115
  br i1 %or.cond16, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.dq = fcmp ogt <2 x double> %i.cz, splat (double f0x3690000000000000)
  %i.dr = fcmp ogt float %i.de, 0.000000e+00
  %.sroa.speculated80 = select i1 %i.dr, float %i.de, float 0.000000e+00 ; 2 uses
  %i.ds = fcmp ogt float %.sroa.speculated80, 1.000000e+00
  %.sroa.speculated = select i1 %i.ds, float 1.000000e+00, float %.sroa.speculated80
  %i.dt = select <2 x i1> %i.dq, <2 x float> %i.da, <2 x float> zeroinitializer ; 2 uses
  %i.du = fcmp ogt <2 x float> %i.dt, splat (float 1.000000e+00)
  %i.dv = select <2 x i1> %i.du, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dt ; 3 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dv, %shift
  %i.dw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dx = fadd float %i.dw, %.sroa.speculated
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fdiv <2 x float> %i.dv, %i.dz           ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> %i.ea, ptr %i.eb, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !15 ; 3 uses
  %.not112 = icmp eq ptr %i.ed, null
  br i1 %.not112, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ee = fcmp olt float %i.bu, 0.000000e+00
  %i.ef = fadd float %i.bu, 1.000000e+00
  %.036.i.i68 = select i1 %i.ee, float %i.ef, float %i.bu ; 2 uses
  %i.eg = fmul float %.036.i.i68, 6.000000e+00
  %i.eh = fptosi float %i.eg to i32               ; 2 uses
  %i.ei = sitofp i32 %i.eh to float
  %i.ej = fneg float %i.ei
  %i.ek = tail call float @llvm.fmuladd.f32(float %.036.i.i68, float 6.000000e+00, float %i.ej) ; 2 uses
  %i.el = fsub float 1.000000e+00, %i.ek          ; 3 uses
  %i.em = fadd float %i.ek, -1.000000e+00
  %i.en = fadd float %i.em, 1.000000e+00          ; 3 uses
  %i.eo = srem i32 %i.eh, 6
  switch i32 %i.eo, label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79 [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.r:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.s:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.t:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.u:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.v:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.035.i.i69 = phi float [ 0.000000e+00, %bb.p ], [ 1.000000e+00, %bb.q ], [ %i.el, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ], [ %i.en, %bb.u ], [ 1.000000e+00, %bb.v ]
  %.034.i.i70 = phi float [ 0.000000e+00, %bb.p ], [ %i.en, %bb.q ], [ 1.000000e+00, %bb.r ], [ 1.000000e+00, %bb.s ], [ %i.el, %bb.t ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %bb.v ]
  %.0.i.i71 = phi float [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ %i.en, %bb.s ], [ 1.000000e+00, %bb.t ], [ 1.000000e+00, %bb.u ], [ %i.el, %bb.v ]
  %i.ep = extractelement <2 x float> %i.ea, i64 0
  %i.eq = fsub float 1.000000e+00, %i.ep
  %i.er = extractelement <2 x float> %i.ea, i64 1
  %i.es = fsub float %i.eq, %i.er                 ; 3 uses
  %i.et = fmul float %i.es, %.0.i.i71
  %i.eu = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul <2 x float> %i.eu, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.es, i64 1
  %i.ey = fadd <2 x float> %i.ev, %i.ex
  %i.ez = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = insertelement <2 x float> poison, float %.035.i.i69, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %.034.i.i70, i64 1
  %i.fd = fmul <2 x float> %i.fa, %i.fc
  %i.fe = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fadd <2 x float> %i.fe, %i.fd
  %i.fg = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fadd <2 x float> %i.fg, %i.ff
  %i.fi = fadd <2 x float> %i.fg, %i.ey
  store <2 x float> %i.fh, ptr %4, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.fi, ptr %i.fj, align 8
  %i.fk = load ptr, ptr %i.ed, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79, %bb.o, %bb.n, %bb.m, %bb.e, %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit
  %.1 = phi i32 [ 2, %bb.e ], [ 2, %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit ], [ 1, %bb.o ], [ 1, %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79 ], [ 0, %bb.n ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui10ColorWheel16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree nonnull readnone align 4 captures(none) %2, i32 %3, i32 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 16, !tbaa !51
  %i.c = tail call noundef i32 @_ZN7nanogui10ColorWheel15adjust_positionERKNS_5ArrayIiLm2EEENS0_6RegionE(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.b)
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { <2 x float>, <2 x float> } @_ZNK7nanogui10ColorWheel5colorEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load float, ptr %i.a, align 4, !tbaa !45 ; 3 uses
  %i.c = fcmp olt float %i.b, 0.000000e+00
  %i.d = fadd float %i.b, 1.000000e+00
  %.036.i = select i1 %i.c, float %i.d, float %i.b ; 2 uses
  %i.e = fmul float %.036.i, 6.000000e+00
  %i.f = fptosi float %i.e to i32                 ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fneg float %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %.036.i, float 6.000000e+00, float %i.h) ; 2 uses
  %i.j = fsub float 1.000000e+00, %i.i            ; 3 uses
  %i.k = fadd float %i.i, -1.000000e+00
  %i.l = fadd float %i.k, 1.000000e+00            ; 3 uses
  %i.m = srem i32 %i.f, 6
  switch i32 %i.m, label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.f:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

_ZNK7nanogui10ColorWheel7hue2rgbEf.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.035.i = phi float [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %i.j, %bb.c ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.l, %bb.f ], [ 1.000000e+00, %bb.g ]
  %.034.i = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %bb.b ], [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ], [ %i.j, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ]
  %.0.i = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.l, %bb.d ], [ 1.000000e+00, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.j, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.p = load float, ptr %i.n, align 8, !tbaa !47 ; 2 uses
  %i.q = fsub float 1.000000e+00, %i.p
  %i.r = load float, ptr %i.o, align 4, !tbaa !46 ; 2 uses
  %i.s = fsub float %i.q, %i.r
  %i.t = insertelement <4 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = insertelement <4 x float> poison, float %.035.i, i64 0
  %i.w = insertelement <4 x float> %i.v, float %.034.i, i64 1
  %i.x = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.i, i64 2
  %i.y = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.z = fmul <4 x float> %i.u, %i.y
  %i.aa = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = fmul <4 x float> %i.ab, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ad = fadd <4 x float> %i.ac, %i.z
  %i.ae = insertelement <4 x float> poison, float %i.p, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fadd <4 x float> %i.af, %i.ad           ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i31 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ah, 0
  %.fca.1.insert.i32 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i31, <2 x float> %i.ai, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { <2 x float>, <2 x float> } @_ZNK7nanogui10ColorWheel7hue2rgbEf(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(224) %0, float noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  %i.b = fadd float %1, 1.000000e+00
  %.036 = select i1 %i.a, float %i.b, float %1    ; 2 uses
  %i.c = fmul float %.036, 6.000000e+00
  %i.d = fptosi float %i.c to i32                 ; 2 uses
  %i.e = sitofp i32 %i.d to float
  %i.f = fneg float %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %.036, float 6.000000e+00, float %i.f) ; 2 uses
  %i.h = fsub float 1.000000e+00, %i.g            ; 3 uses
  %i.i = fadd float %i.g, -1.000000e+00
  %i.j = fadd float %i.i, 1.000000e+00            ; 3 uses
  %i.k = srem i32 %i.d, 6
  switch i32 %i.k, label %bb.h [
end_hunk_0
