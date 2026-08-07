loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cs_spsolve(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit93, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %.loopexit93

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  %i.g = icmp eq i32 %i.f, -1
  %i.h = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.h, %i.g
  %i.i = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.i, %or.cond3
  br i1 %or.cond5, label %bb.d, label %.loopexit93

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 5 uses
  %i.x = tail call i32 @cs_reach(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %3, ptr noundef %5) #3 ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.q                  ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.z = sext i32 %i.x to i64                     ; 4 uses
  %wide.trip.count = sext i32 %i.q to i64         ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count, %i.z
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.prol
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ad
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !18
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !20

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.z, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.af = sub nsw i64 %i.z, %wide.trip.count
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aj
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ao
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !18
  %i.aq = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %4, i64 %i.at
  store double 0.000000e+00, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr [4 x i8], ptr %3, i64 %indvars.iv
  %i.aw = getelementptr i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ay
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !18
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %i.ba = sext i32 %2 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !17 ; 2 uses
  %i.bf = icmp slt i32 %i.bc, %i.be
  br i1 %i.bf, label %.lr.ph97.preheader, label %.preheader

.lr.ph97.preheader:                               ; preds = %._crit_edge
  %i.bg = sext i32 %i.bc to i64                   ; 4 uses
  %wide.trip.count108 = sext i32 %i.be to i64     ; 3 uses
  %i.bh = sub nsw i64 %wide.trip.count108, %i.bg
  %xtraiter148 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.lr.ph97.prol.loopexit, label %.lr.ph97.prol

.lr.ph97.prol:                                    ; preds = %.lr.ph97.preheader, %.lr.ph97.prol
  %indvars.iv105.prol = phi i64 [ %indvars.iv.next106.prol, %.lr.ph97.prol ], [ %i.bg, %.lr.ph97.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %.lr.ph97.prol ], [ 0, %.lr.ph97.preheader ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv105.prol
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv105.prol
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bm
  store double %i.bj, ptr %i.bn, align 8, !tbaa !18
  %indvars.iv.next106.prol = add nsw i64 %indvars.iv105.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %.lr.ph97.prol.loopexit, label %.lr.ph97.prol, !llvm.loop !24

.lr.ph97.prol.loopexit:                           ; preds = %.lr.ph97.prol, %.lr.ph97.preheader
  %indvars.iv105.unr = phi i64 [ %i.bg, %.lr.ph97.preheader ], [ %indvars.iv.next106.prol, %.lr.ph97.prol ]
  %i.bo = sub nsw i64 %i.bg, %wide.trip.count108
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.preheader, label %.lr.ph97

.preheader:                                       ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97, %._crit_edge
  br i1 %i.y, label %.lr.ph102, label %.loopexit93

.lr.ph102:                                        ; preds = %.preheader
  %.not90 = icmp eq ptr %5, null                  ; 2 uses
  %.not91 = icmp eq i32 %6, 0
  %i.bq = sext i32 %i.x to i64                    ; 2 uses
  %wide.trip.count127 = sext i32 %i.q to i64      ; 2 uses
  br i1 %.not91, label %.lr.ph102.split.us, label %.lr.ph102.split

.lr.ph102.split.us:                               ; preds = %.lr.ph102, %.loopexit.us
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %.loopexit.us ], [ %i.bq, %.lr.ph102 ] ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv124
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !17 ; 3 uses
  br i1 %.not90, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph102.split.us
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph102.split.us
  %i.bw = phi i32 [ %i.bv, %bb.e ], [ %i.bs, %.lr.ph102.split.us ] ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17 ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [8 x i8], ptr %i.o, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = sext i32 %i.bs to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cg ; 5 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !18
  %i.cj = fdiv double %i.ci, %i.cf
  store double %i.cj, ptr %i.ch, align 8, !tbaa !18
  %i.ck = load i32, ptr %i.bz, align 4, !tbaa !17 ; 2 uses
  %i.cl = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph100.us.preheader, label %.loopexit.us

.lr.ph100.us.preheader:                           ; preds = %bb.g
  %i.cn = sext i32 %i.ck to i64                   ; 6 uses
  %wide.trip.count122 = sext i32 %i.cl to i64
  %7 = sext i32 %i.cb to i64                      ; 2 uses
  %i.co = add nsw i64 %7, -2
  %i.cp = sub nsw i64 %i.cn, %7
  %i.cq = and i64 %i.cp, 1
  %lcmp.mod155.not.not = icmp eq i64 %i.cq, 0
  br i1 %lcmp.mod155.not.not, label %.lr.ph100.us.prol, label %.lr.ph100.us.prol.loopexit

.lr.ph100.us.prol:                                ; preds = %.lr.ph100.us.preheader
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cn
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !18
  %i.ct = load double, ptr %i.ch, align 8, !tbaa !18
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.cn
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !17
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cw ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !18
  %i.cz = fneg double %i.cs
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.ct, double %i.cy)
  store double %i.da, ptr %i.cx, align 8, !tbaa !18
  %indvars.iv.next120.prol = add nsw i64 %i.cn, 1
  br label %.lr.ph100.us.prol.loopexit

