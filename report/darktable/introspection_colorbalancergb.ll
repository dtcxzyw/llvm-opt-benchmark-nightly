inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@process:bb.a
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.x, splat (float f0x3FA6AB48)
  %i.at = fadd reassoc nsz arcp contract afn <2 x float> %i.ar, %i.as ; 4 uses
  %i.au = extractelement <2 x float> %i.z, i64 0
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, 2.570850e-01
  %i.aw = extractelement <2 x float> %i.ae, i64 0
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x3F5C2539
  %i.ay = fadd reassoc nsz arcp contract afn float %i.av, %i.ax
  %i.az = extractelement <2 x float> %i.at, i64 0
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, -3.106100e-02
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ay, %i.ba
  %i.bc = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float %i.r, i64 1
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, splat (float -3.106100e-02)
  %i.bf = shufflevector <2 x float> %i.z, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.bg = fmul reassoc nsz arcp contract afn <2 x float> %i.bf, splat (float 2.570850e-01)
  %i.bh = shufflevector <2 x float> %i.ae, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, splat (float f0x3F5C2539)
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bj, %i.be
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.z, <float -3.944270e-01, float 6.485600e-02>
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, <float 1.175800e+00, float -7.625000e-02>
  %i.bn = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.at, <float 1.064230e-01, float 5.590670e-01>
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.z, <float 6.485600e-02, float -3.944270e-01>
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.ae, <float -7.625000e-02, float 1.175800e+00>
  %i.br = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bq
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.at, <float 5.590670e-01, float 1.064230e-01>
  %i.bt = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, <float 1.175800e+00, float 6.485600e-02>
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, <float -7.625000e-02, float -3.944270e-01>
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = fadd reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bv
  %i.bx = insertelement <2 x float> poison, float %i.r, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.by, <float 1.064230e-01, float 5.590670e-01>
  %i.ca = fadd reassoc nsz arcp contract afn <2 x float> %i.br, %i.bs
  %i.cb = fadd reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bo
  %i.cc = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 676
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 680
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !14 ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x39837366
  %i.cj = tail call <10 x float> @llvm.masked.load.v10f32.p0(ptr nonnull align 4 %i.cd, <10 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true, i1 true, i1 true, i1 false, i1 true, i1 true>, <10 x float> poison), !tbaa !14 ; 5 uses
  %i.ck = load float, ptr %i.cf, align 4, !tbaa !14
  %i.cl = load float, ptr %i.ce, align 4, !tbaa !14
  %i.cm = shufflevector <10 x float> %i.cj, <10 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, <float f0x3F8163AD, float f0x3D26BE12>
  %i.co = shufflevector <10 x float> %i.cj, <10 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, <float f0x3BB1DE8E, float f0x3F7E5B63>
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cn
  %i.cr = shufflevector <10 x float> %i.cj, <10 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, <float f0x39837366, float f0xBC3C486C>
  %i.ct = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cs
  %i.cu = fmul reassoc nsz arcp contract afn float %i.cl, f0x3F8163AD
  %i.cv = fmul reassoc nsz arcp contract afn float %i.ck, f0x3BB1DE8E
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, %i.cu
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.ci
  %i.cy = shufflevector <10 x float> %i.cj, <10 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.cz = insertelement <4 x float> %i.cy, float 1.000000e+00, i64 3 ; 2 uses
  %i.da = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, <float f0x3D26BE12, float f0x3F8163AD, float f0x3D26BE12, float -0.000000e+00>
  %i.db = shufflevector <10 x float> %i.cj, <10 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.dc = insertelement <4 x float> %i.db, float 1.000000e+00, i64 3 ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn <4 x float> %i.dc, <float f0x3F7E5B63, float f0x3BB1DE8E, float f0x3F7E5B63, float 1.000000e+00>
  %i.de = fadd reassoc nsz arcp contract afn <4 x float> %i.dd, %i.da
  %i.df = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = insertelement <4 x float> %i.df, float 1.000000e+00, i64 3
  %i.dh = insertelement <4 x float> %i.dg, float %i.ch, i64 2 ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn <4 x float> %i.dh, <float f0xBC3C486C, float f0x39837366, float f0xBC3C486C, float -0.000000e+00>
  %i.dj = fadd reassoc nsz arcp contract afn <4 x float> %i.de, %i.di
  %i.dk = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, <float f0xBD0BDB31, float f0xBD0BDB31, float f0xBD0BDB31, float -0.000000e+00>
  %i.dl = fmul reassoc nsz arcp contract afn <4 x float> %i.dc, <float f0x3A978241, float f0x3A978241, float f0x3A978241, float 1.000000e+00>
  %i.dm = fadd reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dk
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dh, <float f0x3F44995A, float f0x3F44995A, float f0x3F44995A, float -0.000000e+00>
  %i.do = fadd reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dn
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %3, i64 64) ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.dq = load ptr, ptr %i.dp, align 16, !tbaa !63 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -72) ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -100) ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 16, i64 -120) ]
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.dy = getelementptr i8, ptr %i.dx, i64 644
  %.val = load i32, ptr %i.dy, align 4, !tbaa !66
  %i.dz = and i32 %.val, 2
  %.not = icmp eq i32 %i.dz, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !80
  %i.ec = load i32, ptr %i.eb, align 16, !tbaa !81
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !98
  %.not583 = icmp eq i32 %i.eg, 0
  br i1 %.not583, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ei = load i64, ptr %i.eh, align 16, !tbaa !102
  %i.ej = uitofp reassoc nsz arcp contract afn i64 %i.ei to double
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1432
  %i.em = load double, ptr %i.el, align 8, !tbaa !141
  %i.en = fmul reassoc nsz arcp contract afn double %i.em, %i.ej
  %i.eo = fptoui double %i.en to i64
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ep = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.eq = phi i64 [ %i.eo, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.er = shl i64 %i.eq, 1                        ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 3 uses
  %i.et = load float, ptr %i.es, align 8, !tbaa !147
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.et, float f0x3F21B3E7) ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, f0x4006541D
  %i.ew = fadd reassoc nsz arcp contract afn float %i.eu, f0x3F8FE801
  %i.ex = fdiv reassoc nsz arcp contract afn float %i.ev, %i.ew ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !148
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !149
  %i.fd = sext i32 %i.fc to i64                   ; 3 uses
  %i.fe = shl nsw i64 %i.fa, 2
  %i.ff = mul i64 %i.fe, %i.fd                    ; 2 uses
  %.not606 = icmp eq i64 %i.ff, 0
  br i1 %.not606, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.fh = load float, ptr %i.fg, align 16, !tbaa !150
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.fh) ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %sin = extractvalue { float, float } %sincos, 0
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 116 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 124 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 308
  %i.gf = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.gg = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = insertelement <2 x float> poison, float %cos, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %sin, i64 1 ; 2 uses
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ex
  %i.gl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ex
  %i.gm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ex
  br label %bb.f

._crit_edge:                                      ; preds = %bb.ae, %.thread
  tail call void @llvm.x86.sse.sfence()
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph, %bb.ae
  %.0292605 = phi i64 [ 0, %.lr.ph ], [ %i.amw, %bb.ae ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0292605
  %.sroa.0656.0.copyload = load <4 x float>, ptr %i.gn, align 16, !tbaa !14, !alias.scope !151
  %i.go = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0656.0.copyload, <4 x float> zeroinitializer) ; 4 uses
  %.sroa.0656.0.vec.extract = extractelement <4 x float> %i.go, i64 0
  %i.gp = fmul reassoc nsz arcp contract afn float %.sroa.0656.0.vec.extract, %i.bb
  %i.gq = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.gr = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, %i.bk ; 2 uses
  %i.gs = extractelement <2 x float> %i.gr, i64 0
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.gp
  %i.gu = extractelement <2 x float> %i.gr, i64 1
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gt, %i.gu ; 3 uses
  %6 = fmul reassoc nsz arcp contract afn float %i.gv, f0x3F309D77
  %i.gw = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.gx = fmul reassoc nsz arcp contract afn <2 x float> %i.gw, %i.ca
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = fmul reassoc nsz arcp contract afn <2 x float> %i.gw, %i.cb
  %i.ha = fadd reassoc nsz arcp contract afn <2 x float> %i.gz, %i.gy
  %i.hb = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hc = fmul reassoc nsz arcp contract afn <2 x float> %i.hb, %i.cc
  %i.hd = fadd reassoc nsz arcp contract afn <2 x float> %i.ha, %i.hc ; 3 uses
  %i.he = extractelement <2 x float> %i.hd, i64 0 ; 2 uses
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, %i.gv
  %i.hg = extractelement <2 x float> %i.hd, i64 1
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hf, %i.hg ; 3 uses
  %i.hi = fcmp reassoc nsz arcp contract afn oeq float %i.hh, 0.000000e+00 ; 2 uses
  %i.hj = fdiv reassoc nsz arcp contract afn float %i.gv, %i.hh
  %7 = insertelement <2 x float> poison, float %i.hh, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fdiv reassoc nsz arcp contract afn <2 x float> %i.hd, %8
  %.sroa.0.0.i = select nsz i1 %i.hi, float 0.000000e+00, float %i.hj ; 2 uses
  %10 = insertelement <2 x i1> poison, i1 %i.hi, i64 0
  %11 = shufflevector <2 x i1> %10, <2 x i1> poison, <2 x i32> zeroinitializer
  %12 = select <2 x i1> %11, <2 x float> zeroinitializer, <2 x float> %9 ; 2 uses
  %i.hk = fmul reassoc nsz arcp contract afn float %i.he, f0x3EB2573F
  %i.hl = fadd reassoc nsz arcp contract afn float %i.hk, %6 ; 2 uses
  %i.hm = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0x3F8B3A63
  %13 = fmul reassoc nsz arcp contract afn <2 x float> %12, <float f0xBF2AAAAB, float f0x3CA8E841> ; 2 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i, f0xBDB3A62D
  %14 = fmul reassoc nsz arcp contract afn <2 x float> %12, <float f0x3FD55555, float f0xBD53224F> ; 2 uses
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hm, f0xBE604727
  %15 = extractelement <2 x float> %13, i64 0
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, %15
  %16 = extractelement <2 x float> %13, i64 1
  %17 = fadd reassoc nsz arcp contract afn float %i.hp, %16 ; 2 uses
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hn, -5.437140e-01
  %18 = extractelement <2 x float> %14, i64 0
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, %18
  %19 = extractelement <2 x float> %14, i64 1
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, %19 ; 2 uses
  %i.ht = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.hs, float noundef %17) #25 ; 5 uses
  %i.hu = fcmp reassoc nsz arcp contract afn une float %i.ht, 0.000000e+00 ; 2 uses
  %i.hv = fdiv reassoc nsz arcp contract afn float %17, %i.ht
  %i.hw = select reassoc nsz arcp contract afn i1 %i.hu, float %i.hv, float 1.000000e+00
  %i.hx = fdiv reassoc nsz arcp contract afn float %i.hs, %i.ht
  %i.hy = select reassoc nsz arcp contract afn i1 %i.hu, float %i.hx, float 0.000000e+00
  %i.hz = fcmp reassoc nsz arcp contract afn ogt float %i.hl, 0.000000e+00
  %i.ia = select reassoc nsz arcp contract afn i1 %i.hz, float %i.hl, float 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ib = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ia, float f0x3ED1FB53)
  %i.ic = load float, ptr %i.fi, align 8, !tbaa !155
  %i.id = load float, ptr %i.fj, align 16, !tbaa !156
  %i.ie = load float, ptr %i.fk, align 16, !tbaa !157
  %i.if = load float, ptr %i.fl, align 16, !tbaa !158 ; 2 uses
  %i.ig = fsub reassoc nsz arcp contract afn float %i.ib, %i.if ; 3 uses
  %i.ih = fdiv reassoc nsz arcp contract afn float %i.ig, %i.if ; 2 uses
  %i.ii = fneg reassoc nsz arcp contract afn float %i.id
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ih, %i.ic
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ih, %i.ii
  %i.il = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ij)
  %i.im = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ik)
  %i.in = insertelement <2 x float> poison, float %i.im, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.il, i64 1
  %i.ip = fadd reassoc nsz arcp contract afn <2 x float> %i.io, splat (float 1.000000e+00)
  %i.iq = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ip ; 6 uses
  %i.ir = extractelement <2 x float> %i.iq, i64 1 ; 6 uses
  %i.is = extractelement <2 x float> %i.iq, i64 0 ; 5 uses
  %i.it = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.iq ; 4 uses
  %i.iu = fmul reassoc nsz arcp contract afn float %i.ie, -2.500000e-01
  %i.iv = fmul reassoc nsz arcp contract afn float %i.ig, %i.ig
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, %i.iu
  %i.ix = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.iw)
  %shift = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.it, %shift ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, 8.000000e+00
  %foldExtExtBinop758 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.iz = extractelement <2 x float> %foldExtExtBinop758, i64 0
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iy ; 6 uses
  store float %i.ir, ptr %i.a, align 16, !tbaa !14
  store float %i.ja, ptr %i.fm, align 4, !tbaa !14
  %i.jb = insertelement <2 x float> %i.iq, float 0.000000e+00, i64 1
  store <2 x float> %i.jb, ptr %i.fn, align 8, !tbaa !14
  %i.jc = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jd, %i.gi ; 2 uses
  %i.jf = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = fmul reassoc nsz arcp contract afn <2 x float> %i.jg, %i.gj ; 2 uses
  %i.ji = fsub reassoc nsz arcp contract afn <2 x float> %i.je, %i.jh ; 2 uses
  %i.jj = fadd reassoc nsz arcp contract afn <2 x float> %i.je, %i.jh ; 2 uses
  %i.jk = shufflevector <2 x float> %i.ji, <2 x float> %i.jj, <2 x i32> <i32 0, i32 3>
  %i.jl = load float, ptr %i.fo, align 16, !tbaa !159
  %i.jm = load float, ptr %i.du, align 16, !tbaa !14
  %i.jn = fmul reassoc nsz arcp contract afn float %i.ir, %i.jm
  %i.jo = load float, ptr %i.fp, align 8, !tbaa !14
  %i.jp = fmul reassoc nsz arcp contract afn float %i.ja, %i.jo
  %i.jq = load float, ptr %i.fq, align 16, !tbaa !14
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jq, %i.is
  %i.js = load float, ptr %i.fr, align 16, !tbaa !160 ; 2 uses
  %i.jt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.js)
  %i.ju = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ht, float %i.jt)
  %i.jv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ju
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, %i.js
  %20 = fadd reassoc nsz arcp contract afn float %i.jl, 1.000000e+00
  %21 = fadd reassoc nsz arcp contract afn float %20, %i.jn
  %i.jx = fadd reassoc nsz arcp contract afn float %21, %i.jr
  %i.jy = fadd reassoc nsz arcp contract afn float %i.jx, %i.jp
  %i.jz = fadd reassoc nsz arcp contract afn float %i.jy, %i.jw ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn ogt float %i.jz, 0.000000e+00
  %i.kb = select reassoc nsz arcp contract afn i1 %i.ka, float %i.jz, float 0.000000e+00
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.ht ; 4 uses
  %i.kd = extractelement <2 x float> %i.ji, i64 0 ; 3 uses
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kc, %i.kd
  %i.kf = fadd reassoc nsz arcp contract afn float %i.ke, f0x3E604727 ; 2 uses
  %i.kg = extractelement <2 x float> %i.jj, i64 1 ; 3 uses
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kc, %i.kg
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, 5.437140e-01 ; 2 uses
  %i.kj = fcmp reassoc nsz arcp contract afn olt float %i.kf, 0.000000e+00
  %22 = fdiv reassoc nsz arcp contract afn float f0xBE604727, %i.kd
  %23 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %22, float %i.kc)
  %.0.i = select nsz i1 %i.kj, float %23, float %i.kc ; 2 uses
  %24 = fcmp reassoc nsz arcp contract afn olt float %i.ki, 0.000000e+00
  %25 = fdiv reassoc nsz arcp contract afn float -5.437140e-01, %i.kg
  %i.kk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %25, float %.0.i)
  %.1.i = select nsz i1 %24, float %i.kk, float %.0.i ; 2 uses
  %i.kl = fadd reassoc nsz arcp contract afn float %i.ki, %i.kf
  %i.km = fcmp reassoc nsz arcp contract afn ogt float %i.kl, 1.000000e+00
  br i1 %i.km, label %bb.g, label %gamut_check_Yrg.exit

bb.g:                                             ; preds = %bb.f
  %i.kn = fadd reassoc nsz arcp contract afn float %i.kg, %i.kd
  %i.ko = fdiv reassoc nsz arcp contract afn float f0x3E72F57C, %i.kn
  %i.kp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ko, float %.1.i)
  br label %gamut_check_Yrg.exit

