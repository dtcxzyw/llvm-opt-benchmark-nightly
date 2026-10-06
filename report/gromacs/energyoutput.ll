Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/energyoutput?download=true
inline.NumInlined: 1042
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12EnergyOutput19addDataAtEnergyStepEbbdfPK14gmx_enerdata_tPK8t_lambdaPA3_KfNS_16PTCouplingArraysEiS9_S9_PK14gmx_ekindata_tPS7_PKNS_11ConstraintsE(ptr noundef nonnull align 8 dereferenceable(392) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, double noundef %3, float noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly byval(%"struct.gmx::PTCouplingArrays") align 8 captures(none) %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 4 uses
  %i.b = alloca [6 x float], align 16             ; 5 uses
  %i.c = alloca [6 x float], align 16             ; 8 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca [5 x float], align 16             ; 8 uses
  %15 = alloca %"struct.gmx::EnumerationArray.393", align 8 ; 11 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %i.i = alloca float, align 4                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 119
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 380
  tail call void @_Z16add_ebin_indexedP6t_ebiniN3gmx8ArrayRefIbEENS2_IKfEEb(ptr noundef %i.k, i32 noundef %i.m, ptr nonnull %i.n, ptr nonnull %i.o, ptr %5, ptr nonnull %i.p, i1 noundef zeroext %2)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !163
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef float @_ZNK3gmx11Constraints4rmsdEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  store float %i.s, ptr %i.a, align 4, !tbaa !169
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i32, ptr %i.u, align 8, !tbaa !182
  %i.w = load i32, ptr %i.q, align 4, !tbaa !163
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !173, !range !151, !noundef !152
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !172, !range !151, !noundef !152
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load float, ptr %7, align 4, !tbaa !169 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !169
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ak = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ae, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !169
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.al, ptr %i.aj, align 4, !tbaa !169
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.an = load float, ptr %i.am, align 4, !tbaa !169
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float %i.an, ptr %i.ao, align 4, !tbaa !169
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !169
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.as = load float, ptr %i.ar, align 4, !tbaa !169
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = phi float [ %i.ag, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %i.au = phi float [ %i.ai, %bb.e ], [ %i.as, %bb.f ] ; 2 uses
  %.0186.in = phi i32 [ 6, %bb.e ], [ 3, %bb.f ]
  store float %i.ad, ptr %i.c, align 16, !tbaa !169
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.at, ptr %i.av, align 4, !tbaa !169
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.au, ptr %i.aw, align 8, !tbaa !169
  %i.ax = fmul float %i.ad, %i.at
  %i.ay = fmul float %i.ax, %i.au                 ; 2 uses
  store float %i.ay, ptr %i.d, align 4, !tbaa !169
  %i.az = fpext float %4 to double
  %i.ba = fmul double %i.az, f0x3A6071F778ED6AAF
  %i.bb = fpext float %i.ay to double
  %i.bc = fmul double %i.bb, 1.000000e-09
  %i.bd = fmul double %i.bc, 1.000000e-09
  %i.be = fmul double %i.bd, 1.000000e-09
  %i.bf = fdiv double %i.ba, %i.be
  %i.bg = fptrunc double %i.bf to float
  store float %i.bg, ptr %i.e, align 4, !tbaa !169
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !183
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.bh, i32 noundef %i.bj, i32 noundef %.0186.in, ptr noundef nonnull %i.c, i1 noundef zeroext %2)
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !184
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.bk, i32 noundef %i.bm, i32 noundef 1, ptr noundef nonnull %i.d, i1 noundef zeroext %2)
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !185
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.bn, i32 noundef %i.bp, i32 noundef 1, ptr noundef nonnull %i.e, i1 noundef zeroext %2)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !170, !range !151, !noundef !152
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = load float, ptr %i.d, align 4, !tbaa !169
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !171
  %i.bw = fmul float %i.bt, %i.bv
  %i.bx = fpext float %i.bw to double
  %i.by = fdiv double %i.bx, f0x40309AFAE1F7C60E
  %i.bz = fptrunc double %i.by to float
  store float %i.bz, ptr %i.i, align 4, !tbaa !169
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !186
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.ca, i32 noundef %i.cc, i32 noundef 1, ptr noundef nonnull %i.i, i1 noundef zeroext %2)
  %i.cd = load float, ptr %i.i, align 4, !tbaa !169
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 324
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !169
  %i.cg = fadd float %i.cd, %i.cf
  store float %i.cg, ptr %i.f, align 4, !tbaa !169
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !187
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.ch, i32 noundef %i.cj, i32 noundef 1, ptr noundef nonnull %i.f, i1 noundef zeroext %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !179, !range !151, !noundef !152
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !188
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.cn, i32 noundef %i.cp, i32 noundef 9, ptr noundef %10, i1 noundef zeroext %2)
  %i.cq = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !189
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.cq, i32 noundef %i.cs, i32 noundef 9, ptr noundef %11, i1 noundef zeroext %2)
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !169
  %i.cv = fpext float %i.cu to double
  %i.cw = load float, ptr %11, align 4, !tbaa !169
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !169
  %i.cz = fadd float %i.cw, %i.cy
  %i.da = fpext float %i.cz to double
  %i.db = fneg double %i.da
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double 5.000000e-01, double %i.cv)
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.de = load float, ptr %i.dd, align 4, !tbaa !169
  %i.df = fpext float %i.de to double
  %i.dg = fmul double %i.dc, %i.df
  %i.dh = fptrunc double %i.dg to float
  store float %i.dh, ptr %i.h, align 4, !tbaa !169
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !190
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.di, i32 noundef %i.dk, i32 noundef 1, ptr noundef nonnull %i.h, i1 noundef zeroext %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !168
  switch i32 %i.dm, label %bb.m [
    i32 2, label %bb.l
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.dn = load ptr, ptr %8, align 8, !tbaa !398   ; 3 uses
  %16 = load float, ptr %i.dn, align 4, !tbaa !169
  %17 = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %18 = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %17, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 true>, <6 x float> poison), !tbaa !169
  %19 = shufflevector <6 x float> %18, <6 x float> poison, <4 x i32> <i32 poison, i32 1, i32 5, i32 0>
  %20 = insertelement <4 x float> %19, float %16, i64 0
  store <4 x float> %20, ptr %i.b, align 16, !tbaa !169
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dq = load <2 x float>, ptr %i.do, align 4, !tbaa !169
  store <2 x float> %i.dq, ptr %i.dp, align 16, !tbaa !169
  %i.dr = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !191
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !172, !range !151, !noundef !152
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = select i1 %i.dw, i32 6, i32 3
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.dr, i32 noundef %i.dt, i32 noundef %i.dx, ptr noundef nonnull %i.b, i1 noundef zeroext %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !178, !range !151, !noundef !152
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !52
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.eb, i32 noundef %i.ed, i32 noundef 3, ptr noundef %13, i1 noundef zeroext %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not199 = icmp eq ptr %12, null                ; 2 uses
  br i1 %.not199, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !418
  %i.eg = fcmp une float %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = load float, ptr %7, align 4, !tbaa !169
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !169
  %i.ek = fmul float %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !169
  %i.en = fmul float %i.ek, %i.em                 ; 2 uses
  store float %i.en, ptr %i.d, align 4, !tbaa !169
  %i.eo = fpext float %4 to double
  %i.ep = fmul double %i.eo, f0x3A6071F778ED6AAF
  %i.eq = fpext float %i.en to double
  %i.er = fmul double %i.eq, 1.000000e-09
  %i.es = fmul double %i.er, 1.000000e-09
  %i.et = fmul double %i.es, 1.000000e-09
  %i.eu = fdiv double %i.ep, %i.et
  %i.ev = fptrunc double %i.eu to float
  store float %i.ev, ptr %i.e, align 4, !tbaa !169
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !53
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.ew, i32 noundef %i.ey, i32 noundef 1, ptr noundef nonnull %i.ez, i1 noundef zeroext %2)
  %i.fa = load float, ptr %i.ee, align 8, !tbaa !418
  %i.fb = load float, ptr %i.ez, align 8, !tbaa !419
  %i.fc = fpext float %i.fb to double
  %i.fd = fmul double %i.fc, f0x3D719799812DEA11
  %i.fe = load float, ptr %i.e, align 4, !tbaa !169
  %i.ff = fpext float %i.fe to double
  %i.fg = load float, ptr %i.el, align 4, !tbaa !169
  %i.fh = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.fg, i64 1
  %i.fj = fpext <2 x float> %i.fi to <2 x double>
  %i.fk = fmul <2 x double> %i.fj, <double 1.000000e+00, double 1.000000e-09>
  %i.fl = insertelement <2 x double> <double poison, double f0x401921FB54442D18>, double %i.fd, i64 0
  %i.fm = fdiv <2 x double> %i.fk, %i.fl          ; 2 uses
  %i.fn = insertelement <2 x double> %i.fm, double %i.ff, i64 0
  %i.fo = fmul <2 x double> %i.fm, %i.fn          ; 2 uses
  %shift = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.fo, %shift
  %i.fp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fq = fdiv double 1.000000e+00, %i.fp
  %i.fr = fptrunc double %i.fq to float
  store float %i.fr, ptr %i.h, align 4, !tbaa !169
  %i.fs = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !54
  call void @_Z8add_ebinP6t_ebiniiPKfb(ptr noundef %i.fs, i32 noundef %i.fu, i32 noundef 1, ptr noundef nonnull %i.h, i1 noundef zeroext %2)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !57
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %.preheader229, label %.loopexit230

