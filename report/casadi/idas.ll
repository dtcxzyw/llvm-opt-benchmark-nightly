Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas?download=true
inline.NumInlined: 65
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@IDARcheck2:bb.a
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ci = tail call i32 %i.cc(double noundef %i.bq, ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.ch) #12
  %i.cj = load i64, ptr %i.u, align 8, !tbaa !113
  %i.ck = add nsw i64 %i.cj, 1
  store i64 %i.ck, ptr %i.u, align 8, !tbaa !113
  %.not81 = icmp eq i32 %i.ci, 0
  br i1 %.not81, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.i
  %i.cl = load i32, ptr %i.x, align 8, !tbaa !108
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1704
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph94, %bb.p
  %indvars.iv101 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next102, %bb.p ] ; 6 uses
  %.293 = phi i32 [ 0, %.lr.ph94 ], [ %.3, %bb.p ] ; 3 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !203
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv101
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !26
  %.not83 = icmp eq i32 %i.cr, 0
  br i1 %.not83, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !199
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv101
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !60
  %i.cv = tail call double @SUNRabs(double noundef %i.cu) #12
  %i.cw = fcmp oeq double %i.cv, 0.000000e+00
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !201
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv101 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !26
  %i.da = icmp eq i32 %i.cz, 1                    ; 2 uses
  br i1 %i.cw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %i.da, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.cy, align 4, !tbaa !26
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.db = load ptr, ptr %i.cf, align 8, !tbaa !199
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv101
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !60
  %i.de = load ptr, ptr %i.p, align 8, !tbaa !198
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv101
  store double %i.dd, ptr %i.df, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.j
  %.3 = phi i32 [ 1, %bb.m ], [ %.293, %bb.o ], [ %.293, %bb.n ], [ %.293, %bb.j ] ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.dg = load i32, ptr %i.x, align 8, !tbaa !108
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next102, %i.dh
  br i1 %i.di, label %bb.j, label %.loopexit, !llvm.loop !309

