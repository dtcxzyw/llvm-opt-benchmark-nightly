Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_astats?download=true
inline.NumInlined: 96
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 1
begin_hunk_0_@update_stat:bb.a
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !46
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ai)
  store double %i.aj, ptr %i.ah, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %bb.f
  %i.ak = fcmp nsz une double %2, 0.000000e+00    ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !60
  %i.an = fcmp nsz olt double %i.c, %i.am
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store double %i.c, ptr %i.al, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  %i.aq = fcmp nsz ogt double %2, %i.ap
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %2, ptr %i.ao, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  store double %3, ptr %i.ar, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !169
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  store double 0.000000e+00, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 1, ptr %i.au, align 8, !tbaa !45
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.av = fcmp nsz oeq double %2, %i.ap
  br i1 %i.av, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !45
  %i.az = load double, ptr %1, align 8, !tbaa !77
  %i.ba = fcmp nsz oeq double %2, %i.az
  br i1 %i.ba, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !169
  %i.bd = fadd nsz double %i.bc, 1.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.be = phi nsz double [ %i.bd, %bb.t ], [ 1.000000e+00, %bb.s ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  store double %i.be, ptr %i.bf, align 8, !tbaa !169
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.bg = load double, ptr %1, align 8, !tbaa !77
  %i.bh = fcmp nsz oeq double %i.bg, %i.ap
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !169 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !47
  %i.bm = tail call nsz double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bl)
  store double %i.bm, ptr %i.bk, align 8, !tbaa !47
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.q
  br i1 %i.ak, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bn = fcmp nsz ogt double %2, 0.000000e+00
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !170
  %i.bq = fcmp nsz ogt double %i.bp, 0.000000e+00
  %i.br = xor i1 %i.bn, %i.bq
  %i.bs = zext i1 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bv = add i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !61
  store double %2, ptr %i.bo, align 8, !tbaa !170
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !49
  %i.by = fadd nsz double %3, %i.bx
  store double %i.by, ptr %i.bw, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !95 ; 2 uses
  %i.cd = fsub nsz double 1.000000e+00, %i.cc
  %i.ce = fmul nsz double %3, %i.cd
  %i.cf = fmul nsz double %3, %i.ce
  %i.cg = load <2 x double>, ptr %i.bz, align 8, !tbaa !34 ; 2 uses
  %i.ch = insertelement <2 x double> %i.cg, double %3, i64 0 ; 2 uses
  %i.ci = insertelement <2 x double> %i.ch, double %i.cc, i64 1
  %i.cj = insertelement <2 x double> %i.cg, double %i.cf, i64 1
  %i.ck = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ci, <2 x double> %i.cj)
  store <2 x double> %i.ck, ptr %i.bz, align 8, !tbaa !34
  %i.cl = load double, ptr %1, align 8, !tbaa !77 ; 2 uses
  %i.cm = fcmp uno double %i.cl, 0.000000e+00     ; 2 uses
  br i1 %i.cm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !53 ; 2 uses
  %i.cp = fsub nsz double %2, %i.cl               ; 3 uses
  %i.cq = tail call nsz double @llvm.fabs.f64(double %i.cp) ; 5 uses
  %i.cr = fcmp nsz ogt double %i.co, %i.cq
  %. = select nsz i1 %i.cr, double %i.cq, double %i.co
  store double %., ptr %i.cn, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !54 ; 2 uses
  %i.cu = fcmp nsz ogt double %i.ct, %i.cq
  %i.cv = select nsz i1 %i.cu, double %i.ct, double %i.cq
  store double %i.cv, ptr %i.cs, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !39
  %i.cy = fadd nsz double %i.cq, %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !39
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !38
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.da)
  store double %i.db, ptr %i.cz, align 8, !tbaa !38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dc = tail call i64 @llvm.abs.i64(i64 %4, i1 true)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !41
  %i.df = or i64 %i.de, %i.dc
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !41
  %i.di = or i64 %i.dh, %4
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !41
  %i.dl = and i64 %i.dk, %4
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !41
  br i1 %i.cm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 65824
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !171
  %i.do = xor i64 %i.dn, %4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.dr = or i64 %i.dq, %i.do
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 65824
  store i64 %4, ptr %i.ds, align 8, !tbaa !171
  store double %2, ptr %1, align 8, !tbaa !77
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 65840 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !78 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dx ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !34
  store double %3, ptr %i.dy, align 8, !tbaa !34
  %i.ea = fcmp nsz oge double %3, 0.000000e+00
  %i.eb = fneg nsz double %3
  %i.ec = select nsz i1 %i.ea, double %3, double %i.eb ; 2 uses
  %i.ed = fcmp nsz ogt double %i.ec, 0.000000e+00
  %i.ee = select nsz i1 %i.ed, double %i.ec, double 0.000000e+00 ; 2 uses
  %i.ef = fcmp nsz ogt double %i.ee, 1.000000e+00
  %..i192 = select nsz i1 %i.ef, double 1.000000e+00, double %i.ee
  %i.eg = fmul nnan nsz double %..i192, 8.191000e+03
  %i.eh = tail call i64 @llvm.lrint.i64.f64(double %i.eg)
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 0)
  %i.ek = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 8191) ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 65844 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !172
  %.190 = tail call i32 @llvm.smax.i32(i32 %i.em, i32 %i.ek)
  store i32 %.190, ptr %i.el, align 4, !tbaa !172
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.eo = zext nneg i32 %i.ek to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !41
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !41
  %i.es = add nsw i32 %i.dw, 1                    ; 2 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !33
  %.not = icmp ugt i64 %i.ev, %i.et
  %spec.store.select = select i1 %.not, i32 %i.es, i32 0
  store i32 %spec.store.select, ptr %i.dv, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %5 = load i64, ptr %i.ew, align 8, !tbaa !31    ; 2 uses
  %i.ex = load i64, ptr %i.eu, align 8, !tbaa !33 ; 3 uses
  %.not188 = icmp ult i64 %5, %i.ex
  br i1 %.not188, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ez = load <2 x double>, ptr %i.ey, align 8, !tbaa !34 ; 2 uses
  %i.fa = load <2 x double>, ptr %i.ca, align 8, !tbaa !34 ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fcmp nsz ogt <2 x double> %i.ez, %i.fc
  %i.fe = shufflevector <2 x double> %i.fa, <2 x double> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.ff = select <2 x i1> %i.fd, <2 x double> %i.fe, <2 x double> %i.fb
  store <2 x double> %i.ff, ptr %i.ey, align 8, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fg = add i64 %5, 1                           ; 2 uses
  store i64 %i.fg, ptr %i.ew, align 8, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !82 ; 8 uses
  %i.fj = trunc i64 %i.ex to i32                  ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 65832 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 65836 ; 2 uses
  %i.fm = tail call nsz double @llvm.fabs.f64(double %3) ; 4 uses
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !94 ; 8 uses
  %i.fo = load i32, ptr %i.fl, align 4, !tbaa !94 ; 13 uses
  %i.fp = icmp eq i32 %i.fn, %i.fo                ; 2 uses
  %i.fq = sext i32 %i.fn to i64                   ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fq ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !34 ; 3 uses
  %i.ft = fcmp nsz oeq double %i.fs, -1.000000e+00
  %or.cond.i = select i1 %i.fp, i1 %i.ft, i1 false
  br i1 %or.cond.i, label %calc_noise_floor.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.af
  %i.fu = tail call nsz double @llvm.fabs.f64(double %i.dz)
  %i.fv = fcmp nsz oeq double %i.fu, %i.fs
  br i1 %i.fv, label %bb.ag, label %.thread75.i

