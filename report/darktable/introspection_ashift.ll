Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@rect_nfa:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !301
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, 5.000000e-01 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, %i.h ; 4 uses
  %i.m = fsub reassoc nsz arcp contract afn double %i.f, %i.l
  store double %i.m, ptr %i.a, align 16, !tbaa !166
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !298 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !310
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, %i.k ; 4 uses
  %i.s = fadd reassoc nsz arcp contract afn double %i.r, %i.o
  store double %i.s, ptr %i.b, align 16, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !299 ; 5 uses
  %i.v = fsub reassoc nsz arcp contract afn double %i.u, %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !166
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !300 ; 5 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !166
  %i.ab = fadd reassoc nsz arcp contract afn double %i.u, %i.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.ab, ptr %i.ac, align 16, !tbaa !166
  %i.ad = fsub reassoc nsz arcp contract afn double %i.y, %i.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.ad, ptr %i.ae, align 16, !tbaa !166
  %i.af = fadd reassoc nsz arcp contract afn double %i.l, %i.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.af, ptr %i.ag, align 8, !tbaa !166
  %i.ah = fsub reassoc nsz arcp contract afn double %i.o, %i.r
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.ah, ptr %i.ai, align 8, !tbaa !166
  %i.aj = fcmp reassoc nsz arcp contract afn uge double %i.f, %i.u
  %i.ak = fcmp reassoc nsz arcp contract afn ugt double %i.o, %i.y
  %or.cond.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.f, label %ri_ini.exit

bb.f:                                             ; preds = %bb.e
  %i.al = fcmp reassoc nsz arcp contract afn oge double %i.f, %i.u
  %i.am = fcmp reassoc nsz arcp contract afn olt double %i.o, %i.y
  %or.cond56.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond56.i, label %ri_ini.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = fcmp reassoc nsz arcp contract afn ule double %i.f, %i.u
  %i.ao = fcmp reassoc nsz arcp contract afn ult double %i.o, %i.y
  %or.cond57.i = select i1 %i.an, i1 true, i1 %i.ao
  %i.ap = select i1 %or.cond57.i, i64 3, i64 2
  br label %ri_ini.exit

ri_ini.exit:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.e ], [ 1, %bb.f ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !166 ; 2 uses
  store double %i.as, ptr %i.d, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !166 ; 2 uses
  store double %i.au, ptr %i.aq, align 8, !tbaa !166
  %i.av = add nuw nsw i64 %.0.i, 1
  %i.aw = and i64 %i.av, 3                        ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !166
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.ay, ptr %i.az, align 8, !tbaa !166
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !166
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !166
  %i.bd = xor i64 %.0.i, 2                        ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !166
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !166
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store double %i.bi, ptr %i.bj, align 8, !tbaa !166
  %i.bk = add nuw nsw i64 %.0.i, 3
  %i.bl = and i64 %i.bk, 3                        ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store double %i.bn, ptr %i.bo, align 8, !tbaa !166
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !166
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store double %i.bq, ptr %i.br, align 8, !tbaa !166
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.bu = insertelement <2 x double> poison, double %i.as, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.au, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn <2 x double> @llvm.ceil.v2f64(<2 x double> %i.bv)
  %i.bx = fptosi <2 x double> %i.bw to <2 x i32>
  %i.by = add nsw <2 x i32> %i.bx, <i32 -1, i32 0>
  store <2 x i32> %i.by, ptr %i.bs, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <2 x double> splat (double f0xFFEFFFFFFFFFFFFF), ptr %i.bz, align 8, !tbaa !166
  tail call fastcc void @ri_inc(ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ca = load i32, ptr %i.bs, align 8, !tbaa !313 ; 2 uses
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to double
  %i.cc = load double, ptr %i.bg, align 8, !tbaa !166
  %i.cd = fcmp reassoc nsz arcp contract afn uge double %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph, label %ri_del.exit

.lr.ph:                                           ; preds = %ri_ini.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %ri_end.exit
  %i.ci = phi i32 [ %i.ca, %.lr.ph ], [ %i.dl, %ri_end.exit ] ; 3 uses
  %.088 = phi i32 [ 0, %.lr.ph ], [ %.1, %ri_end.exit ] ; 6 uses
  %.02287 = phi i32 [ 0, %.lr.ph ], [ %.123, %ri_end.exit ] ; 5 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.i, label %ri_end.exit

bb.i:                                             ; preds = %bb.h
  %i.ck = load i32, ptr %i.bt, align 4, !tbaa !314 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.j, label %ri_end.exit

bb.j:                                             ; preds = %bb.i
  %i.cm = load i32, ptr %i.ce, align 8, !tbaa !289 ; 2 uses
  %i.cn = icmp slt i32 %i.ci, %i.cm
  br i1 %i.cn, label %bb.k, label %ri_end.exit

bb.k:                                             ; preds = %bb.j
  %i.co = load i32, ptr %i.cf, align 4, !tbaa !290
  %i.cp = icmp slt i32 %i.ck, %i.co
  br i1 %i.cp, label %bb.l, label %ri_end.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = add nsw i32 %.02287, 1                  ; 2 uses
  %i.cr = load double, ptr %i.cg, align 8, !tbaa !309
  %i.cs = load double, ptr %i.ch, align 8, !tbaa !572 ; 2 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !291   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.149) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cv = fcmp reassoc nsz arcp contract afn olt double %i.cs, 0.000000e+00
  br i1 %i.cv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.151) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cw = mul i32 %i.cm, %i.ck
  %i.cx = add i32 %i.cw, %i.ci
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !166 ; 2 uses
  %i.db = fcmp reassoc nsz arcp contract afn oeq double %i.da, -1.024000e+03
  br i1 %i.db, label %isaligned.exit.thread, label %isaligned.exit

