Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/colorcvt?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@colorcvt_srgb_to_hsv:bb.a
  %foldExtExtBinop = fsub <4 x float> %shift, %i.z
  %i.ab = extractelement <4 x float> %foldExtExtBinop, i64 2
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ac = fcmp oeq float %.sroa.041.4.vec.extract.i, %i.j
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = extractelement <4 x float> %i.z, i64 1
  %i.ae = fadd float %i.ad, 2.000000e+00
  %i.af = extractelement <4 x float> %i.z, i64 3
  %i.ag = fsub float %i.ae, %i.af
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = extractelement <4 x float> %i.z, i64 2
  %i.ai = fadd float %i.ah, 4.000000e+00
  %i.aj = extractelement <4 x float> %i.z, i64 1
  %i.ak = fsub float %i.ai, %i.aj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.0.i = phi float [ %i.ab, %bb.f ], [ %i.ag, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = fpext float %.0.i to double
  %i.am = fdiv double %i.al, 6.000000e+00
  %i.an = tail call double @dmath_fmod(double noundef %i.am, double noundef 1.000000e+00) #3
  %i.ao = fptrunc double %i.an to float
  %i.ap = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.z, <2 x i32> <i32 0, i32 4>
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
  %i.as = fsub <4 x double> %i.aq, %i.ar          ; 3 uses
  %i.at = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x double> %i.at, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.aw = shufflevector <4 x double> %i.av, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.ax = fadd <4 x double> %i.as, %i.aw          ; 4 uses
  %2 = extractelement <4 x double> %i.as, i64 1
  %i.ay = shufflevector <4 x double> %i.ax, <4 x double> %i.as, <2 x i32> <i32 0, i32 5>
  %i.az = fcmp ole <4 x double> %i.ax, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.ba = fcmp oge <4 x double> %i.ax, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.bb = shufflevector <4 x i1> %i.az, <4 x i1> %i.ba, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bc = fcmp oge double %2, f0xB690000000000000
  %i.bd = extractelement <4 x double> %i.ax, i64 2 ; 2 uses
  %i.be = fcmp oge double %i.bd, f0xB690000000000000
  %i.bf = freeze <4 x i1> %i.bb
  %i.bg = bitcast <4 x i1> %i.bf to i4
  %i.bh = icmp eq i4 %i.bg, -1
  %op.rdx23 = select i1 %i.bh, i1 %i.bc, i1 false
  %op.rdx24 = select i1 %op.rdx23, i1 %i.be, i1 false
  br i1 %op.rdx24, label %oklch_to_linear_srgb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = tail call double @dmath_cos(double noundef %i.g) #3
  %i.bj = tail call double @dmath_sin(double noundef %i.g) #3
  %i.bk = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1
  %i.bm = fmul <2 x double> %i.bl, zeroinitializer
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  %i.bo = fpext <2 x float> %i.bn to <2 x double> ; 3 uses
  %i.bp = fmul ninf <2 x double> %i.bo, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = fadd double %i.bq, %i.j
  %i.bs = extractelement <2 x double> %i.bp, i64 1
  %i.bt = fadd double %i.bs, %i.br                ; 3 uses
  %i.bu = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul ninf <2 x double> %i.bu, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.bw = fsub <2 x double> %i.z, %i.bv
  %i.bx = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul ninf <2 x double> %i.bx, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.bz = fsub <2 x double> %i.bw, %i.by          ; 3 uses
  %i.ca = fmul double %i.bt, %i.bt
  %i.cb = fmul double %i.bt, %i.ca                ; 2 uses
  %i.cc = fmul <2 x double> %i.bz, %i.bz
  %i.cd = fmul <2 x double> %i.bz, %i.cc          ; 3 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cf = fmul double %i.cb, f0x3FF44B85A0000000
  %i.cg = extractelement <2 x double> %i.cd, i64 0
  %i.ch = fmul double %i.cg, f0x4004E0C880000000
  %i.ci = fsub double %i.ch, %i.cf
  %i.cj = insertelement <4 x double> poison, double %i.cb, i64 0
  %i.ck = insertelement <4 x double> %i.cj, double %i.ci, i64 1
  %i.cl = shufflevector <4 x double> %i.ck, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cm = fmul <4 x double> %i.cl, <double f0xBF712FEA60000000, double f0x40104E9560000000, double 1.000000e+00, double f0xBF712FEA60000000>
  %i.cn = fmul <4 x double> %i.ce, <double f0x3FE68267C0000000, double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000>
  %i.co = fsub <4 x double> %i.cm, %i.cn          ; 2 uses
  %i.cp = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x double> %i.cp, <double f0x3FFB5263C0000000, double f0x3FCD906C40000000>
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x double> %i.cr, <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.ct = fadd <4 x double> %i.co, %i.cs          ; 4 uses
  %i.cu = extractelement <4 x double> %i.ct, i64 1 ; 2 uses
  %i.cv = fcmp oge double %i.cu, f0xB690000000000000
  %i.cw = fcmp ole <4 x double> %i.ct, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.cx = fcmp oge <4 x double> %i.ct, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.cy = shufflevector <4 x i1> %i.cw, <4 x i1> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cz = extractelement <4 x double> %i.co, i64 2 ; 2 uses
  %i.da = fcmp oge double %i.cz, f0xB690000000000000
  %i.db = bitcast <4 x i1> %i.cy to i4
  %i.dc = icmp eq i4 %i.db, -1
  %op.rdx21 = and i1 %i.dc, %i.cv
  %op.rdx22 = and i1 %op.rdx21, %i.da
  br i1 %op.rdx22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = extractelement <4 x double> %i.ct, i64 0
  %i.de = fptrunc double %i.dd to float
  %i.df = fptrunc double %i.cz to float
  %i.dg = fptrunc double %i.cu to float
  %i.dh = fpext float %i.dg to double
  %i.di = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dh) #3
  %i.dj = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.di) #3
  %i.dk = fpext float %i.df to double
  %i.dl = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dk) #3
  %i.dm = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dl) #3
  %i.dn = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fpext float %i.de to double
  %i.dq = tail call double @dmath_fmin(double noundef 1.000000e+00, double noundef %i.dp) #3
  %i.dr = tail call double @dmath_fmax(double noundef 0.000000e+00, double noundef %i.dq) #3
  br label %oklch_to_linear_srgb.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.074.4.vec.insert.i = insertelement <2 x float> %.fca.0.extract7, float 0.000000e+00, i64 1 ; 2 uses
  %i.ds = tail call double @dmath_pow(double noundef 2.000000e+00, double noundef 1.300000e+01) #3
  %i.dt = fdiv double f0x3FD99999A0000000, %i.ds
  %i.du = fptrunc double %i.dt to float           ; 2 uses
  %i.dv = fcmp ogt float %.sroa.03.4.vec.extract.i.i, %i.du
  br i1 %i.dv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.dw = phi float [ %i.gd, %.lr.ph.i ], [ %.sroa.03.4.vec.extract.i.i, %bb.g ]
  %.sroa.074.0188.i = phi <2 x float> [ %.sroa.074.4.vec.insert81.i, %.lr.ph.i ], [ %.sroa.074.4.vec.insert.i, %bb.g ] ; 2 uses
  %.0187.i = phi float [ %..0.i, %.lr.ph.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.0125186.i = phi float [ %.0125..i, %.lr.ph.i ], [ %.sroa.03.4.vec.extract.i.i, %bb.g ]
  %.0127185.i = phi float [ %..0127.i, %.lr.ph.i ], [ 0.000000e+00, %bb.g ]
  %i.dx = fmul float %i.dw, 5.000000e-01
  %i.dy = fadd float %i.dx, %.0187.i              ; 5 uses
  %.sroa.074.4.vec.insert81.i = insertelement <2 x float> %.sroa.074.0188.i, float %i.dy, i64 1 ; 2 uses
  %i.dz = fpext float %i.dy to double
  %i.ea = tail call double @dmath_cos(double noundef %i.g) #3
  %i.eb = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i150.i = extractelement <2 x float> %.sroa.074.0188.i, i64 0
  %i.ec = fpext float %.sroa.020.0.vec.extract.i150.i to double ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.eb, i64 1
  %i.ef = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.ee, %i.eg
  %i.ei = fptrunc <2 x double> %i.eh to <2 x float>
  %i.ej = fpext <2 x float> %i.ei to <2 x double> ; 3 uses
  %i.ek = fmul <2 x double> %i.ej, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fadd double %i.el, %i.ec
  %i.en = extractelement <2 x double> %i.ek, i64 1
  %i.eo = fadd double %i.en, %i.em                ; 3 uses
  %i.ep = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ep, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.er = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fsub <2 x double> %i.es, %i.eq
  %i.eu = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = fmul <2 x double> %i.eu, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.ew = fsub <2 x double> %i.et, %i.ev          ; 3 uses
  %i.ex = fmul double %i.eo, %i.eo
  %i.ey = fmul double %i.eo, %i.ex                ; 3 uses
  %i.ez = fmul <2 x double> %i.ew, %i.ew
  %i.fa = fmul <2 x double> %i.ew, %i.ez          ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fc = fmul double %i.ey, f0x40104E9560000000
  %i.fd = fmul double %i.ey, f0x3FF44B85A0000000
  %i.fe = extractelement <2 x double> %i.fa, i64 0
  %i.ff = fmul double %i.fe, f0x4004E0C880000000
  %i.fg = fsub double %i.ff, %i.fd
  %i.fh = fmul double %i.ey, f0xBF712FEA60000000
  %i.fi = fmul <4 x double> %i.fb, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.fj = insertelement <4 x double> poison, double %i.fc, i64 0
  %i.fk = insertelement <4 x double> %i.fj, double %i.fg, i64 1
  %i.fl = insertelement <4 x double> %i.fk, double %i.fh, i64 2
  %i.fm = shufflevector <4 x double> %i.fl, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fn = fsub <4 x double> %i.fm, %i.fi          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = fmul <2 x double> %i.fo, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.fr = shufflevector <4 x double> %i.fq, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.fs = fadd <4 x double> %i.fn, %i.fr          ; 3 uses
  %i.ft = fcmp ole <4 x double> %i.fs, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.fu = fcmp oge <4 x double> %i.fs, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.fv = shufflevector <4 x i1> %i.ft, <4 x i1> %i.fu, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fw = extractelement <4 x double> %i.fn, i64 1
  %i.fx = fcmp oge double %i.fw, f0xB690000000000000
  %i.fy = extractelement <4 x double> %i.fs, i64 2
  %i.fz = fcmp oge double %i.fy, f0xB690000000000000
  %i.ga = freeze <4 x i1> %i.fv
  %i.gb = bitcast <4 x i1> %i.ga to i4
  %i.gc = icmp eq i4 %i.gb, -1
  %op.rdx19 = select i1 %i.gc, i1 %i.fx, i1 false
  %op.rdx20 = select i1 %op.rdx19, i1 %i.fz, i1 false ; 3 uses
  %..0127.i = select i1 %op.rdx20, float %i.dy, float %.0127185.i ; 2 uses
  %.0125..i = select i1 %op.rdx20, float %.0125186.i, float %i.dy ; 2 uses
  %..0.i = select i1 %op.rdx20, float %i.dy, float %.0187.i ; 2 uses
  %i.gd = fsub float %.0125..i, %..0.i            ; 2 uses
  %i.ge = fcmp ogt float %i.gd, %i.du
  br i1 %i.ge, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.gf = fpext float %..0127.i to double
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.g
  %.0127.lcssa.i = phi double [ 0.000000e+00, %bb.g ], [ %i.gf, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.074.0.lcssa.i = phi <2 x float> [ %.sroa.074.4.vec.insert.i, %bb.g ], [ %.sroa.074.4.vec.insert81.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.03.4.vec.extract.i160.i = extractelement <2 x float> %.sroa.074.0.lcssa.i, i64 1
  %i.gg = fpext float %.sroa.03.4.vec.extract.i160.i to double
  %i.gh = tail call double @dmath_cos(double noundef %i.g) #3
  %i.gi = tail call double @dmath_sin(double noundef %i.g) #3
  %.sroa.020.0.vec.extract.i164.i = extractelement <2 x float> %.sroa.074.0.lcssa.i, i64 0
  %i.gj = fpext float %.sroa.020.0.vec.extract.i164.i to double ; 5 uses
  %i.gk = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gi, i64 1
  %i.gm = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x double> %i.gl, %i.gn
  %i.gp = fptrunc <2 x double> %i.go to <2 x float>
  %i.gq = fpext <2 x float> %i.gp to <2 x double> ; 3 uses
  %i.gr = fmul <2 x double> %i.gq, <double f0x3FD95D9920068C8A, double f0x3FCB9F751FFA8CC8> ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = fadd double %i.gs, %i.gj
  %i.gu = extractelement <2 x double> %i.gr, i64 1
  %i.gv = fadd double %i.gu, %i.gt                ; 3 uses
  %i.gw = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %i.gw, <double f0x3FBB06117FEEC881, double f0x3FB6E86F5FDF38B5>
  %i.gy = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fsub <2 x double> %i.gz, %i.gx
  %i.hb = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x double> %i.hb, <double f0x3FB058BF3FE39E34, double f0x3FF4A9ECBFFEAA8D>
  %i.hd = fsub <2 x double> %i.ha, %i.hc          ; 3 uses
  %i.he = fmul double %i.gv, %i.gv
  %i.hf = fmul double %i.gv, %i.he                ; 2 uses
  %i.hg = fmul <2 x double> %i.hd, %i.hd
  %i.hh = fmul <2 x double> %i.hd, %i.hg          ; 3 uses
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hj = fmul double %i.hf, f0x3FF44B85A0000000
  %i.hk = extractelement <2 x double> %i.hh, i64 0
  %i.hl = fmul double %i.hk, f0x4004E0C880000000
  %i.hm = fsub double %i.hl, %i.hj
  %i.hn = insertelement <4 x double> poison, double %i.hf, i64 0
  %i.ho = insertelement <4 x double> %i.hn, double %i.hm, i64 1
  %i.hp = shufflevector <4 x double> %i.ho, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hq = fmul <4 x double> %i.hp, <double f0x40104E9560000000, double 1.000000e+00, double f0xBF712FEA60000000, double f0x40104E9560000000>
  %i.hr = fmul <4 x double> %i.hi, <double f0x400A763180000000, double f0x3FD5D82D40000000, double f0x3FE68267C0000000, double f0x400A763180000000>
  %i.hs = fsub <4 x double> %i.hq, %i.hr          ; 3 uses
  %i.ht = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x double> %i.ht, <double f0x3FCD906C40000000, double f0x3FFB5263C0000000>
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.hw = shufflevector <4 x double> %i.hv, <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x i32> <i32 0, i32 5, i32 2, i32 0>
  %i.hx = fadd <4 x double> %i.hs, %i.hw          ; 4 uses
  %3 = extractelement <4 x double> %i.hs, i64 1
  %i.hy = shufflevector <4 x double> %i.hx, <4 x double> %i.hs, <2 x i32> <i32 0, i32 5>
  %i.hz = fcmp ole <4 x double> %i.hx, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.ia = fcmp oge <4 x double> %i.hx, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000>
  %i.ib = shufflevector <4 x i1> %i.hz, <4 x i1> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ic = fcmp oge double %3, f0xB690000000000000
  %i.id = extractelement <4 x double> %i.hx, i64 2 ; 2 uses
  %i.ie = fcmp oge double %i.id, f0xB690000000000000
  %i.if = freeze <4 x i1> %i.ib
  %i.ig = bitcast <4 x i1> %i.if to i4
  %i.ih = icmp eq i4 %i.ig, -1
  %op.rdx = select i1 %i.ih, i1 %i.ic, i1 false
  %op.rdx18 = select i1 %op.rdx, i1 %i.ie, i1 false
  br i1 %op.rdx18, label %oklch_to_linear_srgb.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.ii = tail call double @dmath_cos(double noundef %i.g) #3
  %i.ij = fmul double %.0127.lcssa.i, %i.ii
  %i.ik = fptrunc double %i.ij to float
  %i.il = tail call double @dmath_sin(double noundef %i.g) #3
  %i.im = fmul double %.0127.lcssa.i, %i.il
  %i.in = fptrunc double %i.im to float
  %i.io = fpext float %i.ik to double             ; 3 uses
  %i.ip = fmul double %i.io, f0x3FD95D9920068C8A
  %i.iq = fadd double %i.ip, %i.gj
  %i.ir = fmul double %i.io, f0x3FBB06117FEEC881
  %i.is = fsub double %i.gj, %i.ir
  %i.it = fmul double %i.io, f0x3FB6E86F5FDF38B5
  %i.iu = fsub double %i.gj, %i.it
  %i.iv = fpext float %i.in to double             ; 3 uses
  %i.iw = fmul double %i.iv, f0x3FCB9F751FFA8CC8
  %i.ix = fadd double %i.iw, %i.iq                ; 3 uses
  %i.iy = fmul double %i.iv, f0x3FB058BF3FE39E34
  %i.iz = fsub double %i.is, %i.iy                ; 3 uses
  %i.ja = fmul double %i.iv, f0x3FF4A9ECBFFEAA8D
  %i.jb = fsub double %i.iu, %i.ja                ; 3 uses
  %i.jc = fmul double %i.ix, %i.ix
  %i.jd = fmul double %i.iz, %i.iz
  %i.je = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jf = insertelement <2 x double> %i.je, double %i.jd, i64 1
  %i.jg = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %i.iz, i64 1
  %i.ji = fmul <2 x double> %i.jf, %i.jh          ; 4 uses
  %i.jj = fmul double %i.jb, %i.jb
  %i.jk = fmul double %i.jb, %i.jj                ; 2 uses
  %i.jl = fmul <2 x double> %i.ji, <double f0x3FF44B85A0000000, double f0x400A763180000000>
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jn = fmul <2 x double> %i.ji, <double f0x40104E9560000000, double f0x4004E0C880000000>
  %i.jo = fsub <2 x double> %i.jn, %i.jm          ; 2 uses
  %i.jp = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x double> %i.jq, <double f0x3FCD906C40000000, double f0x3FD5D82D40000000> ; 2 uses
  %i.js = fadd <2 x double> %i.jo, %i.jr
  %i.jt = fsub <2 x double> %i.jo, %i.jr
  %i.ju = shufflevector <2 x double> %i.js, <2 x double> %i.jt, <2 x i32> <i32 0, i32 3>
  %i.jv = extractelement <2 x double> %i.ji, i64 0
  %i.jw = fmul double %i.jv, f0xBF712FEA60000000
  %i.jx = extractelement <2 x double> %i.ji, i64 1
  %i.jy = fmul double %i.jx, f0x3FE68267C0000000
  %i.jz = fsub double %i.jw, %i.jy
  %i.ka = fmul double %i.jk, f0x3FFB5263C0000000
  %i.kb = fadd double %i.ka, %i.jz
  br label %oklch_to_linear_srgb.exit

oklch_to_linear_srgb.exit:                        ; preds = %bb.d, %bb.f, %._crit_edge.i, %bb.h
  %.sroa.0124.1.pn.i.in = phi <2 x double> [ %i.ay, %bb.d ], [ %i.do, %bb.f ], [ %i.ju, %bb.h ], [ %i.hy, %._crit_edge.i ]
  %.sroa.5.1.pn.in.i = phi double [ %i.bd, %bb.d ], [ %i.dr, %bb.f ], [ %i.kb, %bb.h ], [ %i.id, %._crit_edge.i ]
  %.sroa.0124.1.pn.i = fptrunc <2 x double> %.sroa.0124.1.pn.i.in to <2 x float>
  %.sroa.5.1.pn.i = fptrunc double %.sroa.5.1.pn.in.i to float
  tail call void @py_newvec3(ptr noundef %i.d, <2 x float> %.sroa.0124.1.pn.i, float %.sroa.5.1.pn.i) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %oklch_to_linear_srgb.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %oklch_to_linear_srgb.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @colorcvt_linear_srgb_to_oklch(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef %0) #3
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 73) #3
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call { <2 x float>, float } @py_tovec3(ptr noundef %1) #3 ; 2 uses
  %.fca.0.extract7 = extractvalue { <2 x float>, float } %i.c, 0
  %.fca.1.extract8 = extractvalue { <2 x float>, float } %i.c, 1
  %i.d = tail call ptr (...) @py_retval() #3
  %i.e = fpext float %.fca.1.extract8 to double   ; 2 uses
  %i.f = fpext <2 x float> %.fca.0.extract7 to <2 x double> ; 3 uses
  %i.g = insertelement <2 x double> poison, double %i.e, i64 0
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x double> %i.h, <double f0x3FAA572112081026, double f0x3FBB7E5DF0497455>
  %i.j = fmul <2 x double> %i.f, <double f0x3FCB1FA76156A7C5, double f0x3FE129A2D9E60E32>
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.l = fmul <2 x double> %i.f, <double f0x3FDA61D629F2E197, double f0x3FE5C84A69936914>
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = fadd <2 x double> %i.i, %i.m             ; 2 uses
  %i.o = fmul <2 x double> %i.f, <double f0x3FB69AFD7A044C17, double f0x3FD207AE728A2F45> ; 2 uses
  %shift = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.o, %shift
  %i.p = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.q = fmul double %i.e, f0x3FE428C9177A5EDB
  %i.r = fadd double %i.q, %i.p
  %i.s = extractelement <2 x double> %i.n, i64 0
  %i.t = tail call double @dmath_cbrt(double noundef %i.s) #3 ; 3 uses
  %i.u = extractelement <2 x double> %i.n, i64 1
  %i.v = tail call double @dmath_cbrt(double noundef %i.u) #3 ; 3 uses
  %i.w = tail call double @dmath_cbrt(double noundef %i.r) #3 ; 3 uses
  %i.x = fmul double %i.t, f0x3FCAF02A3FE8A4FA
  %i.y = fmul double %i.v, f0x3FE9655120032AAD
  %i.z = fadd double %i.x, %i.y
  %i.aa = fmul double %i.w, f0x3F70ADD9BD572B38
  %i.ab = fsub double %i.z, %i.aa
  %i.ac = fmul double %i.t, f0x3FFFA5E1BFFFDE12
  %i.ad = fmul double %i.v, f0x40036DC1BFFE5D3E
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fmul double %i.w, f0x3FDCD686FFF371A5
  %i.ag = fadd double %i.ae, %i.af
  %i.ah = fptrunc double %i.ag to float           ; 3 uses
  %i.ai = fmul double %i.t, f0x3F9A869680B729E0
  %i.aj = fmul double %i.v, f0x3FE90C776001F502
  %i.ak = fadd double %i.ai, %i.aj
  %i.al = fmul double %i.w, f0x3FE9E0AC0001353D
  %i.am = fsub double %i.ak, %i.al
  %i.an = fptrunc double %i.am to float           ; 3 uses
  %i.ao = fmul float %i.ah, %i.ah
  %i.ap = fmul float %i.an, %i.an
  %i.aq = fadd float %i.ao, %i.ap
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @dmath_sqrt(double noundef %i.ar) #3
  %i.at = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fptrunc <2 x double> %i.au to <2 x float>
  %i.aw = fpext float %i.an to double
  %i.ax = fpext float %i.ah to double
  %i.ay = tail call double @dmath_atan2(double noundef %i.aw, double noundef %i.ax) #3
  %i.az = tail call double @dmath_fmod(double noundef %i.ay, double noundef f0x401921FB54442D18) #3
  %i.ba = fptrunc double %i.az to float
  %i.bb = fpext float %i.ba to double
  %i.bc = fmul double %i.bb, f0x404CA5DC1A63C1F8
  %i.bd = fptrunc double %i.bc to float
  tail call void @py_newvec3(ptr noundef %i.d, <2 x float> %i.av, float %i.bd) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare { <2 x float>, float } @py_tovec3(ptr noundef) local_unnamed_addr #1

declare void @py_newvec3(ptr noundef, <2 x float>, float) local_unnamed_addr #1

declare ptr @py_retval(...) local_unnamed_addr #1

declare double @dmath_pow(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_fmax(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_fmin(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_fmod(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_cos(double noundef) local_unnamed_addr #1

declare double @dmath_sin(double noundef) local_unnamed_addr #1

declare double @dmath_sqrt(double noundef) local_unnamed_addr #1

declare double @dmath_atan2(double noundef, double noundef) local_unnamed_addr #1

declare double @dmath_cbrt(double noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