bb.ag:                                            ; preds = %.thread.i
  store double -1.000000e+00, ptr %i.fr, align 8, !tbaa !34
  %i.fw = icmp slt i32 %i.fn, 1
  %spec.select.v.i = select i1 %i.fw, i32 %i.fj, i32 %i.fn
  %spec.select.i = add nsw i32 %spec.select.v.i, -1
  %.057.i = select i1 %i.fp, i32 %i.fn, i32 %spec.select.i ; 3 uses
  %i.fx = icmp eq i32 %.057.i, %i.fo
  br i1 %i.fx, label %calc_noise_floor.exit, label %..thread75_crit_edge.i

..thread75_crit_edge.i:                           ; preds = %bb.ag
  %.phi.trans.insert92.i = sext i32 %.057.i to i64 ; 2 uses
  %.phi.trans.insert93.i = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %.phi.trans.insert92.i
  %.pre94.i = load double, ptr %.phi.trans.insert93.i, align 8, !tbaa !34
  br label %.thread75.i

.thread75.i:                                      ; preds = %..thread75_crit_edge.i, %.thread.i
  %.pre-phi95.i = phi i64 [ %.phi.trans.insert92.i, %..thread75_crit_edge.i ], [ %i.fq, %.thread.i ]
  %i.fy = phi double [ %.pre94.i, %..thread75_crit_edge.i ], [ %i.fs, %.thread.i ]
  %.15878.i = phi i32 [ %.057.i, %..thread75_crit_edge.i ], [ %i.fn, %.thread.i ] ; 6 uses
  %i.fz = fcmp nsz ult double %i.fm, %i.fy
  br i1 %i.fz, label %.lr.ph82.split.us.i, label %.preheader.i

