inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [34 x i8] c"unreasonable expansion in unravel\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"COMPONENT_REDUCTION: split into %d %d\0A\00", align 1
@Fmin = internal unnamed_addr global ptr null, align 8
@phase = internal unnamed_addr global ptr null, align 8
@skip_make_sparse = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ESPRESSO-POS(%d)\00", align 1
@summary = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"EXACT-POS(%d)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ESPRESSO-NEG(%d)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXACT-NEG(%d)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @unravel_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 6 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !15
  %i.e = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.c, ptr noundef %i.d) #10 ; 0 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader56

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader56:                                     ; preds = %.lr.ph, %bb.a
  %.158 = add i32 %2, 1                           ; 5 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16
  %i.h = icmp slt i32 %.158, %i.g
  br i1 %i.h, label %.lr.ph60.preheader, label %._crit_edge

.lr.ph60.preheader:                               ; preds = %.preheader56
  %i.i = sext i32 %.158 to i64
  br label %.lr.ph60

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.c, ptr noundef %i.c, ptr noundef %i.l) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader56, label %.lr.ph

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv79 = phi i64 [ %i.i, %.lr.ph60.preheader ], [ %indvars.iv.next80, %.lr.ph60 ] ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv79
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.q = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.c, ptr noundef %i.c, ptr noundef %i.p) #10 ; 0 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next80, %i.s
  br i1 %i.t, label %.lr.ph60, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %.idx ; 2 uses
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %._crit_edge68

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %.not61 = icmp sgt i32 %1, %2
  br i1 %.not61, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ad = sext i32 %1 to i64
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ae = sext i32 %i.y to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.lr.ph.split.us
  %.04667.us = phi ptr [ %i.v, %.preheader.lr.ph.split.us ], [ %i.ag, %.preheader.us ]
  %.04866.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.af, %.preheader.us ]
  %i.af = add nuw nsw i32 %.04866.us, 1           ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %.04667.us, i64 %i.ae ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.ab
  br i1 %i.ah, label %.preheader.us, label %._crit_edge68

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge65
  %.04667 = phi ptr [ %i.as, %._crit_edge65 ], [ %i.v, %.preheader.preheader ] ; 2 uses
  %.04866 = phi i32 [ %i.ap, %._crit_edge65 ], [ 0, %.preheader.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv82 = phi i64 [ %i.ad, %.preheader ], [ %indvars.iv.next83, %bb.e ] ; 2 uses
  %.04962 = phi i32 [ 1, %.preheader ], [ %.150, %bb.e ] ; 2 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv82
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.al = tail call i32 (ptr, ptr, ...) @set_dist(ptr noundef %.04667, ptr noundef %i.ak) #10 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.an = mul nsw i32 %i.al, %.04962              ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1000000
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.150 = phi i32 [ %i.an, %bb.d ], [ %i.an, %bb.c ], [ %.04962, %bb.b ] ; 2 uses
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next83 to i32
  %exitcond85.not = icmp eq i32 %.158, %lftr.wideiv
  br i1 %exitcond85.not, label %._crit_edge65, label %bb.b

._crit_edge65:                                    ; preds = %bb.e
  %i.ap = add nuw nsw i32 %.150, %.04866          ; 2 uses
  %i.aq = load i32, ptr %0, align 8, !tbaa !22
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.04667, i64 %i.ar ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.ab
  br i1 %i.at, label %.preheader, label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge65, %.preheader.us, %._crit_edge
  %.048.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.af, %.preheader.us ], [ %i.ap, %._crit_edge65 ]
  %i.au = load i32, ptr @cube, align 8, !tbaa !23
  %i.av = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %.048.lcssa, i32 noundef %i.au) #10 ; 8 uses
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !18  ; 2 uses
  %i.ax = load i32, ptr %i.w, align 4, !tbaa !21
  %i.ay = load i32, ptr %0, align 8, !tbaa !22
  %i.az = mul nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %.idx74 = shl nsw i64 %i.ba, 2
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %.idx74
  %i.bc = icmp sgt i32 %i.az, 0
  br i1 %i.bc, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %._crit_edge68
  %.not90.i = icmp sgt i32 %1, %2                 ; 2 uses
  %i.bd = sext i32 %1 to i64                      ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph72, %cb_unravel.exit
  %.14770 = phi ptr [ %i.aw, %.lr.ph72 ], [ %i.gd, %cb_unravel.exit ] ; 6 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 13 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.bh, ptr noundef %i.c) #10 ; 0 uses
  br i1 %.not90.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.bd, %bb.f ] ; 3 uses
  %.07791.i = phi i32 [ %.178.i, %bb.i ], [ 1, %bb.f ] ; 2 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !14
  %i.bn = tail call i32 (ptr, ptr, ...) @set_dist(ptr noundef %.14770, ptr noundef %i.bm) #10 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 2
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14
  %i.bs = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.bh, ptr noundef %i.bh, ptr noundef %i.br) #10 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bt = mul nsw i32 %i.bn, %.07791.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.178.i = phi i32 [ %.07791.i, %bb.g ], [ %i.bt, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %.158, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.f
  %.077.lcssa.i = phi i32 [ 1, %bb.f ], [ %.178.i, %bb.i ] ; 5 uses
  %i.bu = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.bh, ptr noundef %.14770, ptr noundef %i.bh) #10 ; 0 uses
  %i.bv = load i32, ptr %i.be, align 4, !tbaa !21 ; 3 uses
  %i.bw = add nsw i32 %i.bv, %.077.lcssa.i        ; 2 uses
  store i32 %i.bw, ptr %i.be, align 4, !tbaa !21
  %i.bx = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %i.by = load i32, ptr %i.av, align 8, !tbaa !22 ; 3 uses
  %i.bz = add nsw i32 %i.bv, -1
  %i.ca = mul nsw i32 %i.by, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = sext i32 %i.by to i64
  %.idx114.i = add nsw i64 %i.cb, %i.cc
  %i.cd = shl nsw i64 %.idx114.i, 2               ; 2 uses
  %i.ce = mul nsw i32 %i.by, %i.bw
  %i.cf = sext i32 %i.ce to i64
  %.idx113.i = shl nsw i64 %i.cf, 2               ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bx, i64 %.idx113.i
  %i.ch = icmp slt i64 %i.cd, %.idx113.i
  br i1 %i.ch, label %.lr.ph95.preheader.i, label %.preheader89.i