gamut_check_Yrg.exit:                             ; preds = %bb.f, %bb.g
  %.2.i = phi nsz float [ %i.kp, %bb.g ], [ %.1.i, %bb.f ]
  %i.kq = insertelement <2 x float> poison, float %.2.i, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.jk
  %i.kt = load <4 x float>, ptr %i.ds, align 16, !tbaa !14
  %i.ku = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kv = fmul reassoc nsz arcp contract afn <4 x float> %i.kt, %i.ku
  %i.kw = load float, ptr %i.es, align 8, !tbaa !147
  %i.kx = fadd reassoc nsz arcp contract afn <2 x float> %i.ks, <float f0x3E604727, float 5.437140e-01> ; 3 uses
  %i.ky = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.kx) ; 2 uses
  %i.kz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ky ; 2 uses
  %i.la = fmul reassoc nsz arcp contract afn <2 x float> %i.kx, <float 5.000000e-02, float 3.800000e-01>
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lc = fmul reassoc nsz arcp contract afn <2 x float> %i.kx, <float f0x3F733333, float 6.200000e-01>
  %i.ld = fadd reassoc nsz arcp contract afn <2 x float> %i.lc, %i.lb
  %i.le = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.lf, <float 0.000000e+00, float 3.000000e-02>
  %i.lh = fadd reassoc nsz arcp contract afn <2 x float> %i.ld, %i.lg ; 3 uses
  %i.li = fmul reassoc nsz arcp contract afn float %i.ky, 0.000000e+00
  %i.lj = fmul reassoc nsz arcp contract afn float %i.kz, 9.700000e-01
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %i.li
  %i.ll = extractelement <2 x float> %i.lh, i64 0
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, f0x3F309D77
  %i.ln = extractelement <2 x float> %i.lh, i64 1
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, f0x3EB2573F
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lm, %i.lo ; 2 uses
  %i.lq = fcmp reassoc nsz arcp contract afn oeq float %i.lp, 0.000000e+00
  %i.lr = fdiv reassoc nsz arcp contract afn float %i.ia, %i.lp
  %i.ls = select reassoc nsz arcp contract afn i1 %i.lq, float 0.000000e+00, float %i.lr ; 2 uses
  %i.lt = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lu = shufflevector <2 x float> %i.lt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lv = fmul reassoc nsz arcp contract afn <2 x float> %i.lu, %i.lh ; 3 uses
  %i.lw = fmul reassoc nsz arcp contract afn float %i.ls, %i.lk ; 2 uses
  %i.lx = fmul reassoc nsz arcp contract afn <2 x float> %i.lv, <float f0xBDB3A62D, float f0xBF2AAAAB>
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lz = fmul reassoc nsz arcp contract afn <2 x float> %i.lv, <float f0x3F8B3A63, float f0x3FD55555>
  %i.ma = fadd reassoc nsz arcp contract afn <2 x float> %i.lz, %i.ly
  %i.mb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.lv) ; 2 uses
  %i.mc = fmul reassoc nsz arcp contract afn float %i.lw, f0x3F83F572
  %i.md = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.me = insertelement <4 x float> %i.md, float %i.mb, i64 1
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.mg = insertelement <4 x float> <float f0x3CA8E841, float f0xBD53224F, float 0.000000e+00, float poison>, float %i.mb, i64 3 ; 2 uses
  %i.mh = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mg
  %i.mi = fadd reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mg
  %i.mj = shufflevector <4 x float> %i.mh, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.mk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mc, i64 2
  %i.ml = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.mj, %i.mm
  %i.mo = fmul reassoc nsz arcp contract afn <4 x float> %i.mj, %i.mm
  %i.mp = shufflevector <4 x float> %i.mn, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mq = load <4 x float>, ptr %i.c, align 16, !tbaa !14
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mp, %i.mq
  %i.ms = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mt = fadd reassoc nsz arcp contract afn <4 x float> %i.kv, %i.ms
  %i.mu = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mv = fmul reassoc nsz arcp contract afn <4 x float> %i.mt, %i.mu
  %i.mw = load <4 x float>, ptr %i.dr, align 16, !tbaa !14
  %i.mx = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> zeroinitializer
  %i.my = fmul reassoc nsz arcp contract afn <4 x float> %i.mw, %i.mx
  %i.mz = fadd reassoc nsz arcp contract afn <4 x float> %i.mv, %i.my
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, %i.mr ; 3 uses
  %i.nb = extractelement <4 x float> %i.na, i64 0
  %i.nc = fcmp reassoc nsz arcp contract afn olt float %i.nb, 0.000000e+00
  %i.nd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.na)
  %i.ne = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ng = fdiv reassoc nsz arcp contract afn <4 x float> %i.nd, %i.nf
  %i.nh = bitcast <4 x float> %i.ng to <4 x i32>  ; 2 uses
  %i.ni = and <4 x i32> %i.nh, splat (i32 8388607)
  %i.nj = or disjoint <4 x i32> %i.ni, splat (i32 1065353216)
  %i.nk = bitcast <4 x i32> %i.nj to <4 x float>  ; 5 uses
  %i.nl = lshr <4 x i32> %i.nh, splat (i32 23)
  %i.nm = and <4 x i32> %i.nl, splat (i32 255)
  %i.nn = add nsw <4 x i32> %i.nm, splat (i32 -127)
  %i.no = sitofp <4 x i32> %i.nn to <4 x float>
  %i.np = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.nk, splat (float f0x3D74552F)
  %i.nq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.np, splat (float f0xBEEE7397)
  %i.nr = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.nq, %i.nk
  %i.ns = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nr, splat (float f0x3FBD96DD)
  %i.nt = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ns, %i.nk
  %i.nu = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nt, splat (float f0xC02153F6)
  %i.nv = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.nu, %i.nk
  %i.nw = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nv, splat (float f0x4038D96C)
  %i.nx = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nk, splat (float -1.000000e+00)
  %i.ny = fmul reassoc nsz arcp contract afn <4 x float> %i.nw, %i.nx
  %i.nz = fadd reassoc nsz arcp contract afn <4 x float> %i.ny, %i.no
  %i.oa = load <4 x float>, ptr %i.dt, align 16, !tbaa !14
  %i.ob = fmul reassoc nsz arcp contract afn <4 x float> %i.nz, %i.oa
  %i.oc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ob, <4 x float> splat (float 1.290000e+02))
  %i.od = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oc, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.oe = fadd reassoc nsz arcp contract afn <4 x float> %i.od, splat (float -5.000000e-01)
  %i.of = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.oe)
  %i.og = sitofp reassoc nsz arcp contract afn <4 x i32> %i.of to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i = extractelement <4 x float> %i.og, i64 0
  %foldExtExtBinop766 = fsub reassoc nsz arcp contract afn <4 x float> %i.od, %i.og
  %i.oh = extractelement <4 x float> %foldExtExtBinop766, i64 0 ; 4 uses
  %i.oi = fptosi float %.sroa.014.0.vec.extract.i.i to i32
  %i.oj = shl i32 %i.oi, 23
  %i.ok = add i32 %i.oj, 1065353216
  %i.ol = fmul reassoc nsz arcp contract afn float %i.oh, f0x3C5DBE69
  %i.om = fadd reassoc nsz arcp contract afn float %i.ol, f0x3D5509F9
  %i.on = fmul reassoc nsz arcp contract afn float %i.om, %i.oh
  %i.oo = fadd reassoc nsz arcp contract afn float %i.on, f0x3E773CC5
  %i.op = fmul reassoc nsz arcp contract afn float %i.oo, %i.oh
  %i.oq = fadd reassoc nsz arcp contract afn float %i.op, f0x3F3168B3
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, %i.oh
  %i.os = fadd reassoc nsz arcp contract afn float %i.or, f0x3F800016
  %i.ot = bitcast i32 %i.ok to float
  %i.ou = fmul reassoc nsz arcp contract afn float %i.os, %i.ot ; 2 uses
  %i.ov = load float, ptr %i.es, align 8, !tbaa !147 ; 4 uses
  %i.ow = fneg reassoc nsz arcp contract afn float %i.ou
  %i.ox = select reassoc nsz arcp contract afn i1 %i.nc, float %i.ow, float %i.ou
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, %i.ov ; 3 uses
  %i.oz = fmul reassoc nsz arcp contract afn float %i.oy, f0x3F733333
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oy, 5.000000e-02
  %i.pb = shufflevector <4 x float> %i.na, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.pb, zeroinitializer
  %i.pd = shufflevector <4 x float> %i.od, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pe = shufflevector <4 x float> %i.og, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pf = fsub reassoc nsz arcp contract afn <2 x float> %i.pd, %i.pe ; 4 uses
  %i.pg = fptosi <2 x float> %i.pe to <2 x i32>
  %i.ph = shl <2 x i32> %i.pg, splat (i32 23)
  %i.pi = add <2 x i32> %i.ph, splat (i32 1065353216)
  %i.pj = fmul reassoc nsz arcp contract afn <2 x float> %i.pf, splat (float f0x3C5DBE69)
  %i.pk = fadd reassoc nsz arcp contract afn <2 x float> %i.pj, splat (float f0x3D5509F9)
  %i.pl = fmul reassoc nsz arcp contract afn <2 x float> %i.pk, %i.pf
  %i.pm = fadd reassoc nsz arcp contract afn <2 x float> %i.pl, splat (float f0x3E773CC5)
  %i.pn = fmul reassoc nsz arcp contract afn <2 x float> %i.pm, %i.pf
  %i.po = fadd reassoc nsz arcp contract afn <2 x float> %i.pn, splat (float f0x3F3168B3)
  %i.pp = fmul reassoc nsz arcp contract afn <2 x float> %i.po, %i.pf
  %i.pq = fadd reassoc nsz arcp contract afn <2 x float> %i.pp, splat (float f0x3F800016)
  %i.pr = bitcast <2 x i32> %i.pi to <2 x float>
  %i.ps = fmul reassoc nsz arcp contract afn <2 x float> %i.pq, %i.pr ; 2 uses
  %i.pt = fneg reassoc nsz arcp contract afn <2 x float> %i.ps
  %i.pu = select <2 x i1> %i.pc, <2 x float> %i.pt, <2 x float> %i.ps
  %i.pv = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.pw = shufflevector <2 x float> %i.pv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.px = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, %i.pw ; 3 uses
  %i.py = extractelement <2 x float> %i.px, i64 0 ; 2 uses
  %i.pz = fmul reassoc nsz arcp contract afn float %i.py, 3.800000e-01
  %i.qa = fadd reassoc nsz arcp contract afn float %i.pz, %i.oz
  %i.qb = extractelement <2 x float> %i.px, i64 1 ; 2 uses
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, 0.000000e+00
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qa, %i.qc ; 3 uses
  %i.qe = fmul reassoc nsz arcp contract afn <2 x float> %i.px, <float 6.200000e-01, float 3.000000e-02> ; 2 uses
  %i.qf = extractelement <2 x float> %i.qe, i64 0
  %i.qg = fadd reassoc nsz arcp contract afn float %i.qf, %i.pa
  %i.qh = extractelement <2 x float> %i.qe, i64 1
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qg, %i.qh ; 3 uses
  %i.qj = fadd reassoc nsz arcp contract afn float %i.py, %i.oy
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qj, 0.000000e+00
  %i.ql = fmul reassoc nsz arcp contract afn float %i.qb, 9.700000e-01
  %i.qm = fadd reassoc nsz arcp contract afn float %i.qk, %i.ql ; 2 uses
  %i.qn = fadd reassoc nsz arcp contract afn float %i.qi, %i.qd
  %i.qo = fadd reassoc nsz arcp contract afn float %i.qn, %i.qm ; 4 uses
  %i.qp = fcmp reassoc nsz arcp contract afn oeq float %i.qo, 0.000000e+00 ; 3 uses
  %i.qq = fdiv reassoc nsz arcp contract afn float %i.qd, %i.qo
  %i.qr = fdiv reassoc nsz arcp contract afn float %i.qi, %i.qo
  %i.qs = fdiv reassoc nsz arcp contract afn float %i.qm, %i.qo
  %.sroa.0.0.i338 = select nsz i1 %i.qp, float 0.000000e+00, float %i.qq ; 2 uses
  %.sroa.6.0.i339 = select nsz i1 %i.qp, float 0.000000e+00, float %i.qr ; 2 uses
  %.sroa.8.0.i340 = select nsz i1 %i.qp, float 0.000000e+00, float %i.qs ; 2 uses
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qd, f0x3F309D77
  %i.qu = fmul reassoc nsz arcp contract afn float %i.qi, f0x3EB2573F
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qu, %i.qt
  %i.qw = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i338, f0x3F8B3A63
  %i.qx = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i339, f0x3F2AAAAB
  %i.qy = fsub reassoc nsz arcp contract afn float %i.qw, %i.qx
  %i.qz = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i340, f0x3CA8E841
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qy, %i.qz ; 3 uses
  %i.rb = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i338, f0x3DB3A62D
  %i.rc = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i339, f0x3FD55555
  %i.rd = fsub reassoc nsz arcp contract afn float %i.rc, %i.rb
  %i.re = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i340, f0xBD53224F
  %i.rf = fadd reassoc nsz arcp contract afn float %i.rd, %i.re ; 3 uses
  %i.rg = fdiv reassoc nsz arcp contract afn float %i.qv, %i.ov ; 2 uses
  %i.rh = fcmp reassoc nsz arcp contract afn ogt float %i.rg, 0.000000e+00
  %i.ri = select reassoc nsz arcp contract afn i1 %i.rh, float %i.rg, float 0.000000e+00
  %i.rj = load float, ptr %i.fs, align 16, !tbaa !161
  %i.rk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ri, float %i.rj)
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, %i.ov
  %i.rm = load float, ptr %i.ft, align 16, !tbaa !162 ; 2 uses
  %i.rn = fdiv reassoc nsz arcp contract afn float %i.rl, %i.rm
  %i.ro = load float, ptr %i.fu, align 8, !tbaa !163
  %i.rp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rn, float %i.ro)
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.rm
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rf, %i.ra ; 2 uses
  %i.rs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.rr ; 3 uses
  %i.rt = fmul reassoc nsz arcp contract afn float %i.ra, f0x3F733333
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rf, 3.800000e-01
  %i.rv = fadd reassoc nsz arcp contract afn float %i.ru, %i.rt
  %i.rw = fmul reassoc nsz arcp contract afn float %i.rs, 0.000000e+00
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rv, %i.rw ; 2 uses
  %i.ry = fmul reassoc nsz arcp contract afn float %i.ra, 5.000000e-02
  %i.rz = fmul reassoc nsz arcp contract afn float %i.rf, 6.200000e-01
  %i.sa = fadd reassoc nsz arcp contract afn float %i.rz, %i.ry
  %i.sb = fmul reassoc nsz arcp contract afn float %i.rs, 3.000000e-02
  %i.sc = fadd reassoc nsz arcp contract afn float %i.sa, %i.sb ; 2 uses
  %i.sd = fmul reassoc nsz arcp contract afn float %i.rr, 0.000000e+00
  %i.se = fmul reassoc nsz arcp contract afn float %i.rs, 9.700000e-01
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.sd
  %i.sg = fmul reassoc nsz arcp contract afn float %i.rx, f0x3F309D77
  %i.sh = fmul reassoc nsz arcp contract afn float %i.sc, f0x3EB2573F
  %i.si = fadd reassoc nsz arcp contract afn float %i.sg, %i.sh ; 2 uses
  %i.sj = fcmp reassoc nsz arcp contract afn oeq float %i.si, 0.000000e+00
  %i.sk = fdiv reassoc nsz arcp contract afn float %i.rq, %i.si
  %i.sl = select reassoc nsz arcp contract afn i1 %i.sj, float 0.000000e+00, float %i.sk ; 3 uses
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, %i.rx ; 4 uses
  %i.sn = fmul reassoc nsz arcp contract afn float %i.sl, %i.sc ; 4 uses
  %i.so = fmul reassoc nsz arcp contract afn float %i.sl, %i.sf ; 4 uses
  %i.sp = fmul reassoc nsz arcp contract afn float %i.sm, f0x3FE76ACB
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sn, f0x3FA65D1D
  %i.sr = fsub reassoc nsz arcp contract afn float %i.sp, %i.sq
  %i.ss = fmul reassoc nsz arcp contract afn float %i.so, f0x3EB21A8C
  %i.st = fadd reassoc nsz arcp contract afn float %i.sr, %i.ss ; 3 uses
  %.sroa.0404.0.vec.insert = insertelement <4 x float> poison, float %i.st, i64 0
  %i.su = fmul reassoc nsz arcp contract afn float %i.sm, f0x3F1E2ABC
  %i.sv = fmul reassoc nsz arcp contract afn float %i.sn, f0x3ECABA8D
  %i.sw = fadd reassoc nsz arcp contract afn float %i.sv, %i.su
  %i.sx = fmul reassoc nsz arcp contract afn float %i.so, f0xBD2820C3
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sw, %i.sx ; 2 uses
  %.sroa.0404.4.vec.insert = insertelement <4 x float> %.sroa.0404.0.vec.insert, float %i.sy, i64 1
  %i.sz = fmul reassoc nsz arcp contract afn float %i.sm, f0x3E007B1A
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sn, f0x3E51B1F3
  %i.tb = fsub reassoc nsz arcp contract afn float %i.ta, %i.sz
  %i.tc = fmul reassoc nsz arcp contract afn float %i.so, f0x3FDF122A
  %i.td = fadd reassoc nsz arcp contract afn float %i.tb, %i.tc ; 4 uses
  %.sroa.0404.8.vec.insert = insertelement <4 x float> %.sroa.0404.4.vec.insert, float %i.td, i64 2
  %i.te = fadd reassoc nsz arcp contract afn float %i.sn, %i.sm
  %i.tf = fadd reassoc nsz arcp contract afn float %i.te, %i.so
  %i.tg = fmul reassoc nsz arcp contract afn float %i.tf, 0.000000e+00
  %.sroa.0404.12.vec.insert = insertelement <4 x float> %.sroa.0404.8.vec.insert, float %i.tg, i64 3 ; 3 uses
  %i.th = load i32, ptr %i.fv, align 16, !tbaa !164
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.h, label %bb.r

