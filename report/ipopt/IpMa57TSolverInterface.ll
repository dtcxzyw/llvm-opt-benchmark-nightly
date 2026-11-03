Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpMa57TSolverInterface?download=true
inline.NumInlined: 485
inline.NumDeleted: 120
begin_hunk_0_@_ZN5Ipopt20Ma57TSolverInterface13FactorizationEPKiS2_bi:bb.a
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !37
  call void %i.au(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef nonnull %i.ad, ptr noundef %i.ax, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al)
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !59
  store i32 %i.ba, ptr %i.an, align 8, !tbaa !73
  %i.bb = load i32, ptr %i.ak, align 8, !tbaa !59 ; 5 uses
  switch i32 %i.bb, label %bb.j [
    i32 0, label %bb.q
    i32 -3, label %bb.d
    i32 -4, label %bb.g
  ]

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !59
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !59
  %i.bd = sitofp i32 %i.bc to double
  %i.be = load double, ptr %i.ap, align 8, !tbaa !74
  %i.bf = fmul double %i.be, %i.bd
  call void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, double noundef %i.bf, i32 noundef 0, ptr noundef nonnull @.str.69)
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.bh = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void (ptr, i32, i32, ptr, ...) %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i32 noundef 4, i32 noundef 7, ptr noundef nonnull @.str.73, i32 noundef %i.bh)
  %i.bl = load i32, ptr %i.ad, align 8, !tbaa !75 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i32 %i.bl, 0
  %i.bo = shl nsw i64 %i.bm, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void %i.br(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef nonnull %i.as, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.ad, ptr noundef %i.bu, ptr noundef nonnull %i.as, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak)
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.bq, ptr %i.ac, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.f, %bb.i
  br label %.critedge

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 1, ptr %i.e, align 4, !tbaa !59
  %i.bx = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.by = sitofp i32 %i.bx to double
  %i.bz = load double, ptr %i.ap, align 8, !tbaa !74
  %i.ca = fmul double %i.bz, %i.by
  call void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.af, double noundef %i.ca, i32 noundef 0, ptr noundef nonnull @.str.70)
  %i.cb = load i32, ptr %i.af, align 8, !tbaa !76 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i32 %i.cb, 0
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = select i1 %i.cd, i64 -1, i64 %i.ce
  %i.cg = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #22 ; 2 uses
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.ci = load i32, ptr %i.af, align 8, !tbaa !76
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void (ptr, i32, i32, ptr, ...) %i.cl(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.74, i32 noundef %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.cn = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.co = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void %i.cm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef %i.cn, ptr noundef %i.co, ptr noundef nonnull %i.as, ptr noundef nonnull %i.f, ptr noundef nonnull %i.af, ptr noundef %i.cp, ptr noundef nonnull %i.as, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ak)
  %i.cq = load ptr, ptr %i.ae, align 8, !tbaa !34 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.cg, ptr %i.ae, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge.backedge

bb.j:                                             ; preds = %.critedge
  %i.cs = icmp slt i32 %i.bb, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void (ptr, i32, i32, ptr, ...) %i.cw(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.75, i32 noundef %i.bb)
  %i.cx = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.cy = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.cz = sub nsw i32 0, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr @_ZN5Ipopt12ma57_err_msgE, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !92
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void (ptr, i32, i32, ptr, ...) %i.df(ptr noundef nonnull align 8 dereferenceable(40) %i.cx, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.76, ptr noundef %i.dc)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.dg = icmp eq i32 %i.bb, 4
  br i1 %i.dg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %i.g, align 8, !tbaa !40  ; 10 uses
  %.not19 = icmp eq ptr %i.dh, null
  br i1 %.not19, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1176
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !67, !range !61, !noundef !62
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.o, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.o:                                             ; preds = %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 1128
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 1178
  store i8 1, ptr %i.dm, align 2, !tbaa !68
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 1177
  store i8 0, ptr %i.dn, align 1, !tbaa !69
  %i.do = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.dp = load double, ptr %i.dl, align 8, !tbaa !70
  %i.dq = fsub double %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 1136 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !77
  %i.dt = fadd double %i.ds, %i.dq
  store double %i.dt, ptr %i.dr, align 8, !tbaa !77
  %i.du = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 1144
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !71
  %i.dx = fsub double %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 1152 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !78
  %i.ea = fadd double %i.dz, %i.dx
  store double %i.ea, ptr %i.dy, align 8, !tbaa !78
  %i.eb = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 1160
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !72
  %i.ee = fsub double %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dh, i64 1168 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !79
  %i.eh = fadd double %i.eg, %i.ee
  store double %i.eh, ptr %i.ef, align 8, !tbaa !79
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

_ZN5Ipopt9TimedTask3EndEv.exit:                   ; preds = %bb.o, %bb.n, %bb.m
  %i.ei = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !59
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void (ptr, i32, i32, ptr, ...) %i.en(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.77, i32 noundef %i.ek)
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.eo = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void (ptr, i32, i32, ptr, ...) %i.er(ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.78, i32 noundef %i.bb)
  %i.es = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.et = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr @_ZN5Ipopt12ma57_wrn_msgE, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !92
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ez(ptr noundef nonnull align 8 dereferenceable(40) %i.es, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.79, ptr noundef %i.ew)
  br label %bb.v