.lr.ph95.preheader.i:                             ; preds = %._crit_edge.i
  %i.ci = getelementptr inbounds i8, ptr %i.bx, i64 %i.cd
  br label %.lr.ph95.i

.preheader89.i:                                   ; preds = %.loopexit, %._crit_edge.i
  br i1 %.not90.i, label %cb_unravel.exit, label %.lr.ph110.i

.lr.ph95.i:                                       ; preds = %.loopexit, %.lr.ph95.preheader.i
  %.07493.i = phi ptr [ %i.dq, %.loopexit ], [ %i.ci, %.lr.ph95.preheader.i ] ; 8 uses
  %i.cj = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.ck = and i32 %i.cj, 1023                     ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64              ; 4 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ck, 7
  %.07493.i105 = ptrtoaddr ptr %.07493.i to i64
  %i.cn = sub i64 %i.bi, %.07493.i105
  %diff.check = icmp ult i64 %i.cn, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.i
  %n.vec = and i64 %i.cm, 2040                    ; 3 uses
  %i.co = sub nsw i64 %i.cl, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = sub i64 %i.cl, %index                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !4
  %wide.load106 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.07493.i, i64 %i.cp ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !4
  store <4 x i32> %wide.load106, ptr %i.cv, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph95.i, %middle.block
  %indvars.iv118.i.ph = phi i64 [ %i.cl, %.lr.ph95.i ], [ %i.co, %middle.block ] ; 4 uses
  %i.cx = add nsw i64 %indvars.iv118.i.ph, 1
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv118.i.prol = phi i64 [ %indvars.iv.next119.i.prol, %scalar.ph.prol ], [ %indvars.iv118.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv118.i.prol
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.07493.i, i64 %indvars.iv118.i.prol
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next119.i.prol = add nsw i64 %indvars.iv118.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !27

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv118.i.unr = phi i64 [ %indvars.iv118.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next119.i.prol, %scalar.ph.prol ]
  %i.db = icmp ult i64 %indvars.iv118.i.ph, 3
  br i1 %i.db, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i.3, %scalar.ph ], [ %indvars.iv118.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv118.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.07493.i, i64 %indvars.iv118.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next119.i = add nsw i64 %indvars.iv118.i, -1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next119.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.07493.i, i64 %indvars.iv.next119.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %indvars.iv.next119.i.1 = add nsw i64 %indvars.iv118.i, -2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next119.i.1
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.07493.i, i64 %indvars.iv.next119.i.1
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !4
  %indvars.iv.next119.i.2 = add nsw i64 %indvars.iv118.i, -3 ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next119.i.2
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.07493.i, i64 %indvars.iv.next119.i.2
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next119.i.3 = add nsw i64 %indvars.iv118.i, -4
  %.not87.i.3 = icmp eq i64 %indvars.iv.next119.i.2, 0
  br i1 %.not87.i.3, label %.loopexit, label %scalar.ph, !llvm.loop !29

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.do = load i32, ptr %i.av, align 8, !tbaa !22
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.07493.i, i64 %i.dp ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.cg
  br i1 %i.dr, label %.lr.ph95.i, label %.preheader89.i

.lr.ph110.i:                                      ; preds = %.preheader89.i, %.loopexit.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %.loopexit.i ], [ %i.bd, %.preheader89.i ] ; 4 uses
  %.079108.i = phi i32 [ %.180.i, %.loopexit.i ], [ %.077.lcssa.i, %.preheader89.i ] ; 4 uses
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !17
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %indvars.iv122.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !14
  %i.dv = tail call i32 (ptr, ptr, ...) @set_dist(ptr noundef %.14770, ptr noundef %i.du) #10 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph110.i
  %i.dx = udiv i32 %.079108.i, %i.dv
  %.fr115.i = freeze i32 %i.dx                    ; 10 uses
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !30
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv122.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 4 uses
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !31
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %indvars.iv122.i ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !4  ; 3 uses
  %.not85101.i = icmp sgt i32 %i.ea, %i.ed
  br i1 %.not85101.i, label %.loopexit.i, label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %bb.j
  %i.ee = icmp sgt i32 %.fr115.i, 0
  br i1 %i.ee, label %.lr.ph106.split.us.i.preheader, label %.lr.ph106.split.i

