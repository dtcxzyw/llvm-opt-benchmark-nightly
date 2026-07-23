begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGSolve(ptr noundef initializes((200, 204)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 13 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i32, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !37
  %i.au = tail call i32 @hypre_BeginTiming(i32 noundef %i.at) #3 ; 0 uses
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.aw = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.av) #3 ; 0 uses
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ay = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.ax) #3 ; 0 uses
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ba = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.az) #3 ; 0 uses
  %i.bb = tail call ptr @hypre_StructMatrixRef(ptr noundef %1) #3
  store ptr %i.bb, ptr %i.r, align 8, !tbaa !38
  %i.bc = tail call ptr @hypre_StructVectorRef(ptr noundef %2) #3
  store ptr %i.bc, ptr %i.x, align 8, !tbaa !40
  %i.bd = tail call ptr @hypre_StructVectorRef(ptr noundef %3) #3
  store ptr %i.bd, ptr %i.z, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i32 0, ptr %i.be, align 8, !tbaa !42
  %i.bf = icmp eq i32 %i.d, 0
  br i1 %i.bf, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not224 = icmp eq i32 %i.h, 0
  br i1 %.not224, label %._crit_edge250, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = tail call i32 @hypre_StructVectorSetConstantValues(ptr noundef %3, double noundef 0.000000e+00) #3 ; 0 uses
  br label %._crit_edge250

bb.d:                                             ; preds = %bb.a
  %i.bh = fcmp ule double %i.b, 0.000000e+00      ; 3 uses
  br i1 %i.bh, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !40  ; 2 uses
  %i.bj = tail call double @hypre_StructInnerProd(ptr noundef %i.bi, ptr noundef %i.bi) #3 ; 2 uses
  %i.bk = fmul nnan double %i.b, %i.b
  %i.bl = fcmp oeq double %i.bj, 0.000000e+00
  br i1 %i.bl, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call i32 @hypre_StructVectorSetConstantValues(ptr noundef %3, double noundef 0.000000e+00) #3 ; 0 uses
  %i.bn = icmp sgt i32 %i.an, 0
  br i1 %i.bn, label %bb.g, label %._crit_edge250

bb.g:                                             ; preds = %bb.f
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !43
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !43
  br label %._crit_edge250

bb.h:                                             ; preds = %bb.e, %bb.d
  %.0218 = phi double [ %i.bj, %bb.e ], [ undef, %bb.d ] ; 3 uses
  %.0216 = phi double [ %i.bk, %bb.e ], [ undef, %bb.d ] ; 2 uses
  %i.bo = icmp sgt i32 %i.d, 0
  br i1 %i.bo, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %bb.h
  %i.bp = icmp slt i32 %i.j, 2                    ; 3 uses
  %i.bq = icmp sgt i32 %i.an, 0
  %i.br = fcmp ogt double %.0218, 0.000000e+00
  %.not = icmp eq i32 %i.f, 0                     ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bt = add i32 %i.j, -2
  %.not223237 = icmp slt i32 %i.j, 3
  %4 = icmp sgt i32 %i.j, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %or.cond3.not236 = select i1 %i.bh, i1 true, i1 %.not ; 5 uses
  %brmerge = or i1 %or.cond3.not236, %i.bp
  %i.bv = add i32 %i.j, -1                        ; 2 uses
  %i.bw = zext i32 %i.bt to i64
  %wide.trip.count259 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.bv to i64
  %i.bx = zext nneg i32 %i.bv to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph249, %bb.u
  %indvars.iv256 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next257, %bb.u ] ; 4 uses
  %.0212246 = phi double [ undef, %.lr.ph249 ], [ %.1213232, %bb.u ] ; 3 uses
  %.0214245 = phi double [ undef, %.lr.ph249 ], [ %.1215230, %bb.u ] ; 3 uses
  %.0217244 = phi i32 [ %i.h, %.lr.ph249 ], [ 0, %bb.u ]
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.bz = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.by, i32 noundef 0, i32 noundef 0) #3 ; 0 uses
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.cb = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.ca, i32 noundef 1, i32 noundef 1) #3 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.cd = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.cc, i32 noundef %i.l) #3 ; 0 uses
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.cf = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.ce, i32 noundef %.0217244) #3 ; 0 uses
  %i.cg = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ck = tail call i32 @hypre_SMGRelax(ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj) #3 ; 0 uses
  %i.cl = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.cq = tail call i32 @hypre_SMGResidual(ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.cn, ptr noundef %i.co, ptr noundef %i.cp) #3 ; 0 uses
  br i1 %i.bh, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.cs = tail call double @hypre_StructInnerProd(ptr noundef %i.cr, ptr noundef %i.cr) #3 ; 3 uses
  br i1 %i.bq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ct = tail call double @sqrt(double noundef %i.cs) #3, !tbaa !4
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv256
  store double %i.ct, ptr %i.cu, align 8, !tbaa !43
  br i1 %i.br, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cv = fdiv double %i.cs, %.0218
  %i.cw = tail call double @sqrt(double noundef %i.cv) #3, !tbaa !4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.sink = phi double [ %i.cw, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv256
  store double %.sink, ptr %i.cx, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %i.cy = fdiv double %i.cs, %.0218
  %i.cz = fcmp olt double %i.cy, %.0216
  %i.da = icmp ne i64 %indvars.iv256, 0
  %or.cond = and i1 %i.da, %i.cz
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = fdiv double %.0214245, %.0212246
  %i.dc = fcmp olt double %i.db, %.0216
  %or.cond226 = select i1 %.not, i1 true, i1 %i.dc
  br i1 %or.cond226, label %._crit_edge250, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.k
  br i1 %i.bp, label %.thread264, label %bb.r