isaligned.exit:                                   ; preds = %bb.p
  %i.dc = fsub reassoc nsz arcp contract afn double %i.cr, %i.da ; 3 uses
  %i.dd = fcmp reassoc nsz arcp contract afn olt double %i.dc, 0.000000e+00
  %i.de = fneg reassoc nsz arcp contract afn double %i.dc
  %spec.select.i = select nsz i1 %i.dd, double %i.de, double %i.dc ; 3 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i, f0x4012D97C7F3321D2
  %i.dg = fadd reassoc nsz arcp contract afn double %spec.select.i, f0xC01921FB54442D18 ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt double %i.dg, 0.000000e+00
  %i.di = fneg reassoc nsz arcp contract afn double %i.dg
  %spec.select35.i = select nsz i1 %i.dh, double %i.di, double %i.dg
  %.1.i = select nsz i1 %i.df, double %spec.select35.i, double %spec.select.i
  %i.dj = fcmp reassoc nsz arcp contract afn ugt double %.1.i, %i.cs
  %i.dk = add nsw i32 %.088, 1
  %cond.fr = freeze i1 %i.dj
  br i1 %cond.fr, label %isaligned.exit.thread, label %ri_end.exit

isaligned.exit.thread:                            ; preds = %bb.p, %isaligned.exit
  br label %ri_end.exit

ri_end.exit:                                      ; preds = %isaligned.exit.thread, %isaligned.exit, %bb.h, %bb.i, %bb.j, %bb.k
  %.123 = phi i32 [ %.02287, %bb.h ], [ %.02287, %bb.i ], [ %.02287, %bb.k ], [ %.02287, %bb.j ], [ %i.cq, %isaligned.exit ], [ %i.cq, %isaligned.exit.thread ] ; 2 uses
  %.1 = phi i32 [ %.088, %bb.h ], [ %.088, %bb.i ], [ %.088, %bb.k ], [ %.088, %bb.j ], [ %i.dk, %isaligned.exit ], [ %.088, %isaligned.exit.thread ] ; 2 uses
  tail call fastcc void @ri_inc(ptr noundef nonnull %i.d)
  %i.dl = load i32, ptr %i.bs, align 8, !tbaa !313 ; 2 uses
  %i.dm = sitofp reassoc nsz arcp contract afn i32 %i.dl to double
  %i.dn = load double, ptr %i.bg, align 8, !tbaa !166
  %i.do = fcmp reassoc nsz arcp contract afn uge double %i.dn, %i.dm
  br i1 %i.do, label %bb.h, label %ri_del.exit

ri_del.exit:                                      ; preds = %ri_end.exit, %ri_ini.exit
  %.022.lcssa = phi i32 [ 0, %ri_ini.exit ], [ %.123, %ri_end.exit ] ; 9 uses
  %.0.lcssa = phi i32 [ 0, %ri_ini.exit ], [ %.1, %ri_end.exit ] ; 7 uses
  tail call void @free(ptr noundef nonnull %i.d) #34
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !305 ; 7 uses
  %i.dr = or i32 %.0.lcssa, %.022.lcssa
  %or.cond.not.i = icmp sgt i32 %i.dr, -1
  br i1 %or.cond.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %ri_del.exit
  %i.ds = icmp sgt i32 %.0.lcssa, %.022.lcssa
  %i.dt = fcmp reassoc nsz arcp contract afn ole double %i.dq, 0.000000e+00
  %or.cond3.i = or i1 %i.ds, %i.dt
  %i.du = fcmp reassoc nsz arcp contract afn oge double %i.dq, 1.000000e+00
  %or.cond5.i = or i1 %i.du, %or.cond3.i
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %ri_del.exit
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.183) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.dv = icmp eq i32 %.0.lcssa, 0
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = fneg reassoc nsz arcp contract afn double %2
  br label %nfa.exit

bb.u:                                             ; preds = %bb.s
  %i.dx = icmp eq i32 %.022.lcssa, %.0.lcssa
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %.022.lcssa to double
  %i.dz = tail call reassoc ninf nsz arcp contract afn double @llvm.log10.f64(double %i.dq)
  %i.ea = fmul reassoc nsz arcp contract afn double %i.dz, %i.dy
  %i.eb = fadd reassoc nsz arcp contract afn double %i.ea, %2
  %i.ec = fneg reassoc nsz arcp contract afn double %i.eb
  br label %nfa.exit