bb.h:                                             ; preds = %gamut_check_Yrg.exit
  %i.tj = fmul reassoc nsz arcp contract afn float %i.st, 1.150000e+00
  %i.tk = fmul reassoc nsz arcp contract afn float %i.td, f0x3E199998
  %i.tl = fsub reassoc nsz arcp contract afn float %i.tj, %i.tk ; 2 uses
  %i.tm = fmul reassoc nsz arcp contract afn float %i.sy, 6.600000e-01
  %i.tn = fmul reassoc nsz arcp contract afn float %i.st, f0x3EAE147A
  %i.to = fadd reassoc nsz arcp contract afn float %i.tm, %i.tn ; 2 uses
  %.reass594 = fmul reassoc nsz arcp contract afn float %i.tl, f0x382DF9B4
  %.reass = fmul reassoc nsz arcp contract afn float %i.to, f0x387344EC
  %.reass593 = fmul reassoc nsz arcp contract afn float %i.td, 1.464800e-06
  %i.tp = fadd reassoc nsz arcp contract afn float %.reass594, %.reass593
  %i.tq = fadd reassoc nsz arcp contract afn float %i.tp, %.reass
  %i.tr = insertelement <2 x float> poison, float %i.td, i64 0
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = fmul reassoc nsz arcp contract afn <2 x float> %i.ts, <float 5.310080e-06, float f0x388C30BE>
  %i.tu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tq, float 0.000000e+00)
  %i.tv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tu, float f0x3E232000) ; 2 uses
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tv, f0x4196D000
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, f0x3F560000
  %i.ty = fmul reassoc nsz arcp contract afn float %i.tv, 1.868750e+01
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, 1.000000e+00
  %i.ua = fdiv reassoc nsz arcp contract afn float %i.tx, %i.tz
  %i.ub = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ua, float f0x430608CD) ; 3 uses
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ub, 3.524000e+00
  %i.ud = fmul reassoc nsz arcp contract afn float %i.ub, 1.990760e-01
  %i.ue = insertelement <2 x float> poison, float %i.tl, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = fmul reassoc nsz arcp contract afn <2 x float> %i.uf, <float -2.015100e-05, float -1.660080e-06>
  %i.uh = insertelement <2 x float> poison, float %i.to, i64 0
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uj = fmul reassoc nsz arcp contract afn <2 x float> %i.ui, <float f0x38EB0462, float 2.648000e-05>
  %i.uk = fadd reassoc nsz arcp contract afn <2 x float> %i.ug, %i.tt
  %i.ul = fadd reassoc nsz arcp contract afn <2 x float> %i.uk, %i.uj
  %i.um = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ul, <2 x float> zeroinitializer)
  %i.un = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.um, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.uo = fmul reassoc nsz arcp contract afn <2 x float> %i.un, splat (float f0x4196D000)
  %i.up = fadd reassoc nsz arcp contract afn <2 x float> %i.uo, splat (float f0x3F560000)
  %i.uq = fmul reassoc nsz arcp contract afn <2 x float> %i.un, splat (float 1.868750e+01)
  %i.ur = fadd reassoc nsz arcp contract afn <2 x float> %i.uq, splat (float 1.000000e+00)
  %i.us = fdiv reassoc nsz arcp contract afn <2 x float> %i.up, %i.ur
  %i.ut = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.us, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.uu = extractelement <2 x float> %i.ut, i64 0 ; 2 uses
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, %i.ub ; 2 uses
  %i.uw = fmul reassoc nsz arcp contract afn float %i.uv, 5.000000e-01
  %i.ux = extractelement <2 x float> %i.ut, i64 1 ; 2 uses
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ux, 0.000000e+00 ; 2 uses
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uw, %i.uy ; 2 uses
  %i.va = fmul reassoc nsz arcp contract afn float %i.uu, f0x40822279
  %i.vb = fsub reassoc nsz arcp contract afn float %i.uc, %i.va
  %i.vc = fmul reassoc nsz arcp contract afn float %i.ux, 5.427080e-01
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vb, %i.vc ; 2 uses
  %i.ve = fmul reassoc nsz arcp contract afn <2 x float> %i.ut, <float f0x3F8C63E9, float f0xBFA5DF3B> ; 2 uses
  %i.vf = extractelement <2 x float> %i.ve, i64 0
  %i.vg = fadd reassoc nsz arcp contract afn float %i.vf, %i.ud
  %i.vh = extractelement <2 x float> %i.ve, i64 1
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vg, %i.vh ; 2 uses
  %i.vj = fmul reassoc nsz arcp contract afn float %i.uv, 0.000000e+00
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.uy
  %i.vl = fmul reassoc nsz arcp contract afn float %i.uz, 4.400000e-01
  %i.vm = fmul reassoc nsz arcp contract afn float %i.uz, 5.600000e-01
  %i.vn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.vm
  %i.vo = fdiv reassoc nsz arcp contract afn float %i.vl, %i.vn
  %i.vp = fadd reassoc nsz arcp contract afn float %i.vo, -1.629550e-11
  %i.vq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vp, float 0.000000e+00) ; 2 uses
  %i.vr = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.vd, float noundef %i.vi) #25 ; 2 uses
  %i.vs = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.vi, float %i.vd) ; 2 uses
  %sincos320 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vs) ; 2 uses
  %sin321 = extractvalue { float, float } %sincos320, 0 ; 5 uses
  %cos322 = extractvalue { float, float } %sincos320, 1 ; 5 uses
  %i.vt = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.vr, float %i.vq) ; 4 uses
  %sincos317 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vt) ; 2 uses
  %sin318 = extractvalue { float, float } %sincos317, 0 ; 3 uses
  %cos319 = extractvalue { float, float } %sincos317, 1 ; 3 uses
  %i.vu = load float, ptr %i.fz, align 16, !tbaa !165
  %i.vv = load float, ptr %i.dw, align 16, !tbaa !14
  %i.vw = fmul reassoc nsz arcp contract afn float %i.vv, %i.ir
  %i.vx = load float, ptr %i.ga, align 8, !tbaa !14
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vx, %i.ja
  %i.vz = load float, ptr %i.gb, align 16, !tbaa !14
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vz, %i.is
  %26 = fadd reassoc nsz arcp contract afn float %i.vu, 1.000000e+00
  %27 = fadd reassoc nsz arcp contract afn float %26, %i.vw
  %i.wb = fadd reassoc nsz arcp contract afn float %27, %i.vy
  %i.wc = fadd reassoc nsz arcp contract afn float %i.wb, %i.wa
  %i.wd = load float, ptr %i.fw, align 16, !tbaa !166
  %i.we = load float, ptr %i.dv, align 16, !tbaa !14
  %i.wf = fmul reassoc nsz arcp contract afn float %i.we, %i.ir
  %i.wg = load float, ptr %i.fx, align 16, !tbaa !14
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wg, %i.ja
  %i.wi = load float, ptr %i.fy, align 8, !tbaa !14
  %i.wj = fmul reassoc nsz arcp contract afn float %i.wi, %i.is
  %28 = fadd reassoc nsz arcp contract afn float %i.wf, %i.wd
  %i.wk = fadd reassoc nsz arcp contract afn float %28, %i.wh
  %i.wl = fadd reassoc nsz arcp contract afn float %i.wk, %i.wj
  %i.wm = fmul reassoc nsz arcp contract afn float %cos319, %i.vq
  %i.wn = fmul reassoc nsz arcp contract afn float %sin318, %i.vr
  %i.wo = fadd reassoc nsz arcp contract afn float %i.wm, %i.wn ; 2 uses
  %i.wp = fmul reassoc nsz arcp contract afn float %i.wl, %i.vt ; 2 uses
  %i.wq = fneg reassoc nsz arcp contract afn float %i.vt ; 2 uses
  %i.wr = fcmp reassoc nsz arcp contract afn ogt float %i.wp, %i.wq
  %. = select reassoc nsz arcp contract afn i1 %i.wr, float %i.wp, float %i.wq ; 2 uses
  %i.ws = fsub reassoc nsz arcp contract afn float f0x3FC90FDB, %i.vt ; 2 uses
  %i.wt = fcmp reassoc nsz arcp contract afn olt float %., %i.ws
  %i.wu = select reassoc nsz arcp contract afn i1 %i.wt, float %., float %i.ws
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wu, %i.wo ; 2 uses
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wc, %i.wo ; 2 uses
  %i.wx = fcmp reassoc nsz arcp contract afn ogt float %i.ww, 0.000000e+00
  %i.wy = select reassoc nsz arcp contract afn i1 %i.wx, float %i.ww, float 0.000000e+00 ; 2 uses
  %i.wz = fmul reassoc nsz arcp contract afn float %i.wy, %cos319
  %i.xa = fmul reassoc nsz arcp contract afn float %i.wv, %sin318
  %i.xb = fsub reassoc nsz arcp contract afn float %i.wz, %i.xa ; 3 uses
  %i.xc = fcmp reassoc nsz arcp contract afn ogt float %i.xb, 0.000000e+00 ; 2 uses
  %i.xd = select reassoc nsz arcp contract afn i1 %i.xc, float %i.xb, float 0.000000e+00 ; 3 uses
  %i.xe = fmul reassoc nsz arcp contract afn float %i.wy, %sin318
  %i.xf = fmul reassoc nsz arcp contract afn float %i.wv, %cos319
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xf, %i.xe ; 2 uses
  %i.xh = fcmp reassoc nsz arcp contract afn ogt float %i.xg, 0.000000e+00
  %i.xi = select reassoc nsz arcp contract afn i1 %i.xh, float %i.xg, float 0.000000e+00 ; 3 uses
  %i.xj = fmul reassoc nsz arcp contract afn float %i.vs, f0x42A2F983
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xj, 2.560000e+02 ; 2 uses
  %i.xl = fpext reassoc nsz arcp contract afn float %i.xk to double ; 2 uses
  %i.xm = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.xl)
  %i.xn = fptrunc reassoc nsz arcp contract afn double %i.xm to float ; 2 uses
  %i.xo = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.xl)
  %i.xp = fptrunc reassoc nsz arcp contract afn double %i.xo to float
  %i.xq = fptosi float %i.xn to i32
  %i.xr = and i32 %i.xq, 511                      ; 2 uses
  %i.xs = fptosi float %i.xp to i32
  %i.xt = and i32 %i.xs, 511                      ; 2 uses
  %i.xu = zext nneg i32 %i.xr to i64
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.xu
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !14 ; 3 uses
  %.not.i = icmp eq i32 %i.xr, %i.xt
  br i1 %.not.i, label %lookup_gamut.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.xx = fsub reassoc nsz arcp contract afn float %i.xk, %i.xn
  %i.xy = zext nneg i32 %i.xt to i64
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.xy
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !14
  %i.yb = fsub reassoc nsz arcp contract afn float %i.ya, %i.xw
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, %i.xx
  %i.yd = fadd reassoc nsz arcp contract afn float %i.yc, %i.xw
  br label %lookup_gamut.exit

lookup_gamut.exit:                                ; preds = %bb.h, %bb.i
  %i.ye = phi float [ %i.yd, %bb.i ], [ %i.xw, %bb.h ] ; 3 uses
  br i1 %i.xc, label %bb.j, label %soft_clip.exit

bb.j:                                             ; preds = %lookup_gamut.exit
  %i.yf = fdiv reassoc nsz arcp contract afn float %i.xi, %i.xb ; 3 uses
  %i.yg = fmul reassoc nsz arcp contract afn float %i.ye, 8.000000e-01 ; 3 uses
  %i.yh = fcmp reassoc nsz arcp contract afn ogt float %i.yf, %i.yg
  br i1 %i.yh, label %bb.k, label %soft_clip.exit

bb.k:                                             ; preds = %bb.j
  %i.yi = fmul reassoc nsz arcp contract afn float %i.ye, f0x3E4CCCCC ; 2 uses
  %i.yj = fsub reassoc nsz arcp contract afn float %i.yg, %i.yf
  %i.yk = fdiv reassoc nsz arcp contract afn float %i.yj, %i.yi
  %i.yl = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.yk)
  %i.ym = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.yl
  %i.yn = fmul reassoc nsz arcp contract afn float %i.ym, %i.yi
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yn, %i.yg
  br label %soft_clip.exit