bb.q:                                             ; preds = %.critedge
  %i.fa = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = load i32, ptr %i.af, align 8, !tbaa !76
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = fmul nnan double %i.fd, 4.000000e+00
  %i.ff = call nnan double @llvm.fmuladd.f64(double %i.fb, double 8.000000e+00, double %i.fe)
  %i.fg = load i32, ptr %i.ag, align 8, !tbaa !80
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = call nnan double @llvm.fmuladd.f64(double %i.fh, double 4.000000e+00, double %i.ff)
  %i.fj = fmul nnan double %i.fi, 1.000000e-03
  %i.fk = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.fl = fptoui double %i.fj to i64
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !11
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void (ptr, i32, i32, ptr, ...) %i.fo(ptr noundef nonnull align 8 dereferenceable(40) %i.fk, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.80, i64 noundef %i.fl)
  %i.fp = load ptr, ptr %i.g, align 8, !tbaa !40  ; 10 uses
  %.not18 = icmp eq ptr %i.fp, null
  br i1 %.not18, label %_ZN5Ipopt9TimedTask3EndEv.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1176
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !67, !range !61, !noundef !62
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.s, label %_ZN5Ipopt9TimedTask3EndEv.exit16

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 1128
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 1178
  store i8 1, ptr %i.fu, align 2, !tbaa !68
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 1177
  store i8 0, ptr %i.fv, align 1, !tbaa !69
  %i.fw = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.fx = load double, ptr %i.ft, align 8, !tbaa !70
  %i.fy = fsub double %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 1136 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !77
  %i.gb = fadd double %i.ga, %i.fy
  store double %i.gb, ptr %i.fz, align 8, !tbaa !77
  %i.gc = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 1144
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !71
  %i.gf = fsub double %i.gc, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fp, i64 1152 ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !78
  %i.gi = fadd double %i.gh, %i.gf
  store double %i.gi, ptr %i.gg, align 8, !tbaa !78
  %i.gj = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fp, i64 1160
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !72
  %i.gm = fsub double %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fp, i64 1168 ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !79
  %i.gp = fadd double %i.go, %i.gm
  store double %i.gp, ptr %i.gn, align 8, !tbaa !79
  br label %_ZN5Ipopt9TimedTask3EndEv.exit16

_ZN5Ipopt9TimedTask3EndEv.exit16:                 ; preds = %bb.s, %bb.r, %bb.q
  br i1 %3, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit16
  %i.gq = load i32, ptr %i.an, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq i32 %4, %i.gq
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !11
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  call void (ptr, i32, i32, ptr, ...) %i.gu(ptr noundef nonnull align 8 dereferenceable(40) %i.gr, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.81, i32 noundef %i.gq, i32 noundef %4)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %_ZN5Ipopt9TimedTask3EndEv.exit16, %bb.p, %_ZN5Ipopt9TimedTask3EndEv.exit, %bb.k
  %.111 = phi i32 [ 4, %bb.k ], [ 1, %_ZN5Ipopt9TimedTask3EndEv.exit ], [ 4, %bb.p ], [ 2, %bb.u ], [ 0, %bb.t ], [ 0, %_ZN5Ipopt9TimedTask3EndEv.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.111
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt20Ma57TSolverInterface9BacksolveEiPd(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 7 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1232
  %i.i = load i8, ptr %i.h, align 8, !tbaa !67, !range !61, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1184
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1234
  store i8 0, ptr %i.l, align 2, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1233
  store i8 1, ptr %i.m, align 1, !tbaa !69
  %i.n = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.n, ptr %i.k, align 8, !tbaa !70
  %i.o = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1200
  store double %i.o, ptr %i.p, align 8, !tbaa !71
  %i.q = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 1216
  store double %i.q, ptr %i.r, align 8, !tbaa !72
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64   ; 3 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1, ptr %i.b, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 %1, ptr %i.c, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %i.t, ptr %i.d, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.u = mul nsw i32 %i.t, %1                     ; 3 uses
  store i32 %i.u, ptr %i.e, align 4, !tbaa !59
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nsw i64 %i.v, 3
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  call void %i.ab(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.ad, ptr noundef nonnull %i.ae, ptr noundef %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.z, ptr noundef nonnull %i.e, ptr noundef %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al)
  %i.am = load i32, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.82, i32 noundef %i.am)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit, %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.z) #19
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !40  ; 10 uses
  %.not6 = icmp eq ptr %i.as, null
  br i1 %.not6, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1232
  %i.au = load i8, ptr %i.at, align 8, !tbaa !67, !range !61, !noundef !62
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1184
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1234
  store i8 1, ptr %i.ax, align 2, !tbaa !68
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1233
  store i8 0, ptr %i.ay, align 1, !tbaa !69
  %i.az = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !70
  %i.bb = fsub double %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 1192 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !77
  %i.be = fadd double %i.bd, %i.bb
  store double %i.be, ptr %i.bc, align 8, !tbaa !77
  %i.bf = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 1200
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !71
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 1208 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !78
  %i.bl = fadd double %i.bk, %i.bi
  store double %i.bl, ptr %i.bj, align 8, !tbaa !78
  %i.bm = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 1216
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !72
  %i.bp = fsub double %i.bm, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 1224 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !79
  %i.bs = fadd double %i.br, %i.bp
  store double %i.bs, ptr %i.bq, align 8, !tbaa !79
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

_ZN5Ipopt9TimedTask3EndEv.exit:                   ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 0
end_hunk_0