.lr.ph106.split.us.i.preheader:                   ; preds = %.lr.ph106.i
  %xtraiter110 = and i32 %.fr115.i, 1
  %i.ef = icmp eq i32 %.fr115.i, 1
  %unroll_iter = and i32 %.fr115.i, 2147483646
  %lcmp.mod111.not = icmp eq i32 %xtraiter110, 0
  %lcmp.mod112 = trunc i32 %.fr115.i to i1
  br label %.lr.ph106.split.us.i

.lr.ph106.split.us.i:                             ; preds = %.lr.ph106.split.us.i.preheader, %bb.k
  %.pre127.i = phi i32 [ %.pre128.i, %bb.k ], [ %i.ed, %.lr.ph106.split.us.i.preheader ] ; 2 uses
  %i.eg = phi i32 [ %i.eq, %bb.k ], [ %i.ed, %.lr.ph106.split.us.i.preheader ]
  %.070103.us.i = phi i32 [ %.1.us.i, %bb.k ], [ 0, %.lr.ph106.split.us.i.preheader ] ; 4 uses
  %.073102.us.i = phi i32 [ %i.er, %bb.k ], [ %i.ea, %.lr.ph106.split.us.i.preheader ] ; 4 uses
  %i.eh = ashr i32 %.073102.us.i, 5
  %i.ei = add nsw i32 %i.eh, 1
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %.14770, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4
  %i.em = and i32 %.073102.us.i, 31
  %i.en = shl nuw i32 1, %i.em                    ; 4 uses
  %i.eo = and i32 %i.en, %i.el
  %.not86.us.i = icmp eq i32 %i.eo, 0
  br i1 %.not86.us.i, label %bb.k, label %.preheader88.us.i