.lr.ph100.us.prol.loopexit:                       ; preds = %.lr.ph100.us.prol, %.lr.ph100.us.preheader
  %indvars.iv119.unr = phi i64 [ %i.cn, %.lr.ph100.us.preheader ], [ %indvars.iv.next120.prol, %.lr.ph100.us.prol ]
  %i.db = icmp eq i64 %i.co, %i.cn
  br i1 %i.db, label %.loopexit.us, label %.lr.ph100.us

.lr.ph100.us:                                     ; preds = %.lr.ph100.us.prol.loopexit, %.lr.ph100.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %.lr.ph100.us ], [ %indvars.iv119.unr, %.lr.ph100.us.prol.loopexit ] ; 4 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv119
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  %i.de = load double, ptr %i.ch, align 8, !tbaa !18
  %i.df = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv119
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !17
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dh ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !18
  %i.dk = fneg double %i.dd
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.de, double %i.dj)
  store double %i.dl, ptr %i.di, align 8, !tbaa !18
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next120
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !18
  %i.do = load double, ptr %i.ch, align 8, !tbaa !18
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next120
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !17
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dr ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !18
  %i.du = fneg double %i.dn
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.do, double %i.dt)
  store double %i.dv, ptr %i.ds, align 8, !tbaa !18
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %exitcond123.not.1 = icmp eq i64 %indvars.iv.next120.1, %wide.trip.count122
  br i1 %exitcond123.not.1, label %.loopexit.us, label %.lr.ph100.us, !llvm.loop !25

.loopexit.us:                                     ; preds = %.lr.ph100.us.prol.loopexit, %.lr.ph100.us, %bb.g, %bb.f
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit93, label %.lr.ph102.split.us, !llvm.loop !26

.lr.ph97:                                         ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.3, %.lr.ph97 ], [ %indvars.iv105.unr, %.lr.ph97.prol.loopexit ] ; 6 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv105
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !18
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv105
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !17
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ea
  store double %i.dx, ptr %i.eb, align 8, !tbaa !18
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next106
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !18
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next106
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !17
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.eg
  store double %i.ed, ptr %i.eh, align 8, !tbaa !18
  %indvars.iv.next106.1 = add nsw i64 %indvars.iv105, 2 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next106.1
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !18
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next106.1
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !17
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %4, i64 %i.em
  store double %i.ej, ptr %i.en, align 8, !tbaa !18
  %indvars.iv.next106.2 = add nsw i64 %indvars.iv105, 3 ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next106.2
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !18
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next106.2
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !17
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es
  store double %i.ep, ptr %i.et, align 8, !tbaa !18
  %indvars.iv.next106.3 = add nsw i64 %indvars.iv105, 4 ; 2 uses
  %exitcond109.not.3 = icmp eq i64 %indvars.iv.next106.3, %wide.trip.count108
  br i1 %exitcond109.not.3, label %.preheader, label %.lr.ph97, !llvm.loop !27