bb.w:                                             ; preds = %bb.u
  %i.ed = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.dq ; 2 uses
  %i.ee = sitofp reassoc nsz arcp contract afn i32 %.022.lcssa to double ; 12 uses
  %i.ef = fadd reassoc nsz arcp contract afn double %i.ee, 1.000000e+00 ; 13 uses
  %i.eg = fcmp reassoc nsz arcp contract afn ogt double %i.ef, 1.500000e+01
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = fadd reassoc nnan nsz arcp contract afn double %i.ee, 5.000000e-01
  %i.ei = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.ef)
  %i.ej = fmul reassoc nsz arcp contract afn double %i.ei, %i.eh
  %i.ek = fmul reassoc nnan nsz arcp contract afn double %i.ef, 5.000000e-01
  %i.el = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 6)
  %i.em = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.el, i64 1
  %i.eo = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double f0x3F543A2730ABEE4D>, %i.en ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = tail call reassoc nsz arcp contract afn double @llvm.sinh.f64(double %i.ep)
  %i.er = fmul reassoc nsz arcp contract afn double %i.eq, %i.ef
  %i.es = extractelement <2 x double> %i.eo, i64 1
  %i.et = fadd reassoc nsz arcp contract afn double %i.er, %i.es
  %i.eu = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.et)
  %i.ev = fmul reassoc nsz arcp contract afn double %i.ek, %i.eu
  %i.ew = fsub reassoc nsz arcp contract afn double f0xBFB4C071BCDA0A48, %i.ee
  %i.ex = fadd reassoc nsz arcp contract afn double %i.ew, %i.ej
  %i.ey = fadd reassoc nsz arcp contract afn double %i.ex, %i.ev
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ez = fadd reassoc nnan nsz arcp contract afn double %i.ee, 1.500000e+00
  %i.fa = fadd reassoc nsz arcp contract afn double %i.ee, 6.500000e+00 ; 2 uses
  %i.fb = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.fa)
  %i.fc = fmul reassoc nsz arcp contract afn double %i.fb, %i.ez
  %i.fd = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ef)
  %i.fe = fadd reassoc nsz arcp contract afn double %i.ee, 2.000000e+00
  %i.ff = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fe)
  %i.fg = fadd reassoc nsz arcp contract afn double %i.ee, 3.000000e+00
  %i.fh = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fg)
  %i.fi = fmul reassoc nnan nsz arcp contract afn double %i.ef, f0x40E1BA8971D996E0
  %i.fj = fadd reassoc nsz arcp contract afn double %i.ee, 4.000000e+00
  %i.fk = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fj)
  %i.fl = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 3)
  %i.fm = fmul reassoc nnan nsz arcp contract afn double %i.fl, f0x40C0F79F65E4CBC7
  %i.fn = fadd reassoc nsz arcp contract afn double %i.ee, 5.000000e+00
  %i.fo = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fn)
  %i.fp = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 4)
  %i.fq = fmul reassoc nnan nsz arcp contract afn double %i.fp, f0x409243B4BB0CDBDC
  %i.fr = fadd reassoc nsz arcp contract afn double %i.ee, 6.000000e+00
  %i.fs = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fr)
  %i.ft = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 5)
  %i.fu = fmul reassoc nnan nsz arcp contract afn double %i.ft, f0x4054F786D45D1E70
  %i.fv = fadd reassoc nsz arcp contract afn double %i.ee, 7.000000e+00
  %i.fw = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.fv)
  %i.fx = fadd reassoc nsz arcp contract afn double %i.fa, %i.fd
  %i.fy = fadd reassoc nsz arcp contract afn double %i.ff, %i.fx
  %i.fz = fadd reassoc nsz arcp contract afn double %i.fh, %i.fy
  %i.ga = fadd reassoc nsz arcp contract afn double %i.fk, %i.fz
  %i.gb = fadd reassoc nsz arcp contract afn double %i.fo, %i.ga
  %i.gc = fadd reassoc nsz arcp contract afn double %i.fs, %i.gb
  %i.gd = fadd reassoc nsz arcp contract afn double %i.fw, %i.gc
  %i.ge = fsub reassoc nsz arcp contract afn double %i.fc, %i.gd
  %i.gf = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.ef, i32 6)
  %i.gg = fmul reassoc nnan nsz arcp contract afn double %i.gf, f0x40040D9320069C59
  %reass.add.i = fadd reassoc nnan nsz arcp contract afn double %i.fi, f0x40F3C14A0BDBD655
  %reass.mul.i = fmul reassoc nnan nsz arcp contract afn double %reass.add.i, %i.ef
  %i.gh = fadd reassoc nsz arcp contract afn double %i.fm, f0x40F2572A21650A46
  %i.gi = fadd reassoc nsz arcp contract afn double %i.gh, %i.fq
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gi, %i.fu
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gj, %i.gg
  %i.gl = fadd reassoc nsz arcp contract afn double %i.gk, %reass.mul.i
  %i.gm = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.gl)
  %i.gn = fadd reassoc nsz arcp contract afn double %i.ge, %i.gm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.go = phi reassoc nsz arcp contract afn double [ %i.ey, %bb.x ], [ %i.gn, %bb.y ]
  %i.gp = sitofp reassoc nsz arcp contract afn i32 %.0.lcssa to double ; 13 uses
  %i.gq = fadd reassoc nsz arcp contract afn double %i.gp, 1.000000e+00 ; 13 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt double %i.gq, 1.500000e+01
  br i1 %i.gr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gs = fadd reassoc nnan nsz arcp contract afn double %i.gp, 5.000000e-01
  %i.gt = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.gq)
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, %i.gs
  %i.gv = fmul reassoc nnan nsz arcp contract afn double %i.gq, 5.000000e-01
  %i.gw = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 6)
  %i.gx = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gw, i64 1
  %i.gz = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double f0x3F543A2730ABEE4D>, %i.gy ; 2 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0
  %i.hb = tail call reassoc nsz arcp contract afn double @llvm.sinh.f64(double %i.ha)
  %i.hc = fmul reassoc nsz arcp contract afn double %i.hb, %i.gq
  %i.hd = extractelement <2 x double> %i.gz, i64 1
  %i.he = fadd reassoc nsz arcp contract afn double %i.hc, %i.hd
  %i.hf = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.he)
  %i.hg = fmul reassoc nsz arcp contract afn double %i.gv, %i.hf
  %i.hh = fsub reassoc nsz arcp contract afn double f0xBFB4C071BCDA0A48, %i.gp
  %i.hi = fadd reassoc nsz arcp contract afn double %i.hh, %i.gu
  %i.hj = fadd reassoc nsz arcp contract afn double %i.hi, %i.hg
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.hk = fadd reassoc nnan nsz arcp contract afn double %i.gp, 1.500000e+00
  %i.hl = fadd reassoc nsz arcp contract afn double %i.gp, 6.500000e+00 ; 2 uses
  %i.hm = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.hl)
  %i.hn = fmul reassoc nsz arcp contract afn double %i.hm, %i.hk
  %i.ho = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.gq)
  %i.hp = fadd reassoc nsz arcp contract afn double %i.gp, 2.000000e+00
  %i.hq = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hp)
  %i.hr = fadd reassoc nsz arcp contract afn double %i.gp, 3.000000e+00
  %i.hs = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hr)
  %i.ht = fmul reassoc nnan nsz arcp contract afn double %i.gq, f0x40E1BA8971D996E0
  %i.hu = fadd reassoc nsz arcp contract afn double %i.gp, 4.000000e+00
  %i.hv = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hu)
  %i.hw = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 3)
  %i.hx = fmul reassoc nnan nsz arcp contract afn double %i.hw, f0x40C0F79F65E4CBC7
  %i.hy = fadd reassoc nsz arcp contract afn double %i.gp, 5.000000e+00
  %i.hz = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.hy)
  %i.ia = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 4)
  %i.ib = fmul reassoc nnan nsz arcp contract afn double %i.ia, f0x409243B4BB0CDBDC
  %i.ic = fadd reassoc nsz arcp contract afn double %i.gp, 6.000000e+00
  %i.id = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ic)
  %i.ie = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 5)
  %i.if = fmul reassoc nnan nsz arcp contract afn double %i.ie, f0x4054F786D45D1E70
  %i.ig = fadd reassoc nsz arcp contract afn double %i.gp, 7.000000e+00
  %i.ih = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ig)
  %i.ii = fadd reassoc nsz arcp contract afn double %i.hl, %i.ho
  %i.ij = fadd reassoc nsz arcp contract afn double %i.hq, %i.ii
  %i.ik = fadd reassoc nsz arcp contract afn double %i.hs, %i.ij
  %i.il = fadd reassoc nsz arcp contract afn double %i.hv, %i.ik
  %i.im = fadd reassoc nsz arcp contract afn double %i.hz, %i.il
  %i.in = fadd reassoc nsz arcp contract afn double %i.id, %i.im
  %i.io = fadd reassoc nsz arcp contract afn double %i.ih, %i.in
  %i.ip = fsub reassoc nsz arcp contract afn double %i.hn, %i.io
  %i.iq = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.gq, i32 6)
  %i.ir = fmul reassoc nnan nsz arcp contract afn double %i.iq, f0x40040D9320069C59
  %reass.add126.i = fadd reassoc nnan nsz arcp contract afn double %i.ht, f0x40F3C14A0BDBD655
  %reass.mul127.i = fmul reassoc nnan nsz arcp contract afn double %reass.add126.i, %i.gq
  %i.is = fadd reassoc nsz arcp contract afn double %i.hx, f0x40F2572A21650A46
  %i.it = fadd reassoc nsz arcp contract afn double %i.is, %i.ib
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, %i.if
  %i.iv = fadd reassoc nsz arcp contract afn double %i.iu, %i.ir
  %i.iw = fadd reassoc nsz arcp contract afn double %i.iv, %reass.mul127.i
  %i.ix = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.iw)
  %i.iy = fadd reassoc nsz arcp contract afn double %i.ip, %i.ix
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.iz = phi reassoc nsz arcp contract afn double [ %i.hj, %bb.aa ], [ %i.iy, %bb.ab ]
  %i.ja = sub nuw nsw i32 %.022.lcssa, %.0.lcssa
  %i.jb = sitofp reassoc nsz arcp contract afn i32 %i.ja to double ; 12 uses
  %i.jc = fadd reassoc nsz arcp contract afn double %i.jb, 1.000000e+00 ; 13 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt double %i.jc, 1.500000e+01
  br i1 %i.jd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.je = fadd reassoc nnan nsz arcp contract afn double %i.jb, 5.000000e-01
  %i.jf = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.jc)
  %i.jg = fmul reassoc nsz arcp contract afn double %i.jf, %i.je
  %i.jh = fmul reassoc nnan nsz arcp contract afn double %i.jc, 5.000000e-01
  %i.ji = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 6)
  %i.jj = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.ji, i64 1
  %i.jl = fdiv reassoc nsz arcp contract afn <2 x double> <double 1.000000e+00, double f0x3F543A2730ABEE4D>, %i.jk ; 2 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0
  %i.jn = tail call reassoc nsz arcp contract afn double @llvm.sinh.f64(double %i.jm)
  %i.jo = fmul reassoc nsz arcp contract afn double %i.jn, %i.jc
  %i.jp = extractelement <2 x double> %i.jl, i64 1
  %i.jq = fadd reassoc nsz arcp contract afn double %i.jo, %i.jp
  %i.jr = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jq)
  %i.js = fmul reassoc nsz arcp contract afn double %i.jh, %i.jr
  %i.jt = fsub reassoc nsz arcp contract afn double f0xBFB4C071BCDA0A48, %i.jb
  %i.ju = fadd reassoc nsz arcp contract afn double %i.jt, %i.jg
  %i.jv = fadd reassoc nsz arcp contract afn double %i.ju, %i.js
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.jw = fadd reassoc nnan nsz arcp contract afn double %i.jb, 1.500000e+00
  %i.jx = fadd reassoc nsz arcp contract afn double %i.jb, 6.500000e+00 ; 2 uses
  %i.jy = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jx)
  %i.jz = fmul reassoc nsz arcp contract afn double %i.jy, %i.jw
  %i.ka = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.jc)
  %i.kb = fadd reassoc nsz arcp contract afn double %i.jb, 2.000000e+00
  %i.kc = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kb)
  %i.kd = fadd reassoc nsz arcp contract afn double %i.jb, 3.000000e+00
  %i.ke = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kd)
  %i.kf = fmul reassoc nnan nsz arcp contract afn double %i.jc, f0x40E1BA8971D996E0
  %i.kg = fadd reassoc nsz arcp contract afn double %i.jb, 4.000000e+00
  %i.kh = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kg)
  %i.ki = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 3)
  %i.kj = fmul reassoc nnan nsz arcp contract afn double %i.ki, f0x40C0F79F65E4CBC7
  %i.kk = fadd reassoc nsz arcp contract afn double %i.jb, 5.000000e+00
  %i.kl = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.kk)
  %i.km = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 4)
  %i.kn = fmul reassoc nnan nsz arcp contract afn double %i.km, f0x409243B4BB0CDBDC
  %i.ko = fadd reassoc nsz arcp contract afn double %i.jb, 6.000000e+00
  %i.kp = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ko)
  %i.kq = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 5)
  %i.kr = fmul reassoc nnan nsz arcp contract afn double %i.kq, f0x4054F786D45D1E70
  %i.ks = fadd reassoc nsz arcp contract afn double %i.jb, 7.000000e+00
  %i.kt = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ks)
  %i.ku = fadd reassoc nsz arcp contract afn double %i.jx, %i.ka
  %i.kv = fadd reassoc nsz arcp contract afn double %i.kc, %i.ku
  %i.kw = fadd reassoc nsz arcp contract afn double %i.ke, %i.kv
  %i.kx = fadd reassoc nsz arcp contract afn double %i.kh, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn double %i.kl, %i.kx
  %i.kz = fadd reassoc nsz arcp contract afn double %i.kp, %i.ky
  %i.la = fadd reassoc nsz arcp contract afn double %i.kt, %i.kz
  %i.lb = fsub reassoc nsz arcp contract afn double %i.jz, %i.la
  %i.lc = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.jc, i32 6)
  %i.ld = fmul reassoc nnan nsz arcp contract afn double %i.lc, f0x40040D9320069C59
  %reass.add144.i = fadd reassoc nnan nsz arcp contract afn double %i.kf, f0x40F3C14A0BDBD655
  %reass.mul145.i = fmul reassoc nnan nsz arcp contract afn double %reass.add144.i, %i.jc
  %i.le = fadd reassoc nsz arcp contract afn double %i.kj, f0x40F2572A21650A46
  %i.lf = fadd reassoc nsz arcp contract afn double %i.le, %i.kn
  %i.lg = fadd reassoc nsz arcp contract afn double %i.lf, %i.kr
  %i.lh = fadd reassoc nsz arcp contract afn double %i.lg, %i.ld
  %i.li = fadd reassoc nsz arcp contract afn double %i.lh, %reass.mul145.i
  %i.lj = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.li)
  %i.lk = fadd reassoc nsz arcp contract afn double %i.lb, %i.lj
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ll = phi reassoc nsz arcp contract afn double [ %i.jv, %bb.ad ], [ %i.lk, %bb.ae ]
  %i.lm = tail call reassoc ninf nsz arcp contract afn double @llvm.log.f64(double %i.dq)
  %i.ln = fmul reassoc nsz arcp contract afn double %i.lm, %i.gp
  %i.lo = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ed)
  %i.lp = fmul reassoc nsz arcp contract afn double %i.lo, %i.jb
  %.neg82 = fadd reassoc nsz arcp contract afn double %i.lp, %i.ln
  %.neg149.i = fadd reassoc nsz arcp contract afn double %.neg82, %i.go
  %i.lq = fadd reassoc nsz arcp contract afn double %i.iz, %i.ll
  %i.lr = fsub reassoc nsz arcp contract afn double %.neg149.i, %i.lq ; 2 uses
  %i.ls = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.lr) ; 4 uses
  %i.lt = fcmp reassoc nsz arcp contract afn oeq double %i.ls, 0.000000e+00
  br i1 %i.lt, label %double_equal.exit.thread.i, label %double_equal.exit.i