.loopexit:                                        ; preds = %bb.l, %bb.p, %.preheader86, %.preheader85, %.preheader, %bb.i, %._crit_edge, %bb.b, %bb.a
  %.079 = phi i32 [ -10, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ -10, %bb.i ], [ 0, %.preheader85 ], [ 0, %.preheader86 ], [ 0, %.preheader ], [ %.3, %bb.p ], [ 3, %bb.l ]
  ret i32 %.079
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -10, 2) i32 @IDARcheck3(ptr nofree noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209
  switch i32 %i.b, label %._crit_edge110 [
    i32 2, label %.thread
    i32 1, label %bb.b
  ]

._crit_edge110:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !310
  br label %bb.c

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.d = load double, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1728
  store double %i.d, ptr %i.e, align 8, !tbaa !310
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.g = load double, ptr %i.f, align 8, !tbaa !208 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.i = load double, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.j = fsub double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.l = load double, ptr %i.k, align 8, !tbaa !212
  %i.m = fmul double %i.j, %i.l
  %i.n = fcmp ult double %i.m, 0.000000e+00
  %. = select i1 %i.n, double %i.g, double %i.i   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1728
  store double %., ptr %i.o, align 8, !tbaa !310
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge110, %.thread, %bb.b
  %i.p = phi double [ %.pre, %._crit_edge110 ], [ %i.d, %.thread ], [ %., %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !206
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !207
  %i.v = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.p, ptr noundef %i.s, ptr noundef %i.u) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = load double, ptr %i.q, align 8, !tbaa !310
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !206
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 10 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.af = tail call i32 %i.x(double noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !113
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !113
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.d, label %IDARootfind.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !100
  %i.al = tail call double @SUNRabs(double noundef %i.ak) #12
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.an = load double, ptr %i.am, align 8, !tbaa !212
  %i.ao = tail call double @SUNRabs(double noundef %i.an) #12
  %i.ap = fadd double %i.al, %i.ao
  %i.aq = load double, ptr %0, align 8, !tbaa !8
  %i.ar = fmul double %i.ap, %i.aq
  %i.as = fmul double %i.ar, 1.000000e+02
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 9 uses
  store double %i.as, ptr %i.at, align 8, !tbaa !304
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 10 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !108
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.thread.thread131

._crit_edge.thread.thread131:                     ; preds = %bb.d
  %i.ax = load double, ptr %i.q, align 8, !tbaa !310 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store double %i.ax, ptr %i.ay, align 8, !tbaa !311
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store double %i.ax, ptr %i.az, align 8, !tbaa !224
  br label %IDARootfind.exit.thread

.lr.ph.i:                                         ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 7 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next366.i, %.thread.i ], [ 0, %.lr.ph.i ]
  %i.bd = phi i1 [ false, %.thread.i ], [ true, %.lr.ph.i ]
  %.0211264.ph.i = phi i32 [ %.0211264.i, %.thread.i ], [ 0, %.lr.ph.i ]
  %.0217263.ph.i = phi i32 [ %i.cq, %.thread.i ], [ 0, %.lr.ph.i ]
  %.0226261.ph.i = phi double [ %i.cl, %.thread.i ], [ 0.000000e+00, %.lr.ph.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.outer.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %indvars.iv.ph.i, %.outer.i ] ; 10 uses
  %.0211264.i = phi i32 [ %.1212.i, %bb.k ], [ %.0211264.ph.i, %.outer.i ] ; 6 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !203
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26
  %.not244.i = icmp eq i32 %i.bg, 0
  br i1 %.not244.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !60
  %i.bk = tail call double @SUNRabs(double noundef %i.bj) #12
  %i.bl = fcmp oeq double %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !202
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !60
  %i.bt = fmul double %i.bs, %i.bp
  %i.bu = fcmp ugt double %i.bt, 0.000000e+00
  br i1 %i.bu, label %bb.k, label %1

1:                                                ; preds = %bb.g
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !60 ; 3 uses
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !60 ; 3 uses
  %i.cb = fmul double %i.bx, %i.ca
  %i.cc = fcmp olt double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !202
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !26
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = fmul double %i.bx, %i.cg
  %i.ci = fcmp ugt double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = fsub double %i.ca, %i.bx
  %i.ck = fdiv double %i.ca, %i.cj
  %i.cl = tail call double @SUNRabs(double noundef %i.ck) #12 ; 2 uses
  %i.cm = fcmp ogt double %i.cl, %.0226261.ph.i
  br i1 %i.cm, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %1, %bb.g, %bb.e
  %.1212.i = phi i32 [ 1, %1 ], [ %.0211264.i, %bb.g ], [ %.0211264.i, %bb.e ], [ %.0211264.i, %bb.j ], [ %.0211264.i, %bb.i ], [ %.0211264.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cn = load i32, ptr %i.au, align 8, !tbaa !108 ; 5 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next.i, %i.co
  br i1 %i.cp, label %bb.e, label %._crit_edge.i, !llvm.loop !312

.thread.i:                                        ; preds = %bb.j
  %i.cq = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %indvars.iv.next366.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = load i32, ptr %i.au, align 8, !tbaa !108
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next366.i, %i.cs
  br i1 %i.ct, label %.outer.i, label %.preheader248.i.a, !llvm.loop !312

._crit_edge.i:                                    ; preds = %bb.k
  %.not156 = icmp eq i32 %.1212.i, 0              ; 2 uses
  br i1 %i.bd, label %bb.l, label %.preheader248.i.a

.preheader248.i.a:                                ; preds = %.thread.i, %._crit_edge.i
  %.1218367374.i = phi i32 [ %.0217263.ph.i, %._crit_edge.i ], [ %i.cq, %.thread.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 11 uses
  %i.cv = load double, ptr %i.q, align 8, !tbaa !310
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !224
  %i.cx = fsub double %i.cv, %i.cw
  %i.cy = tail call double @SUNRabs(double noundef %i.cx) #12
  %i.cz = load double, ptr %i.at, align 8, !tbaa !304
  %i.da = fcmp ugt double %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph293.i, label %.loopexit246.i

.lr.ph293.i:                                      ; preds = %.preheader248.i.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 6 uses
  br label %bb.r

bb.l:                                             ; preds = %._crit_edge.i
  %i.dc = load double, ptr %i.q, align 8, !tbaa !310
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store double %i.dc, ptr %i.dd, align 8, !tbaa !311
  %i.de = icmp slt i32 %i.cn, 1
  br i1 %i.de, label %._crit_edge.thread, label %.lr.ph307.i

.lr.ph307.i:                                      ; preds = %bb.l
  %i.df = load ptr, ptr %i.ab, align 8, !tbaa !199 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !200 ; 7 uses
  %wide.trip.count343.i = zext nneg i32 %i.cn to i64 ; 5 uses
  %min.iters.check212 = icmp ult i32 %i.cn, 8
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = ptrtoaddr ptr %i.df to i64
  %i.dk = sub i64 %i.dj, %i.di
  %diff.check210 = icmp ugt i64 %i.dk, -32
  %or.cond = select i1 %min.iters.check212, i1 true, i1 %diff.check210
  br i1 %or.cond, label %scalar.ph211.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph307.i
  %n.vec214 = and i64 %wide.trip.count343.i, 2147483644 ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next219, %vector.body215 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index216 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load217 = load <2 x double>, ptr %i.dl, align 8, !tbaa !60
  %wide.load218 = load <2 x double>, ptr %i.dm, align 8, !tbaa !60
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index216 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load217, ptr %i.dn, align 8, !tbaa !60
  store <2 x double> %wide.load218, ptr %i.do, align 8, !tbaa !60
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.dp, label %middle.block220, label %vector.body215, !llvm.loop !313

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %n.vec214, %wide.trip.count343.i
  br i1 %cmp.n221, label %._crit_edge308.i, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %.lr.ph307.i, %middle.block220
  %indvars.iv340.i.ph = phi i64 [ 0, %.lr.ph307.i ], [ %n.vec214, %middle.block220 ] ; 3 uses
  %xtraiter281 = and i64 %wide.trip.count343.i, 3 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol

scalar.ph211.prol:                                ; preds = %scalar.ph211.preheader, %scalar.ph211.prol
  %indvars.iv340.i.prol = phi i64 [ %indvars.iv.next341.i.prol, %scalar.ph211.prol ], [ %indvars.iv340.i.ph, %scalar.ph211.preheader ] ; 3 uses
  %prol.iter283 = phi i64 [ %prol.iter283.next, %scalar.ph211.prol ], [ 0, %scalar.ph211.preheader ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv340.i.prol
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !60
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv340.i.prol
  store double %i.dr, ptr %i.ds, align 8, !tbaa !60
  %indvars.iv.next341.i.prol = add nuw nsw i64 %indvars.iv340.i.prol, 1 ; 2 uses
  %prol.iter283.next = add i64 %prol.iter283, 1   ; 2 uses
  %prol.iter283.cmp.not = icmp eq i64 %prol.iter283.next, %xtraiter281
  br i1 %prol.iter283.cmp.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol, !llvm.loop !314

scalar.ph211.prol.loopexit:                       ; preds = %scalar.ph211.prol, %scalar.ph211.preheader
  %indvars.iv340.i.unr = phi i64 [ %indvars.iv340.i.ph, %scalar.ph211.preheader ], [ %indvars.iv.next341.i.prol, %scalar.ph211.prol ]
  %i.dt = sub nsw i64 %indvars.iv340.i.ph, %wide.trip.count343.i
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge308.i, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211
  %indvars.iv340.i = phi i64 [ %indvars.iv.next341.i.3, %scalar.ph211 ], [ %indvars.iv340.i.unr, %scalar.ph211.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv340.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !60
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv340.i
  store double %i.dw, ptr %i.dx, align 8, !tbaa !60
  %indvars.iv.next341.i = add nuw nsw i64 %indvars.iv340.i, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next341.i
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !60
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next341.i
  store double %i.dz, ptr %i.ea, align 8, !tbaa !60
  %indvars.iv.next341.i.1 = add nuw nsw i64 %indvars.iv340.i, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next341.i.1
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !60
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next341.i.1
  store double %i.ec, ptr %i.ed, align 8, !tbaa !60
  %indvars.iv.next341.i.2 = add nuw nsw i64 %indvars.iv340.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next341.i.2
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !60
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next341.i.2
  store double %i.ef, ptr %i.eg, align 8, !tbaa !60
  %indvars.iv.next341.i.3 = add nuw nsw i64 %indvars.iv340.i, 4 ; 2 uses
  %exitcond344.not.i.3 = icmp eq i64 %indvars.iv.next341.i.3, %wide.trip.count343.i
  br i1 %exitcond344.not.i.3, label %._crit_edge308.i, label %scalar.ph211, !llvm.loop !315

._crit_edge308.i:                                 ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211, %middle.block220
  br i1 %.not156, label %.lr.ph, label %.lr.ph310.i

.lr.ph310.i:                                      ; preds = %._crit_edge308.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph310.i
  %indvars.iv345.i = phi i64 [ 0, %.lr.ph310.i ], [ %indvars.iv.next346.i, %bb.q ] ; 7 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !201
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv345.i
  store i32 0, ptr %i.ej, align 4, !tbaa !26
  %i.ek = load ptr, ptr %i.ba, align 8, !tbaa !203
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv345.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !26
  %.not238.i = icmp eq i32 %i.em, 0
  br i1 %.not238.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv345.i
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !60
  %i.eq = tail call double @SUNRabs(double noundef %i.ep) #12
  %i.er = fcmp oeq double %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.es = load ptr, ptr %i.bc, align 8, !tbaa !202
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv345.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !26
  %i.ev = sitofp i32 %i.eu to double
  %i.ew = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv345.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !60 ; 2 uses
  %i.ez = fmul double %i.ey, %i.ev
  %i.fa = fcmp ugt double %i.ez, 0.000000e+00
  br i1 %i.fa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fb = fcmp ogt double %i.ey, 0.000000e+00
  %i.fc = select i1 %i.fb, i32 -1, i32 1
  %i.fd = load ptr, ptr %i.eh, align 8, !tbaa !201
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv345.i
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %i.ff = load i32, ptr %i.au, align 8, !tbaa !108 ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %indvars.iv.next346.i, %i.fg
  br i1 %i.fh, label %bb.m, label %IDARootfind.exit, !llvm.loop !316

bb.r:                                             ; preds = %.backedge.i, %.lr.ph293.i
  %.0215292.i = phi i32 [ -1, %.lr.ph293.i ], [ %.0216291.i, %.backedge.i ]
  %.0216291.i = phi i32 [ 0, %.lr.ph293.i ], [ %.0216.be.i, %.backedge.i ] ; 2 uses
  %.v290.i = phi double [ 5.000000e-01, %.lr.ph293.i ], [ %.v.be.i, %.backedge.i ]
  %.2219289.i = phi i32 [ %.1218367374.i, %.lr.ph293.i ], [ %.3220.lcssa383.i, %.backedge.i ] ; 3 uses
  %.0232288.i = phi double [ 1.000000e+00, %.lr.ph293.i ], [ %.1233.i, %.backedge.i ]
  %i.fi = icmp eq i32 %.0215292.i, %.0216291.i
  %i.fj = fmul double %.v290.i, %.0232288.i
  %.1233.i = select i1 %i.fi, double %i.fj, double 1.000000e+00 ; 2 uses
  %i.fk = load double, ptr %i.q, align 8, !tbaa !310 ; 2 uses
  %i.fl = load double, ptr %i.cu, align 8, !tbaa !224 ; 2 uses
  %i.fm = fsub double %i.fk, %i.fl
  %i.fn = load ptr, ptr %i.ab, align 8, !tbaa !199
  %i.fo = sext i32 %.2219289.i to i64             ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !60 ; 2 uses
  %i.fr = fmul double %i.fm, %i.fq
  %i.fs = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fo
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !60
  %i.fv = fneg double %.1233.i
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fu, double %i.fq)
  %i.fx = fdiv double %i.fr, %i.fw
  %i.fy = fsub double %i.fk, %i.fx                ; 2 uses
  %i.fz = fsub double %i.fy, %i.fl
  %i.ga = tail call double @SUNRabs(double noundef %i.fz) #12
  %i.gb = load double, ptr %i.at, align 8, !tbaa !304
  %i.gc = fmul double %i.gb, 5.000000e-01
  %i.gd = fcmp olt double %i.ga, %i.gc
  %.pre.i = load double, ptr %i.q, align 8, !tbaa !310 ; 2 uses
  br i1 %i.gd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ge = load double, ptr %i.cu, align 8, !tbaa !224
  %i.gf = fsub double %.pre.i, %i.ge
  %i.gg = tail call double @SUNRabs(double noundef %i.gf) #12
  %i.gh = load double, ptr %i.at, align 8, !tbaa !304
  %i.gi = fdiv double %i.gg, %i.gh                ; 2 uses
  %i.gj = fcmp ogt double %i.gi, 5.000000e+00
  %i.gk = fdiv double 5.000000e-01, %i.gi
  %i.gl = select i1 %i.gj, double 1.000000e-01, double %i.gk
  %i.gm = load double, ptr %i.cu, align 8, !tbaa !224 ; 2 uses
  %i.gn = load double, ptr %i.q, align 8, !tbaa !310 ; 2 uses
  %i.go = fsub double %i.gn, %i.gm
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.go, double %i.gm)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gq = phi double [ %i.gn, %bb.s ], [ %.pre.i, %bb.r ]
  %.0230.i = phi double [ %i.gp, %bb.s ], [ %i.fy, %bb.r ] ; 2 uses
  %i.gr = fsub double %i.gq, %.0230.i
  %i.gs = tail call double @SUNRabs(double noundef %i.gr) #12
  %i.gt = load double, ptr %i.at, align 8, !tbaa !304
  %i.gu = fmul double %i.gt, 5.000000e-01
  %i.gv = fcmp olt double %i.gs, %i.gu
  br i1 %i.gv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gw = load double, ptr %i.q, align 8, !tbaa !310
  %i.gx = load double, ptr %i.cu, align 8, !tbaa !224
  %i.gy = fsub double %i.gw, %i.gx
  %i.gz = tail call double @SUNRabs(double noundef %i.gy) #12
  %i.ha = load double, ptr %i.at, align 8, !tbaa !304
  %i.hb = fdiv double %i.gz, %i.ha                ; 2 uses
  %i.hc = fcmp ogt double %i.hb, 5.000000e+00
  %i.hd = load double, ptr %i.q, align 8, !tbaa !310 ; 2 uses
  %i.he = load double, ptr %i.cu, align 8, !tbaa !224
  %i.hf = fsub double %i.hd, %i.he
  %.neg.i = fdiv double -5.000000e-01, %i.hb
  %i.hg = select i1 %i.hc, double -1.000000e-01, double %.neg.i
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.hf, double %i.hd)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1231.i = phi double [ %i.hh, %bb.u ], [ %.0230.i, %bb.t ] ; 9 uses
  %i.hi = load ptr, ptr %i.r, align 8, !tbaa !206
  %i.hj = load ptr, ptr %i.t, align 8, !tbaa !207
  %i.hk = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %.1231.i, ptr noundef %i.hi, ptr noundef %i.hj) ; 0 uses
  %i.hl = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.hm = load ptr, ptr %i.r, align 8, !tbaa !206
  %i.hn = load ptr, ptr %i.t, align 8, !tbaa !207
  %i.ho = load ptr, ptr %i.db, align 8, !tbaa !200
  %i.hp = load ptr, ptr %i.ad, align 8, !tbaa !65
  %i.hq = tail call i32 %i.hl(double noundef %.1231.i, ptr noundef %i.hm, ptr noundef %i.hn, ptr noundef %i.ho, ptr noundef %i.hp) #12, !inline_history !317
  %i.hr = load i64, ptr %i.ag, align 8, !tbaa !113
  %i.hs = add nsw i64 %i.hr, 1
  store i64 %i.hs, ptr %i.ag, align 8, !tbaa !113
  %.not239.i = icmp eq i32 %i.hq, 0
  br i1 %.not239.i, label %.preheader247.i, label %IDARootfind.exit.thread

.preheader247.i:                                  ; preds = %bb.v
  %i.ht = load i32, ptr %i.au, align 8, !tbaa !108
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph274.outer.i, label %.thread407.i

.thread407.i:                                     ; preds = %.preheader247.i
  store double %.1231.i, ptr %i.cu, align 8, !tbaa !224
  br label %._crit_edge287.i

.lr.ph274.outer.i:                                ; preds = %.preheader247.i, %.thread387.i
  %indvars.iv320.ph.i = phi i64 [ %indvars.iv.next321392.i, %.thread387.i ], [ 0, %.preheader247.i ]
  %i.hv = phi i1 [ false, %.thread387.i ], [ true, %.preheader247.i ]
  %.2213272.ph.i = phi i32 [ %.2213272.i, %.thread387.i ], [ 0, %.preheader247.i ]
  %.3220271.ph.i = phi i32 [ %i.ji, %.thread387.i ], [ %.2219289.i, %.preheader247.i ] ; 3 uses
  %.2228269.ph.i = phi double [ %i.jd, %.thread387.i ], [ 0.000000e+00, %.preheader247.i ]
  br label %.lr.ph274.i

.lr.ph274.i:                                      ; preds = %bb.ab, %.lr.ph274.outer.i
  %indvars.iv320.i = phi i64 [ %indvars.iv.next321.i, %bb.ab ], [ %indvars.iv320.ph.i, %.lr.ph274.outer.i ] ; 10 uses
  %.2213272.i = phi i32 [ %.3214.i, %bb.ab ], [ %.2213272.ph.i, %.lr.ph274.outer.i ] ; 6 uses
  %i.hw = load ptr, ptr %i.ba, align 8, !tbaa !203
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv320.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !26
  %.not242.i = icmp eq i32 %i.hy, 0
  br i1 %.not242.i, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %.lr.ph274.i
  %i.hz = load ptr, ptr %i.db, align 8, !tbaa !200
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv320.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !60
  %i.ic = tail call double @SUNRabs(double noundef %i.ib) #12
  %i.id = fcmp oeq double %i.ic, 0.000000e+00
  br i1 %i.id, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ie = load ptr, ptr %i.bc, align 8, !tbaa !202
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv320.i
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !26
  %i.ih = sitofp i32 %i.ig to double
  %i.ii = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv320.i
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !60
  %i.il = fmul double %i.ik, %i.ih
  %i.im = fcmp ugt double %i.il, 0.000000e+00
  br i1 %i.im, label %bb.ab, label %2

2:                                                ; preds = %bb.x
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.in = load ptr, ptr %i.bb, align 8, !tbaa !198
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv320.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !60 ; 3 uses
  %i.iq = load ptr, ptr %i.db, align 8, !tbaa !200
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv320.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !60 ; 3 uses
  %i.it = fmul double %i.ip, %i.is
  %i.iu = fcmp olt double %i.it, 0.000000e+00
  br i1 %i.iu, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.iv = load ptr, ptr %i.bc, align 8, !tbaa !202
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv320.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !26
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul double %i.ip, %i.iy
  %i.ja = fcmp ugt double %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jb = fsub double %i.is, %i.ip
  %i.jc = fdiv double %i.is, %i.jb
  %i.jd = tail call double @SUNRabs(double noundef %i.jc) #12 ; 2 uses
  %i.je = fcmp ogt double %i.jd, %.2228269.ph.i
  br i1 %i.je, label %.thread387.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %2, %bb.x, %.lr.ph274.i
  %.3214.i = phi i32 [ 1, %2 ], [ %.2213272.i, %bb.x ], [ %.2213272.i, %.lr.ph274.i ], [ %.2213272.i, %bb.aa ], [ %.2213272.i, %bb.z ], [ %.2213272.i, %bb.y ] ; 2 uses
  %indvars.iv.next321.i = add nuw nsw i64 %indvars.iv320.i, 1 ; 2 uses
  %i.jf = load i32, ptr %i.au, align 8, !tbaa !108 ; 7 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp slt i64 %indvars.iv.next321.i, %i.jg
  br i1 %i.jh, label %.lr.ph274.i, label %._crit_edge275.i, !llvm.loop !318

.thread387.i:                                     ; preds = %bb.aa
  %i.ji = trunc nuw nsw i64 %indvars.iv320.i to i32 ; 2 uses
  %indvars.iv.next321392.i = add nuw nsw i64 %indvars.iv320.i, 1 ; 2 uses
  %i.jj = load i32, ptr %i.au, align 8, !tbaa !108 ; 2 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp slt i64 %indvars.iv.next321392.i, %i.jk
  br i1 %i.jl, label %.lr.ph274.outer.i, label %._crit_edge275.thread396.i, !llvm.loop !318

._crit_edge275.i:                                 ; preds = %bb.ab
  br i1 %i.hv, label %bb.ac, label %._crit_edge275.thread396.i

._crit_edge275.thread396.i:                       ; preds = %.thread387.i, %._crit_edge275.i
  %.4393400.i = phi i32 [ %.3220271.ph.i, %._crit_edge275.i ], [ %i.ji, %.thread387.i ]
  %i.jm = phi i32 [ %i.jf, %._crit_edge275.i ], [ %i.jj, %.thread387.i ] ; 3 uses
  store double %.1231.i, ptr %i.q, align 8, !tbaa !310
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph282.i, label %._crit_edge283.i

.lr.ph282.i:                                      ; preds = %._crit_edge275.thread396.i
  %i.jo = load ptr, ptr %i.db, align 8, !tbaa !200 ; 7 uses
  %i.jp = load ptr, ptr %i.ab, align 8, !tbaa !199 ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.jm to i64 ; 5 uses
  %min.iters.check184 = icmp ult i32 %i.jm, 4
  %i.jq = ptrtoaddr ptr %i.jp to i64
  %i.jr = ptrtoaddr ptr %i.jo to i64
  %i.js = sub i64 %i.jr, %i.jq
  %diff.check182 = icmp ugt i64 %i.js, -32
  %or.cond241 = select i1 %min.iters.check184, i1 true, i1 %diff.check182
  br i1 %or.cond241, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph282.i
  %n.vec186 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next191, %vector.body187 ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %index188 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load189 = load <2 x double>, ptr %i.jt, align 8, !tbaa !60
  %wide.load190 = load <2 x double>, ptr %i.ju, align 8, !tbaa !60
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %index188 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <2 x double> %wide.load189, ptr %i.jv, align 8, !tbaa !60
  store <2 x double> %wide.load190, ptr %i.jw, align 8, !tbaa !60
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.jx, label %middle.block192, label %vector.body187, !llvm.loop !319

middle.block192:                                  ; preds = %vector.body187
  %cmp.n193 = icmp eq i64 %n.vec186, %wide.trip.count.i
  br i1 %cmp.n193, label %._crit_edge283.loopexit.i, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph282.i, %middle.block192
  %indvars.iv323.i.ph = phi i64 [ 0, %.lr.ph282.i ], [ %n.vec186, %middle.block192 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol

scalar.ph183.prol:                                ; preds = %scalar.ph183.preheader, %scalar.ph183.prol
  %indvars.iv323.i.prol = phi i64 [ %indvars.iv.next324.i.prol, %scalar.ph183.prol ], [ %indvars.iv323.i.ph, %scalar.ph183.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph183.prol ], [ 0, %scalar.ph183.preheader ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv323.i.prol
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !60
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv323.i.prol
  store double %i.jz, ptr %i.ka, align 8, !tbaa !60
  %indvars.iv.next324.i.prol = add nuw nsw i64 %indvars.iv323.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol, !llvm.loop !320

scalar.ph183.prol.loopexit:                       ; preds = %scalar.ph183.prol, %scalar.ph183.preheader
  %indvars.iv323.i.unr = phi i64 [ %indvars.iv323.i.ph, %scalar.ph183.preheader ], [ %indvars.iv.next324.i.prol, %scalar.ph183.prol ]
  %i.kb = sub nsw i64 %indvars.iv323.i.ph, %wide.trip.count.i
  %i.kc = icmp ugt i64 %i.kb, -4
  br i1 %i.kc, label %._crit_edge283.loopexit.i, label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183
  %indvars.iv323.i = phi i64 [ %indvars.iv.next324.i.3, %scalar.ph183 ], [ %indvars.iv323.i.unr, %scalar.ph183.prol.loopexit ] ; 6 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv323.i
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !60
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv323.i
  store double %i.ke, ptr %i.kf, align 8, !tbaa !60
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.next324.i
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !60
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.next324.i
  store double %i.kh, ptr %i.ki, align 8, !tbaa !60
  %indvars.iv.next324.i.1 = add nuw nsw i64 %indvars.iv323.i, 2 ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.next324.i.1
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !60
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.next324.i.1
  store double %i.kk, ptr %i.kl, align 8, !tbaa !60
  %indvars.iv.next324.i.2 = add nuw nsw i64 %indvars.iv323.i, 3 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.next324.i.2
  %i.kn = load double, ptr %i.km, align 8, !tbaa !60
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.next324.i.2
  store double %i.kn, ptr %i.ko, align 8, !tbaa !60
  %indvars.iv.next324.i.3 = add nuw nsw i64 %indvars.iv323.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next324.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge283.loopexit.i, label %scalar.ph183, !llvm.loop !321

._crit_edge283.loopexit.i:                        ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block192
  %.pre348.i = load double, ptr %i.q, align 8, !tbaa !310
  br label %._crit_edge283.i

._crit_edge283.i:                                 ; preds = %._crit_edge283.loopexit.i, %._crit_edge275.thread396.i
  %i.kp = phi double [ %.pre348.i, %._crit_edge283.loopexit.i ], [ %.1231.i, %._crit_edge275.thread396.i ]
  %i.kq = load double, ptr %i.cu, align 8, !tbaa !224
  %i.kr = fsub double %i.kp, %i.kq
  %i.ks = tail call double @SUNRabs(double noundef %i.kr) #12
  %i.kt = load double, ptr %i.at, align 8, !tbaa !304
  %i.ku = fcmp ugt double %i.ks, %i.kt
  br i1 %i.ku, label %.backedge.i, label %.loopexit246.i

.backedge.i:                                      ; preds = %._crit_edge287.i, %._crit_edge283.i
  %.3220.lcssa383.i = phi i32 [ %.3220.lcssa384406410.i, %._crit_edge287.i ], [ %.4393400.i, %._crit_edge283.i ]
  %.v.be.i = phi double [ 2.000000e+00, %._crit_edge287.i ], [ 5.000000e-01, %._crit_edge283.i ]
  %.0216.be.i = phi i32 [ 2, %._crit_edge287.i ], [ 1, %._crit_edge283.i ]
  %i.kv = load double, ptr %i.q, align 8, !tbaa !310
  %i.kw = load double, ptr %i.cu, align 8, !tbaa !224
  %i.kx = fsub double %i.kv, %i.kw
  %i.ky = tail call double @SUNRabs(double noundef %i.kx) #12
  %i.kz = load double, ptr %i.at, align 8, !tbaa !304
  %i.la = fcmp ugt double %i.ky, %i.kz
  br i1 %i.la, label %bb.r, label %.loopexit246.i

bb.ac:                                            ; preds = %._crit_edge275.i
  %i.lb = icmp eq i32 %.3214.i, 0
  %i.lc = icmp sgt i32 %i.jf, 0                   ; 2 uses
  br i1 %i.lb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %.1231.i, ptr %i.q, align 8, !tbaa !310
  br i1 %i.lc, label %.lr.ph301.i, label %.loopexit246.i

.lr.ph301.i:                                      ; preds = %bb.ad
  %i.ld = load ptr, ptr %i.db, align 8, !tbaa !200 ; 7 uses
  %i.le = load ptr, ptr %i.ab, align 8, !tbaa !199 ; 7 uses
  %wide.trip.count335.i = zext nneg i32 %i.jf to i64 ; 5 uses
  %min.iters.check198 = icmp ult i32 %i.jf, 8
  %i.lf = ptrtoaddr ptr %i.le to i64
  %i.lg = ptrtoaddr ptr %i.ld to i64
  %i.lh = sub i64 %i.lg, %i.lf
  %diff.check196 = icmp ugt i64 %i.lh, -32
  %or.cond244 = select i1 %min.iters.check198, i1 true, i1 %diff.check196
  br i1 %or.cond244, label %scalar.ph197.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph301.i
  %n.vec200 = and i64 %wide.trip.count335.i, 2147483644 ; 3 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next205, %vector.body201 ] ; 3 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %index202 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load203 = load <2 x double>, ptr %i.li, align 8, !tbaa !60
  %wide.load204 = load <2 x double>, ptr %i.lj, align 8, !tbaa !60
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %index202 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store <2 x double> %wide.load203, ptr %i.lk, align 8, !tbaa !60
  store <2 x double> %wide.load204, ptr %i.ll, align 8, !tbaa !60
  %index.next205 = add nuw i64 %index202, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next205, %n.vec200
  br i1 %i.lm, label %middle.block206, label %vector.body201, !llvm.loop !322

middle.block206:                                  ; preds = %vector.body201
  %cmp.n207 = icmp eq i64 %n.vec200, %wide.trip.count335.i
  br i1 %cmp.n207, label %.loopexit246.i, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %.lr.ph301.i, %middle.block206
  %indvars.iv331.i.ph = phi i64 [ 0, %.lr.ph301.i ], [ %n.vec200, %middle.block206 ] ; 3 uses
  %xtraiter278 = and i64 %wide.trip.count335.i, 3 ; 2 uses
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader, %scalar.ph197.prol
  %indvars.iv331.i.prol = phi i64 [ %indvars.iv.next332.i.prol, %scalar.ph197.prol ], [ %indvars.iv331.i.ph, %scalar.ph197.preheader ] ; 3 uses
  %prol.iter280 = phi i64 [ %prol.iter280.next, %scalar.ph197.prol ], [ 0, %scalar.ph197.preheader ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv331.i.prol
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !60
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv331.i.prol
  store double %i.lo, ptr %i.lp, align 8, !tbaa !60
  %indvars.iv.next332.i.prol = add nuw nsw i64 %indvars.iv331.i.prol, 1 ; 2 uses
  %prol.iter280.next = add i64 %prol.iter280, 1   ; 2 uses
  %prol.iter280.cmp.not = icmp eq i64 %prol.iter280.next, %xtraiter278
  br i1 %prol.iter280.cmp.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol, !llvm.loop !323

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %indvars.iv331.i.unr = phi i64 [ %indvars.iv331.i.ph, %scalar.ph197.preheader ], [ %indvars.iv.next332.i.prol, %scalar.ph197.prol ]
  %i.lq = sub nsw i64 %indvars.iv331.i.ph, %wide.trip.count335.i
  %i.lr = icmp ugt i64 %i.lq, -4
  br i1 %i.lr, label %.loopexit246.i, label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
end_hunk_0
