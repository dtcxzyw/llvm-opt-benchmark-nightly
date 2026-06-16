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
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20   ; 4 uses
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
  %i.bt = add i32 %i.j, -2                        ; 2 uses
  %.not223237 = icmp slt i32 %i.j, 3
  %i.bu = icmp sgt i32 %i.j, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %or.cond3.not236 = select i1 %i.bh, i1 true, i1 %.not ; 5 uses
  %brmerge = or i1 %or.cond3.not236, %i.bp
  %i.bw = zext i32 %i.bt to i64
  %wide.trip.count259 = zext nneg i32 %i.d to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph249, %bb.u
  %indvars.iv256 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next257, %bb.u ] ; 4 uses
  %.0212246 = phi double [ undef, %.lr.ph249 ], [ %.1213232, %bb.u ] ; 3 uses
  %.0214245 = phi double [ undef, %.lr.ph249 ], [ %.1215230, %bb.u ] ; 3 uses
  %.0217244 = phi i32 [ %i.h, %.lr.ph249 ], [ 0, %bb.u ]
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.by = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.bx, i32 noundef 0, i32 noundef 0) #3 ; 0 uses
  %i.bz = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ca = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.bz, i32 noundef 1, i32 noundef 1) #3 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cb = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.cc = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.cb, i32 noundef %i.l) #3 ; 0 uses
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ce = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.cd, i32 noundef %.0217244) #3 ; 0 uses
  %i.cf = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.cj = tail call i32 @hypre_SMGRelax(ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci) #3 ; 0 uses
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.cm = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.cn = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.cp = tail call i32 @hypre_SMGResidual(ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.cn, ptr noundef %i.co) #3 ; 0 uses
  br i1 %i.bh, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.cr = tail call double @hypre_StructInnerProd(ptr noundef %i.cq, ptr noundef %i.cq) #3 ; 3 uses
  br i1 %i.bq, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cs = tail call double @sqrt(double noundef %i.cr) #3, !tbaa !4
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv256
  store double %i.cs, ptr %i.ct, align 8, !tbaa !43
  br i1 %i.br, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.cu = fdiv double %i.cr, %.0218
  %i.cv = tail call double @sqrt(double noundef %i.cu) #3, !tbaa !4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.sink = phi double [ %i.cv, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv256
  store double %.sink, ptr %i.cw, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %i.cx = fdiv double %i.cr, %.0218
  %i.cy = fcmp olt double %i.cx, %.0216
  %i.cz = icmp ne i64 %indvars.iv256, 0
  %or.cond = and i1 %i.cz, %i.cy
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.da = fdiv double %.0214245, %.0212246
  %i.db = fcmp olt double %i.da, %.0216
  %or.cond226 = select i1 %.not, i1 true, i1 %i.db
  br i1 %or.cond226, label %._crit_edge250, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.k
  br i1 %i.bp, label %.thread264, label %bb.r

.thread264:                                       ; preds = %bb.q
  %.0212.mux265 = select i1 %or.cond3.not236, double %.0212246, double 1.000000e+00
  %.0214.mux266 = select i1 %or.cond3.not236, double %.0214245, double 0.000000e+00
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dc = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.de = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.df = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.dg = tail call i32 @hypre_SemiRestrict(ptr noundef %i.dc, ptr noundef %i.dd, ptr noundef %i.de, ptr noundef %i.df) #3 ; 0 uses
  br i1 %.not223237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.r ] ; 9 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.dj = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.di, i32 noundef 0, i32 noundef 0) #3 ; 0 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.dl = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.dk, i32 noundef 1, i32 noundef 1) #3 ; 0 uses
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.dn = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.dm, i32 noundef %i.l) #3 ; 0 uses
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.dp = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.do, i32 noundef 1) #3 ; 0 uses
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !38
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !40
  %i.dx = tail call i32 @hypre_SMGRelax(ptr noundef %i.dq, ptr noundef %i.ds, ptr noundef %i.du, ptr noundef %i.dw) #3 ; 0 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !44
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !38
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !40
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !40
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !40
  %i.ef = tail call i32 @hypre_SMGResidual(ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef %i.ee) #3 ; 0 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !44
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !40
  %i.en = tail call i32 @hypre_SemiRestrict(ptr noundef %i.eh, ptr noundef %i.ej, ptr noundef %i.ek, ptr noundef %i.em) #3 ; 0 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %.not223 = icmp slt i32 %i.bt, %4
  br i1 %.not223, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %5 = and i64 %indvars.iv.next, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %.0210.lcssa = phi i64 [ 1, %bb.r ], [ %5, %._crit_edge.loopexit ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0210.lcssa ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !44
  %i.eq = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.ep, i32 noundef 1) #3 ; 0 uses
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0210.lcssa
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.0210.lcssa
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !40
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.0210.lcssa
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !40
  %i.ey = tail call i32 @hypre_SMGRelax(ptr noundef %i.er, ptr noundef %i.et, ptr noundef %i.ev, ptr noundef %i.ex) #3 ; 0 uses
  br i1 %i.bu, label %.lr.ph242, label %.loopexit