double_equal.exit.i:                              ; preds = %bb.af
  %i.lu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ls) ; 3 uses
  %i.lv = fcmp reassoc nsz arcp contract afn ogt double %i.lu, 0.000000e+00
  %i.lw = select reassoc nsz arcp contract afn i1 %i.lv, double %i.lu, double 0.000000e+00 ; 2 uses
  %i.lx = fcmp reassoc nsz arcp contract afn olt double %i.lw, f0x0010000000000000
  %spec.store.select.i.i = select i1 %i.lx, double f0x0010000000000000, double %i.lw
  %i.ly = fdiv reassoc nsz arcp contract afn double %i.lu, %spec.store.select.i.i
  %i.lz = fcmp reassoc nsz arcp contract afn ugt double %i.ly, f0x3D19000000000000
  br i1 %i.lz, label %.lr.ph.i, label %double_equal.exit.thread.i

.lr.ph.i:                                         ; preds = %double_equal.exit.i
  %i.ma = load ptr, ptr @inv, align 8
  %3 = zext nneg i32 %.0.lcssa to i64
  %i.mb = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ed
  br label %.backedge.i

double_equal.exit.thread.i:                       ; preds = %double_equal.exit.i, %bb.af
  %i.mc = fmul reassoc nsz arcp contract afn double %i.dq, %i.ee
  %i.md = fcmp reassoc nsz arcp contract afn olt double %i.mc, %i.gp
  br i1 %i.md, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %double_equal.exit.thread.i
  %i.me = fmul reassoc nsz arcp contract afn double %i.lr, f0xBFDBCB7B1526E50D
  %i.mf = fsub reassoc nsz arcp contract afn double %i.me, %2
  br label %nfa.exit