soft_clip.exit:                                   ; preds = %bb.k, %bb.j, %lookup_gamut.exit
  %i.yp = phi reassoc nsz arcp contract afn float [ %i.ye, %lookup_gamut.exit ], [ %i.yo, %bb.k ], [ %i.yf, %bb.j ] ; 3 uses
  %i.yq = fmul reassoc nsz arcp contract afn float %i.yp, %i.xd
  %i.yr = fcmp reassoc nsz arcp contract afn ogt float %i.yp, 0.000000e+00
  %i.ys = fdiv reassoc nsz arcp contract afn float %i.xi, %i.yp
  %i.yt = select reassoc nsz arcp contract afn i1 %i.yr, float %i.ys, float %i.xd
  %i.yu = fadd reassoc nsz arcp contract afn float %i.yt, %i.xd
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, 5.000000e-01
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yq, %i.xi
  %i.yx = fmul reassoc nsz arcp contract afn float %i.yw, 5.000000e-01 ; 5 uses
  %i.yy = fadd reassoc nsz arcp contract afn float %i.yv, 1.629550e-11 ; 2 uses
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yy, 5.600000e-01
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, 4.400000e-01
  %i.zb = fdiv reassoc nsz arcp contract afn float %i.yy, %i.za ; 3 uses
  %i.zc = fcmp reassoc nsz arcp contract afn ogt float %i.zb, 0.000000e+00
  %i.zd = select reassoc nsz arcp contract afn i1 %i.zc, float %i.zb, float 0.000000e+00 ; 6 uses
  %i.ze = fmul reassoc nsz arcp contract afn float %i.yx, %cos322 ; 3 uses
  %i.zf = fmul reassoc nsz arcp contract afn float %i.yx, %sin321 ; 3 uses
  %i.zg = fmul reassoc nsz arcp contract afn float %i.ze, f0x3E0DEE7B
  %29 = fmul reassoc nsz arcp contract afn float %i.zf, f0x3D6DC306
  %30 = fadd reassoc nsz arcp contract afn float %29, %i.zg
  %i.zh = fadd reassoc nsz arcp contract afn float %30, %i.zd
  %i.zi = fmul reassoc nsz arcp contract afn float %i.ze, f0xBE0DEE7B
  %31 = fmul reassoc nsz arcp contract afn float %i.zf, f0xBD6DC306
  %32 = fadd reassoc nsz arcp contract afn float %31, %i.zi
  %i.zj = fadd reassoc nsz arcp contract afn float %32, %i.zd
  %i.zk = fmul reassoc nsz arcp contract afn float %i.ze, f0xBDC4A5BD
  %33 = fmul reassoc nsz arcp contract afn float %i.zf, f0xBF4FD826
  %34 = fadd reassoc nsz arcp contract afn float %33, %i.zk
  %i.zl = fadd reassoc nsz arcp contract afn float %34, %i.zd
  %i.zm = fcmp reassoc nsz arcp contract afn olt float %i.zh, 0.000000e+00
  br i1 %i.zm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %soft_clip.exit
  %i.zn = fneg reassoc nsz arcp contract afn float %i.zd
  %i.zo = fmul reassoc nsz arcp contract afn float %cos322, f0x3E0DEE7B
  %i.zp = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.zq = fadd reassoc nsz arcp contract afn float %i.zo, %i.zp
  %i.zr = fdiv reassoc nsz arcp contract afn float %i.zn, %i.zq ; 2 uses
  %i.zs = fcmp reassoc nsz arcp contract afn olt float %i.zr, %i.yx
  %.324 = select reassoc nsz arcp contract afn i1 %i.zs, float %i.zr, float %i.yx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %soft_clip.exit
  %.0299 = phi nsz float [ %.324, %bb.l ], [ %i.yx, %soft_clip.exit ] ; 3 uses
  %i.zt = fcmp reassoc nsz arcp contract afn olt float %i.zj, 0.000000e+00
  br i1 %i.zt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.zu = fneg reassoc nsz arcp contract afn float %i.zd
  %i.zv = fmul reassoc nsz arcp contract afn float %cos322, f0xBE0DEE7B
  %i.zw = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.zx = fsub reassoc nsz arcp contract afn float %i.zv, %i.zw
  %i.zy = fdiv reassoc nsz arcp contract afn float %i.zu, %i.zx ; 2 uses
  %i.zz = fcmp reassoc nsz arcp contract afn olt float %i.zy, %.0299
  %..0299 = select reassoc nsz arcp contract afn i1 %i.zz, float %i.zy, float %.0299
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi nsz float [ %..0299, %bb.n ], [ %.0299, %bb.m ] ; 3 uses
  %i.aaa = fcmp reassoc nsz arcp contract afn olt float %i.zl, 0.000000e+00
  br i1 %i.aaa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aab = fneg reassoc nsz arcp contract afn float %i.zd
  %i.aac = fmul reassoc nsz arcp contract afn float %cos322, f0xBDC4A5BD
  %i.aad = fmul reassoc nsz arcp contract afn float %sin321, f0x3F4FD826
  %i.aae = fsub reassoc nsz arcp contract afn float %i.aac, %i.aad
  %i.aaf = fdiv reassoc nsz arcp contract afn float %i.aab, %i.aae ; 2 uses
  %i.aag = fcmp reassoc nsz arcp contract afn olt float %i.aaf, %.1
  %..1 = select reassoc nsz arcp contract afn i1 %i.aag, float %i.aaf, float %.1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2 = phi nsz float [ %..1, %bb.p ], [ %.1, %bb.o ] ; 2 uses
  %i.aah = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.zb, float 0.000000e+00) ; 2 uses
  %i.aai = fmul reassoc nsz arcp contract afn float %.2, %cos322 ; 2 uses
  %i.aaj = fmul reassoc nsz arcp contract afn float %.2, %sin321 ; 2 uses
  %i.aak = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aai, i64 0
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, <float f0x3E0DEE7B, float f0xBE0DEE7B, float f0xBDC4A5BD, float -0.000000e+00>
  %i.aan = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aah, i64 0
  %i.aao = shufflevector <4 x float> %i.aan, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aap = fadd reassoc nsz arcp contract afn <4 x float> %i.aam, %i.aao
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aai, %i.aah
  %i.aar = fadd reassoc nsz arcp contract afn float %i.aaq, %i.aaj
  %i.aas = insertelement <4 x float> poison, float %i.aaj, i64 0
  %i.aat = insertelement <4 x float> %i.aas, float %i.aar, i64 1
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aav = fmul reassoc nsz arcp contract afn <4 x float> %i.aau, <float f0x3D6DC306, float f0xBD6DC306, float f0xBF4FD826, float 0.000000e+00>
  %i.aaw = fadd reassoc nsz arcp contract afn <4 x float> %i.aav, %i.aap
  %i.aax = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aaw, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.8.vec.extract69.i = extractelement <4 x float> %i.aax, i64 2
  %i.aay = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.8.vec.extract69.i, float f0x3BF4797F) ; 2 uses
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %i.aax, i64 3
  %i.aaz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.12.vec.extract.i, float f0x3BF4797F)
  %i.aba = insertelement <4 x float> <float f0x3F560000, float f0x3F560000, float f0x3F560000, float poison>, float %i.aaz, i64 3
  %i.abb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aay, i64 2
  %i.abc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.aax, <4 x float> splat (float f0x3BF4797F)) ; 2 uses
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> %i.abb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.abe = fsub reassoc nsz arcp contract afn <4 x float> %i.aba, %i.abd
  %i.abf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aay, i64 2
  %i.abg = shufflevector <4 x float> %i.abc, <4 x float> %i.abf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.abh = fmul reassoc nsz arcp contract afn <4 x float> %i.abg, <float 1.868750e+01, float 1.868750e+01, float 1.868750e+01, float -0.000000e+00>
  %i.abi = fadd reassoc nsz arcp contract afn <4 x float> %i.abh, <float f0xC196D000, float f0xC196D000, float f0xC196D000, float 1.000000e+00>
  %i.abj = fdiv reassoc nsz arcp contract afn <4 x float> %i.abe, %i.abi
  %i.abk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abj, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract51.i = extractelement <4 x float> %i.abk, i64 0
  %i.abl = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.0.vec.extract51.i, float f0x40C8E06B) ; 3 uses
  %.sroa.0.4.vec.extract64.i = extractelement <4 x float> %i.abk, i64 1
  %i.abm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract64.i, float f0x40C8E06B) ; 3 uses
  %.sroa.0.8.vec.extract77.i = extractelement <4 x float> %i.abk, i64 2
  %i.abn = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.8.vec.extract77.i, float f0x40C8E06B) ; 3 uses
  %i.abo = fmul reassoc nsz arcp contract afn float %i.abl, f0x46965487
  %i.abp = fmul reassoc nsz arcp contract afn float %i.abm, f0xC61CFFB1
  %i.abq = fadd reassoc nsz arcp contract afn float %i.abp, %i.abo
  %i.abr = fmul reassoc nsz arcp contract afn float %i.abn, f0x43BC41CC
  %i.abs = fadd reassoc nsz arcp contract afn float %i.abq, %i.abr
  %.reass603.a = fmul reassoc nsz arcp contract afn float %i.abl, 5.307830e+03
  %.reass604.a = fmul reassoc nsz arcp contract afn float %i.abm, f0x462BFD2A
  %i.abt = fadd reassoc nsz arcp contract afn float %.reass604.a, %.reass603.a
  %.reass602 = fmul reassoc nsz arcp contract afn float %i.abn, f0xC477AB14
  %i.abu = fadd reassoc nsz arcp contract afn float %i.abt, %.reass602
  %i.abv = fmul reassoc nsz arcp contract afn float %i.abl, f0xC4637500
  %i.abw = fmul reassoc nsz arcp contract afn float %i.abm, f0x45437487
  %i.abx = fsub reassoc nsz arcp contract afn float %i.abv, %i.abw
  %i.aby = fmul reassoc nsz arcp contract afn float %i.abn, f0x466DEEAA
  %i.abz = fadd reassoc nsz arcp contract afn float %i.abx, %i.aby ; 2 uses
  %i.aca = fmul reassoc nsz arcp contract afn float %i.abz, f0x3E199998
  %i.acb = fadd reassoc nsz arcp contract afn float %i.abs, %i.aca ; 2 uses
  %i.acc = fmul reassoc nsz arcp contract afn float %i.acb, f0x3F5E9BD4
  %.sroa.0404.0.vec.insert408 = insertelement <4 x float> poison, float %i.acc, i64 0
  %.reass601 = fmul reassoc nsz arcp contract afn float %i.acb, f0xBEE55ABA
  %i.acd = fadd reassoc nsz arcp contract afn float %i.abu, %.reass601
  %.sroa.0404.4.vec.insert423 = insertelement <4 x float> %.sroa.0404.0.vec.insert408, float %i.acd, i64 1
  %.sroa.0404.8.vec.insert438 = insertelement <4 x float> %.sroa.0404.4.vec.insert423, float %i.abz, i64 2
  %.sroa.0404.12.vec.insert450 = insertelement <4 x float> %.sroa.0404.8.vec.insert438, float %i.vk, i64 3
  br label %bb.y

bb.r:                                             ; preds = %gamut_check_Yrg.exit
  %i.ace = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0404.12.vec.insert, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.ace, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i = extractelement <4 x float> %i.ace, i64 1 ; 3 uses
  %i.acf = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract4.i
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.ace, i64 2
  %i.acg = fadd reassoc nsz arcp contract afn float %i.acf, %.sroa.0.8.vec.extract.i ; 3 uses
  %i.ach = fcmp reassoc nsz arcp contract afn ogt float %i.acg, 0.000000e+00 ; 2 uses
  %i.aci = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %i.acg
  %i.acj = select reassoc nsz arcp contract afn i1 %i.ach, float %i.aci, float 3.127100e-01 ; 3 uses
  %i.ack = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i, %i.acg
  %i.acl = select reassoc nsz arcp contract afn i1 %i.ach, float %i.ack, float 3.290200e-01 ; 3 uses
  %i.acm = fmul reassoc nsz arcp contract afn float %i.acj, f0xBF48B05C
  %i.acn = fmul reassoc nsz arcp contract afn float %i.acl, 2.775130e-01
  %i.aco = fadd reassoc nsz arcp contract afn float %i.acm, f0x3E1D8756
  %i.acp = fadd reassoc nsz arcp contract afn float %i.aco, %i.acn
  %i.acq = fmul reassoc nsz arcp contract afn float %i.acj, f0x3F3ECA3F
  %i.acr = fmul reassoc nsz arcp contract afn float %i.acl, f0xBE524E0D
  %i.acs = fadd reassoc nsz arcp contract afn float %i.acq, f0xBE29732A
  %i.act = fadd reassoc nsz arcp contract afn float %i.acs, %i.acr
  %i.acu = fmul reassoc nsz arcp contract afn float %i.acj, f0x3EA32D9A
  %i.acv = fmul reassoc nsz arcp contract afn float %i.acl, f0x400AB749
  %i.acw = fadd reassoc nsz arcp contract afn float %i.acu, f0x3E9527F8
  %i.acx = fadd reassoc nsz arcp contract afn float %i.acw, %i.acv ; 5 uses
  %i.acy = fcmp reassoc nsz arcp contract afn ult float %i.acx, 0.000000e+00
  %i.acz = fcmp reassoc nsz arcp contract afn olt float %i.acx, f0x00800000
  %i.ada = select reassoc nsz arcp contract afn i1 %i.acz, float f0x00800000, float %i.acx
  %i.adb = fcmp reassoc nsz arcp contract afn ogt float %i.acx, f0x80800000
  %i.adc = select reassoc nsz arcp contract afn i1 %i.adb, float f0x80800000, float %i.acx
  %i.add = select reassoc nsz arcp contract afn i1 %i.acy, float %i.adc, float %i.ada ; 2 uses
  %i.ade = fdiv reassoc nsz arcp contract afn float %i.acp, %i.add ; 2 uses
  %i.adf = fdiv reassoc nsz arcp contract afn float %i.act, %i.add ; 2 uses
  %i.adg = fmul reassoc nsz arcp contract afn float %i.ade, f0x3FB2C28D
  %i.adh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ade)
  %i.adi = fadd reassoc nsz arcp contract afn float %i.adh, f0x3FBEFF8B
  %i.adj = fdiv reassoc nsz arcp contract afn float %i.adg, %i.adi ; 2 uses
  %i.adk = fmul reassoc nsz arcp contract afn float %i.adf, f0x3FB9C753
  %i.adl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.adf)
  %i.adm = fadd reassoc nsz arcp contract afn float %i.adl, f0x3FC32F7A
  %i.adn = fdiv reassoc nsz arcp contract afn float %i.adk, %i.adm ; 2 uses
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adj, f0xBF8FFF79
  %i.adp = fmul reassoc nsz arcp contract afn float %i.adn, f0x3F7B00FB
  %i.adq = fsub reassoc nsz arcp contract afn float %i.ado, %i.adp ; 3 uses
  %i.adr = fmul reassoc nsz arcp contract afn float %i.adj, f0x3FEE7E6D
  %i.ads = fmul reassoc nsz arcp contract afn float %i.adn, f0x3FFC65AF
  %i.adt = fadd reassoc nsz arcp contract afn float %i.ads, %i.adr ; 3 uses
  %i.adu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract4.i, float f0x3F21B3E7) ; 2 uses
  %i.adv = fmul reassoc nsz arcp contract afn float %i.adu, f0x4006541D
  %i.adw = fadd reassoc nsz arcp contract afn float %i.adu, f0x3F8FE801
  %i.adx = fdiv reassoc nsz arcp contract afn float %i.adv, %i.adw ; 2 uses
  %i.ady = fmul reassoc nsz arcp contract afn float %i.adq, %i.adq
  %i.adz = fmul reassoc nsz arcp contract afn float %i.adt, %i.adt
  %i.aea = fadd reassoc nsz arcp contract afn float %i.adz, %i.ady
  %i.aeb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adx, float f0x3F2703AC)
  %i.aec = fmul reassoc nsz arcp contract afn float %i.aeb, f0x417EED8B
  %i.aed = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aea, float f0x3F19CB20)
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aec, %i.aed
  %i.aef = fmul reassoc nsz arcp contract afn float %i.aee, %i.gk ; 6 uses
  %i.aeg = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.adt, float %i.adq) ; 2 uses
  %i.aeh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aef, float f0x3FAB13D1)
  %i.aei = fadd reassoc nsz arcp contract afn float %i.aeh, 1.000000e+00
  %i.aej = fmul reassoc nsz arcp contract afn float %i.aei, %i.adx
  %i.aek = fmul reassoc nsz arcp contract afn float %i.aej, %i.gl ; 3 uses
  %i.ael = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aef, float noundef %i.aek) #25 ; 3 uses
  %i.aem = fcmp reassoc nsz arcp contract afn ogt float %i.ael, 0.000000e+00 ; 2 uses
  %i.aen = fdiv reassoc nsz arcp contract afn float %i.aef, %i.ael
  %i.aeo = select reassoc nsz arcp contract afn i1 %i.aem, float %i.aen, float 0.000000e+00 ; 3 uses
  %i.aep = fdiv reassoc nsz arcp contract afn float %i.aek, %i.ael
  %i.aeq = select reassoc nsz arcp contract afn i1 %i.aem, float %i.aep, float 0.000000e+00 ; 3 uses
  %i.aer = fcmp reassoc nsz arcp contract afn olt float %i.aef, f0x00800000
  %i.aes = select reassoc nsz arcp contract afn i1 %i.aer, float f0x00800000, float %i.aef ; 5 uses
  %i.aet = fmul reassoc nsz arcp contract afn float %i.aeo, %i.aef
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.aeq, %i.aek
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeu, %i.aet ; 3 uses
  %i.aew = load float, ptr %i.fw, align 16, !tbaa !166
  %i.aex = load float, ptr %i.dv, align 16, !tbaa !14
  %i.aey = fmul reassoc nsz arcp contract afn float %i.aex, %i.ir
  %i.aez = load float, ptr %i.fx, align 16, !tbaa !14
  %i.afa = fmul reassoc nsz arcp contract afn float %i.aez, %i.ja
  %i.afb = load float, ptr %i.fy, align 8, !tbaa !14
  %i.afc = fmul reassoc nsz arcp contract afn float %i.afb, %i.is
  %35 = fadd reassoc nsz arcp contract afn float %i.aew, 1.000000e+00
  %36 = fadd reassoc nsz arcp contract afn float %35, %i.aey
  %i.afd = fadd reassoc nsz arcp contract afn float %36, %i.afa
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, %i.afc ; 2 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt float %i.afe, 0.000000e+00
  %i.afg = select reassoc nsz arcp contract afn i1 %i.aff, float %i.afe, float 0.000000e+00 ; 3 uses
  %i.afh = load float, ptr %i.fz, align 16, !tbaa !165
  %i.afi = load float, ptr %i.dw, align 16, !tbaa !14
  %i.afj = fmul reassoc nsz arcp contract afn float %i.afi, %i.ir
  %i.afk = load float, ptr %i.ga, align 8, !tbaa !14
  %i.afl = fmul reassoc nsz arcp contract afn float %i.afk, %i.ja
  %i.afm = load float, ptr %i.gb, align 16, !tbaa !14
  %i.afn = fmul reassoc nsz arcp contract afn float %i.afm, %i.is
  %37 = fadd reassoc nsz arcp contract afn float %i.afh, 1.000000e+00
  %38 = fadd reassoc nsz arcp contract afn float %37, %i.afj
  %i.afo = fadd reassoc nsz arcp contract afn float %38, %i.afl
  %i.afp = fadd reassoc nsz arcp contract afn float %i.afo, %i.afn ; 2 uses
  %i.afq = fcmp reassoc nsz arcp contract afn ogt float %i.afp, 0.000000e+00
  %i.afr = select reassoc nsz arcp contract afn i1 %i.afq, float %i.afp, float 0.000000e+00
  %i.afs = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aes, float noundef %i.aev) #25
  %i.aft = fmul reassoc nsz arcp contract afn float %i.afs, 5.000000e-01
  %i.afu = fdiv reassoc nsz arcp contract afn float %i.aft, %i.aes ; 5 uses
  %i.afv = fcmp reassoc nsz arcp contract afn ogt float %i.afg, %i.afu
  br i1 %i.afv, label %bb.s, label %soft_clip.exit341

bb.s:                                             ; preds = %bb.r
  %i.afw = fsub reassoc nsz arcp contract afn float %i.afu, %i.afg
  %i.afx = fdiv reassoc nsz arcp contract afn float %i.afw, %i.afu
  %i.afy = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.afx)
  %i.afz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.afy
  %i.aga = fmul reassoc nsz arcp contract afn float %i.afz, %i.afu
  %i.agb = fadd reassoc nsz arcp contract afn float %i.aga, %i.afu
  br label %soft_clip.exit341

soft_clip.exit341:                                ; preds = %bb.r, %bb.s
  %i.agc = phi reassoc nsz arcp contract afn float [ %i.agb, %bb.s ], [ %i.afg, %bb.r ] ; 3 uses
  %i.agd = fadd reassoc nsz arcp contract afn float %i.agc, -1.000000e+00
  %i.age = fmul reassoc nsz arcp contract afn float %i.agd, %i.aes ; 2 uses
  %i.agf = fmul reassoc nsz arcp contract afn float %i.aes, %i.aes
  %i.agg = fmul reassoc nsz arcp contract afn float %i.agc, %i.agc
  %i.agh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.agg
  %i.agi = fmul reassoc nsz arcp contract afn float %i.agf, %i.agh
  %i.agj = fmul reassoc nsz arcp contract afn float %i.aev, %i.aev
  %i.agk = fadd reassoc nsz arcp contract afn float %i.agi, %i.agj
  %i.agl = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.agk)
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, %i.afr ; 2 uses
  %i.agn = fmul reassoc nsz arcp contract afn float %i.age, %i.aeq
  %i.ago = fmul reassoc nsz arcp contract afn float %i.agm, %i.aeo
  %i.agp = fadd reassoc nsz arcp contract afn float %i.ago, %i.agn ; 2 uses
  %i.agq = fcmp reassoc nsz arcp contract afn ogt float %i.agp, 0.000000e+00
  %i.agr = select reassoc nsz arcp contract afn i1 %i.agq, float %i.agp, float 0.000000e+00 ; 2 uses
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agm, %i.aeq
  %i.agt = fmul reassoc nsz arcp contract afn float %i.age, %i.aeo
  %i.agu = fsub reassoc nsz arcp contract afn float %i.ags, %i.agt ; 3 uses
  %i.agv = fcmp reassoc nsz arcp contract afn ogt float %i.agu, 0.000000e+00 ; 2 uses
  %i.agw = select reassoc nsz arcp contract afn i1 %i.agv, float %i.agu, float 0.000000e+00 ; 3 uses
  %i.agx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.agr, float f0x3FAB13D1)
  %i.agy = fadd reassoc nsz arcp contract afn float %i.agx, 1.000000e+00
  %i.agz = fdiv reassoc nsz arcp contract afn float %i.agw, %i.agy ; 2 uses
  %i.aha = fmul reassoc nsz arcp contract afn float %i.aeg, f0x42A2F983
  %i.ahb = fadd reassoc nsz arcp contract afn float %i.aha, 2.560000e+02 ; 2 uses
  %i.ahc = fpext reassoc nsz arcp contract afn float %i.ahb to double ; 2 uses
  %i.ahd = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.ahc)
  %i.ahe = fptrunc reassoc nsz arcp contract afn double %i.ahd to float ; 2 uses
  %i.ahf = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.ahc)
  %i.ahg = fptrunc reassoc nsz arcp contract afn double %i.ahf to float
  %i.ahh = fptosi float %i.ahe to i32
  %i.ahi = and i32 %i.ahh, 511                    ; 2 uses
  %i.ahj = fptosi float %i.ahg to i32
  %i.ahk = and i32 %i.ahj, 511                    ; 2 uses
  %i.ahl = zext nneg i32 %i.ahi to i64
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ahl
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !14 ; 3 uses
  %.not.i342 = icmp eq i32 %i.ahi, %i.ahk
  br i1 %.not.i342, label %lookup_gamut.exit343, label %bb.t