.lr.ph242:                                        ; preds = %._crit_edge, %.lr.ph242
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %.lr.ph242 ], [ %i.bw, %._crit_edge ] ; 9 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv253
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !44
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv253
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv253 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !40
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv253 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !40
  %i.fi = tail call i32 @hypre_SemiInterp(ptr noundef %i.fa, ptr noundef %i.fc, ptr noundef %i.ff, ptr noundef %i.fh) #3 ; 0 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !40
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !40
  %i.fl = tail call i32 @hypre_StructAxpy(double noundef 1.000000e+00, ptr noundef %i.fj, ptr noundef %i.fk) #3 ; 0 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv253 ; 5 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fo = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.fn, i32 noundef 0, i32 noundef 1) #3 ; 0 uses
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fq = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.fp, i32 noundef 1, i32 noundef 0) #3 ; 0 uses
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fs = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.fr, i32 noundef %i.n) #3 ; 0 uses
  %i.ft = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fu = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.ft, i32 noundef 0) #3 ; 0 uses
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv253
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv253
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !40
  %i.ga = load ptr, ptr %i.fd, align 8, !tbaa !40
  %i.gb = tail call i32 @hypre_SMGRelax(ptr noundef %i.fv, ptr noundef %i.fx, ptr noundef %i.fz, ptr noundef %i.ga) #3 ; 0 uses
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, -1
  %i.gc = icmp samesign ugt i64 %indvars.iv253, 1
  br i1 %i.gc, label %.lr.ph242, label %.loopexit, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph242, %._crit_edge
  %i.gd = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.ge = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.gf = load ptr, ptr %i.bv, align 8, !tbaa !40
  %i.gg = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.gh = tail call i32 @hypre_SemiInterp(ptr noundef %i.gd, ptr noundef %i.ge, ptr noundef %i.gf, ptr noundef %i.gg) #3 ; 0 uses
  %i.gi = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.gj = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.gk = tail call i32 @hypre_SMGAxpy(double noundef 1.000000e+00, ptr noundef %i.gi, ptr noundef %i.gj, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #3 ; 0 uses
  br i1 %brmerge, label %bb.s, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.gl = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.gm = tail call double @hypre_StructInnerProd(ptr noundef %i.gl, ptr noundef %i.gl) #3
  %i.gn = load ptr, ptr %i.z, align 8, !tbaa !40  ; 2 uses
  %i.go = tail call double @hypre_StructInnerProd(ptr noundef %i.gn, ptr noundef %i.gn) #3
  br label %bb.t

bb.s:                                             ; preds = %.loopexit
  %.0212.mux = select i1 %or.cond3.not236, double %.0212246, double 1.000000e+00
  %.0214.mux = select i1 %or.cond3.not236, double %.0214245, double 0.000000e+00
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread
  %.1213233 = phi double [ %i.go, %.thread ], [ %.0212.mux, %bb.s ]
  %.1215231 = phi double [ %i.gm, %.thread ], [ %.0214.mux, %bb.s ]
  %i.gp = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.gq = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.gp, i32 noundef 0, i32 noundef 1) #3 ; 0 uses
  %i.gr = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.gs = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %i.gr, i32 noundef 1, i32 noundef 0) #3 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread264, %bb.t
  %.1213232 = phi double [ %.1213233, %bb.t ], [ %.0212.mux265, %.thread264 ]
  %.1215230 = phi double [ %.1215231, %bb.t ], [ %.0214.mux266, %.thread264 ]
  %i.gt = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.gu = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.gt, i32 noundef %i.n) #3 ; 0 uses
  %i.gv = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.gw = tail call i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef %i.gv, i32 noundef 0) #3 ; 0 uses
  %i.gx = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.gy = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.gz = load ptr, ptr %i.x, align 8, !tbaa !40
  %i.ha = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.hb = tail call i32 @hypre_SMGRelax(ptr noundef %i.gx, ptr noundef %i.gy, ptr noundef %i.gz, ptr noundef %i.ha) #3 ; 0 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 3 uses
  %i.hc = trunc nuw nsw i64 %indvars.iv.next257 to i32
  store i32 %i.hc, ptr %i.be, align 8, !tbaa !42
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %._crit_edge250, label %bb.i, !llvm.loop !48