.preheader229:                                    ; preds = %bb.r
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !56 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.preheader228.lr.ph, label %.loopexit230

.preheader228.lr.ph:                              ; preds = %.preheader229
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 392
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 211
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 464
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 488
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.lr.ph, %._crit_edge
  %i.gn = phi i32 [ %i.fz, %.preheader228.lr.ph ], [ %i.ir, %._crit_edge ] ; 3 uses
  %.0177238 = phi i32 [ 0, %.preheader228.lr.ph ], [ %.1178.lcssa, %._crit_edge ] ; 2 uses
  %.0185237 = phi i32 [ 0, %.preheader228.lr.ph ], [ %i.is, %._crit_edge ] ; 6 uses
  %i.go = icmp slt i32 %.0185237, %i.gn
  br i1 %i.go, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader228
  %i.gp = sext i32 %.0177238 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv = phi i64 [ %i.gp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.gq = phi i32 [ %i.gn, %.lr.ph.preheader ], [ %i.io, %bb.ab ] ; 2 uses
  %.0236 = phi i32 [ %.0185237, %.lr.ph.preheader ], [ %i.in, %bb.ab ] ; 4 uses
  %i.gr = icmp samesign ult i32 %.0185237, %.0236
  %i.gs = mul nuw nsw i32 %i.gq, %.0185237
  %i.gt = add nsw i32 %i.gs, %.0236
  %i.gu = mul nuw nsw i32 %i.gq, %.0236
  %i.gv = add nsw i32 %i.gu, %.0185237
  %i.gw = select i1 %i.gr, i32 %i.gt, i32 %i.gv
  %i.gx = sext i32 %i.gw to i64                   ; 5 uses
  %i.gy = load i8, ptr %i.gb, align 8, !tbaa !164, !range !151, !noundef !152
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.ha = load ptr, ptr %i.gc, align 8, !tbaa !212
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !169
  store float %i.hc, ptr %i.g, align 16, !tbaa !169
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %.1176 = phi i32 [ 1, %bb.s ], [ 0, %.lr.ph ]   ; 3 uses
  %i.hd = load i8, ptr %i.gf, align 1, !tbaa !164, !range !151, !noundef !152
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hf = load ptr, ptr %i.gg, align 8, !tbaa !212
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.gx
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !169
  %i.hi = add nuw nsw i32 %.1176, 1
  %i.hj = zext nneg i32 %.1176 to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hj
  store float %i.hh, ptr %i.hk, align 4, !tbaa !169
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1176.1 = phi i32 [ %i.hi, %bb.u ], [ %.1176, %bb.t ] ; 3 uses
  %i.hl = load i8, ptr %i.gh, align 2, !tbaa !164, !range !151, !noundef !152
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hn = load ptr, ptr %i.gi, align 8, !tbaa !212
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gx
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !169
  %i.hq = add nuw nsw i32 %.1176.1, 1
  %i.hr = zext nneg i32 %.1176.1 to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hr
  store float %i.hp, ptr %i.hs, align 4, !tbaa !169
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1176.2 = phi i32 [ %i.hq, %bb.w ], [ %.1176.1, %bb.v ] ; 3 uses
  %i.ht = load i8, ptr %i.gj, align 1, !tbaa !164, !range !151, !noundef !152
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hv = load ptr, ptr %i.gk, align 8, !tbaa !212
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.gx
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !169
  %i.hy = add nuw nsw i32 %.1176.2, 1
  %i.hz = zext nneg i32 %.1176.2 to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hz
  store float %i.hx, ptr %i.ia, align 4, !tbaa !169
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1176.3 = phi i32 [ %i.hy, %bb.y ], [ %.1176.2, %bb.x ]
  %i.ib = load i8, ptr %i.gl, align 4, !tbaa !164, !range !151, !noundef !152
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.aa, label %bb.ab
end_hunk_0
begin_hunk_1_@_ZN3gmx12EnergyOutput24restoreFromEnergyHistoryERK15energyhistory_t:bb.a
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.iy, align 8, !tbaa !266
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.jc, align 8, !tbaa !266
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next.1
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next.1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.je, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.jg, align 8, !tbaa !266
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next.2
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next.2
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.jk, align 8, !tbaa !266
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next.3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next.3
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.jo, align 8, !tbaa !266
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next.4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next.4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.js, align 8, !tbaa !266
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.jt = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next.5
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next.5
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.jw, align 8, !tbaa !266
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv.next.6
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv.next.6
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.ka, align 8, !tbaa !266
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit185.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !549

bb.k:                                             ; preds = %._crit_edge
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !577
  tail call void @_Z38mde_delta_h_coll_restore_energyhistoryP18t_mde_delta_h_collPK17delta_h_history_t(ptr noundef nonnull %i.iu, ptr noundef %i.kc)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @_Z38mde_delta_h_coll_restore_energyhistoryP18t_mde_delta_h_collPK17delta_h_history_t(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK3gmx12EnergyOutput14numEnergyTermsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.c = load i32, ptr %i.b, align 8, !tbaa !260
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx12EnergyOutput23printEnergyConservationEP8_IO_FILEib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.134, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !230
  invoke void @_ZNK3gmx18EnergyDriftTracker17energyDriftStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %5, align 8, !tbaa !204
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.135, ptr noundef %i.e) #23 ; 0 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !204    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !205
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.l = load ptr, ptr %4, align 8, !tbaa !204    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !205
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.r = load ptr, ptr %4, align 8, !tbaa !204    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !205
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.b
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.136, i64 87, i64 1, ptr nonnull %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  ret void
}