bb.t:                                             ; preds = %soft_clip.exit341
  %i.aho = fsub reassoc nsz arcp contract afn float %i.ahb, %i.ahe
  %i.ahp = zext nneg i32 %i.ahk to i64
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ahp
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !14
  %i.ahs = fsub reassoc nsz arcp contract afn float %i.ahr, %i.ahn
  %i.aht = fmul reassoc nsz arcp contract afn float %i.ahs, %i.aho
  %i.ahu = fadd reassoc nsz arcp contract afn float %i.aht, %i.ahn
  br label %lookup_gamut.exit343

lookup_gamut.exit343:                             ; preds = %soft_clip.exit341, %bb.t
  %i.ahv = phi float [ %i.ahu, %bb.t ], [ %i.ahn, %soft_clip.exit341 ]
  %i.ahw = fmul reassoc nsz arcp contract afn float %i.agz, %i.ex
  %i.ahx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahw, float f0x3F2703AC)
  %i.ahy = fmul reassoc nsz arcp contract afn float %i.ahx, f0x417EED8B
  %i.ahz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahv, float f0x3F19CB20)
  %i.aia = fmul reassoc nsz arcp contract afn float %i.ahy, %i.ahz
  %i.aib = fmul reassoc nsz arcp contract afn float %i.aia, %i.gm ; 2 uses
  %i.aic = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aib, float f0x3FAB13D1)
  %i.aid = fadd reassoc nsz arcp contract afn float %i.aic, 1.000000e+00
  %i.aie = fmul reassoc nsz arcp contract afn float %i.aid, %i.agz ; 2 uses
  %i.aif = fcmp reassoc nsz arcp contract afn ogt float %i.aie, 0.000000e+00
  %i.aig = fdiv reassoc nsz arcp contract afn float %i.aib, %i.aie
  %i.aih = select reassoc nsz arcp contract afn i1 %i.aif, float %i.aig, float 0.000000e+00 ; 2 uses
  %i.aii = fdiv reassoc nsz arcp contract afn float %i.agr, %i.agu
  %i.aij = select reassoc nsz arcp contract afn i1 %i.agv, float %i.aii, float 0.000000e+00 ; 3 uses
  %i.aik = fmul reassoc nsz arcp contract afn float %i.aih, 8.000000e-01 ; 3 uses
  %i.ail = fcmp reassoc nsz arcp contract afn ogt float %i.aij, %i.aik
  br i1 %i.ail, label %bb.u, label %soft_clip.exit344

bb.u:                                             ; preds = %lookup_gamut.exit343
  %i.aim = fmul reassoc nsz arcp contract afn float %i.aih, f0x3E4CCCCC ; 2 uses
  %i.ain = fsub reassoc nsz arcp contract afn float %i.aik, %i.aij
  %i.aio = fdiv reassoc nsz arcp contract afn float %i.ain, %i.aim
  %i.aip = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.aio)
  %i.aiq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aip
  %i.air = fmul reassoc nsz arcp contract afn float %i.aiq, %i.aim
  %i.ais = fadd reassoc nsz arcp contract afn float %i.air, %i.aik
  br label %soft_clip.exit344

soft_clip.exit344:                                ; preds = %lookup_gamut.exit343, %bb.u
  %i.ait = phi reassoc nsz arcp contract afn float [ %i.ais, %bb.u ], [ %i.aij, %lookup_gamut.exit343 ]
  %i.aiu = fmul reassoc nsz arcp contract afn float %i.ait, %i.agw ; 2 uses
  %i.aiv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aiu, float f0x3FAB13D1)
  %i.aiw = fadd reassoc nsz arcp contract afn float %i.aiv, 1.000000e+00
  %i.aix = fmul reassoc nsz arcp contract afn float %i.agw, %i.ex
  %i.aiy = fdiv reassoc nsz arcp contract afn float %i.aix, %i.aiw ; 5 uses
  %i.aiz = fcmp reassoc nsz arcp contract afn ult float %i.aiy, 0.000000e+00
  br i1 %i.aiz, label %dt_UCS_JCH_to_xyY.exit, label %bb.v

bb.v:                                             ; preds = %soft_clip.exit344
  %i.aja = fcmp reassoc nsz arcp contract afn ugt float %i.aiy, 2.098850e+00
  br i1 %i.aja, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ajb = fcmp reassoc nsz arcp contract afn une float %i.aiy, 0.000000e+00
  br i1 %i.ajb, label %.thread.i, label %dt_UCS_JCH_to_xyY.exit

.thread.i:                                        ; preds = %bb.w, %bb.v
  %i.ajc = phi float [ %i.aiy, %bb.w ], [ 2.098850e+00, %bb.v ] ; 2 uses
  %i.ajd = fmul reassoc nsz arcp contract afn float %i.aiu, %i.ex
  %i.aje = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ajc, float f0x3F2703AC)
  %i.ajf = fmul reassoc nsz arcp contract afn float %i.aje, f0x417EED8B
  %i.ajg = fdiv reassoc nsz arcp contract afn float %i.ajd, %i.ajf
  %i.ajh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ajg, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit

dt_UCS_JCH_to_xyY.exit:                           ; preds = %soft_clip.exit344, %bb.w, %.thread.i
  %i.aji = phi float [ %i.ajc, %.thread.i ], [ %i.aiy, %bb.w ], [ 0.000000e+00, %soft_clip.exit344 ] ; 2 uses
  %i.ajj = phi reassoc nsz arcp contract afn float [ %i.ajh, %.thread.i ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %soft_clip.exit344 ]
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.aeg) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.ajk = insertelement <2 x float> poison, float %i.ajj, i64 0
  %i.ajl = shufflevector <2 x float> %i.ajk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajm = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.ajn = insertelement <2 x float> %i.ajm, float %sin.i, i64 1
  %i.ajo = fmul reassoc nsz arcp contract afn <2 x float> %i.ajl, %i.ajn ; 2 uses
  %i.ajp = fmul reassoc nsz arcp contract afn <2 x float> %i.ajo, <float f0x40985229, float f0x40204F91>
  %i.ajq = shufflevector <2 x float> %i.ajp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ajr = fmul reassoc nsz arcp contract afn <2 x float> %i.ajo, <float f0xC0A13362, float f0x4037EFD4> ; 2 uses
  %i.ajs = fsub reassoc nsz arcp contract afn <2 x float> %i.ajr, %i.ajq
  %i.ajt = fadd reassoc nsz arcp contract afn <2 x float> %i.ajr, %i.ajq
  %i.aju = shufflevector <2 x float> %i.ajs, <2 x float> %i.ajt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ajv = fmul reassoc nsz arcp contract afn <2 x float> %i.aju, <float f0xBFBEFF8B, float f0xBFC32F7A>
  %i.ajw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aju)
  %i.ajx = fadd reassoc nsz arcp contract afn <2 x float> %i.ajw, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.ajy = fdiv reassoc nsz arcp contract afn <2 x float> %i.ajv, %i.ajx ; 3 uses
  %i.ajz = extractelement <2 x float> %i.ajy, i64 0 ; 2 uses
  %i.aka = fmul reassoc nsz arcp contract afn float %i.ajz, f0xBE1A9505
  %i.akb = extractelement <2 x float> %i.ajy, i64 1 ; 2 uses
  %i.akc = fmul reassoc nsz arcp contract afn float %i.akb, f0xBE1EE8D5
  %i.akd = fadd reassoc nsz arcp contract afn float %i.aka, f0xBC0A2B16
  %i.ake = fadd reassoc nsz arcp contract afn float %i.akd, %i.akc
  %i.akf = fmul reassoc nsz arcp contract afn float %i.ajz, f0x3F70B489
  %i.akg = fadd reassoc nsz arcp contract afn float %i.akb, f0xBCD1FB74
  %i.akh = fadd reassoc nsz arcp contract afn float %i.akg, %i.akf ; 5 uses
  %i.aki = fcmp reassoc nsz arcp contract afn ult float %i.akh, 0.000000e+00
  %i.akj = fcmp reassoc nsz arcp contract afn olt float %i.akh, f0x00800000
  %i.akk = select reassoc nsz arcp contract afn i1 %i.akj, float f0x00800000, float %i.akh
  %i.akl = fcmp reassoc nsz arcp contract afn ogt float %i.akh, f0x80800000
  %i.akm = select reassoc nsz arcp contract afn i1 %i.akl, float f0x80800000, float %i.akh
  %i.akn = select reassoc nsz arcp contract afn i1 %i.aki, float %i.akm, float %i.akk ; 2 uses
  %i.ako = fdiv reassoc nsz arcp contract afn float %i.ake, %i.akn ; 4 uses
  %i.akp = fcmp reassoc nsz arcp contract afn oeq float %i.ako, 0.000000e+00
  br i1 %i.akp, label %.thread.i345, label %bb.x

.thread.i345:                                     ; preds = %dt_UCS_JCH_to_xyY.exit
  %.sroa.0404.4.vec.insert427 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %.sroa.0404.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %dt_xyY_to_XYZ.exit

bb.x:                                             ; preds = %dt_UCS_JCH_to_xyY.exit
  %i.akq = fmul reassoc nsz arcp contract afn float %i.aji, f0x3F8FE801
  %i.akr = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.aji
  %i.aks = fdiv reassoc nsz arcp contract afn float %i.akq, %i.akr
  %i.akt = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.aks, float f0x3FCAA4B8) ; 3 uses
  %i.aku = fmul reassoc nsz arcp contract afn <2 x float> %i.ajy, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.akv = extractelement <2 x float> %i.aku, i64 0
  %i.akw = fadd reassoc nsz arcp contract afn float %i.akv, f0xBC0352A9
  %i.akx = extractelement <2 x float> %i.aku, i64 1
  %i.aky = fadd reassoc nsz arcp contract afn float %i.akw, %i.akx
  %i.akz = fdiv reassoc nsz arcp contract afn float %i.aky, %i.akn ; 2 uses
  %i.ala = fmul reassoc nsz arcp contract afn float %i.akz, %i.akt
  %i.alb = fdiv reassoc nsz arcp contract afn float %i.ala, %i.ako
  %.sroa.0404.0.vec.insert410 = insertelement <4 x float> %.sroa.0404.12.vec.insert, float %i.alb, i64 0
  %.sroa.0404.4.vec.insert425 = insertelement <4 x float> %.sroa.0404.0.vec.insert410, float %i.akt, i64 1
  %i.alc = fadd reassoc nsz arcp contract afn float %i.ako, %i.akz
  %i.ald = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.alc
  %i.ale = fmul reassoc nsz arcp contract afn float %i.ald, %i.akt
  %i.alf = fdiv reassoc nsz arcp contract afn float %i.ale, %i.ako
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %.thread.i345, %bb.x
  %.sroa.0404.2 = phi nsz <4 x float> [ %.sroa.0404.4.vec.insert427, %.thread.i345 ], [ %.sroa.0404.4.vec.insert425, %bb.x ]
  %i.alg = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %.thread.i345 ], [ %i.alf, %bb.x ]
  %.sroa.0404.8.vec.insert440 = insertelement <4 x float> %.sroa.0404.2, float %i.alg, i64 2
  br label %bb.y

bb.y:                                             ; preds = %dt_xyY_to_XYZ.exit, %bb.q
  %.sroa.0404.1 = phi nsz <4 x float> [ %.sroa.0404.12.vec.insert450, %bb.q ], [ %.sroa.0404.8.vec.insert440, %dt_xyY_to_XYZ.exit ] ; 4 uses
  %i.alh = shufflevector <4 x float> %.sroa.0404.1, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.ali = fmul reassoc nsz arcp contract afn <4 x float> %i.alh, %i.dj
  %i.alj = shufflevector <4 x float> %.sroa.0404.1, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.alk = fmul reassoc nsz arcp contract afn <4 x float> %i.alj, %i.do ; 2 uses
  %i.all = shufflevector <4 x float> %.sroa.0404.1, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.alm = shufflevector <4 x float> %i.gf, <4 x float> %.sroa.0404.1, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.aln = shufflevector <4 x float> %i.gg, <4 x float> %i.alm, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.alo = fmul reassoc nsz arcp contract afn <4 x float> %i.all, %i.aln
  %i.alp = fadd reassoc nsz arcp contract afn <4 x float> %i.all, %i.aln
  %i.alq = shufflevector <4 x float> %i.alo, <4 x float> %i.alp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.alr = fadd reassoc nsz arcp contract afn <4 x float> %i.alq, %i.ali ; 2 uses
  %i.als = fadd reassoc nsz arcp contract afn <4 x float> %i.alr, %i.alk
  %i.alt = fmul reassoc nsz arcp contract afn <4 x float> %i.alr, %i.alk
  %i.alu = shufflevector <4 x float> %i.als, <4 x float> %i.alt, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  br i1 %i.ep, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.alv = lshr exact i64 %.0292605, 2            ; 2 uses
  %i.alw = udiv i64 %i.alv, %i.fd                 ; 2 uses
  %i.alx = urem i64 %i.alv, %i.fd                 ; 2 uses
  %i.aly = urem i64 %i.alw, %i.eq
  %i.alz = urem i64 %i.alw, %i.er
  %i.ama = icmp samesign ult i64 %i.aly, %i.alz
  %i.amb = urem i64 %i.alx, %i.eq
  %i.amc = urem i64 %i.alx, %i.er
  %i.amd = icmp samesign ult i64 %i.amb, %i.amc   ; 6 uses
  br i1 %i.ama, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v = select i1 %i.amd, i64 216, i64 200
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v = select i1 %i.amd, i64 212, i64 196
  %.755 = select i1 %i.amd, ptr %i.gc, ptr %i.gd
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %.sroa.8.0..sroa_idx618..sroa.8.0..sroa_idx620.v = select i1 %i.amd, i64 200, i64 216
  %.sroa.7.0..sroa_idx612..sroa.7.0..sroa_idx614.v = select i1 %i.amd, i64 196, i64 212
  %.756 = select i1 %i.amd, ptr %i.gd, ptr %i.gc
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v.pn = phi i64 [ %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v, %bb.aa ], [ %.sroa.8.0..sroa_idx618..sroa.8.0..sroa_idx620.v, %bb.ab ]
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v.pn = phi i64 [ %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v, %bb.aa ], [ %.sroa.7.0..sroa_idx612..sroa.7.0..sroa_idx614.v, %bb.ab ]
  %.sroa.0.0.in = phi ptr [ %.755, %bb.aa ], [ %.756, %bb.ab ]
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v.pn
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v.pn
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4, !tbaa !14 ; 2 uses
  %.sroa.7.0 = load float, ptr %.sroa.7.0.in, align 4, !tbaa !14 ; 2 uses
  %.sroa.8.0 = load float, ptr %.sroa.8.0.in, align 4, !tbaa !14 ; 2 uses
  %i.ame = load i32, ptr %i.ge, align 4, !tbaa !167
  %i.amf = zext i32 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.amf
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !14 ; 3 uses
  %i.ami = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.alu, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0628.0.vec.extract = extractelement <4 x float> %i.ami, i64 0
  %i.amj = fsub reassoc nsz arcp contract afn float %.sroa.0628.0.vec.extract, %.sroa.0.0
  %i.amk = fmul reassoc nsz arcp contract afn float %i.amj, %i.amh
  %i.aml = fadd reassoc nsz arcp contract afn float %i.amk, %.sroa.0.0
  %.sroa.0628.4.vec.extract = extractelement <4 x float> %i.ami, i64 1
  %i.amm = fsub reassoc nsz arcp contract afn float %.sroa.0628.4.vec.extract, %.sroa.7.0
  %i.amn = fmul reassoc nsz arcp contract afn float %i.amm, %i.amh
  %i.amo = fadd reassoc nsz arcp contract afn float %i.amn, %.sroa.7.0
  %.sroa.0628.8.vec.extract = extractelement <4 x float> %i.ami, i64 2
  %i.amp = fsub reassoc nsz arcp contract afn float %.sroa.0628.8.vec.extract, %.sroa.8.0
  %i.amq = fmul reassoc nsz arcp contract afn float %i.amp, %i.amh
  %i.amr = fadd reassoc nsz arcp contract afn float %i.amq, %.sroa.8.0
  %i.ams = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aml, i64 0
  %i.amt = insertelement <4 x float> %i.ams, float %i.amo, i64 1
  %.sroa.0628.12.vec.insert642 = insertelement <4 x float> %i.amt, float %i.amr, i64 2
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.amu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.alu, <4 x float> zeroinitializer)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.0628.1 = phi nsz <4 x float> [ %.sroa.0628.12.vec.insert642, %bb.ac ], [ %i.amu, %bb.ad ]
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0292605
  store <4 x float> %.sroa.0628.1, ptr %i.amv, align 16, !tbaa !168, !alias.scope !169, !nontemporal !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.amw = add nuw i64 %.0292605, 4               ; 2 uses
  %i.amx = icmp ult i64 %i.amw, %i.ff
  br i1 %i.amx, label %bb.f, label %._crit_edge