.lr.ph102.split:                                  ; preds = %.lr.ph102, %.loopexit
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.loopexit ], [ %i.bq, %.lr.ph102 ] ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv114
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17 ; 3 uses
  br i1 %.not90, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph102.split
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph102.split, %bb.h
  %i.ez = phi i32 [ %i.ey, %bb.h ], [ %i.ev, %.lr.ph102.split ] ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fb = zext nneg i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !17 ; 4 uses
  %i.fe = sext i32 %i.fd to i64                   ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18
  %i.fh = sext i32 %i.ev to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 5 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !18
  %i.fk = fdiv double %i.fj, %i.fg
  store double %i.fk, ptr %i.fi, align 8, !tbaa !18
  %i.fl = add nsw i32 %i.fd, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !17 ; 4 uses
  %i.fo = icmp slt i32 %i.fl, %i.fn
  br i1 %i.fo, label %.lr.ph100.preheader, label %.loopexit

.lr.ph100.preheader:                              ; preds = %bb.j
  %i.fp = add nsw i64 %i.fe, 1                    ; 3 uses
  %i.fq = add i32 %i.fn, -2
  %i.fr = sub i32 %i.fd, %i.fn
  %i.fs = and i32 %i.fr, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.fs, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph100.prol, label %.lr.ph100.prol.loopexit

.lr.ph100.prol:                                   ; preds = %.lr.ph100.preheader
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fp
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !18
  %i.fv = load double, ptr %i.fi, align 8, !tbaa !18
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fp
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !17
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = fneg double %i.fu
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.fv, double %i.ga)
  store double %i.gc, ptr %i.fz, align 8, !tbaa !18
  %indvars.iv.next111.prol = add nsw i64 %i.fe, 2
  br label %.lr.ph100.prol.loopexit

.lr.ph100.prol.loopexit:                          ; preds = %.lr.ph100.prol, %.lr.ph100.preheader
  %indvars.iv110.unr = phi i64 [ %i.fp, %.lr.ph100.preheader ], [ %indvars.iv.next111.prol, %.lr.ph100.prol ]
  %i.gd = icmp eq i32 %i.fq, %i.fd
  br i1 %i.gd, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100
  %indvars.iv110 = phi i64 [ %indvars.iv.next111.1, %.lr.ph100 ], [ %indvars.iv110.unr, %.lr.ph100.prol.loopexit ] ; 4 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv110
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !18
  %i.gg = load double, ptr %i.fi, align 8, !tbaa !18
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv110
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !17
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gj ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !18
  %i.gm = fneg double %i.gf
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.gg, double %i.gl)
  store double %i.gn, ptr %i.gk, align 8, !tbaa !18
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.o, i64 %indvars.iv.next111
  %i.gp = load double, ptr %i.go, align 8, !tbaa !18
  %i.gq = load double, ptr %i.fi, align 8, !tbaa !18
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next111
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !17
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gt ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !18
  %i.gw = fneg double %i.gp
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.gq, double %i.gv)
  store double %i.gx, ptr %i.gu, align 8, !tbaa !18
  %indvars.iv.next111.1 = add nsw i64 %indvars.iv110, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next111.1 to i32
  %exitcond113.not.1 = icmp eq i32 %i.fn, %lftr.wideiv.1
  br i1 %exitcond113.not.1, label %.loopexit, label %.lr.ph100, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph100.prol.loopexit, %.lr.ph100, %bb.j, %bb.i
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count127
  br i1 %exitcond118.not, label %.loopexit93, label %.lr.ph102.split, !llvm.loop !26

.loopexit93:                                      ; preds = %.loopexit, %.loopexit.us, %.preheader, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ %i.x, %.preheader ], [ %i.x, %.loopexit.us ], [ %i.x, %.loopexit ]
  ret i32 %.0
}

declare i32 @cs_reach(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_0