bb.ah:                                            ; preds = %double_equal.exit.thread.i
  %i.mg = fneg reassoc nsz arcp contract afn double %2
  br label %nfa.exit

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %3, %.lr.ph.i ], [ %indvars.iv.next.i, %.backedge.i.backedge ] ; 2 uses
  %.079153.i = phi double [ %i.ls, %.lr.ph.i ], [ %i.mx, %.backedge.i.backedge ]
  %.080152.i = phi double [ %i.ls, %.lr.ph.i ], [ %i.mw, %.backedge.i.backedge ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.mh = trunc i64 %indvars.iv.next.i to i32     ; 5 uses
  %i.mi = sub i32 %.022.lcssa, %i.mh
  %i.mj = add i32 %i.mi, 1                        ; 2 uses
  %i.mk = sitofp reassoc nsz arcp contract afn i32 %i.mj to double
  %4 = trunc nuw i64 %indvars.iv.i to i32
  %i.ml = icmp slt i32 %4, 99999
  br i1 %i.ml, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.backedge.i
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv.next.i ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !166 ; 2 uses
  %i.mo = fcmp reassoc nsz arcp contract afn une double %i.mn, 0.000000e+00
  br i1 %i.mo, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %5 = uitofp nsz nneg i32 %i.mh to double
  %i.mp = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %5 ; 2 uses
  store double %i.mp, ptr %i.mm, align 8, !tbaa !166
  br label %bb.al

bb.ak:                                            ; preds = %.backedge.i
  %i.mq = uitofp nneg i32 %i.mh to double
  %i.mr = fdiv reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.mq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ms = phi reassoc nsz arcp contract afn double [ %i.mr, %bb.ak ], [ %i.mp, %bb.aj ], [ %i.mn, %bb.ai ]
  %i.mt = fmul reassoc nsz arcp contract afn double %i.ms, %i.mk ; 2 uses
  %i.mu = fmul reassoc nsz arcp contract afn double %i.dq, %i.mt
  %i.mv = fmul reassoc nsz arcp contract afn double %i.mu, %i.mb ; 3 uses
  %i.mw = fmul reassoc nsz arcp contract afn double %i.mv, %.080152.i ; 3 uses
  %i.mx = fadd reassoc nsz arcp contract afn double %i.mw, %.079153.i ; 4 uses
  %i.my = fcmp reassoc nsz arcp contract afn olt double %i.mt, 1.000000e+00
  br i1 %i.my, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mz = tail call reassoc nsz arcp contract afn double @llvm.powi.f64.i32(double %i.mv, i32 %i.mj)
  %i.na = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.mz
  %i.nb = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.mv
  %i.nc = fdiv reassoc nsz arcp contract afn double %i.na, %i.nb
  %i.nd = fadd reassoc nsz arcp contract afn double %i.nc, -1.000000e+00
  %i.ne = fmul reassoc nsz arcp contract afn double %i.nd, %i.mw
  %i.nf = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.mx)
  %i.ng = fadd reassoc nsz arcp contract afn double %i.nf, %2 ; 2 uses
  %i.nh = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ng)
  %i.ni = fmul reassoc nsz arcp contract afn double %i.mx, 1.000000e-01
  %i.nj = fmul reassoc nsz arcp contract afn double %i.ni, %i.nh
  %i.nk = fcmp reassoc nsz arcp contract afn uge double %i.ne, %i.nj
  %.not91.not.i = icmp sgt i32 %.022.lcssa, %i.mh
  %or.cond.i29 = select i1 %i.nk, i1 %.not91.not.i, i1 false
  br i1 %or.cond.i29, label %.backedge.i.backedge, label %._crit_edge.i