bb.af:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 58 uses
  %i.c = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.d = fcmp reassoc nsz arcp contract afn ogt float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.f = fcmp reassoc nsz arcp contract afn olt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.a ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store float %i.h, ptr %i.i, align 16, !tbaa !14
  %i.j = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 1.000000e+00
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.d ], [ %i.n, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store float %i.o, ptr %i.p, align 4, !tbaa !14
  %i.q = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.000000e+00
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.13) #19
  br label %bb.j

end_hunk_0
begin_hunk_1_@commit_params:bb.a
  %i.abp = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.abl
  %i.abq = select reassoc nsz arcp contract afn i1 %i.abm, float %i.abp, float 3.290200e-01 ; 5 uses
  %i.abr = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abe, <4 x float> zeroinitializer) ; 3 uses
  %i.abs = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0112.8.vec.insert.i, <4 x float> zeroinitializer) ; 3 uses
  %i.abt = fadd reassoc nsz arcp contract afn float %i.abq, -3.290200e-01
  %i.abu = fadd reassoc nsz arcp contract afn float %i.abo, -3.127100e-01 ; 2 uses
  %i.abv = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.abt, float %i.abu) ; 3 uses
  %i.abw = shufflevector <4 x float> %i.abr, <4 x float> %i.abs, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.abx = shufflevector <4 x float> %i.abr, <4 x float> %i.abs, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.aby = fadd reassoc nsz arcp contract afn <2 x float> %i.abw, %i.abx
  %i.abz = shufflevector <4 x float> %i.abr, <4 x float> %i.abs, <2 x i32> <i32 2, i32 6>
  %i.aca = fadd reassoc nsz arcp contract afn <2 x float> %i.aby, %i.abz ; 3 uses
  %i.acb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aca, zeroinitializer ; 2 uses
  %i.acc = fdiv reassoc nsz arcp contract afn <2 x float> %i.abw, %i.aca
  %i.acd = select <2 x i1> %i.acb, <2 x float> %i.acc, <2 x float> splat (float 3.127100e-01) ; 3 uses
  %i.ace = fdiv reassoc nsz arcp contract afn <2 x float> %i.abx, %i.aca
  %i.acf = select <2 x i1> %i.acb, <2 x float> %i.ace, <2 x float> splat (float 3.290200e-01) ; 3 uses
  %i.acg = fadd reassoc nsz arcp contract afn <2 x float> %i.acf, splat (float -3.290200e-01)
  %i.ach = fadd reassoc nsz arcp contract afn <2 x float> %i.acd, splat (float -3.127100e-01) ; 3 uses
  %i.aci = tail call reassoc nsz arcp contract afn <2 x float> @llvm.atan2.v2f32(<2 x float> %i.acg, <2 x float> %i.ach) ; 4 uses
  %i.acj = extractelement <2 x float> %i.aci, i64 1
  %i.ack = fsub reassoc nsz arcp contract afn float %i.abv, %i.acj ; 2 uses
  %i.acl = fcmp reassoc nsz arcp contract afn olt float %i.ack, f0xC0490FDB
  %i.acm = select reassoc nsz arcp contract afn i1 %i.acl, float f0x40C90FDB, float 0.000000e+00
  %i.acn = fadd reassoc nsz arcp contract afn float %i.acm, %i.ack ; 2 uses
  %i.aco = fcmp reassoc nsz arcp contract afn ogt float %i.acn, f0x40490FDB
  %i.acp = select reassoc nsz arcp contract afn i1 %i.aco, float f0x40C90FDB, float 0.000000e+00
  %i.acq = fsub reassoc nsz arcp contract afn float %i.acn, %i.acp
  %i.acr = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acs = insertelement <2 x float> %i.acr, float %i.abv, i64 0
  %i.act = fsub reassoc nsz arcp contract afn <2 x float> %i.aci, %i.acs ; 2 uses
  %i.acu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.act, splat (float f0xC0490FDB)
  %i.acv = select <2 x i1> %i.acu, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.acw = fadd reassoc nsz arcp contract afn <2 x float> %i.acv, %i.act ; 2 uses
  %i.acx = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.acw, splat (float f0x40490FDB)
  %i.acy = select <2 x i1> %i.acx, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.acz = fsub reassoc nsz arcp contract afn <2 x float> %i.acw, %i.acy ; 2 uses
  %i.ada = extractelement <2 x float> %i.acf, i64 0 ; 4 uses
  %i.adb = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.ada
  %i.adc = extractelement <2 x float> %i.acf, i64 1 ; 4 uses
  %i.add = fsub reassoc nsz arcp contract afn float %i.adc, %i.ada ; 2 uses
  %i.ade = extractelement <2 x float> %i.acd, i64 0 ; 5 uses
  %i.adf = extractelement <2 x float> %i.acd, i64 1 ; 5 uses
  %i.adg = fsub reassoc nsz arcp contract afn float %i.ade, %i.adf
  %i.adh = fsub reassoc nsz arcp contract afn float %i.adf, %i.ade
  %i.adi = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.abq
  %i.adj = fsub reassoc nsz arcp contract afn float %i.ada, %i.abq ; 2 uses
  %i.adk = fsub reassoc nsz arcp contract afn float %i.abo, %i.ade
  %i.adl = fsub reassoc nsz arcp contract afn float %i.ade, %i.abo
  %i.adm = fsub reassoc nsz arcp contract afn float 3.290200e-01, %i.adc
  %i.adn = fsub reassoc nsz arcp contract afn float %i.abq, %i.adc ; 2 uses
  %i.ado = fsub reassoc nsz arcp contract afn float %i.adf, %i.abo
  %i.adp = fsub reassoc nsz arcp contract afn float %i.abo, %i.adf
  %i.adq = extractelement <2 x float> %i.ach, i64 0
  %i.adr = extractelement <2 x float> %i.ach, i64 1
  %i.ads = extractelement <2 x float> %i.acz, i64 0
  %i.adt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.acq
  %shift341 = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.adu = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %shift341
  %i.adv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ads
  br label %bb.ah

bb.ah:                                            ; preds = %bb.an, %dt_calloc_align_float.exit.i
  %.077150.i = phi i32 [ 0, %dt_calloc_align_float.exit.i ], [ %i.aim, %bb.an ] ; 2 uses
  %i.adw = uitofp nneg i32 %.077150.i to float
  %i.adx = fmul reassoc nnan nsz arcp contract afn float %i.adw, f0x3980ADFD
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adx, f0xC0490FDB ; 3 uses
  %i.adz = tail call reassoc nsz arcp contract afn float @llvm.tan.f32(float %i.ady) ; 6 uses
  %i.aea = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aeb = shufflevector <2 x float> %i.aea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aec = fsub reassoc nsz arcp contract afn <2 x float> %i.aeb, %i.aci ; 2 uses
  %i.aed = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aec, splat (float f0xC0490FDB)
  %i.aee = select <2 x i1> %i.aed, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.aef = fadd reassoc nsz arcp contract afn <2 x float> %i.aee, %i.aec ; 2 uses
  %i.aeg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aef, splat (float f0x40490FDB)
  %i.aeh = select <2 x i1> %i.aeg, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer
  %i.aei = fsub reassoc nsz arcp contract afn <2 x float> %i.aef, %i.aeh ; 2 uses
  %i.aej = extractelement <2 x float> %i.aei, i64 1
  %i.aek = fmul reassoc nsz arcp contract afn float %i.aej, %i.adt ; 4 uses
  %i.ael = fmul reassoc nsz arcp contract afn <2 x float> %i.aei, %i.adu
  %i.aem = extractelement <2 x float> %i.ael, i64 0 ; 4 uses
  %i.aen = fcmp reassoc nsz arcp contract afn ogt float %i.aek, 1.000000e+00
  %i.aeo = fcmp reassoc nsz arcp contract afn olt float %i.aek, 0.000000e+00
  %i.aep = select reassoc nsz arcp contract afn i1 %i.aeo, float 0.000000e+00, float %i.aek
  %i.aeq = select reassoc nsz arcp contract afn i1 %i.aen, float 1.000000e+00, float %i.aep
  %i.aer = fcmp reassoc nsz arcp contract afn oeq float %i.aek, %i.aeq
  br i1 %i.aer, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aes = fmul reassoc nsz arcp contract afn float %i.adz, %i.adr
  %i.aet = fadd reassoc nsz arcp contract afn float %i.adm, %i.aes
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.adz, %i.ado
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeu, %i.adn
  %i.aew = fdiv reassoc nsz arcp contract afn float %i.aet, %i.aev ; 2 uses
  %i.aex = fmul reassoc nsz arcp contract afn float %i.aew, %i.adp
  %i.aey = fadd reassoc nsz arcp contract afn float %i.aex, %i.adf
  %i.aez = fmul reassoc nsz arcp contract afn float %i.aew, %i.adn
  %i.afa = fadd reassoc nsz arcp contract afn float %i.aez, %i.adc
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.afb = fsub reassoc nsz arcp contract afn float %i.ady, %i.abv ; 2 uses
  %i.afc = fcmp reassoc nsz arcp contract afn olt float %i.afb, f0xC0490FDB
  %i.afd = select reassoc nsz arcp contract afn i1 %i.afc, float f0x40C90FDB, float 0.000000e+00
  %i.afe = fadd reassoc nsz arcp contract afn float %i.afd, %i.afb ; 2 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt float %i.afe, f0x40490FDB
  %i.afg = select reassoc nsz arcp contract afn i1 %i.aff, float f0x40C90FDB, float 0.000000e+00
  %i.afh = fsub reassoc nsz arcp contract afn float %i.afe, %i.afg
  %i.afi = fmul reassoc nsz arcp contract afn float %i.afh, %i.adv ; 4 uses
  %i.afj = fcmp reassoc nsz arcp contract afn ogt float %i.afi, 1.000000e+00
  %i.afk = fcmp reassoc nsz arcp contract afn olt float %i.afi, 0.000000e+00
  %i.afl = select reassoc nsz arcp contract afn i1 %i.afk, float 0.000000e+00, float %i.afi
  %i.afm = select reassoc nsz arcp contract afn i1 %i.afj, float 1.000000e+00, float %i.afl
  %i.afn = fcmp reassoc nsz arcp contract afn oeq float %i.afi, %i.afm
  br i1 %i.afn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.afo = fmul reassoc nsz arcp contract afn float %i.adz, %i.abu
  %i.afp = fadd reassoc nsz arcp contract afn float %i.adi, %i.afo
  %i.afq = fmul reassoc nsz arcp contract afn float %i.adz, %i.adk
  %i.afr = fadd reassoc nsz arcp contract afn float %i.afq, %i.adj
  %i.afs = fdiv reassoc nsz arcp contract afn float %i.afp, %i.afr ; 2 uses
  %i.aft = fmul reassoc nsz arcp contract afn float %i.afs, %i.adl
  %i.afu = fadd reassoc nsz arcp contract afn float %i.aft, %i.abo
  %i.afv = fmul reassoc nsz arcp contract afn float %i.afs, %i.adj
  %i.afw = fadd reassoc nsz arcp contract afn float %i.afv, %i.abq
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.afx = fcmp reassoc nsz arcp contract afn ogt float %i.aem, 1.000000e+00
  %i.afy = fcmp reassoc nsz arcp contract afn olt float %i.aem, 0.000000e+00
  %i.afz = select reassoc nsz arcp contract afn i1 %i.afy, float 0.000000e+00, float %i.aem
  %i.aga = select reassoc nsz arcp contract afn i1 %i.afx, float 1.000000e+00, float %i.afz
  %i.agb = fcmp reassoc nsz arcp contract afn oeq float %i.aem, %i.aga
  br i1 %i.agb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.agc = fmul reassoc nsz arcp contract afn float %i.adz, %i.adq
  %i.agd = fadd reassoc nsz arcp contract afn float %i.adb, %i.agc
  %i.age = fmul reassoc nsz arcp contract afn float %i.adz, %i.adg
  %i.agf = fadd reassoc nsz arcp contract afn float %i.age, %i.add
  %i.agg = fdiv reassoc nsz arcp contract afn float %i.agd, %i.agf ; 2 uses
  %i.agh = fmul reassoc nsz arcp contract afn float %i.agg, %i.adh
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agh, %i.ade
  %i.agj = fmul reassoc nsz arcp contract afn float %i.agg, %i.add
  %i.agk = fadd reassoc nsz arcp contract afn float %i.agj, %i.ada
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai
  %.079.i = phi nsz float [ %i.afa, %bb.ai ], [ %i.afw, %bb.ak ], [ %i.agk, %bb.am ], [ 0.000000e+00, %bb.al ] ; 2 uses
  %.078.i = phi nsz float [ %i.aey, %bb.ai ], [ %i.afu, %bb.ak ], [ %i.agi, %bb.am ], [ 0.000000e+00, %bb.al ] ; 2 uses
  %i.agl = insertelement <2 x float> poison, float %.078.i, i64 0
  %i.agm = shufflevector <2 x float> %i.agl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agn = fmul reassoc nsz arcp contract afn <2 x float> %i.agm, <float f0x3F3ECA3F, float f0xBF48B05C>
  %i.ago = insertelement <2 x float> poison, float %.079.i, i64 0
  %i.agp = shufflevector <2 x float> %i.ago, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agq = fmul reassoc nsz arcp contract afn <2 x float> %i.agp, <float f0xBE524E0D, float 2.775130e-01>
  %i.agr = fmul reassoc nsz arcp contract afn float %.078.i, f0x3EA32D9A
  %i.ags = fmul reassoc nsz arcp contract afn float %.079.i, f0x400AB749
  %i.agt = fadd reassoc nsz arcp contract afn float %i.ags, f0x3E9527F8
  %i.agu = fadd reassoc nsz arcp contract afn float %i.agt, %i.agr ; 5 uses
  %i.agv = fcmp reassoc nsz arcp contract afn ult float %i.agu, 0.000000e+00
  %i.agw = fcmp reassoc nsz arcp contract afn olt float %i.agu, f0x00800000
  %i.agx = select reassoc nsz arcp contract afn i1 %i.agw, float f0x00800000, float %i.agu
  %i.agy = fcmp reassoc nsz arcp contract afn ogt float %i.agu, f0x80800000
  %i.agz = select reassoc nsz arcp contract afn i1 %i.agy, float f0x80800000, float %i.agu
  %i.aha = select reassoc nsz arcp contract afn i1 %i.agv, float %i.agz, float %i.agx
  %i.ahb = fadd reassoc nsz arcp contract afn <2 x float> %i.agq, <float f0xBE29732A, float f0x3E1D8756>
  %i.ahc = fadd reassoc nsz arcp contract afn <2 x float> %i.ahb, %i.agn
  %i.ahd = insertelement <2 x float> poison, float %i.aha, i64 0
  %i.ahe = shufflevector <2 x float> %i.ahd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahf = fdiv reassoc nsz arcp contract afn <2 x float> %i.ahc, %i.ahe ; 2 uses
  %i.ahg = fmul reassoc nsz arcp contract afn <2 x float> %i.ahf, <float f0x3FB9C753, float f0x3FB2C28D>
  %i.ahh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ahf)
  %i.ahi = fadd reassoc nsz arcp contract afn <2 x float> %i.ahh, <float f0x3FC32F7A, float f0x3FBEFF8B>
  %i.ahj = fdiv reassoc nsz arcp contract afn <2 x float> %i.ahg, %i.ahi ; 2 uses
  %i.ahk = fmul reassoc nsz arcp contract afn <2 x float> %i.ahj, <float f0x3F7B00FB, float f0x3FEE7E6D>
  %i.ahl = shufflevector <2 x float> %i.ahk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ahm = fmul reassoc nsz arcp contract afn <2 x float> %i.ahj, <float f0x3FFC65AF, float f0xBF8FFF79> ; 2 uses
  %i.ahn = fadd reassoc nsz arcp contract afn <2 x float> %i.ahm, %i.ahl ; 2 uses
  %i.aho = fsub reassoc nsz arcp contract afn <2 x float> %i.ahm, %i.ahl ; 2 uses
  %i.ahp = shufflevector <2 x float> %i.ahn, <2 x float> %i.aho, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ahq = extractelement <2 x float> %i.ahn, i64 0
  %i.ahr = extractelement <2 x float> %i.aho, i64 1
  %i.ahs = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ahq, float %i.ahr)
  %i.aht = fmul reassoc nsz arcp contract afn float %i.ahs, f0x42A2A806
  %i.ahu = fadd reassoc nsz arcp contract afn float %i.aht, 2.555000e+02
  %i.ahv = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.ahu)
  %i.ahw = fptosi float %i.ahv to i32             ; 2 uses
  %i.ahx = lshr i32 %i.ahw, 22
  %i.ahy = and i32 %i.ahx, 512
  %i.ahz = add nsw i32 %i.ahy, %i.ahw             ; 2 uses
  %.inv.i = icmp slt i32 %i.ahz, 512
  %.neg.i = select i1 %.inv.i, i32 0, i32 -512
  %i.aia = add i32 %.neg.i, %i.ahz
  %i.aib = fmul reassoc nsz arcp contract afn <2 x float> %i.ahp, %i.ahp ; 2 uses
  %i.aic = sext i32 %i.aia to i64                 ; 2 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.aic ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !14
  %i.aif = extractelement <2 x float> %i.aib, i64 0
  %i.aig = fadd reassoc nsz arcp contract afn float %i.aif, %i.aie
  %i.aih = extractelement <2 x float> %i.aib, i64 1
  %i.aii = fadd reassoc nsz arcp contract afn float %i.aig, %i.aih
  store float %i.aii, ptr %i.aid, align 4, !tbaa !14
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.aak, i64 %i.aic ; 2 uses
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !14
  %i.ail = fadd reassoc nsz arcp contract afn float %i.aik, 1.000000e+00
  store float %i.ail, ptr %i.aij, align 4, !tbaa !14
  %i.aim = add nuw nsw i32 %.077150.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aim, 25600
  br i1 %exitcond.not.i, label %vector.memcheck, label %bb.ah

