Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mvcDivide?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@s_fVerbose = local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @Mvc_CoverDivide(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Mvc_CoverReadCubeNum(ptr noundef %0) #4
  %i.b = tail call i32 @Mvc_CoverReadCubeNum(ptr noundef %1) #4
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !8
  store ptr null, ptr %3, align 8, !tbaa !8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @Mvc_CoverCheckSuppContainment(ptr noundef %0, ptr noundef %1) #4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %2, align 8, !tbaa !8
  store ptr null, ptr %3, align 8, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @Mvc_CoverDivideInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

declare i32 @Mvc_CoverReadCubeNum(ptr noundef) local_unnamed_addr #1

declare i32 @Mvc_CoverCheckSuppContainment(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Mvc_CoverDivideInternal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Mvc_CoverReadCubeNum(ptr noundef %1) #4 ; 4 uses
  %i.b = tail call i32 @Mvc_CoverReadCubeNum(ptr noundef %0) #4 ; 5 uses
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @Mvc_CoverIsOneLiteral(ptr noundef %1) #4
  %.not266 = icmp eq i32 %i.d, 0
  br i1 %.not266, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Mvc_CoverDivideByLiteral(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  tail call void @Mvc_CoverDivideByCube(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = tail call ptr @Mvc_CoverAlloc(ptr noundef %i.f, i32 noundef %i.h) #4 ; 5 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.k = load i32, ptr %i.g, align 8, !tbaa !19
  %i.l = tail call ptr @Mvc_CoverAlloc(ptr noundef %i.j, i32 noundef %i.k) #4 ; 7 uses
  tail call void @Mvc_CoverAllocateMask(ptr noundef %1) #4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  tail call void @Mvc_CoverSupport(ptr noundef %1, ptr noundef %i.n) #4
  tail call void @Mvc_CoverSort(ptr noundef %1, ptr noundef null, ptr noundef nonnull @Mvc_CubeCompareInt) #4
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !20
  tail call void @Mvc_CoverSort(ptr noundef %0, ptr noundef %i.o, ptr noundef nonnull @Mvc_CubeCompareIntOutsideAndUnderMask) #4
  %i.p = add nsw i32 %i.b, 1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #5 ; 7 uses
  tail call void @Mvc_CoverList2Array(ptr noundef %0) #4
  tail call void @Mvc_CoverList2Array(ptr noundef %1) #4
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.t = icmp sgt i32 %i.b, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.b, ptr %i.u, align 4, !tbaa !21
  br label %.lr.ph309

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread269
  %indvars.iv.a = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.a, %.thread269 ] ; 3 uses
  %.0253286 = phi i32 [ 1, %.lr.ph ], [ %.1254, %.thread269 ] ; 5 uses
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv.a ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 3 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !23  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i32 %i.ac, 16777215
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  switch i32 %i.ad, label %.preheader282 [
    i32 0, label %.split
    i32 1, label %bb.g
  ]

.preheader282:                                    ; preds = %bb.f
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %4 = and i32 %i.ac, 16777215
  %5 = zext nneg i32 %4 to i64
  br label %bb.i

.split:                                           ; preds = %bb.f
  %i.ai = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %i.am = or i32 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !21
  %i.ap = or i32 %i.ao, %i.al
  %i.aq = icmp eq i32 %i.am, %i.ap
  br i1 %i.aq, label %.thread269, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !20  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = or i32 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !21
  %i.ay = or i32 %i.ax, %i.au
  %i.az = icmp eq i32 %i.av, %i.ay
  br i1 %i.az, label %bb.j, label %.thread

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ba = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ba, label %bb.i, label %.thread269, !llvm.loop !24

bb.i:                                             ; preds = %.preheader282, %bb.h
  %indvars.iv = phi i64 [ %5, %.preheader282 ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21 ; 2 uses
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = or i32 %i.bh, %i.be
  %.not264 = icmp eq i32 %i.bf, %i.bi
  br i1 %.not264, label %bb.h, label %.thread

bb.j:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !21 ; 2 uses
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  %i.bq = or i32 %i.bp, %i.bm
  %i.br = icmp eq i32 %i.bn, %i.bq
  br i1 %i.br, label %.thread269, label %.thread

.thread:                                          ; preds = %bb.i, %.split, %bb.g, %bb.j
  %i.bs = add nsw i32 %.0253286, 1
  %i.bt = sext i32 %.0253286 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bt
  %i.bv = trunc nuw nsw i64 %indvars.iv.a to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !21
  br label %.thread269

.thread269:                                       ; preds = %bb.h, %.split, %bb.j, %.thread
  %.1254 = phi i32 [ %.0253286, %bb.j ], [ %i.bs, %.thread ], [ %.0253286, %.split ], [ %.0253286, %bb.h ] ; 4 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !26

._crit_edge:                                      ; preds = %.thread269
  %i.bw = sext i32 %.1254 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bw
  store i32 %i.b, ptr %i.bx, align 4, !tbaa !21
  %i.by = icmp sgt i32 %.1254, 0
  br i1 %i.by, label %.lr.ph309, label %._crit_edge310

.lr.ph309:                                        ; preds = %._crit_edge.thread, %._crit_edge
  %.0253.lcssa359 = phi i32 [ 1, %._crit_edge.thread ], [ %.1254, %._crit_edge ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ch = zext i32 %i.a to i64
  %wide.trip.count347 = zext nneg i32 %.0253.lcssa359 to i64
  %.pre = load i32, ptr %i.s, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph309, %.loopexit
  %i.ci = phi i32 [ %.pre, %.lr.ph309 ], [ %i.ck, %.loopexit ] ; 6 uses
  %indvars.iv344 = phi i64 [ 0, %.lr.ph309 ], [ %indvars.iv.next345, %.loopexit ]
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next345
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !21 ; 7 uses
  %i.cl = sub nsw i32 %i.ck, %i.ci                ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.a
  %i.cn = icmp slt i32 %i.ci, %i.ck               ; 4 uses
  br i1 %i.cm, label %.preheader, label %.preheader281

.preheader281:                                    ; preds = %bb.k
  %.pre349 = load ptr, ptr %i.bz, align 8, !tbaa !22 ; 10 uses
  %i.co = sext i32 %i.ci to i64                   ; 8 uses
  br i1 %i.cn, label %.lr.ph289, label %._crit_edge290

.lr.ph289:                                        ; preds = %.preheader281
  %wide.trip.count319 = sext i32 %i.ck to i64     ; 3 uses
  %i.cp = sub nsw i64 %wide.trip.count319, %i.co
  %xtraiter = and i64 %i.cp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph289, %.prol.preheader
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %.prol.preheader ], [ %i.co, %.lr.ph289 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph289 ]
  %i.cq = getelementptr inbounds [8 x i8], ptr %.pre349, i64 %indvars.iv316.prol
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 1, ptr %i.cs, align 4, !tbaa !27
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph289
  %indvars.iv316.unr = phi i64 [ %i.co, %.lr.ph289 ], [ %indvars.iv.next317.prol, %.prol.preheader ]
  %i.ct = sub nsw i64 %i.co, %wide.trip.count319
  %i.cu = icmp ugt i64 %i.ct, -8
  br i1 %i.cu, label %._crit_edge290, label %.lr.ph289.new

.preheader:                                       ; preds = %bb.k
  br i1 %i.cn, label %.lr.ph304.preheader, label %.loopexit

.lr.ph304.preheader:                              ; preds = %.preheader
  %i.cv = sext i32 %i.ci to i64
  br label %.lr.ph304

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %bb.n
  %indvars.iv339.a = phi i64 [ %i.cv, %.lr.ph304.preheader ], [ %indvars.iv.next340.a, %bb.n ] ; 2 uses
  %i.cw = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv339.a
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !23
  %i.cz = tail call ptr @Mvc_CubeDup(ptr noundef %i.l, ptr noundef %i.cy) #4 ; 4 uses
  %i.da = load ptr, ptr %i.cb, align 8, !tbaa !31
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph304
  store ptr %i.cz, ptr %i.cb, align 8, !tbaa !31
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph304
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !32
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.cz, ptr %i.cc, align 8, !tbaa !32
  store ptr null, ptr %i.cz, align 8, !tbaa !33
  %i.dd = load i32, ptr %i.cd, align 8, !tbaa !34
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.cd, align 8, !tbaa !34
  %indvars.iv.next340.a = add nsw i64 %indvars.iv339.a, 1 ; 2 uses
  %lftr.wideiv342 = trunc i64 %indvars.iv.next340.a to i32
  %exitcond343.not = icmp eq i32 %i.ck, %lftr.wideiv342
  br i1 %exitcond343.not, label %.loopexit, label %.lr.ph304, !llvm.loop !35

.lr.ph289.new:                                    ; preds = %.prol.loopexit, %.lr.ph289.new
  %indvars.iv316 = phi i64 [ %indvars.iv.next317.7, %.lr.ph289.new ], [ %indvars.iv316.unr, %.prol.loopexit ] ; 9 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 1, ptr %i.dh, align 4, !tbaa !27
  %i.di = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 1, ptr %i.dl, align 4, !tbaa !27
  %i.dm = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 1, ptr %i.dp, align 4, !tbaa !27
  %i.dq = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.dr = getelementptr i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 1, ptr %i.dt, align 4, !tbaa !27
  %i.du = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.dv = getelementptr i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 1, ptr %i.dx, align 4, !tbaa !27
  %i.dy = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.dz = getelementptr i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 1, ptr %i.eb, align 4, !tbaa !27
  %i.ec = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.ed = getelementptr i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 1, ptr %i.ef, align 4, !tbaa !27
  %i.eg = getelementptr [8 x i8], ptr %.pre349, i64 %indvars.iv316
  %i.eh = getelementptr i8, ptr %i.eg, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 1, ptr %i.ej, align 4, !tbaa !27
  %indvars.iv.next317.7 = add nsw i64 %indvars.iv316, 8 ; 2 uses
  %exitcond320.not.7 = icmp eq i64 %indvars.iv.next317.7, %wide.trip.count319
  br i1 %exitcond320.not.7, label %._crit_edge290, label %.lr.ph289.new, !llvm.loop !36

._crit_edge290:                                   ; preds = %.prol.loopexit, %.lr.ph289.new, %.preheader281
  %i.ek = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.el = getelementptr inbounds [8 x i8], ptr %.pre349, i64 %i.co
  br label %.outer

.outer:                                           ; preds = %bb.s, %._crit_edge290
  %indvars.iv324.a = phi i64 [ %indvars.iv.next325, %bb.s ], [ 1, %._crit_edge290 ] ; 3 uses
  %.0256.in.ph = phi ptr [ %i.fe, %bb.s ], [ %i.el, %._crit_edge290 ]
  %.0255.ph.in = phi ptr [ %i.ez, %bb.s ], [ %i.ek, %._crit_edge290 ]
  %.0252.ph = phi i32 [ %i.ex, %bb.s ], [ 0, %._crit_edge290 ] ; 2 uses
  %.0251.ph = phi i64 [ %i.fb, %bb.s ], [ 1, %._crit_edge290 ]
  %.0255.ph = load ptr, ptr %.0255.ph.in, align 8, !tbaa !23
  %i.em = sub nsw i32 %i.a, %.0252.ph
  %sext = shl i64 %.0251.ph, 32
  %i.en = ashr exact i64 %sext, 32
  br label %bb.o

bb.o:                                             ; preds = %.outer, %bb.q
  %indvars.iv321 = phi i64 [ %i.en, %.outer ], [ %indvars.iv.next322, %bb.q ] ; 4 uses
  %.0256.in = phi ptr [ %.0256.in.ph, %.outer ], [ %i.eu, %bb.q ]
  %indvars323 = trunc i64 %indvars.iv321 to i32   ; 3 uses
  %.0256 = load ptr, ptr %.0256.in, align 8, !tbaa !23 ; 2 uses
  %i.eo = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.ep = tail call i32 @Mvc_CubeCompareIntUnderMask(ptr noundef %.0256, ptr noundef %.0255.ph, ptr noundef %i.eo) #4
end_hunk_0