._crit_edge100.split.us.us.loopexit.i:            ; preds = %._crit_edge98.us.us.i
  %.pre.pre.i = load i32, ptr %i.ec, align 4, !tbaa !4
  br label %._crit_edge100.split.us.us.i

._crit_edge100.split.us.us.i:                     ; preds = %.preheader88.us.i, %._crit_edge100.split.us.us.loopexit.i
  %.pre.i = phi i32 [ %.pre.pre.i, %._crit_edge100.split.us.us.loopexit.i ], [ %.pre127.i, %.preheader88.us.i ] ; 2 uses
  %i.ep = add nuw nsw i32 %.070103.us.i, %.fr115.i
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge100.split.us.us.i, %.lr.ph106.split.us.i
  %.pre128.i = phi i32 [ %.pre.i, %._crit_edge100.split.us.us.i ], [ %.pre127.i, %.lr.ph106.split.us.i ]
  %i.eq = phi i32 [ %.pre.i, %._crit_edge100.split.us.us.i ], [ %i.eg, %.lr.ph106.split.us.i ] ; 2 uses
  %.1.us.i = phi i32 [ %i.ep, %._crit_edge100.split.us.us.i ], [ %.070103.us.i, %.lr.ph106.split.us.i ]
  %i.er = add nsw i32 %.073102.us.i, 1
  %.not85.us.not.i = icmp slt i32 %.073102.us.i, %i.eq
  br i1 %.not85.us.not.i, label %.lr.ph106.split.us.i, label %.loopexit.i

.preheader88.us.i:                                ; preds = %.lr.ph106.split.us.i
  %i.es = icmp slt i32 %.070103.us.i, %.077.lcssa.i
  br i1 %i.es, label %.preheader.lr.ph.us.i, label %._crit_edge100.split.us.us.i

.preheader.lr.ph.us.i:                            ; preds = %.preheader88.us.i
  %i.et = load ptr, ptr %i.bf, align 8, !tbaa !18
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %i.et, i64 %i.ej ; 3 uses
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge98.us.us.i, %.preheader.lr.ph.us.i
  %.07299.us.us.i = phi i32 [ %.070103.us.i, %.preheader.lr.ph.us.i ], [ %i.fp, %._crit_edge98.us.us.i ] ; 2 uses
  %i.eu = add i32 %.07299.us.us.i, %i.bv          ; 3 uses
  br i1 %i.ef, label %.epil.preheader, label %.preheader.us.us.i.new

.preheader.us.us.i.new:                           ; preds = %.preheader.us.us.i, %.preheader.us.us.i.new
  %.07196.us.us.i = phi i32 [ %i.fi, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.us.us.i.new ], [ 0, %.preheader.us.us.i ]
  %i.ev = load i32, ptr %i.av, align 8, !tbaa !22
  %i.ew = add i32 %i.eu, %.07196.us.us.i
  %i.ex = mul nsw i32 %i.ev, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %gep.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.i, i64 %i.ey ; 2 uses
  %i.ez = load i32, ptr %gep.us.us.i, align 4, !tbaa !4
  %i.fa = or i32 %i.ez, %i.en
  store i32 %i.fa, ptr %gep.us.us.i, align 4, !tbaa !4
  %i.fb = or disjoint i32 %.07196.us.us.i, 1
  %i.fc = load i32, ptr %i.av, align 8, !tbaa !22
  %i.fd = add i32 %i.eu, %i.fb
  %i.fe = mul nsw i32 %i.fc, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %gep.us.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us.i, i64 %i.ff ; 2 uses
  %i.fg = load i32, ptr %gep.us.us.i.1, align 4, !tbaa !4
  %i.fh = or i32 %i.fg, %i.en
  store i32 %i.fh, ptr %gep.us.us.i.1, align 4, !tbaa !4
  %i.fi = add nuw nsw i32 %.07196.us.us.i, 2      ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge98.us.us.i.unr-lcssa, label %.preheader.us.us.i.new