.preheader.i:                                     ; preds = %.thread75.i
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %.pre-phi95.i
  store double -1.000000e+00, ptr %i.ga, align 8, !tbaa !34
  %i.gb = icmp eq i32 %i.fo, %.15878.i
  br i1 %i.gb, label %calc_noise_floor.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.25980.i = phi i32 [ %.3.i, %.lr.ph.i ], [ %.15878.i, %.preheader.i ] ; 2 uses
  %i.gc = icmp slt i32 %.25980.i, 1
  %spec.select69.i = select i1 %i.gc, i32 %i.fj, i32 %.25980.i
  %.3.i = add nsw i32 %spec.select69.i, -1        ; 3 uses
  %i.gd = sext i32 %.3.i to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gd
  store double -1.000000e+00, ptr %i.ge, align 8, !tbaa !34
  %i.gf = icmp eq i32 %i.fo, %.3.i
  br i1 %i.gf, label %calc_noise_floor.exit, label %.lr.ph.i

.lr.ph82.split.us.i:                              ; preds = %.thread75.i
  %i.gg = sext i32 %i.fo to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gg ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !34
  %i.gj = fcmp nsz ult double %i.fm, %i.gi
  br i1 %i.gj, label %.critedge.i, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph82.split.us.i, %bb.ah
  %i.gk = phi ptr [ %i.go, %bb.ah ], [ %i.gh, %.lr.ph82.split.us.i ]
  %.05581.us87.i = phi i32 [ %spec.store.select.us.i, %bb.ah ], [ %i.fo, %.lr.ph82.split.us.i ] ; 2 uses
  store double -1.000000e+00, ptr %i.gk, align 8, !tbaa !34
  %i.gl = icmp eq i32 %.05581.us87.i, %.15878.i
  br i1 %i.gl, label %calc_noise_floor.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph88.i
  %i.gm = add nsw i32 %.05581.us87.i, 1           ; 2 uses
  %.not67.us.i = icmp slt i32 %i.gm, %i.fj
  %spec.store.select.us.i = select i1 %.not67.us.i, i32 %i.gm, i32 0 ; 3 uses
  %i.gn = sext i32 %spec.store.select.us.i to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !34
  %i.gq = fcmp nsz ult double %i.fm, %i.gp
  br i1 %i.gq, label %.critedge.i, label %.lr.ph88.i

.critedge.i:                                      ; preds = %bb.ah, %.lr.ph82.split.us.i
  %.us-phi.i = phi i32 [ %i.fo, %.lr.ph82.split.us.i ], [ %spec.store.select.us.i, %bb.ah ] ; 2 uses
  %i.gr = icmp slt i32 %.us-phi.i, 1
  %spec.select71.v.i = select i1 %i.gr, i32 %i.fj, i32 %.us-phi.i
  %spec.select71.i = add nsw i32 %spec.select71.v.i, -1
  br label %calc_noise_floor.exit