vector.memcheck:                                  ; preds = %bb.an
  %scevgep = getelementptr i8, ptr %i.pw, i64 2048
  %scevgep291 = getelementptr i8, ptr %i.aak, i64 2048
  %bound0 = icmp ult ptr %i.pw, %scevgep291
  %bound1 = icmp ult ptr %i.aak, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %index ; 5 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 32 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ain, i64 64 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.ain, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  %wide.load292 = load <8 x float>, ptr %i.aio, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  %wide.load293 = load <8 x float>, ptr %i.aip, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  %wide.load294 = load <8 x float>, ptr %i.aiq, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %index ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 32
  %i.ait = getelementptr inbounds nuw i8, ptr %i.air, i64 64
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 96
  %wide.load295 = load <8 x float>, ptr %i.air, align 64, !tbaa !14, !alias.scope !210
  %wide.load296 = load <8 x float>, ptr %i.ais, align 32, !tbaa !14, !alias.scope !210
  %wide.load297 = load <8 x float>, ptr %i.ait, align 64, !tbaa !14, !alias.scope !210
  %wide.load298 = load <8 x float>, ptr %i.aiu, align 32, !tbaa !14, !alias.scope !210
  %i.aiv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load295, <8 x float> splat (float 1.000000e+00))
  %i.aiw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load296, <8 x float> splat (float 1.000000e+00))
  %i.aix = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load297, <8 x float> splat (float 1.000000e+00))
  %i.aiy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load298, <8 x float> splat (float 1.000000e+00))
  %i.aiz = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load, %i.aiv
  %i.aja = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load292, %i.aiw
  %i.ajb = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load293, %i.aix
  %i.ajc = fdiv reassoc nsz arcp contract afn <8 x float> %wide.load294, %i.aiy
  store <8 x float> %i.aiz, ptr %i.ain, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  store <8 x float> %i.aja, ptr %i.aio, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  store <8 x float> %i.ajb, ptr %i.aip, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  store <8 x float> %i.ajc, ptr %i.aiq, align 4, !tbaa !14, !alias.scope !207, !noalias !210
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ajd = icmp eq i64 %index.next, 512
  br i1 %i.ajd, label %.sink.split, label %vector.body, !llvm.loop !212

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %.0151.i = phi i64 [ %i.akf, %.preheader.i ], [ 0, %vector.memcheck ] ; 6 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %.0151.i ; 2 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !14
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.0151.i
  %i.ajh = load float, ptr %i.ajg, align 16, !tbaa !14
  %i.aji = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajh, float 1.000000e+00)
  %i.ajj = fdiv reassoc nsz arcp contract afn float %i.ajf, %i.aji
  store float %i.ajj, ptr %i.aje, align 4, !tbaa !14
  %i.ajk = or disjoint i64 %.0151.i, 1            ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ajk ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !14
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ajk
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !14
  %i.ajp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajo, float 1.000000e+00)
  %i.ajq = fdiv reassoc nsz arcp contract afn float %i.ajm, %i.ajp
  store float %i.ajq, ptr %i.ajl, align 4, !tbaa !14
  %i.ajr = or disjoint i64 %.0151.i, 2            ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ajr ; 2 uses
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !14
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ajr
  %i.ajv = load float, ptr %i.aju, align 8, !tbaa !14
  %i.ajw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajv, float 1.000000e+00)
  %i.ajx = fdiv reassoc nsz arcp contract afn float %i.ajt, %i.ajw
  store float %i.ajx, ptr %i.ajs, align 4, !tbaa !14
  %i.ajy = or disjoint i64 %.0151.i, 3            ; 2 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ajy ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !14
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ajy
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !14
  %i.akd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.akc, float 1.000000e+00)
  %i.ake = fdiv reassoc nsz arcp contract afn float %i.aka, %i.akd
  store float %i.ake, ptr %i.ajz, align 4, !tbaa !14
  %i.akf = add nuw nsw i64 %.0151.i, 4            ; 2 uses
  %exitcond152.not.i.3 = icmp eq i64 %i.akf, 512
  br i1 %exitcond152.not.i.3, label %.sink.split, label %.preheader.i, !llvm.loop !213

.sink.split:                                      ; preds = %vector.body, %.preheader.i, %.loopexit
  %.sink = phi ptr [ %i.py, %.loopexit ], [ %i.aak, %.preheader.i ], [ %i.aak, %vector.body ]
  tail call void @free(ptr noundef nonnull %.sink) #19
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.z
  store i32 1, ptr %i.or, align 16, !tbaa !196
  br label %bb.ap

bb.ap:                                            ; preds = %bb.y, %bb.ao, %bb.w
  ret void
}

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #3

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 256) #19 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %dt_calloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !34
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 64) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.c, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i32 0, ptr %i.e, align 16, !tbaa !196
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr null, ptr %i.f, align 8, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #19
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  tail call void @free(ptr noundef %i.e) #19
  store ptr null, ptr %i.a, align 16, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @pipe_RGB_to_Ych(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %1) #19 ; 16 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 852
  %i.f = load i32, ptr %i.e, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.h = load i32, ptr %i.g, align 64, !tbaa !216
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call fastcc void @dt_ioppr_apply_trc(ptr noundef readonly %2, ptr noundef %i.a, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.i, i32 noundef %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load float, ptr %i.d, align 64, !tbaa !14
  %i.p = load float, ptr %i.a, align 16, !tbaa !14 ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = load float, ptr %i.k, align 16, !tbaa !14
  %i.s = load float, ptr %i.l, align 4, !tbaa !14 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.r
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, %i.q
  %i.v = load float, ptr %i.m, align 32, !tbaa !14
  %i.w = load float, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.v
  %i.y = fadd reassoc nsz arcp contract afn float %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  %i.ac = load <2 x float>, ptr %i.z, align 4, !tbaa !14
  %i.ad = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ae
  %i.ag = load <2 x float>, ptr %i.aa, align 4, !tbaa !14
  %i.ah = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <2 x float> %i.aj, %i.af
  %i.al = load <2 x float>, ptr %i.ab, align 4, !tbaa !14
  %i.am = insertelement <2 x float> poison, float %i.w, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.al, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.d, align 4, !tbaa !14
  %i.av = load float, ptr %2, align 4, !tbaa !14  ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.au
  %i.ax = load float, ptr %i.aq, align 4, !tbaa !14
  %i.ay = load float, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ax
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.aw
  %i.bb = load float, ptr %i.as, align 4, !tbaa !14
  %i.bc = load float, ptr %i.at, align 4, !tbaa !14 ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.bb
  %i.be = fadd reassoc nsz arcp contract afn float %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  %i.bi = load <2 x float>, ptr %i.bf, align 4, !tbaa !14
  %i.bj = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bk
  %i.bm = load <2 x float>, ptr %i.bg, align 4, !tbaa !14
  %i.bn = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bl
  %i.br = load <2 x float>, ptr %i.bh, align 4, !tbaa !14
  %i.bs = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.br, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bu
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

dt_ioppr_rgb_matrix_to_xyz.exit:                  ; preds = %bb.c, %bb.d
  %.sroa.010.0 = phi nsz float [ %i.be, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %i.bw = phi <2 x float> [ %i.bv, %bb.d ], [ %i.ap, %bb.c ] ; 4 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = fmul reassoc nsz arcp contract afn float %.sroa.010.0, 4.039210e-04
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.bw, <float f0x3C7704B2, float f0x3FA6AB48> ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = fsub reassoc nsz arcp contract afn float %i.ca, %i.by
  %i.cc = extractelement <2 x float> %i.bz, i64 1
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %i.cc ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, -3.106100e-02
  %i.cf = insertelement <2 x float> %i.bw, float %.sroa.010.0, i64 1
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, <float f0x3D23F6FB, float f0x3BB11DFF>
  %i.ch = fmul reassoc nsz arcp contract afn float %.sroa.010.0, f0x3F7D4DA9
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bx, f0x3F80DA42
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ci, i64 1
  %i.cl = fsub reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cg
  %i.cm = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, <float f0x3D3470F4, float f0xBAE61976>
  %i.co = fadd reassoc nsz arcp contract afn <2 x float> %i.cl, %i.cn ; 4 uses
  %i.cp = extractelement <2 x float> %i.co, i64 0
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 2.570850e-01
  %i.cr = extractelement <2 x float> %i.co, i64 1
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, f0x3F5C2539
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, %i.cq
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.ce ; 3 uses
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.co, <float 6.485600e-02, float 1.175800e+00>
  %i.cw = fmul reassoc nsz arcp contract afn <2 x float> %i.co, <float 3.944270e-01, float 7.625000e-02>
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fsub reassoc nsz arcp contract afn <2 x float> %i.cv, %i.cx
  %i.cz = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.da, <float 5.590670e-01, float 1.064230e-01>
  %i.dc = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.db ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 1 ; 3 uses
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, %i.cu
  %i.df = extractelement <2 x float> %i.dc, i64 0 ; 2 uses
  %i.dg = fadd reassoc nsz arcp contract afn float %i.de, %i.df ; 4 uses
  %i.dh = fcmp reassoc nsz arcp contract afn oeq float %i.dg, 0.000000e+00 ; 3 uses
  %i.di = fdiv reassoc nsz arcp contract afn float %i.cu, %i.dg
  %i.dj = fdiv reassoc nsz arcp contract afn float %i.dd, %i.dg
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.df, %i.dg
  %.sroa.0.0.i.i = select nsz i1 %i.dh, float 0.000000e+00, float %i.di ; 2 uses
  %.sroa.6.0.i.i = select nsz i1 %i.dh, float 0.000000e+00, float %i.dj ; 2 uses
  %.sroa.8.0.i.i = select nsz i1 %i.dh, float 0.000000e+00, float %i.dk ; 2 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cu, f0x3F309D77
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dd, f0x3EB2573F
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i.i, f0x3F8B3A63
  %i.dp = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i, f0xBF2AAAAB
  %4 = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i.i, f0x3CA8E841
  %i.dq = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i.i, f0xBDB3A62D
  %5 = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i, f0x3FD55555
  %i.dr = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i.i, f0xBD53224F
  %6 = fadd reassoc nsz arcp contract afn float %i.do, f0xBE604727
  %i.ds = fadd reassoc nsz arcp contract afn float %6, %i.dp
  %7 = fadd reassoc nsz arcp contract afn float %i.ds, %4 ; 2 uses
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dq, -5.437140e-01
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %5
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, %i.dr ; 2 uses
  %i.dw = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.dv, float noundef %7) #25 ; 4 uses
  %i.dx = fcmp reassoc nsz arcp contract afn une float %i.dw, 0.000000e+00 ; 2 uses
  %i.dy = fdiv reassoc nsz arcp contract afn float %7, %i.dw
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dx, float %i.dy, float 1.000000e+00
  %i.ea = fdiv reassoc nsz arcp contract afn float %i.dv, %i.dw
  %i.eb = select reassoc nsz arcp contract afn i1 %i.dx, float %i.ea, float 0.000000e+00
  store float %i.dn, ptr %3, align 4, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.dw, ptr %i.ec, align 4, !tbaa !14
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.dz, ptr %i.ed, align 4, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.eb, ptr %i.ee, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %dt_ioppr_rgb_matrix_to_xyz.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 15 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !51  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @pipe_RGB_to_Ych(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @pipe_RGB_to_Ych(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load float, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.val59 = load float, ptr %i.j, align 4, !tbaa !14
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %.val59, float %.val)
  %i.l = tail call i32 (...) @dt_key_modifier_state() #19
  %i.m = and i32 %i.l, 4
  %.not = icmp eq i32 %i.m, 0
  %i.n = fmul reassoc nsz arcp contract afn float %i.k, f0x42652EE0
  %.v = select i1 %.not, float 2.100000e+02, float 3.000000e+01
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %.v ; 8 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = atomicrmw add ptr %i.q, i32 1 seq_cst, align 4 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !218  ; 2 uses
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.o, ptr %i.v, align 4, !tbaa !184
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !14
  %i.y = load float, ptr %i.a, align 16, !tbaa !14
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store float %i.z, ptr %i.aa, align 4, !tbaa !183
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.o) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !219
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !183
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ac, float noundef %i.ad) #19
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !220 ; 2 uses
  %i.af = icmp eq ptr %1, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float %i.o, ptr %i.ag, align 4, !tbaa !187
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14
  %i.aj = load float, ptr %i.a, align 16, !tbaa !14
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store float %i.ak, ptr %i.al, align 4, !tbaa !186
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ae, float noundef %i.o) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !221
  %i.ao = load float, ptr %i.al, align 4, !tbaa !186
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.an, float noundef %i.ao) #19
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !222 ; 2 uses
  %i.ar = icmp eq ptr %1, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store float %i.o, ptr %i.as, align 4, !tbaa !193
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !14
  %i.av = load float, ptr %i.a, align 16, !tbaa !14
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store float %i.aw, ptr %i.ax, align 4, !tbaa !192
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.aq, float noundef %i.o) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !223
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !192
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.az, float noundef %i.ba) #19
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !224 ; 2 uses
  %i.bd = icmp eq ptr %1, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store float %i.o, ptr %i.be, align 4, !tbaa !190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !14
  %i.bh = load float, ptr %i.a, align 16, !tbaa !14
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  store float %i.bi, ptr %i.bj, align 4, !tbaa !189
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bc, float noundef %i.o) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !225
  %i.bm = load float, ptr %i.bj, align 4, !tbaa !189
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bl, float noundef %i.bm) #19
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !226 ; 2 uses
  %i.bp = icmp eq ptr %1, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = load float, ptr %i.b, align 16, !tbaa !14
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bq) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.br, ptr %i.bs, align 4, !tbaa !195
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bo, float noundef %i.br) #19
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !227 ; 2 uses
  %i.bv = icmp eq ptr %1, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = load float, ptr %i.a, align 16, !tbaa !14 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store float %i.bw, ptr %i.bx, align 4, !tbaa !24
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bu, float noundef %i.bw) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.b
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = atomicrmw sub ptr %i.bz, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !228
  tail call void @dt_dev_add_history_item(ptr noundef %i.cb, ptr noundef nonnull %0, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #10

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !51  ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2760
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229  ; 2 uses
  %.not62 = icmp eq ptr %i.j, null
  br i1 %.not62, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef nonnull %i.j) #19 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 640
  %i.m = load float, ptr %i.l, align 64, !tbaa !14 ; 2 uses
  %i.n = tail call float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp ueq float %i.n, +inf
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.q = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %i.p, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef 1) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 640
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.r = phi float [ %i.m, %bb.d ], [ %.pre, %.thread ] ; 2 uses
  %.1 = phi ptr [ %i.k, %bb.d ], [ %i.q, %.thread ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 644
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 648
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 656
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.1, i64 660
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 664
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.s, align 4, !tbaa !14 ; 3 uses
  %i.ad = load float, ptr %i.t, align 4, !tbaa !14
  %i.ae = load <2 x float>, ptr %i.x, align 4, !tbaa !14 ; 3 uses
  %i.af = load float, ptr %i.z, align 4, !tbaa !14
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x float> %i.ag, float %i.r, i64 0 ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float f0x3FEDB261)
  %i.aj = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ak = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 6.235430e-01)
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ai
  %i.am = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.ab, i64 1 ; 3 uses
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0xBDD2F349)
  %i.ap = fadd reassoc nsz arcp contract afn <2 x float> %i.al, %i.ao ; 4 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  store float %i.aq, ptr %i.b, align 64, !tbaa !14
  %i.ar = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float f0x3FA70054)
  %i.as = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float f0x3EC5EFC6)
  %i.at = fsub reassoc nsz arcp contract afn <2 x float> %i.as, %i.ar
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3E1C0B9C)
  %i.av = fadd reassoc nsz arcp contract afn <2 x float> %i.at, %i.au ; 4 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  store float %i.aw, ptr %i.u, align 4, !tbaa !14
  %i.ax = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float f0x3E94B6F7)
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float f0x3D171040)
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.ay
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3FAB61D9)
  %i.bb = fadd reassoc nsz arcp contract afn <2 x float> %i.az, %i.ba ; 4 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  store float %i.bc, ptr %i.v, align 8, !tbaa !14
  %i.bd = extractelement <2 x float> %i.ac, i64 0
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.r
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.ad
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, 0.000000e+00
  store float %i.bg, ptr %i.w, align 4, !tbaa !14
  %i.bh = shufflevector <2 x float> %i.ap, <2 x float> %i.av, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.bh, ptr %i.y, align 16, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bj = extractelement <2 x float> %i.bb, i64 1
  store float %i.bj, ptr %i.bi, align 8, !tbaa !14
  %i.bk = extractelement <2 x float> %i.ae, i64 0
  %i.bl = fadd reassoc nsz arcp contract afn float %i.af, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 672
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 680
  %i.bp = load <2 x float>, ptr %i.bn, align 4, !tbaa !14 ; 4 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, f0x3FEDB261
  %i.bs = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, 6.235430e-01
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.br
  %i.bv = load float, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bl, %i.ab
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, <float f0x3E94B6F7, float f0x3EC5EFC6>
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, <float f0x3FA70054, float f0x3D171040>
  %i.ca = fsub reassoc nsz arcp contract afn <2 x float> %i.by, %i.bz
  %i.cb = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.bv, i64 1
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, <float 0.000000e+00, float f0xBDD2F349, float f0x3E1C0B9C, float f0x3FAB61D9>
  %i.cf = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, float %i.bu, i64 1
  %i.cg = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ci = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch ; 4 uses
  store <4 x float> %i.ci, ptr %i.bm, align 4, !tbaa !14
  %i.cj = fadd reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %i.bv
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 0.000000e+00
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.cl, ptr %i.cm, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 312 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !230
  %i.cp = icmp ne ptr %.1, %i.co                  ; 5 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 104
  %i.cs = atomicrmw add ptr %i.cr, i32 1 seq_cst, align 4 ; 0 uses
  br i1 %i.cp, label %bb.f, label %paint_hue_sliders.exit