bb.an:                                            ; preds = %bb.al
  %.not91.not.old.i = icmp sgt i32 %.022.lcssa, %i.mh
  br i1 %.not91.not.old.i, label %.backedge.i.backedge, label %.._crit_edge.i_crit_edge

.backedge.i.backedge:                             ; preds = %bb.an, %bb.am
  br label %.backedge.i

.._crit_edge.i_crit_edge:                         ; preds = %bb.an
  %.pre = tail call reassoc nsz arcp contract afn double @llvm.log10.f64(double %i.mx)
  %.pre90 = fadd reassoc nsz arcp contract afn double %.pre, %2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.am, %.._crit_edge.i_crit_edge
  %.pre-phi91 = phi double [ %.pre90, %.._crit_edge.i_crit_edge ], [ %i.ng, %bb.am ]
  %i.nl = fneg reassoc nsz arcp contract afn double %.pre-phi91
  br label %nfa.exit

nfa.exit:                                         ; preds = %bb.t, %bb.v, %bb.ag, %bb.ah, %._crit_edge.i
  %.081.i = phi nsz double [ %i.dw, %bb.t ], [ %i.ec, %bb.v ], [ %i.mf, %bb.ag ], [ %i.mg, %bb.ah ], [ %i.nl, %._crit_edge.i ]
  ret double %.081.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ri_inc(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.split39, label %ri_end.exit

ri_end.exit:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !313  ; 2 uses
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !166 ; 12 uses
  %i.g = fcmp reassoc nsz arcp contract afn uge double %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !314  ; 2 uses
  br i1 %i.g, label %bb.b, label %ri_end.exit._crit_edge

.split39:                                         ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.179) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.b:                                             ; preds = %ri_end.exit
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !314
  br label %ri_end.exit._crit_edge

