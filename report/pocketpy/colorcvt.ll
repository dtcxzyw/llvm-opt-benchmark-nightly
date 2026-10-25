Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/colorcvt?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@colorcvt_srgb_to_hsv:bb.a
  br label %srgb_to_hsv.exit

srgb_to_hsv.exit:                                 ; preds = %bb.d, %bb.j
  %.sroa.042.0.i = phi <2 x float> [ %i.aq, %bb.j ], [ zeroinitializer, %bb.d ]
  tail call void @py_newvec3(ptr noundef %i.d, <2 x float> %.sroa.042.0.i, float %i.j) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %srgb_to_hsv.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %srgb_to_hsv.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @colorcvt_hsv_to_srgb(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %0) #3
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #3
  br i1 %i.b, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { <2 x float>, float } @py_tovec3(ptr noundef %1) #3 ; 2 uses
  %.fca.0.extract7 = extractvalue { <2 x float>, float } %i.c, 0 ; 2 uses
  %.fca.1.extract8 = extractvalue { <2 x float>, float } %i.c, 1 ; 11 uses
  %i.d = tail call ptr (...) @py_retval() #3
  %.sroa.036.4.vec.extract.i = extractelement <2 x float> %.fca.0.extract7, i64 1 ; 4 uses
  %i.e = fcmp oeq float %.sroa.036.4.vec.extract.i, 0.000000e+00
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.037.0.vec.insert.i = insertelement <2 x float> poison, float %.fca.1.extract8, i64 0
  %.sroa.037.4.vec.insert.i = shufflevector <2 x float> %.sroa.037.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %hsv_to_srgb.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.036.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract7, i64 0
  %i.f = fmul float %.sroa.036.0.vec.extract.i, 6.000000e+00 ; 2 uses
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = sitofp i32 %i.g to float
  %i.i = fsub float %i.f, %i.h                    ; 2 uses
  %i.j = fsub float 1.000000e+00, %.sroa.036.4.vec.extract.i
  %i.k = fmul float %.fca.1.extract8, %i.j        ; 6 uses
  %i.l = fmul float %.sroa.036.4.vec.extract.i, %i.i
  %i.m = fsub float 1.000000e+00, %i.l
  %i.n = fmul float %.fca.1.extract8, %i.m        ; 3 uses
  %i.o = fsub float 1.000000e+00, %i.i
  %i.p = fmul float %.sroa.036.4.vec.extract.i, %i.o
  %i.q = fsub float 1.000000e+00, %i.p
  %i.r = fmul float %.fca.1.extract8, %i.q        ; 3 uses
  %i.s = srem i32 %i.g, 6
  switch i32 %i.s, label %bb.m [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %.sroa.037.0.vec.insert40.i = insertelement <2 x float> poison, float %.fca.1.extract8, i64 0
  %.sroa.037.4.vec.insert52.i = insertelement <2 x float> %.sroa.037.0.vec.insert40.i, float %i.r, i64 1
  br label %hsv_to_srgb.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.037.0.vec.insert42.i = insertelement <2 x float> poison, float %i.n, i64 0
  %.sroa.037.4.vec.insert54.i = insertelement <2 x float> %.sroa.037.0.vec.insert42.i, float %.fca.1.extract8, i64 1
  br label %hsv_to_srgb.exit

bb.i:                                             ; preds = %bb.f
  %.sroa.037.0.vec.insert44.i = insertelement <2 x float> poison, float %i.k, i64 0
  %.sroa.037.4.vec.insert56.i = insertelement <2 x float> %.sroa.037.0.vec.insert44.i, float %.fca.1.extract8, i64 1
  br label %hsv_to_srgb.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.037.0.vec.insert46.i = insertelement <2 x float> poison, float %i.k, i64 0
  %.sroa.037.4.vec.insert58.i = insertelement <2 x float> %.sroa.037.0.vec.insert46.i, float %i.n, i64 1
  br label %hsv_to_srgb.exit

bb.k:                                             ; preds = %bb.f
  %.sroa.037.0.vec.insert48.i = insertelement <2 x float> poison, float %i.r, i64 0
  %.sroa.037.4.vec.insert60.i = insertelement <2 x float> %.sroa.037.0.vec.insert48.i, float %i.k, i64 1
  br label %hsv_to_srgb.exit

bb.l:                                             ; preds = %bb.f
  %.sroa.037.0.vec.insert50.i = insertelement <2 x float> poison, float %.fca.1.extract8, i64 0
  %.sroa.037.4.vec.insert62.i = insertelement <2 x float> %.sroa.037.0.vec.insert50.i, float %i.k, i64 1
  br label %hsv_to_srgb.exit

bb.m:                                             ; preds = %bb.f
  unreachable

hsv_to_srgb.exit:                                 ; preds = %bb.e, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.037.1.i = phi <2 x float> [ %.sroa.037.4.vec.insert.i, %bb.e ], [ %.sroa.037.4.vec.insert52.i, %bb.g ], [ %.sroa.037.4.vec.insert54.i, %bb.h ], [ %.sroa.037.4.vec.insert56.i, %bb.i ], [ %.sroa.037.4.vec.insert58.i, %bb.j ], [ %.sroa.037.4.vec.insert60.i, %bb.k ], [ %.sroa.037.4.vec.insert62.i, %bb.l ]
  %.sroa.15.1.i = phi float [ %.fca.1.extract8, %bb.e ], [ %i.k, %bb.g ], [ %i.k, %bb.h ], [ %i.r, %bb.i ], [ %.fca.1.extract8, %bb.j ], [ %.fca.1.extract8, %bb.k ], [ %i.n, %bb.l ]
  tail call void @py_newvec3(ptr noundef %i.d, <2 x float> %.sroa.037.1.i, float %.sroa.15.1.i) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %hsv_to_srgb.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %hsv_to_srgb.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @colorcvt_oklch_to_linear_srgb(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %0) #3
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #3
  br i1 %i.b, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { <2 x float>, float } @py_tovec3(ptr noundef %1) #3 ; 2 uses
  %.fca.0.extract7 = extractvalue { <2 x float>, float } %i.c, 0 ; 3 uses
  %.fca.1.extract8 = extractvalue { <2 x float>, float } %i.c, 1
  %i.d = tail call ptr (...) @py_retval() #3
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract7, i64 1 ; 4 uses
  %i.e = fpext float %.sroa.03.4.vec.extract.i.i to double
  %i.f = fpext float %.fca.1.extract8 to double
  %i.g = fmul double %i.f, f0x3F91DF46A2529D39    ; 10 uses
  %i.h = tail call double @dmath_cos(double noundef %i.g) #3
  %i.i = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract7, i64 0
  %i.j = fpext float %.sroa.020.0.vec.extract.i.i to double ; 3 uses
  %i.k = insertelement <2 x double> poison, double %i.h, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.i, i64 1
  %i.m = insertelement <2 x double> poison, double %i.e, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.l, %i.n
  %i.p = fptrunc <2 x double> %i.o to <2 x float>
  %i.q = fpext <2 x float> %i.p to <2 x double>   ; 3 uses
  %i.r = fmul <2 x double> %i.q, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fadd double %i.s, %i.j
  %i.u = extractelement <2 x double> %i.r, i64 1
  %i.v = fadd double %i.u, %i.t                   ; 3 uses
  %i.w = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.w, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.y = insertelement <2 x double> poison, double %i.j, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fsub <2 x double> %i.z, %i.x
  %i.ab = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.ab, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.ad = fsub <2 x double> %i.aa, %i.ac          ; 3 uses
  %i.ae = fmul double %i.v, %i.v
  %i.af = fmul double %i.v, %i.ae                 ; 2 uses
  %i.ag = fmul <2 x double> %i.ad, %i.ad
  %i.ah = fmul <2 x double> %i.ad, %i.ag          ; 3 uses
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.aj = fmul double %i.af, f0x3FF44B85A0000000
  %i.ak = extractelement <2 x double> %i.ah, i64 0
  %i.al = fmul double %i.ak, f0x4004E0C880000000
  %i.am = fsub double %i.al, %i.aj
  %i.an = insertelement <4 x double> poison, double %i.af, i64 0
  %i.ao = insertelement <4 x double> %i.an, double %i.am, i64 1
  %i.ap = shufflevector <4 x double> %i.ao, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.aq = fmul <4 x double> %i.ap, <double f0x40104E9560000000, double 1.000000e+00, double f0xBF712FEA60000000, double f0x40104E9560000000>
  %i.ar = fmul <4 x double> %i.ai, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.as = fsub <4 x double> %i.aq, %i.ar
  %.fr = freeze <4 x double> %i.as                ; 3 uses
  %i.at = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x double> %i.at, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aw = shufflevector <4 x double> %i.av, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.ax = fadd <4 x double> %.fr, %i.aw           ; 4 uses
  %i.ay = extractelement <4 x double> %.fr, i64 1
  %i.az = shufflevector <4 x double> %i.ax, <4 x double> %.fr, <2 x i32> <i32 0, i32 5>
  %i.ba = fcmp ole <4 x double> %i.ax, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.bb = fcmp oge <4 x double> %i.ax, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.bc = shufflevector <4 x i1> %i.ba, <4 x i1> %i.bb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bd = fcmp oge double %i.ay, f0xB690000000000000
  %i.be = extractelement <4 x double> %i.ax, i64 2 ; 2 uses
  %i.bf = fcmp oge double %i.be, f0xB690000000000000
  %i.bg = freeze <4 x i1> %i.bc
  %i.bh = bitcast <4 x i1> %i.bg to i4
  %i.bi = icmp eq i4 %i.bh, -1
  %op.rdx23 = and i1 %i.bi, %i.bd
  %op.rdx24 = select i1 %op.rdx23, i1 %i.bf, i1 false
  br i1 %op.rdx24, label %oklch_to_linear_srgb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = tail call double @dmath_cos(double noundef %i.g) #3
  %i.bk = tail call double @dmath_sin(double noundef %i.g) #3
  %i.bl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1
  %i.bn = fmul <2 x double> %i.bm, zeroinitializer
  %i.bo = fptrunc <2 x double> %i.bn to <2 x float>
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 3 uses
  %i.bq = fmul <2 x double> %i.bp, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = fadd double %i.br, %i.j
  %i.bt = extractelement <2 x double> %i.bq, i64 1
  %i.bu = fadd double %i.bt, %i.bs                ; 3 uses
  %i.bv = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bv, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.bx = fsub <2 x double> %i.z, %i.bw
  %i.by = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x double> %i.by, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.ca = fsub <2 x double> %i.bx, %i.bz          ; 3 uses
  %i.cb = fmul double %i.bu, %i.bu
  %i.cc = fmul double %i.bu, %i.cb                ; 2 uses
  %i.cd = fmul <2 x double> %i.ca, %i.ca
  %i.ce = fmul <2 x double> %i.ca, %i.cd          ; 3 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cg = fmul double %i.cc, f0x3FF44B85A0000000
  %i.ch = extractelement <2 x double> %i.ce, i64 0
  %i.ci = fmul double %i.ch, f0x4004E0C880000000
  %i.cj = fsub double %i.ci, %i.cg
  %i.ck = insertelement <4 x double> poison, double %i.cc, i64 0
  %i.cl = insertelement <4 x double> %i.ck, double %i.cj, i64 1
  %i.cm = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cn = fmul <4 x double> %i.cm, <double f0xBF712FEA60000000, double f0x40104E9560000000, double 1.000000e+00, double f0xBF712FEA60000000>
  %i.co = fmul <4 x double> %i.cf, <double f0x3FE68267C0000000, double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000>
  %i.cp = fsub <4 x double> %i.cn, %i.co          ; 2 uses
  %i.cq = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fmul <2 x double> %i.cq, <double f0x3FFB5263C0000000, double f0x3FCD906C40000000>
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x double> %i.cs, <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.cu = fadd <4 x double> %i.cp, %i.ct          ; 4 uses
  %i.cv = extractelement <4 x double> %i.cu, i64 1 ; 2 uses
  %i.cw = fcmp oge double %i.cv, f0xB690000000000000
  %i.cx = fcmp ole <4 x double> %i.cu, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.cy = fcmp oge <4 x double> %i.cu, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.cz = shufflevector <4 x i1> %i.cx, <4 x i1> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.da = extractelement <4 x double> %i.cp, i64 2 ; 2 uses
  %i.db = fcmp oge double %i.da, f0xB690000000000000
  %i.dc = bitcast <4 x i1> %i.cz to i4
  %i.dd = icmp eq i4 %i.dc, -1
  %op.rdx21 = and i1 %i.dd, %i.cw
  %op.rdx22 = and i1 %op.rdx21, %i.db
  br i1 %op.rdx22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.de = extractelement <4 x double> %i.cu, i64 0
  %i.df = fptrunc double %i.de to float
  %i.dg = fptrunc double %i.da to float
  %i.dh = fptrunc double %i.cv to float
  %i.di = fpext float %i.dh to double
  %i.dj = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.di) #3
  %i.dk = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dj) #3
  %i.dl = fpext float %i.dg to double
  %i.dm = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dl) #3
  %i.dn = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dm) #3
  %i.do = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fpext float %i.df to double
  %i.dr = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dq) #3
  %i.ds = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dr) #3
  br label %oklch_to_linear_srgb.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.074.4.vec.insert.i = insertelement <2 x float> %.fca.0.extract7, float 0.000000e+00, i64 1 ; 2 uses
  %i.dt = tail call double @dmath_pow(double noundef 2.000000e+00, double noundef 1.300000e+01) #3
  %i.du = fdiv double f0x3FD99999A0000000, %i.dt
  %i.dv = fptrunc double %i.du to float           ; 2 uses
  %i.dw = fcmp ogt float %.sroa.03.4.vec.extract.i.i, %i.dv
  br i1 %i.dw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.dx = phi float [ %i.ge, %.lr.ph.i ], [ %.sroa.03.4.vec.extract.i.i, %bb.g ]
  %.sroa.074.0188.i = phi <2 x float> [ %.sroa.074.4.vec.insert81.i, %.lr.ph.i ], [ %.sroa.074.4.vec.insert.i, %bb.g ] ; 2 uses
  %.0187.i = phi float [ %..0.i, %.lr.ph.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.0125186.i = phi float [ %.0125..i, %.lr.ph.i ], [ %.sroa.03.4.vec.extract.i.i, %bb.g ]
  %.0127185.i = phi float [ %..0127.i, %.lr.ph.i ], [ 0.000000e+00, %bb.g ]
  %i.dy = fmul float %i.dx, 5.000000e-01
  %i.dz = fadd float %i.dy, %.0187.i              ; 5 uses
  %.sroa.074.4.vec.insert81.i = insertelement <2 x float> %.sroa.074.0188.i, float %i.dz, i64 1 ; 2 uses
  %i.ea = fpext float %i.dz to double
  %i.eb = tail call double @dmath_cos(double noundef %i.g) #3
  %i.ec = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i150.i = extractelement <2 x float> %.sroa.074.0188.i, i64 0
  %i.ed = fpext float %.sroa.020.0.vec.extract.i150.i to double ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ec, i64 1
  %i.eg = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.ef, %i.eh
  %i.ej = fptrunc <2 x double> %i.ei to <2 x float>
  %i.ek = fpext <2 x float> %i.ej to <2 x double> ; 3 uses
  %i.el = fmul <2 x double> %i.ek, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = fadd double %i.em, %i.ed
  %i.eo = extractelement <2 x double> %i.el, i64 1
  %i.ep = fadd double %i.eo, %i.en                ; 3 uses
  %i.eq = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.eq, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.es = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fsub <2 x double> %i.et, %i.er
  %i.ev = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ew = fmul <2 x double> %i.ev, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.ex = fsub <2 x double> %i.eu, %i.ew          ; 3 uses
  %i.ey = fmul double %i.ep, %i.ep
  %i.ez = fmul double %i.ep, %i.ey                ; 3 uses
  %i.fa = fmul <2 x double> %i.ex, %i.ex
  %i.fb = fmul <2 x double> %i.ex, %i.fa          ; 3 uses
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fd = fmul double %i.ez, f0x40104E9560000000
  %i.fe = fmul double %i.ez, f0x3FF44B85A0000000
  %i.ff = extractelement <2 x double> %i.fb, i64 0
  %i.fg = fmul double %i.ff, f0x4004E0C880000000
  %i.fh = fsub double %i.fg, %i.fe
  %i.fi = fmul double %i.ez, f0xBF712FEA60000000
  %i.fj = fmul <4 x double> %i.fc, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.fk = insertelement <4 x double> poison, double %i.fd, i64 0
  %i.fl = insertelement <4 x double> %i.fk, double %i.fh, i64 1
  %i.fm = insertelement <4 x double> %i.fl, double %i.fi, i64 2
  %i.fn = shufflevector <4 x double> %i.fm, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fo = fsub <4 x double> %i.fn, %i.fj
  %.fr28 = freeze <4 x double> %i.fo              ; 2 uses
  %i.fp = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fmul <2 x double> %i.fp, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.fs = shufflevector <4 x double> %i.fr, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.ft = fadd <4 x double> %.fr28, %i.fs         ; 3 uses
  %i.fu = fcmp ole <4 x double> %i.ft, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.fv = fcmp oge <4 x double> %i.ft, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.fw = shufflevector <4 x i1> %i.fu, <4 x i1> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fx = extractelement <4 x double> %.fr28, i64 1
  %i.fy = fcmp oge double %i.fx, f0xB690000000000000
  %i.fz = extractelement <4 x double> %i.ft, i64 2
  %i.ga = fcmp oge double %i.fz, f0xB690000000000000
  %i.gb = freeze <4 x i1> %i.fw
  %i.gc = bitcast <4 x i1> %i.gb to i4
  %i.gd = icmp eq i4 %i.gc, -1
  %op.rdx19 = and i1 %i.gd, %i.fy
  %op.rdx20 = select i1 %op.rdx19, i1 %i.ga, i1 false ; 3 uses
  %..0127.i = select i1 %op.rdx20, float %i.dz, float %.0127185.i ; 2 uses
  %.0125..i = select i1 %op.rdx20, float %.0125186.i, float %i.dz ; 2 uses
  %..0.i = select i1 %op.rdx20, float %i.dz, float %.0187.i ; 2 uses
  %i.ge = fsub float %.0125..i, %..0.i            ; 2 uses
  %i.gf = fcmp ogt float %i.ge, %i.dv
  br i1 %i.gf, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.gg = fpext float %..0127.i to double
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.g
  %.0127.lcssa.i = phi double [ 0.000000e+00, %bb.g ], [ %i.gg, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.074.0.lcssa.i = phi <2 x float> [ %.sroa.074.4.vec.insert.i, %bb.g ], [ %.sroa.074.4.vec.insert81.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.03.4.vec.extract.i160.i = extractelement <2 x float> %.sroa.074.0.lcssa.i, i64 1
  %i.gh = fpext float %.sroa.03.4.vec.extract.i160.i to double
  %i.gi = tail call double @dmath_cos(double noundef %i.g) #3
  %i.gj = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i164.i = extractelement <2 x float> %.sroa.074.0.lcssa.i, i64 0
  %i.gk = fpext float %.sroa.020.0.vec.extract.i164.i to double ; 5 uses
  %i.gl = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gj, i64 1
  %i.gn = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.gm, %i.go
  %i.gq = fptrunc <2 x double> %i.gp to <2 x float>
  %i.gr = fpext <2 x float> %i.gq to <2 x double> ; 3 uses
  %i.gs = fmul <2 x double> %i.gr, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0
  %i.gu = fadd double %i.gt, %i.gk
  %i.gv = extractelement <2 x double> %i.gs, i64 1
  %i.gw = fadd double %i.gv, %i.gu                ; 3 uses
  %i.gx = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %i.gx, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.gz = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fsub <2 x double> %i.ha, %i.gy
  %i.hc = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x double> %i.hc, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.he = fsub <2 x double> %i.hb, %i.hd          ; 3 uses
  %i.hf = fmul double %i.gw, %i.gw
  %i.hg = fmul double %i.gw, %i.hf                ; 2 uses
  %i.hh = fmul <2 x double> %i.he, %i.he
  %i.hi = fmul <2 x double> %i.he, %i.hh          ; 3 uses
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hk = fmul double %i.hg, f0x3FF44B85A0000000
  %i.hl = extractelement <2 x double> %i.hi, i64 0
  %i.hm = fmul double %i.hl, f0x4004E0C880000000
  %i.hn = fsub double %i.hm, %i.hk
  %i.ho = insertelement <4 x double> poison, double %i.hg, i64 0
  %i.hp = insertelement <4 x double> %i.ho, double %i.hn, i64 1
  %i.hq = shufflevector <4 x double> %i.hp, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hr = fmul <4 x double> %i.hq, <double f0x40104E9560000000, double 1.000000e+00, double f0xBF712FEA60000000, double f0x40104E9560000000>
  %i.hs = fmul <4 x double> %i.hj, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.ht = fsub <4 x double> %i.hr, %i.hs
  %.fr31 = freeze <4 x double> %i.ht              ; 3 uses
  %i.hu = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fmul <2 x double> %i.hu, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.hx = shufflevector <4 x double> %i.hw, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.hy = fadd <4 x double> %.fr31, %i.hx         ; 4 uses
  %i.hz = extractelement <4 x double> %.fr31, i64 1
  %i.ia = shufflevector <4 x double> %i.hy, <4 x double> %.fr31, <2 x i32> <i32 0, i32 5>
  %i.ib = fcmp ole <4 x double> %i.hy, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.ic = fcmp oge <4 x double> %i.hy, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.id = shufflevector <4 x i1> %i.ib, <4 x i1> %i.ic, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ie = fcmp oge double %i.hz, f0xB690000000000000
  %i.if = extractelement <4 x double> %i.hy, i64 2 ; 2 uses
  %i.ig = fcmp oge double %i.if, f0xB690000000000000
  %i.ih = freeze <4 x i1> %i.id
  %i.ii = bitcast <4 x i1> %i.ih to i4
end_hunk_0