bb.f:                                             ; preds = %bb.e
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cy = fmul reassoc nsz arcp contract afn <2 x float> %i.av, splat (float f0x3F5B4315)
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, splat (float f0x3F0E1437)
  %i.da = fadd reassoc nsz arcp contract afn <2 x float> %i.cy, %i.ap
  %i.db = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cz
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.db, splat (float f0xBEDAE22E)
  %i.dd = extractelement <4 x float> %i.ci, i64 2 ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, f0x3F5B4315
  %i.df = extractelement <4 x float> %i.ci, i64 1 ; 2 uses
  %i.dg = fadd reassoc nsz arcp contract afn float %i.de, %i.df
  %i.dh = extractelement <4 x float> %i.ci, i64 3 ; 2 uses
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3F0E1437
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dg, %i.di
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, f0xBEDAE22E
  br label %_clip_chroma_black.exit.i.i

_clip_chroma_black.exit.i.i:                      ; preds = %_clip_chroma_black.exit.i.i, %bb.f
  %.021.i = phi i32 [ 0, %bb.f ], [ %i.fi, %_clip_chroma_black.exit.i.i ] ; 2 uses
  %i.dl = uitofp nneg i32 %.021.i to float        ; 2 uses
  %i.dm = fmul reassoc nnan nsz arcp contract afn float %i.dl, f0x3D579436 ; 4 uses
  %i.dn = fmul reassoc nnan nsz arcp contract afn float %i.dl, 3.306940e-01
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, f0xBF060A93 ; 2 uses
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.do) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 3 uses
  %i.dp = fmul reassoc nsz arcp contract afn float %cos.i, f0x3F7AB8BE
  %i.dq = fmul reassoc nsz arcp contract afn float %sin.i, f0x3EC893CB
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, %i.dp ; 2 uses
  %i.ds = fmul reassoc nsz arcp contract afn float %cos.i, f0x3CA8E83F
  %i.dt = fmul reassoc nsz arcp contract afn float %sin.i, f0x3F1BB61A
  %i.du = fadd reassoc nsz arcp contract afn float %i.dt, %i.ds ; 2 uses
  %i.dv = fadd reassoc nsz arcp contract afn float %sin.i, %cos.i ; 2 uses
  %i.dw = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul reassoc nsz arcp contract afn <2 x float> %i.dx, %i.ap
  %i.dz = insertelement <2 x float> poison, float %i.du, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.ea, %i.av
  %i.ec = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul reassoc nsz arcp contract afn <2 x float> %i.ed, %i.bb
  %i.ef = fsub reassoc nsz arcp contract afn <2 x float> %i.dy, %i.ee
  %i.eg = fadd reassoc nsz arcp contract afn <2 x float> %i.ef, %i.eb ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn oeq <2 x float> %i.eg, zeroinitializer
  %i.ei = fdiv reassoc nsz arcp contract afn <2 x float> %i.dc, %i.eg ; 2 uses
  %i.ej = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ei, zeroinitializer
  %i.ek = select <2 x i1> %i.eh, <2 x i1> splat (i1 true), <2 x i1> %i.ej
  %i.el = select <2 x i1> %i.ek, <2 x float> splat (float f0x7F7FFFFF), <2 x float> %i.ei ; 2 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.dr, %i.df
  %i.en = fmul reassoc nsz arcp contract afn float %i.du, %i.dd
  %.neg150 = fmul reassoc nsz arcp contract afn float %i.dv, %i.dh
  %i.eo = fsub reassoc nsz arcp contract afn float %i.em, %.neg150
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.en ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn oeq float %i.ep, 0.000000e+00
  %i.er = fdiv reassoc nsz arcp contract afn float %i.dk, %i.ep ; 2 uses
  %i.es = fcmp reassoc nsz arcp contract afn ult float %i.er, 0.000000e+00
  %i.et = select i1 %i.eq, i1 true, i1 %i.es
  %.0.i22.i.i = select nsz i1 %i.et, float f0x7F7FFFFF, float %i.er ; 2 uses
  %i.eu = extractelement <2 x float> %i.el, i64 0 ; 2 uses
  %i.ev = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.ew = fcmp reassoc nsz arcp contract afn olt float %i.eu, %i.ev
  %i.ex = select reassoc nsz arcp contract afn i1 %i.ew, float %i.eu, float %i.ev ; 2 uses
  %i.ey = fcmp reassoc nsz arcp contract afn olt float %i.ex, %.0.i22.i.i
  %..i.i = select reassoc nsz arcp contract afn i1 %i.ey, float %i.ex, float %.0.i22.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ez = fcmp reassoc nsz arcp contract afn ogt float %..i.i, 2.000000e-01
  %i.fa = select reassoc nsz arcp contract afn i1 %i.ez, float 2.000000e-01, float %..i.i
  call fastcc void @_YchToRGB(ptr noundef %i.a, float noundef %i.fa, float noundef %i.do, ptr noundef nonnull readonly %.1)
  %i.fb = load ptr, ptr %i.ct, align 8, !tbaa !218
  %i.fc = load float, ptr %i.a, align 16, !tbaa !14 ; 4 uses
  %i.fd = load float, ptr %i.cu, align 4, !tbaa !14 ; 4 uses
  %i.fe = load float, ptr %i.cv, align 8, !tbaa !14 ; 4 uses
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fb, float noundef %i.dm, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe) #19
  %i.ff = load ptr, ptr %i.d, align 8, !tbaa !220
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ff, float noundef %i.dm, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe) #19
  %i.fg = load ptr, ptr %i.cw, align 8, !tbaa !224
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fg, float noundef %i.dm, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe) #19
  %i.fh = load ptr, ptr %i.cx, align 8, !tbaa !222
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fh, float noundef %i.dm, float noundef %i.fc, float noundef %i.fd, float noundef %i.fe) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fi = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fi, 20
  br i1 %exitcond.not.i, label %paint_hue_sliders.exit, label %_clip_chroma_black.exit.i.i

paint_hue_sliders.exit:                           ; preds = %_clip_chroma_black.exit.i.i, %bb.e
  %.not65 = icmp eq ptr %1, null
  br i1 %.not65, label %.thread148, label %bb.g

.thread148:                                       ; preds = %paint_hue_sliders.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !219
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !184
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fk, float noundef %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !221
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !187
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fo, float noundef %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !223
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !193
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fs, float noundef %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !225
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !190
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.fw, float noundef %i.fy)
  br label %bb.n

bb.g:                                             ; preds = %paint_hue_sliders.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !218
  %i.gb = icmp eq ptr %1, %i.ga
  %or.cond = or i1 %i.cp, %i.gb
  br i1 %or.cond, label %bb.h, label %.thread141

bb.h:                                             ; preds = %bb.g
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !219
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !184
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gd, float noundef %i.gf)
  br label %.thread141

.thread141:                                       ; preds = %bb.g, %bb.h
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !220
  %i.gh = icmp eq ptr %1, %i.gg
  %or.cond3 = or i1 %i.cp, %i.gh
  br i1 %or.cond3, label %bb.i, label %.thread143

bb.i:                                             ; preds = %.thread141
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !221
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !187
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gj, float noundef %i.gl)
  br label %.thread143

.thread143:                                       ; preds = %.thread141, %bb.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !222
  %i.go = icmp eq ptr %1, %i.gn
  %or.cond5 = or i1 %i.cp, %i.go
  br i1 %or.cond5, label %bb.j, label %.thread145

bb.j:                                             ; preds = %.thread143
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !223
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !193
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gq, float noundef %i.gs)
  br label %.thread145

.thread145:                                       ; preds = %.thread143, %bb.j
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !224
  %i.gv = icmp eq ptr %1, %i.gu
  %or.cond7 = or i1 %i.cp, %i.gv
  br i1 %or.cond7, label %bb.k, label %.thread147

bb.k:                                             ; preds = %.thread145
  %i.gw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !225
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !190
  call fastcc void @paint_chroma_slider(ptr noundef nonnull %.1, ptr noundef %i.b, ptr noundef %i.gx, float noundef %i.gz)
  br label %.thread147

.thread147:                                       ; preds = %.thread145, %bb.k
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !231
  %i.hc = icmp eq ptr %1, %i.hb
  br i1 %i.hc, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread147
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !232
  %i.hf = icmp eq ptr %1, %i.he
  br i1 %i.hf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !233
  %i.hi = icmp eq ptr %1, %i.hh
  br i1 %i.hi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread148, %bb.m, %bb.l, %.thread147
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !234
  tail call void @gtk_widget_queue_draw(ptr noundef %i.hk) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 104
  %i.hn = atomicrmw sub ptr %i.hm, i32 1 seq_cst, align 4 ; 0 uses
  store ptr %.1, ptr %i.cn, align 8, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @paint_chroma_slider(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, float noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = fmul reassoc nsz arcp contract afn float %3, f0x3C8EFA36
  %i.c = fadd reassoc nsz arcp contract afn float %i.b, f0xBF060A93 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.d = load float, ptr %1, align 4, !tbaa !14   ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %cos, f0x3F7AB8BE
  %i.f = fmul reassoc nsz arcp contract afn float %sin, f0x3EC893CB
  %i.g = fadd reassoc nsz arcp contract afn float %i.f, %i.e ; 3 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %cos, f0x3CA8E83F
  %i.l = fmul reassoc nsz arcp contract afn float %sin, f0x3F1BB61A
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %i.k ; 3 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !14 ; 2 uses
  %i.r = fadd reassoc nsz arcp contract afn float %sin, %cos ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, %i.q
  %i.t = fsub reassoc nsz arcp contract afn float %i.o, %i.s ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn oeq float %i.t, 0.000000e+00
  br i1 %i.u, label %_clip_chroma_black.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = fmul reassoc nsz arcp contract afn float %i.j, f0x3F5B4315
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.d
  %i.x = fmul reassoc nsz arcp contract afn float %i.q, f0x3F0E1437
  %i.y = fadd reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, f0xBEDAE22E
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.t ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn oge float %i.aa, 0.000000e+00
  %i.ac = select reassoc nsz arcp contract afn i1 %i.ab, float %i.aa, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit.i

_clip_chroma_black.exit.i:                        ; preds = %bb.b, %bb.a
  %.0.i.i = phi nsz float [ %i.ac, %bb.b ], [ f0x7F7FFFFF, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !14 ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.m
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !14 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.r, %i.al
  %i.an = fsub reassoc nsz arcp contract afn float %i.aj, %i.am ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn oeq float %i.an, 0.000000e+00
  br i1 %i.ao, label %_clip_chroma_black.exit21.i, label %bb.c

bb.c:                                             ; preds = %_clip_chroma_black.exit.i
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ah, f0x3F5B4315
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.ae
  %i.ar = fmul reassoc nsz arcp contract afn float %i.al, f0x3F0E1437
  %i.as = fadd reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0xBEDAE22E
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %i.an ; 2 uses
  %i.av = fcmp reassoc nsz arcp contract afn oge float %i.au, 0.000000e+00
  %i.aw = select reassoc nsz arcp contract afn i1 %i.av, float %i.au, float f0x7F7FFFFF
  br label %_clip_chroma_black.exit21.i

_clip_chroma_black.exit21.i:                      ; preds = %bb.c, %_clip_chroma_black.exit.i
  %.0.i20.i = phi nsz float [ %i.aw, %bb.c ], [ f0x7F7FFFFF, %_clip_chroma_black.exit.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !14 ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.g
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !14 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.m
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !14 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.r, %i.bf
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bd, %i.bg ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %Ych_max_chroma_without_negatives.exit, label %bb.d

bb.d:                                             ; preds = %_clip_chroma_black.exit21.i
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bb, f0x3F5B4315
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.ay
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bf, f0x3F0E1437
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, f0xBEDAE22E
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.bh ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn oge float %i.bo, 0.000000e+00
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bo, float f0x7F7FFFFF
  br label %Ych_max_chroma_without_negatives.exit

Ych_max_chroma_without_negatives.exit:            ; preds = %_clip_chroma_black.exit21.i, %bb.d
  %.0.i22.i = phi nsz float [ %i.bq, %bb.d ], [ f0x7F7FFFFF, %_clip_chroma_black.exit21.i ] ; 2 uses
  %i.br = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, %.0.i20.i
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %.0.i.i, float %.0.i20.i ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn olt float %i.bs, %.0.i22.i
  %..i = select reassoc nsz arcp contract afn i1 %i.bt, float %i.bs, float %.0.i22.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  tail call void @gtk_widget_queue_draw(ptr noundef %2) #19
  ret void

bb.f:                                             ; preds = %Ych_max_chroma_without_negatives.exit, %bb.f
  %.021 = phi i32 [ 0, %Ych_max_chroma_without_negatives.exit ], [ %i.cd, %bb.f ] ; 2 uses
  %i.bw = uitofp nneg i32 %.021 to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x3D579436 ; 3 uses
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, %..i
  %i.bz = select reassoc nsz arcp contract afn i1 %i.by, float %i.bx, float %..i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call fastcc void @_YchToRGB(ptr noundef %i.a, float noundef %i.bz, float noundef %i.c, ptr noundef %0)
  %i.ca = load float, ptr %i.a, align 16, !tbaa !14
  %i.cb = load float, ptr %i.bu, align 4, !tbaa !14
  %i.cc = load float, ptr %i.bv, align 8, !tbaa !14
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %2, float noundef %i.bx, float noundef %i.ca, float noundef %i.cb, float noundef %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cd = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, 20
  br i1 %exitcond.not, label %bb.e, label %bb.f
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct._GdkRGBA, align 16          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !51  ; 38 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 33 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.h = load float, ptr %i.g, align 4, !tbaa !182
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.h) #19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !236
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.l = load float, ptr %i.k, align 4, !tbaa !173
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.j, float noundef %i.l) #19
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !237
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !174
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.n, float noundef %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.t = load float, ptr %i.s, align 4, !tbaa !26
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.r, float noundef %i.t) #19
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.x = load float, ptr %i.w, align 4, !tbaa !177
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.v, float noundef %i.x) #19
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !176
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.z, float noundef %i.ab) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !241
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.af = load float, ptr %i.ae, align 4, !tbaa !175
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ad, float noundef %i.af) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !242
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !243
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.aj) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !244
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.an = load float, ptr %i.am, align 4, !tbaa !179
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.al, float noundef %i.an) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !245
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !178
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ap, float noundef %i.ar) #19
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !246
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.av = load float, ptr %i.au, align 4, !tbaa !27
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.at, float noundef %i.av) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !247
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.az = load float, ptr %i.ay, align 4, !tbaa !248
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ax, float noundef %i.az) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !249
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !181
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bb, float noundef %i.bd) #19
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !250
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !180
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bf, float noundef %i.bh) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !251
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !252
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bj, float noundef %i.bl) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !219
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !183
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bn, float noundef %i.bp) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !218
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !184
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.br, float noundef %i.bt) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !253
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !185
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bv, float noundef %i.bx) #19
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !221
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !186
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bz, float noundef %i.cb) #19
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !220
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !187
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cc, float noundef %i.ce) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !254
  %i.ch = load float, ptr %i.d, align 4, !tbaa !188
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cg, float noundef %i.ch) #19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !231
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !20
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cj, float noundef %i.cl) #19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !223
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cp = load float, ptr %i.co, align 4, !tbaa !192
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cn, float noundef %i.cp) #19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !222
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !193
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cr, float noundef %i.ct) #19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !255
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !194
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cv, float noundef %i.cx) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !226
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.db = load float, ptr %i.da, align 4, !tbaa !195
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cz, float noundef %i.db) #19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !225
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.df = load float, ptr %i.de, align 4, !tbaa !189
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dd, float noundef %i.df) #19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !224
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.dj = load float, ptr %i.di, align 4, !tbaa !190
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dh, float noundef %i.dj) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !256
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !191
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dl, float noundef %i.dn) #19
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !232
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !22
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dp, float noundef %i.dr) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !233
end_hunk_1