ri_end.exit._crit_edge:                           ; preds = %ri_end.exit, %bb.b
  %.promoted = phi i32 [ %i.j, %bb.b ], [ %i.i, %ri_end.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted84 = load double, ptr %i.l, align 8, !tbaa !573
  %i.m = sitofp reassoc nsz arcp contract afn i32 %.promoted to double
  %i.n = fcmp reassoc nsz arcp contract afn olt double %.promoted84, %i.m
  br i1 %i.n, label %ri_end.exit50.lr.ph, label %.critedge

ri_end.exit50.lr.ph:                              ; preds = %ri_end.exit._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.f) ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %ri_end.exit50

ri_end.exit50:                                    ; preds = %ri_end.exit50.lr.ph, %inter_hi.exit
  %i.w = phi i32 [ %i.c, %ri_end.exit50.lr.ph ], [ %i.z, %inter_hi.exit ] ; 2 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %i.w to double
  %i.y = fcmp reassoc nsz arcp contract afn uge double %i.f, %i.x
  br i1 %i.y, label %ri_end.exit51, label %.critedge

ri_end.exit51:                                    ; preds = %ri_end.exit50
  %i.z = add nsw i32 %i.w, 1                      ; 3 uses
  store i32 %i.z, ptr %i.b, align 8, !tbaa !313
  %i.aa = sitofp reassoc nsz arcp contract afn i32 %i.z to double ; 9 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %i.f, %i.aa
  br i1 %i.ab, label %.critedge, label %bb.c

bb.c:                                             ; preds = %ri_end.exit51
  %i.ac = load double, ptr %i.o, align 8, !tbaa !166 ; 12 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt double %i.ac, %i.aa
  br i1 %i.ad, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ae = load double, ptr %0, align 8, !tbaa !166 ; 7 uses
  %i.af = load double, ptr %i.t, align 8, !tbaa !166 ; 7 uses
  %i.ag = load double, ptr %i.p, align 8, !tbaa !166 ; 5 uses
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.ae, %i.ac
  %i.ai = fcmp reassoc nsz arcp contract afn ogt double %i.ae, %i.aa
  %or.cond.i = or i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.180) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = fcmp reassoc nsz arcp contract afn oeq double %i.ae, %i.ac
  br i1 %i.aj, label %double_equal.exit.i, label %double_equal.exit.thread.i

double_equal.exit.i:                              ; preds = %bb.f
  %i.ak = fcmp reassoc nsz arcp contract afn olt double %i.af, %i.ag
  br i1 %i.ak, label %inter_low.exit, label %double_equal.exit35.i

double_equal.exit.thread.i:                       ; preds = %bb.f
  %i.al = fsub reassoc nsz arcp contract afn double %i.ae, %i.ac
  %i.am = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.al)
  %i.an = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ae) ; 2 uses
  %i.ao = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.an, %i.ao
  %i.aq = select reassoc nsz arcp contract afn i1 %i.ap, double %i.an, double %i.ao ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt double %i.aq, f0x0010000000000000
  %spec.store.select.i.i = select i1 %i.ar, double f0x0010000000000000, double %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double %i.am, %spec.store.select.i.i
  %i.at = fcmp reassoc nsz arcp contract afn ole double %i.as, f0x3D19000000000000 ; 2 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt double %i.af, %i.ag
  %or.cond3138.i = and i1 %i.au, %i.at
  br i1 %or.cond3138.i, label %inter_low.exit, label %double_equal.exit35.i

double_equal.exit35.i:                            ; preds = %double_equal.exit.thread.i, %double_equal.exit.i
  %.0.i34.i = phi i1 [ true, %double_equal.exit.i ], [ %i.at, %double_equal.exit.thread.i ]
  %i.av = fcmp reassoc nsz arcp contract afn ogt double %i.af, %i.ag
  %or.cond32.i = and i1 %i.av, %.0.i34.i
  br i1 %or.cond32.i, label %inter_low.exit, label %bb.g