.thread264:                                       ; preds = %bb.q
  %.0212.mux265 = select i1 %or.cond3.not236, double %.0212246, double 1.000000e+00
  %.0214.mux266 = select i1 %or.cond3.not236, double %.0214245, double 0.000000e+00
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.df = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.dg = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.dh = tail call i32 @hypre_SemiRestrict(ptr noundef %i.dd, ptr noundef %i.de, ptr noundef %i.df, ptr noundef %i.dg) #3 ; 0 uses
  br i1 %.not223237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.r ] ; 9 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 5 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44
  %i.dk = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.dj, i32 noundef 0, i32 noundef 0) #3 ; 0 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !44
  %i.dm = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.dl, i32 noundef 1, i32 noundef 1) #3 ; 0 uses
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !44
  %i.do = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.dn, i32 noundef %i.l) #3 ; 0 uses
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !44
  %i.dq = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.dp, i32 noundef 1) #3 ; 0 uses
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !44
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !40
  %i.dy = tail call i32 @hypre_SMGRelax(ptr noundef %i.dr, ptr noundef %i.dt, ptr noundef %i.dv, ptr noundef %i.dx) #3 ; 0 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !44
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !38
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !40
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !40
  %i.eg = tail call i32 @hypre_SMGResidual(ptr noundef %i.ea, ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef %i.ed, ptr noundef %i.ef) #3 ; 0 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !38
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !40
  %i.eo = tail call i32 @hypre_SemiRestrict(ptr noundef %i.ei, ptr noundef %i.ek, ptr noundef %i.el, ptr noundef %i.en) #3 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph, %bb.r
  %.0210.lcssa = phi i64 [ 1, %bb.r ], [ %i.bx, %.lr.ph ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0210.lcssa ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !44
  %i.er = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.eq, i32 noundef 1) #3 ; 0 uses
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !44
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0210.lcssa
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0210.lcssa
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !40
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0210.lcssa
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !40
  %i.ez = tail call i32 @hypre_SMGRelax(ptr noundef %i.es, ptr noundef %i.eu, ptr noundef %i.ew, ptr noundef %i.ey) #3 ; 0 uses
  br i1 %4, label %.lr.ph242, label %.loopexit

.lr.ph242:                                        ; preds = %._crit_edge, %.lr.ph242
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %.lr.ph242 ], [ %i.bw, %._crit_edge ] ; 9 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv253
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !44
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv253
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv253 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !40
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv253 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !40
  %i.fj = tail call i32 @hypre_SemiInterp(ptr noundef %i.fb, ptr noundef %i.fd, ptr noundef %i.fg, ptr noundef %i.fi) #3 ; 0 uses
  %i.fk = load ptr, ptr %i.fh, align 8, !tbaa !40
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !40
  %i.fm = tail call i32 @hypre_StructAxpy(double noundef 1.000000e+00, ptr noundef %i.fk, ptr noundef %i.fl) #3 ; 0 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv253 ; 5 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !44
  %i.fp = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.fo, i32 noundef 0, i32 noundef 1) #3 ; 0 uses
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !44
  %i.fr = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.fq, i32 noundef 1, i32 noundef 0) #3 ; 0 uses
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !44
  %i.ft = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.fs, i32 noundef %i.n) #3 ; 0 uses
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !44
  %i.fv = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.fu, i32 noundef 0) #3 ; 0 uses
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !44
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv253
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !38
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv253
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !40
  %i.gb = load ptr, ptr %i.fe, align 8, !tbaa !40
  %i.gc = tail call i32 @hypre_SMGRelax(ptr noundef %i.fw, ptr noundef %i.fy, ptr noundef %i.ga, ptr noundef %i.gb) #3 ; 0 uses
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, -1
  %i.gd = icmp samesign ugt i64 %indvars.iv253, 1
  br i1 %i.gd, label %.lr.ph242, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph242, %._crit_edge
  %i.ge = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.gf = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.gg = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.gh = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.gi = tail call i32 @hypre_SemiInterp(ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef %i.gg, ptr noundef %i.gh) #3 ; 0 uses
  %i.gj = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.gk = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.gl = tail call i32 @hypre_SMGAxpy(double noundef 1.000000e+00, ptr noundef %i.gj, ptr noundef %i.gk, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #3 ; 0 uses
  br i1 %brmerge, label %bb.s, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.gm = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.gn = tail call double @hypre_StructInnerProd(ptr noundef %i.gm, ptr noundef %i.gm) #3
  %i.go = load ptr, ptr %i.z, align 8, !tbaa !40  ; 2 uses
  %i.gp = tail call double @hypre_StructInnerProd(ptr noundef %i.go, ptr noundef %i.go) #3
  br label %bb.t

end_hunk_0