._crit_edge250:                                   ; preds = %bb.p, %bb.u, %bb.h, %bb.f, %bb.g, %bb.b, %bb.c
  %i.hd = load i32, ptr %i.as, align 4, !tbaa !37
  %i.he = tail call i32 @hypre_EndTiming(i32 noundef %i.hd) #3 ; 0 uses
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #1

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #1

declare i32 @hypre_StructVectorDestroy(ptr noundef) local_unnamed_addr #1

declare ptr @hypre_StructMatrixRef(ptr noundef) local_unnamed_addr #1

declare ptr @hypre_StructVectorRef(ptr noundef) local_unnamed_addr #1

declare i32 @hypre_StructVectorSetConstantValues(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #1

declare double @hypre_StructInnerProd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @hypre_SMGRelaxSetMaxIter(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @hypre_SMGRelaxSetZeroGuess(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @hypre_SMGRelax(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @hypre_SMGResidual(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare i32 @hypre_SemiRestrict(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @hypre_SemiInterp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @hypre_StructAxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @hypre_SMGAxpy(double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !6, i64 60, !11, i64 72, !11, i64 80, !14, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !14, i64 216, !14, i64 224}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p2 _ZTS23hypre_StructGrid_struct", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 double", !13, i64 0}
!15 = !{!"p2 _ZTS25hypre_StructMatrix_struct", !12, i64 0}
!16 = !{!"p2 _ZTS25hypre_StructVector_struct", !12, i64 0}
!17 = !{!9, !5, i64 16}
!18 = !{!9, !5, i64 20}
!19 = !{!9, !5, i64 24}
!20 = !{!9, !5, i64 32}
!21 = !{!9, !5, i64 36}
!22 = !{!9, !5, i64 40}
!23 = !{!9, !15, i64 96}
!24 = !{!9, !15, i64 104}
!25 = !{!9, !15, i64 112}
!26 = !{!9, !16, i64 120}
!27 = !{!9, !16, i64 128}
!28 = !{!9, !16, i64 152}
!29 = !{!9, !16, i64 160}
!30 = !{!9, !12, i64 168}
!31 = !{!9, !12, i64 176}
!32 = !{!9, !12, i64 184}
!33 = !{!9, !12, i64 192}
!34 = !{!9, !5, i64 208}
!35 = !{!9, !14, i64 216}
!36 = !{!9, !14, i64 224}
!37 = !{!9, !5, i64 204}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !13, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS25hypre_StructVector_struct", !13, i64 0}
!42 = !{!9, !5, i64 200}
!43 = !{!10, !10, i64 0}
!44 = !{!13, !13, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46}
end_hunk_0