bb.g:                                             ; preds = %double_equal.exit35.i
  %i.aw = fsub reassoc nsz arcp contract afn double %i.aa, %i.ae
  %i.ax = fsub reassoc nsz arcp contract afn double %i.ag, %i.af
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.aw
  %i.az = fsub reassoc nsz arcp contract afn double %i.ac, %i.ae
  %i.ba = fdiv reassoc nsz arcp contract afn double %i.ay, %i.az
  %i.bb = fadd reassoc nsz arcp contract afn double %i.ba, %i.af
  br label %inter_low.exit

bb.h:                                             ; preds = %bb.c
  %i.bc = load double, ptr %i.p, align 8, !tbaa !166 ; 7 uses
  %i.bd = load double, ptr %i.q, align 8, !tbaa !166 ; 5 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt double %i.ac, %i.f
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.180) #34
  tail call void @exit(i32 noundef 1) #38
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bf = fcmp reassoc nsz arcp contract afn oeq double %i.ac, %i.f
  br i1 %i.bf, label %double_equal.exit.i61, label %double_equal.exit.thread.i54

double_equal.exit.i61:                            ; preds = %bb.j
  %i.bg = fcmp reassoc nsz arcp contract afn olt double %i.bc, %i.bd
  br i1 %i.bg, label %inter_low.exit, label %double_equal.exit35.i57

double_equal.exit.thread.i54:                     ; preds = %bb.j
  %i.bh = fsub reassoc nsz arcp contract afn double %i.ac, %i.f
  %i.bi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bh)
  %i.bj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.bk = fcmp reassoc nsz arcp contract afn ogt double %i.bj, %i.r
  %i.bl = select reassoc nsz arcp contract afn i1 %i.bk, double %i.bj, double %i.r ; 2 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt double %i.bl, f0x0010000000000000
  %spec.store.select.i.i55 = select i1 %i.bm, double f0x0010000000000000, double %i.bl
  %i.bn = fdiv reassoc nsz arcp contract afn double %i.bi, %spec.store.select.i.i55
  %i.bo = fcmp reassoc nsz arcp contract afn ole double %i.bn, f0x3D19000000000000 ; 2 uses
  %i.bp = fcmp reassoc nsz arcp contract afn olt double %i.bc, %i.bd
  %or.cond3138.i56 = and i1 %i.bo, %i.bp
  br i1 %or.cond3138.i56, label %inter_low.exit, label %double_equal.exit35.i57

double_equal.exit35.i57:                          ; preds = %double_equal.exit.thread.i54, %double_equal.exit.i61
  %.0.i34.i58 = phi i1 [ true, %double_equal.exit.i61 ], [ %i.bo, %double_equal.exit.thread.i54 ]
  %i.bq = fcmp reassoc nsz arcp contract afn ogt double %i.bc, %i.bd
  %or.cond32.i59 = and i1 %i.bq, %.0.i34.i58
  br i1 %or.cond32.i59, label %inter_low.exit, label %bb.k

bb.k:                                             ; preds = %double_equal.exit35.i57
  %i.br = fsub reassoc nsz arcp contract afn double %i.aa, %i.ac
  %i.bs = fsub reassoc nsz arcp contract afn double %i.bd, %i.bc
  %i.bt = fmul reassoc nsz arcp contract afn double %i.bs, %i.br
  %i.bu = fsub reassoc nsz arcp contract afn double %i.f, %i.ac
  %i.bv = fdiv reassoc nsz arcp contract afn double %i.bt, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn double %i.bv, %i.bc
  br label %inter_low.exit

inter_low.exit:                                   ; preds = %bb.k, %double_equal.exit35.i57, %double_equal.exit.thread.i54, %double_equal.exit.i61, %bb.g, %double_equal.exit35.i, %double_equal.exit.thread.i, %double_equal.exit.i
  %i.bx = phi double [ %i.af, %double_equal.exit.thread.i ], [ %i.bb, %bb.g ], [ %i.af, %double_equal.exit.i ], [ %i.ag, %double_equal.exit35.i ], [ %i.bw, %bb.k ], [ %i.bc, %double_equal.exit.i61 ], [ %i.bd, %double_equal.exit35.i57 ], [ %i.bc, %double_equal.exit.thread.i54 ] ; 2 uses
  store double %i.bx, ptr %i.s, align 8, !tbaa !574
  %i.by = load double, ptr %i.u, align 8, !tbaa !166 ; 12 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt double %i.by, %i.aa
  br i1 %i.bz, label %bb.l, label %bb.p

bb.l:                                             ; preds = %inter_low.exit
  %i.ca = load double, ptr %0, align 8, !tbaa !166 ; 7 uses
  %i.cb = load double, ptr %i.t, align 8, !tbaa !166 ; 6 uses
  %i.cc = load double, ptr %i.v, align 8, !tbaa !166 ; 6 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt double %i.ca, %i.by
  %i.ce = fcmp reassoc nsz arcp contract afn ogt double %i.ca, %i.aa
  %or.cond.i63 = or i1 %i.ce, %i.cd
  br i1 %or.cond.i63, label %bb.m, label %bb.n
end_hunk_0