declare void @_ZNK3gmx18EnergyDriftTracker17energyDriftStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #22

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !194}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!"p1 _ZTS6t_ebin", !10, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"_ZTS19TemperatureCoupling", !6, i64 0}
!17 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunctionbLS1_95EEE", !6, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = !{!"_ZTS16PressureCoupling", !6, i64 0}
!20 = !{!"_ZTSN3gmx16EnumerationArrayI20NonBondedEnergyTermsbLS1_5EEE", !6, i64 0}
!21 = !{!"p1 int", !10, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIiSaIiEE", !24, i64 0}
!26 = !{!"p1 float", !10, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIfSaIfEE", !29, i64 0}
!31 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!32 = !{!"p1 double", !10, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIdSaIdEE", !35, i64 0}
!37 = !{!"p1 _ZTS18t_mde_delta_h_coll", !10, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EP18t_mde_delta_h_collLb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJP18t_mde_delta_h_collSt14default_deleteIS0_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJP18t_mde_delta_h_collSt14default_deleteIS0_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implI18t_mde_delta_h_collSt14default_deleteIS0_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataI18t_mde_delta_h_collSt14default_deleteIS0_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrI18t_mde_delta_h_collSt14default_deleteIS0_EE", !42, i64 0}
!44 = !{!"p1 _ZTSN3gmx18EnergyDriftTrackerE", !10, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18EnergyDriftTrackerELb0EE", !44, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18EnergyDriftTrackerESt14default_deleteIS1_EEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN3gmx18EnergyDriftTrackerESt14default_deleteIS1_EEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18EnergyDriftTrackerESt14default_deleteIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18EnergyDriftTrackerESt14default_deleteIS1_ELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIN3gmx18EnergyDriftTrackerESt14default_deleteIS1_EE", !49, i64 0}
!51 = !{!"_ZTSN3gmx12EnergyOutputE", !13, i64 0, !14, i64 8, !15, i64 16, !15, i64 17, !15, i64 18, !15, i64 19, !16, i64 20, !17, i64 24, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !15, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !15, i64 152, !18, i64 156, !7, i64 160, !7, i64 164, !15, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !19, i64 184, !7, i64 188, !15, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !20, i64 208, !7, i64 216, !7, i64 220, !7, i64 224, !25, i64 232, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !30, i64 288, !31, i64 312, !15, i64 320, !36, i64 328, !43, i64 352, !30, i64 360, !50, i64 384}
!52 = !{!51, !7, i64 196}
!53 = !{!51, !7, i64 200}
!54 = !{!51, !7, i64 204}
!55 = !{!51, !7, i64 216}
!56 = !{!51, !7, i64 220}
!57 = !{!51, !7, i64 224}
!58 = !{!"_ZTS20IntegrationAlgorithm", !6, i64 0}
!59 = !{!"long", !6, i64 0}
!60 = !{!"_ZTS12CutoffScheme", !6, i64 0}
!61 = !{!"_ZTS19ComRemovalAlgorithm", !6, i64 0}
!62 = !{!"p1 _ZTSN3gmx8MtsLevelE", !10, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !65, i64 0}
!67 = !{!"_ZTS13EwaldGeometry", !6, i64 0}
!68 = !{!"_ZTS12LongRangeVdW", !6, i64 0}
!69 = !{!"_ZTS7PbcType", !6, i64 0}
!70 = !{!"_ZTS26EnsembleTemperatureSetting", !6, i64 0}
!71 = !{!"_ZTS20PressureCouplingType", !6, i64 0}
!72 = !{!"_ZTS15RefCoordScaling", !6, i64 0}
!73 = !{!"_ZTS23PressureCouplingOptions", !19, i64 0, !71, i64 4, !7, i64 8, !18, i64 12, !6, i64 16, !6, i64 52, !72, i64 88}
!74 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !10, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !77, i64 0}
!79 = !{!"_ZTS22CoulombInteractionType", !6, i64 0}
!80 = !{!"_ZTS20InteractionModifiers", !6, i64 0}
!81 = !{!"_ZTS15VanDerWaalsType", !6, i64 0}
!82 = !{!"_ZTS24DispersionCorrectionType", !6, i64 0}
!83 = !{!"_ZTS26FreeEnergyPerturbationType", !6, i64 0}
!84 = !{!"p1 _ZTS8t_lambda", !10, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !89, i64 0}
!91 = !{!"p1 _ZTS9t_simtemp", !10, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !91, i64 0}
!93 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !92, i64 0}
!94 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !93, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !95, i64 0}
!97 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !96, i64 0}
!98 = !{!"p1 _ZTS10t_expanded", !10, i64 0}
!99 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !98, i64 0}
!100 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !99, i64 0}
!101 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !100, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !102, i64 0}
!104 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !103, i64 0}
!105 = !{!"_ZTS27DistanceRestraintRefinement", !6, i64 0}
!106 = !{!"_ZTS26DistanceRestraintWeighting", !6, i64 0}
!107 = !{!"_ZTS19ConstraintAlgorithm", !6, i64 0}
!108 = !{!"_ZTS8WallType", !6, i64 0}
!109 = !{!"p1 _ZTS13pull_params_t", !10, i64 0}
!110 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !109, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !110, i64 0}
!112 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !111, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !112, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !113, i64 0}
!115 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !114, i64 0}
!116 = !{!"p1 _ZTSN3gmx9AwhParamsE", !10, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !116, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !117, i64 0}
!119 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !120, i64 0}
!122 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !121, i64 0}
!123 = !{!"p1 _ZTS5t_rot", !10, i64 0}
!124 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !123, i64 0}
!125 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !124, i64 0}
!126 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !125, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !126, i64 0}
!128 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !127, i64 0}
!129 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !128, i64 0}
!130 = !{!"_ZTS8SwapType", !6, i64 0}
!131 = !{!"p1 _ZTS12t_swapcoords", !10, i64 0}
!132 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !131, i64 0}
!133 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !132, i64 0}
!134 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !134, i64 0}
!136 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !135, i64 0}
!137 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !136, i64 0}
!138 = !{!"p1 _ZTS5t_IMD", !10, i64 0}
!139 = !{!"any p2 pointer", !10, i64 0}
!140 = !{!"p2 float", !139, i64 0}
!141 = !{!"_ZTS9t_grpopts", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !26, i64 16, !26, i64 24, !10, i64 32, !21, i64 40, !140, i64 48, !140, i64 56, !26, i64 64, !78, i64 72, !21, i64 96, !21, i64 104, !7, i64 112}
!142 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !10, i64 0}
!143 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !142, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !143, i64 0}
!145 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !144, i64 0}
!146 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !146, i64 0}
!148 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !147, i64 0}
!149 = !{!"_ZTS10t_inputrec", !7, i64 0, !58, i64 4, !59, i64 8, !7, i64 16, !59, i64 24, !7, i64 32, !60, i64 36, !7, i64 40, !7, i64 44, !61, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !13, i64 80, !13, i64 88, !15, i64 96, !66, i64 104, !18, i64 128, !18, i64 132, !18, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !18, i64 156, !18, i64 160, !67, i64 164, !18, i64 168, !68, i64 172, !69, i64 176, !15, i64 180, !15, i64 181, !70, i64 184, !18, i64 188, !16, i64 192, !7, i64 196, !15, i64 200, !73, i64 204, !78, i64 296, !78, i64 320, !7, i64 344, !18, i64 348, !18, i64 352, !18, i64 356, !18, i64 360, !79, i64 364, !80, i64 368, !18, i64 372, !18, i64 376, !18, i64 380, !18, i64 384, !15, i64 388, !81, i64 392, !80, i64 396, !18, i64 400, !18, i64 404, !82, i64 408, !18, i64 412, !18, i64 416, !83, i64 420, !90, i64 424, !15, i64 432, !97, i64 440, !15, i64 448, !104, i64 456, !105, i64 464, !18, i64 468, !106, i64 472, !15, i64 476, !7, i64 480, !18, i64 484, !18, i64 488, !18, i64 492, !7, i64 496, !18, i64 500, !18, i64 504, !7, i64 508, !18, i64 512, !7, i64 516, !7, i64 520, !107, i64 524, !7, i64 528, !18, i64 532, !7, i64 536, !15, i64 540, !18, i64 544, !59, i64 552, !7, i64 560, !108, i64 564, !18, i64 568, !6, i64 572, !6, i64 580, !18, i64 588, !15, i64 592, !115, i64 600, !15, i64 608, !122, i64 616, !15, i64 624, !129, i64 632, !130, i64 640, !137, i64 648, !15, i64 656, !138, i64 664, !18, i64 672, !6, i64 676, !7, i64 712, !7, i64 716, !7, i64 720, !7, i64 724, !18, i64 728, !18, i64 732, !18, i64 736, !18, i64 740, !141, i64 744, !15, i64 864, !15, i64 865, !15, i64 866, !15, i64 867, !142, i64 872, !148, i64 880}
!150 = !{!149, !15, i64 448}
!151 = !{i8 0, i8 2}
!152 = !{}
!153 = !{!98, !98, i64 0}
!154 = !{!"_ZTS23LambdaWeightCalculation", !6, i64 0}
!155 = !{!"_ZTS21LambdaMoveCalculation", !6, i64 0}
end_hunk_1