._crit_edge98.us.us.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.new
  br i1 %lcmp.mod111.not, label %._crit_edge98.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge98.us.us.i.unr-lcssa, %.preheader.us.us.i
  %.07196.us.us.i.epil.init = phi i32 [ 0, %.preheader.us.us.i ], [ %i.fi, %._crit_edge98.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.fj = load i32, ptr %i.av, align 8, !tbaa !22
  %i.fk = add i32 %i.eu, %.07196.us.us.i.epil.init
  %i.fl = mul nsw i32 %i.fj, %i.fk
  %i.fm = sext i32 %i.fl to i64
  %gep.us.us.i.epil = getelementptr [4 x i8], ptr %invariant.gep.us.us.i, i64 %i.fm ; 2 uses
  %i.fn = load i32, ptr %gep.us.us.i.epil, align 4, !tbaa !4
  %i.fo = or i32 %i.fn, %i.en
  store i32 %i.fo, ptr %gep.us.us.i.epil, align 4, !tbaa !4
  br label %._crit_edge98.us.us.i

._crit_edge98.us.us.i:                            ; preds = %._crit_edge98.us.us.i.unr-lcssa, %.epil.preheader
  %i.fp = add nsw i32 %.07299.us.us.i, %.079108.i ; 2 uses
  %i.fq = icmp slt i32 %i.fp, %.077.lcssa.i
  br i1 %i.fq, label %.preheader.us.us.i, label %._crit_edge100.split.us.us.loopexit.i

.lr.ph106.split.i:                                ; preds = %.lr.ph106.i
  %i.fr = ashr i32 %i.ea, 5
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [4 x i8], ptr %.14770, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.fw = and i32 %i.ea, 31
  %i.fx = shl nuw i32 1, %i.fw
  %i.fy = and i32 %i.fv, %i.fx
  %.not86.i = icmp eq i32 %i.fy, 0
  br i1 %.not86.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph106.split.i, %.preheader.i
  %.07299.i = phi i32 [ %i.fz, %.preheader.i ], [ 0, %.lr.ph106.split.i ]
  %i.fz = add nsw i32 %.07299.i, %.079108.i       ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %.077.lcssa.i
  br i1 %i.ga, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.k, %.lr.ph106.split.i, %bb.j, %.lr.ph110.i
  %.180.i = phi i32 [ %.079108.i, %.lr.ph110.i ], [ %.fr115.i, %bb.j ], [ %.fr115.i, %.lr.ph106.split.i ], [ %.fr115.i, %bb.k ], [ %.fr115.i, %.preheader.i ]
  %indvars.iv.next123.i = add nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %lftr.wideiv125.i = trunc i64 %indvars.iv.next123.i to i32
  %exitcond126.not.i = icmp eq i32 %.158, %lftr.wideiv125.i
  br i1 %exitcond126.not.i, label %cb_unravel.exit, label %.lr.ph110.i

cb_unravel.exit:                                  ; preds = %.loopexit.i, %.preheader89.i
  %i.gb = load i32, ptr %0, align 8, !tbaa !22
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.14770, i64 %i.gc ; 2 uses
  %i.ge = icmp ult ptr %i.gd, %i.bb
  br i1 %i.ge, label %bb.f, label %._crit_edge73

._crit_edge73:                                    ; preds = %cb_unravel.exit, %._crit_edge68
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #10
  ret ptr %i.av
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @set_copy(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare i32 @set_dist(...) local_unnamed_addr #2

declare void @fatal(...) local_unnamed_addr #2

declare ptr @sf_new(...) local_unnamed_addr #2

declare void @sf_free(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @unravel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !16
  %i.b = add nsw i32 %i.a, -1
  %i.c = tail call ptr @unravel_range(ptr noundef %0, i32 noundef %1, i32 noundef %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lex_sort(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @sf_sort(ptr noundef %0, ptr noundef nonnull @lex_order) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = tail call ptr (ptr, i32, i32, ...) @sf_unlist(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #10
  tail call void (ptr, ...) @sf_free(ptr noundef %0) #10
  ret ptr %i.f
}

declare ptr @sf_unlist(...) local_unnamed_addr #2

declare ptr @sf_sort(...) local_unnamed_addr #2

declare i32 @lex_order(...) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @size_sort(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @sf_sort(ptr noundef %0, ptr noundef nonnull @descend) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = tail call ptr (ptr, i32, i32, ...) @sf_unlist(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #10
  tail call void (ptr, ...) @sf_free(ptr noundef %0) #10
  ret ptr %i.f
}

declare i32 @descend(...) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @mini_sort(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !23  ; 4 uses
  %i.b = tail call ptr (ptr, ...) @sf_count(ptr noundef %0) #10 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = load i32, ptr %0, align 8, !tbaa !22
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nsw i64 %i.i, 2
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = icmp sgt i32 %i.a, 0
  br i1 %i.l, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.a, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod46 = trunc i32 %i.a to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03136.us = phi ptr [ %i.ay, %._crit_edge.us ], [ %i.d, %.preheader.us.preheader ] ; 5 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader.us ] ; 5 uses
  %.035.us = phi i32 [ %.1.us.1, %bb.e ], [ 0, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader.us ]
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = lshr i64 %indvars.iv, 5
  %i.p = and i64 %i.o, 134217727
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.03136.us, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = and i32 %i.n, 30
  %i.u = shl nuw nsw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not33.us = icmp eq i32 %i.v, 0
  br i1 %.not33.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.us.new
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, %.035.us
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.us.new
  %.1.us = phi i32 [ %i.y, %bb.b ], [ %.035.us, %.preheader.us.new ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aa = and i32 %i.z, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.s, %i.ab
  %.not33.us.1 = icmp eq i32 %i.ac, 0
  br i1 %.not33.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = add nsw i32 %i.ae, %.1.us
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us.1 = phi i32 [ %i.af, %bb.d ], [ %.1.us, %bb.c ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  %.035.us.epil.init = phi i32 [ 0, %.preheader.us ], [ %.1.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ag = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ah = lshr i64 %indvars.iv.epil.init, 5
  %i.ai = and i64 %i.ah, 134217727
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.03136.us, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = and i32 %i.ag, 31
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.al, %i.an
  %.not33.us.epil = icmp eq i32 %i.ao, 0
  br i1 %.not33.us.epil, label %._crit_edge.us, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = add nsw i32 %i.aq, %.035.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.f, %._crit_edge.us.unr-lcssa
  %.1.us.lcssa = phi i32 [ %.1.us.1, %._crit_edge.us.unr-lcssa ], [ %i.ar, %bb.f ], [ %.035.us.epil.init, %.epil.preheader ]
  %i.as = load i32, ptr %.03136.us, align 4, !tbaa !4
  %i.at = and i32 %i.as, 65535
  %i.au = shl i32 %.1.us.lcssa, 16
  %i.av = or disjoint i32 %i.at, %i.au
  store i32 %i.av, ptr %.03136.us, align 4, !tbaa !4
  %i.aw = load i32, ptr %0, align 8, !tbaa !22
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.03136.us, i64 %i.ax ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.j
  br i1 %i.az, label %.preheader.us, label %._crit_edge37

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.03136 = phi ptr [ %i.be, %.preheader ], [ %i.d, %.preheader.lr.ph ] ; 3 uses
  %i.ba = load i32, ptr %.03136, align 4, !tbaa !4
  %i.bb = and i32 %i.ba, 65535
  store i32 %i.bb, ptr %.03136, align 4, !tbaa !4
  %i.bc = load i32, ptr %0, align 8, !tbaa !22
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.03136, i64 %i.bd ; 2 uses
end_hunk_0