calc_noise_floor.exit:                            ; preds = %.lr.ph.i, %.lr.ph88.i, %bb.af, %bb.ag, %.preheader.i, %.critedge.i
  %.4103.i = phi i32 [ %.15878.i, %.critedge.i ], [ %i.fo, %bb.ag ], [ %.15878.i, %.lr.ph88.i ], [ %i.fo, %.preheader.i ], [ %i.fn, %bb.af ], [ %i.fo, %.lr.ph.i ] ; 2 uses
  %.156.i = phi i32 [ %spec.select71.i, %.critedge.i ], [ %i.fo, %bb.ag ], [ %.15878.i, %.lr.ph88.i ], [ %i.fo, %.preheader.i ], [ %i.fn, %bb.af ], [ %i.fo, %.lr.ph.i ] ; 2 uses
  %i.gs = sext i32 %.156.i to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gs
  store double %i.fm, ptr %i.gt, align 8, !tbaa !34
  %i.gu = sext i32 %.4103.i to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !34 ; 4 uses
  store i32 %.4103.i, ptr %i.fk, align 8, !tbaa !94
  store i32 %.156.i, ptr %i.fl, align 4, !tbaa !94
  %.not189 = icmp ult i64 %i.fg, %i.ex
  br i1 %.not189, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %calc_noise_floor.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 65848 ; 3 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !40 ; 3 uses
  %i.gz = fcmp uno double %i.gy, 0.000000e+00
  br i1 %i.gz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store double %i.gw, ptr %i.gx, align 8, !tbaa !40
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 1, ptr %i.ha, align 8, !tbaa !58
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.hb = fcmp nsz olt double %i.gw, %i.gy
  br i1 %i.hb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store double %i.gw, ptr %i.gx, align 8, !tbaa !40
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 1, ptr %i.hc, align 8, !tbaa !58
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.hd = fcmp nsz oeq double %i.gw, %i.gy
  br i1 %i.hd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !58
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !58
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.am, %bb.an, %bb.al, %calc_noise_floor.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.llrint.i64.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_output(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !90
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @av_calloc(i64 noundef %i.f, i64 noundef 65864) #11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !28
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !177 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !178
  %i.m = sitofp nsz i32 %i.l to double            ; 2 uses
  %i.n = tail call nsz double @llvm.fmuladd.f64(double %i.j, double %i.m, double 5.000000e-01) ; 2 uses
  %i.o = fcmp nsz ogt double %i.n, 1.000000e+00
  %spec.select48 = select i1 %i.o, double %i.n, double 1.000000e+00
  %spec.select = fptoui double %spec.select48 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  store i64 %spec.select, ptr %i.p, align 8, !tbaa !33
  %i.q = load i32, ptr %i.d, align 4, !tbaa !90   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !27
  %.not4651 = icmp sgt i32 %i.q, 0
  br i1 %.not4651, label %.lr.ph, label %.critedge47

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !27
  %i.t = sext i32 %i.s to i64
  %.not46 = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %.not46, label %.lr.ph, label %.critedge47.loopexit, !llvm.loop !173

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw [65864 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.w = load i64, ptr %i.p, align 8, !tbaa !33
  %i.x = tail call noalias ptr @av_calloc(i64 noundef %i.w, i64 noundef 8) #11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  store ptr %i.x, ptr %i.y, align 8, !tbaa !81
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.z = load i64, ptr %i.p, align 8, !tbaa !33
  %i.aa = tail call noalias ptr @av_calloc(i64 noundef %i.z, i64 noundef 8) #11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !82
  %.not45.not = icmp eq ptr %i.aa, null
  br i1 %.not45.not, label %.critedge, label %bb.c

.critedge47.loopexit:                             ; preds = %bb.c
  %.pre = load double, ptr %i.i, align 8, !tbaa !177
  %.pre55 = load i32, ptr %i.k, align 8, !tbaa !178
  %.pre56 = sitofp nsz i32 %.pre55 to double
  br label %.critedge47

.critedge47:                                      ; preds = %.critedge47.loopexit, %bb.b
  %.pre-phi = phi double [ %.pre56, %.critedge47.loopexit ], [ %i.m, %bb.b ]
  %i.ac = phi double [ %.pre, %.critedge47.loopexit ], [ %i.j, %bb.b ]
  %i.ad = fdiv nsz double -1.000000e+00, %i.ac
  %i.ae = fdiv nsz double %i.ad, %.pre-phi
  %i.af = tail call nsz double @llvm.exp.f64(double %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.af, ptr %i.ag, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 0, ptr %i.ah, align 4, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ak = tail call i32 @av_get_bytes_per_sample(i32 noundef %i.aj) #11
  %i.al = shl nsw i32 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.al, ptr %i.am, align 8, !tbaa !59
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ap = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = icmp eq <2 x i32> %i.aq, <i32 3, i32 4>
  %i.as = icmp eq <2 x i32> %i.aq, <i32 8, i32 9>
  %i.at = or <2 x i1> %i.ar, %i.as
  %i.au = zext <2 x i1> %i.at to <2 x i32>
  store <2 x i32> %i.au, ptr %i.ao, align 4, !tbaa !94
  %i.av = load i32, ptr %i.r, align 8, !tbaa !27
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph55.i, label %.critedge

.lr.ph55.i:                                       ; preds = %.critedge47, %._crit_edge.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %._crit_edge.i ], [ 0, %.critedge47 ] ; 2 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw [65864 x i8], ptr %i.ax, i64 %indvars.iv58.i ; 22 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.az, align 8, !tbaa !34
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.ba, align 8, !tbaa !34
  store <2 x double> <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, ptr %i.bb, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.bd, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.be, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.bj, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, i8 0, i64 40, i1 false)
  store double +qnan, ptr %i.ay, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 65848
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 224
  store i64 0, ptr %i.bn, align 8, !tbaa !58
  store <2 x double> <double +qnan, double 0.000000e+00>, ptr %i.bm, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 65840
  store i32 0, ptr %i.bo, align 8, !tbaa !78
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 65832
end_hunk_0
