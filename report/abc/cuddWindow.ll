Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddWindow?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddWindowReorder(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %3, label %ddWindow2.exit [
    i32 8, label %bb.b
    i32 9, label %bb.h
    i32 10, label %bb.m
    i32 11, label %bb.t
    i32 12, label %bb.u
    i32 13, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp sgt i32 %2, %1
  br i1 %.not.i, label %bb.c, label %ddWindow2.exit

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = sub i32 %i.b, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.025.i = phi i32 [ %i.e, %bb.c ], [ %.1.i, %bb.g ]
  %.01924.i = phi i32 [ %1, %bb.c ], [ %i.f, %bb.g ] ; 3 uses
  %i.f = add nsw i32 %.01924.i, 1                 ; 4 uses
  %i.g = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.01924.i, i32 noundef %i.f) #4 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %ddWindow2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not23.i = icmp slt i32 %i.g, %.025.i
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.01924.i, i32 noundef %i.f) #4 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %ddWindow2.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.i, %bb.f ], [ %i.g, %bb.e ]
  %exitcond.not.i = icmp eq i32 %i.f, %2
  br i1 %exitcond.not.i, label %ddWindow2.exit, label %bb.d, !llvm.loop !33

bb.h:                                             ; preds = %bb.a
  %i.k = sub nsw i32 %2, %1
  %i.l = icmp slt i32 %i.k, 2
  br i1 %i.l, label %bb.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.h
  %i.m = add nsw i32 %1, 1                        ; 2 uses
  %i.n = icmp slt i32 %i.m, %2
  br i1 %i.n, label %.lr.ph116, label %ddWindow2.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp sgt i32 %2, %1
  br i1 %.not.i.i, label %bb.j, label %ddWindow2.exit

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27
  %i.s = add nsw i32 %1, 1                        ; 2 uses
  %i.t = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %1, i32 noundef %i.s) #4 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %ddWindow2.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sub i32 %i.p, %i.r
  %.not23.i.i = icmp slt i32 %i.t, %i.v
  br i1 %.not23.i.i, label %ddWindow2.exit, label %bb.l, !llvm.loop !33

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.s) #4
  %i.x = icmp ne i32 %i.w, 0
  %spec.select.i = zext i1 %i.x to i32
  br label %ddWindow2.exit, !llvm.loop !33

.preheader.i:                                     ; preds = %.lr.ph116
  %i.y = add nsw i32 %i.aa, 1                     ; 2 uses
  %i.z = icmp slt i32 %i.y, %2
  br i1 %i.z, label %.lr.ph116, label %ddWindow2.exit, !llvm.loop !34

.lr.ph116:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %i.aa = phi i32 [ %i.y, %.preheader.i ], [ %i.m, %.preheader.i.preheader ] ; 2 uses
  %.0.i115 = phi i32 [ %i.aa, %.preheader.i ], [ %1, %.preheader.i.preheader ]
  %i.ab = tail call fastcc i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %.0.i115)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.ddWindow2.exit.loopexit107_crit_edge, label %.preheader.i, !llvm.loop !34

bb.m:                                             ; preds = %bb.a
  %i.ad = sub nsw i32 %2, %1                      ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 3
  br i1 %i.ae, label %bb.n, label %.lr.ph.i

bb.n:                                             ; preds = %bb.m
  %.not.i23 = icmp eq i32 %i.ad, 2
  br i1 %.not.i23, label %.preheader.i.i.preheader, label %bb.o

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.af = add nsw i32 %1, 1
  %i.ag = icmp slt i32 %i.af, %2
  br i1 %i.ag, label %.lr.ph, label %ddWindow2.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp sgt i32 %2, %1
  br i1 %.not.i.i.i, label %bb.p, label %ddWindow2.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.al = add nsw i32 %1, 1                       ; 2 uses
  %i.am = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %1, i32 noundef %i.al) #4 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %ddWindow2.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = sub i32 %i.ai, %i.ak
  %.not23.i.i.i = icmp slt i32 %i.am, %i.ao
  br i1 %.not23.i.i.i, label %ddWindow2.exit, label %bb.r, !llvm.loop !33

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.al) #4
  %i.aq = icmp ne i32 %i.ap, 0
  %spec.select.i.i = zext i1 %i.aq to i32
  br label %ddWindow2.exit, !llvm.loop !33

.lr.ph:                                           ; preds = %.preheader.i.i.preheader
  %4 = tail call fastcc i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %1)
  %5 = icmp ne i32 %4, 0
  %. = zext i1 %5 to i32
  br label %ddWindow2.exit, !llvm.loop !34

bb.s:                                             ; preds = %.lr.ph.i
  %i.ar = add nsw i32 %.015.i, 1
  %i.as = add nsw i32 %.015.i, 3
  %i.at = icmp slt i32 %i.as, %2
  br i1 %i.at, label %.lr.ph.i, label %ddWindow2.exit, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.m, %bb.s
  %.015.i = phi i32 [ %i.ar, %bb.s ], [ %1, %bb.m ] ; 3 uses
  %i.au = tail call fastcc i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %.015.i)
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %ddWindow2.exit, label %bb.s

bb.t:                                             ; preds = %bb.a
  %i.aw = tail call fastcc i32 @ddWindowConv2(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %ddWindow2.exit

bb.u:                                             ; preds = %bb.a
  %i.ax = tail call fastcc i32 @ddWindowConv3(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %ddWindow2.exit

bb.v:                                             ; preds = %bb.a
  %i.ay = sub nsw i32 %2, %1                      ; 24 uses
  %i.az = icmp slt i32 %i.ay, 3
  br i1 %i.az, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ba = tail call fastcc i32 @ddWindowConv3(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %ddWindow2.exit

bb.x:                                             ; preds = %bb.v
  %i.bb = add nsw i32 %i.ay, -2                   ; 4 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 5 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #5 ; 44 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.y, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.x
  %min.iters.check = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check, label %.lr.ph.i24.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.preheader
  %n.vec = and i64 %i.bc, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <4 x i32> splat (i32 1), ptr %i.bg, align 4, !tbaa !29
  store <4 x i32> splat (i32 1), ptr %i.bh, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %.lr.ph139.us.preheader.i, label %.lr.ph.i24.preheader126

.lr.ph.i24.preheader126:                          ; preds = %.lr.ph.i24.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i24.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i24

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.bj, align 8, !tbaa !32
  br label %ddWindow2.exit

.lr.ph139.us.preheader.i:                         ; preds = %.lr.ph.i24, %middle.block
  %i.bk = add nsw i32 %i.ay, -5
  %i.bl = add nsw i32 %i.ay, -3                   ; 10 uses
  %i.bm = add nsw i32 %i.ay, -4
  %i.bn = sext i32 %i.bm to i64                   ; 4 uses
  %i.bo = zext nneg i32 %i.bl to i64              ; 4 uses
  %i.bp = sext i32 %i.bk to i64                   ; 4 uses
  %i.bq = icmp samesign ugt i32 %i.ay, 4          ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 7 uses
  %.not.i26 = icmp eq i32 %i.bl, 0                ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 6 uses
  %i.bt = icmp samesign ugt i32 %i.ay, 5          ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 4 uses
  %exitcond147.peel.not.i = icmp eq i32 %i.ay, 3
  %i.bv = add i32 %1, 1
  %i.bw = icmp sgt i32 %i.ay, 5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.by = icmp sgt i32 %i.ay, 5
  %i.bz = icmp ugt i32 %i.bl, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cc = icmp sgt i32 %i.ay, 6
  %i.cd = icmp sgt i32 %i.ay, 5
  %i.ce = icmp ugt i32 %i.bl, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ci = icmp sgt i32 %i.ay, 6
  %i.cj = icmp sgt i32 %i.ay, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cm = icmp sgt i32 %i.ay, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.co = icmp sgt i32 %i.ay, 6
  %i.cp = icmp ugt i32 %i.bl, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cs = icmp ugt i32 %i.bl, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %exitcond147.not.i.peel = icmp eq i32 %i.bb, 2
  %i.cu = add i32 %1, 2
  %i.cv = icmp sgt i32 %i.ay, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cx = icmp sgt i32 %i.ay, 6
  %i.cy = icmp ugt i32 %i.bl, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.db = icmp sgt i32 %i.ay, 7
  %i.dc = icmp sgt i32 %i.ay, 6
  %i.dd = icmp ugt i32 %i.bl, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.dh = getelementptr i8, ptr %i.be, i64 4
  %i.di = icmp sgt i32 %i.ay, 7
  %i.dj = icmp sgt i32 %i.ay, 6
  %i.dk = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.dm = getelementptr i8, ptr %i.be, i64 4
  %i.dn = icmp sgt i32 %i.ay, 7
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.dp = icmp sgt i32 %i.ay, 7
  %i.dq = icmp ugt i32 %i.bl, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.dt = getelementptr i8, ptr %i.be, i64 4
  %i.du = icmp ugt i32 %i.bl, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %exitcond147.not.i.peel53 = icmp eq i32 %i.bb, 3
  br label %.lr.ph139.us.i

.lr.ph139.us.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph139.us.preheader.i
  %i.dw = load i32, ptr %i.be, align 4, !tbaa !29
  %.not121.us.peel.i = icmp eq i32 %i.dw, 0
  br i1 %.not121.us.peel.i, label %bb.at, label %bb.z

bb.z:                                             ; preds = %.lr.ph139.us.i
  %i.dx = tail call fastcc i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %1)
  switch i32 %i.dx, label %.split.us.i [
    i32 1, label %.thread.us.peel.i
    i32 7, label %bb.ar
    i32 13, label %bb.ao
    i32 8, label %bb.am
    i32 14, label %bb.aj
    i32 9, label %bb.aj
    i32 4, label %bb.aj
    i32 15, label %bb.af
    i32 20, label %bb.af
    i32 23, label %bb.af
    i32 19, label %bb.af
    i32 21, label %bb.af
    i32 24, label %bb.af
    i32 22, label %bb.af
    i32 18, label %bb.af
    i32 12, label %bb.af
    i32 17, label %bb.af
    i32 11, label %bb.af
    i32 16, label %bb.af
    i32 6, label %bb.af
    i32 10, label %bb.ac
    i32 5, label %bb.ac
    i32 3, label %bb.ac
    i32 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bq, label %bb.ab, label %.thread.us.peel.i

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.br, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.bq, label %.thread.i, label %bb.ad

.thread.i:                                        ; preds = %bb.ac
  store i32 1, ptr %i.br, align 4, !tbaa !29
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not.i26, label %.thread.us.peel.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread.i
  store i32 1, ptr %i.bs, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.af:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  br i1 %i.bt, label %.thread162.i, label %bb.ag

.thread162.i:                                     ; preds = %bb.af
  store i32 1, ptr %i.bu, align 4, !tbaa !29
end_hunk_0
begin_hunk_1_@cuddWindowReorder:bb.a
bb.cm:                                            ; preds = %.thread95, %bb.cl
  store i32 1, ptr %i.ds, align 4, !tbaa !29
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  store i32 1, ptr %i.dt, align 4, !tbaa !29
  br label %.thread.us.i.peel49

bb.co:                                            ; preds = %bb.bs
  br i1 %i.du, label %bb.cp, label %.thread.us.i.peel49

bb.cp:                                            ; preds = %bb.co
  store i32 1, ptr %i.dv, align 4, !tbaa !29
  br label %.thread.us.i.peel49

.thread.us.sink.split.i.peel47:                   ; preds = %bb.bt, %bb.bu, %bb.ch, %bb.cj, %bb.ci
  %.sink170.i.peel48 = phi i64 [ -4, %bb.ci ], [ -4, %bb.cj ], [ -8, %bb.ch ], [ -8, %bb.bu ], [ -8, %bb.bt ]
  %i.ec = getelementptr i8, ptr %i.br, i64 %.sink170.i.peel48
  store i32 1, ptr %i.ec, align 4, !tbaa !29
  br label %.thread.us.i.peel49

.thread.us.i.peel49:                              ; preds = %bb.co, %bb.cp, %bb.cn, %bb.cd, %bb.by, %.thread.us.sink.split.i.peel47, %bb.bs
  %.1.us.i.peel50 = phi i32 [ %.2.us.i.peel, %bb.bs ], [ 1, %bb.by ], [ 1, %bb.cd ], [ 1, %bb.cn ], [ 1, %.thread.us.sink.split.i.peel47 ], [ 1, %bb.cp ], [ 1, %bb.co ]
  store i32 0, ptr %i.br, align 4, !tbaa !29
  br label %bb.cq

bb.cq:                                            ; preds = %.thread.us.i.peel49, %.peel.next.i.peel.next
  %.2.us.i.peel51 = phi i32 [ %.1.us.i.peel50, %.thread.us.i.peel49 ], [ %.2.us.i.peel, %.peel.next.i.peel.next ] ; 2 uses
  br i1 %exitcond147.not.i.peel53, label %._crit_edge.us.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.cq, %bb.dk
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %bb.dk ], [ 3, %bb.cq ] ; 15 uses
  %.0138.us.i = phi i32 [ %.2.us.i, %bb.dk ], [ %.2.us.i.peel51, %bb.cq ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv143.i ; 11 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !29
  %.not121.us.i = icmp eq i32 %i.ee, 0
  br i1 %.not121.us.i, label %bb.dk, label %bb.cr

bb.cr:                                            ; preds = %.peel.next.i
  %i.ef = trunc i64 %indvars.iv143.i to i32
  %i.eg = add i32 %1, %i.ef
  %i.eh = tail call fastcc i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %i.eg)
  switch i32 %i.eh, label %.split.us.i [
    i32 1, label %.thread.us.i
    i32 7, label %bb.dj
    i32 13, label %bb.dg
    i32 8, label %bb.df
    i32 14, label %bb.dc
    i32 9, label %bb.dc
    i32 4, label %bb.dc
    i32 15, label %bb.cw
    i32 20, label %bb.cw
    i32 23, label %bb.cw
    i32 19, label %bb.cw
    i32 21, label %bb.cw
    i32 24, label %bb.cw
    i32 22, label %bb.cw
    i32 18, label %bb.cw
    i32 12, label %bb.cw
    i32 17, label %bb.cw
    i32 11, label %bb.cw
    i32 16, label %bb.cw
    i32 6, label %bb.cw
    i32 10, label %bb.ct
    i32 5, label %bb.ct
    i32 3, label %bb.ct
    i32 2, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.ei = icmp slt i64 %indvars.iv143.i, %i.bn
  br i1 %i.ei, label %.thread.us.sink.split.i.sink.split, label %.thread.us.sink.split.i

bb.ct:                                            ; preds = %bb.cr, %bb.cr, %bb.cr
  %i.ej = icmp slt i64 %indvars.iv143.i, %i.bn
  br i1 %i.ej, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 1, ptr %i.ek, align 4, !tbaa !29
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.el = icmp samesign ult i64 %indvars.iv143.i, %i.bo
  br i1 %i.el, label %.thread.us.sink.split.i.sink.split.sink.split, label %.thread.us.sink.split.i.sink.split

bb.cw:                                            ; preds = %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr
  %i.em = icmp slt i64 %indvars.iv143.i, %i.bp
  br i1 %i.em, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 1, ptr %i.en, align 4, !tbaa !29
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.eo = icmp slt i64 %indvars.iv143.i, %i.bn
  br i1 %i.eo, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i32 1, ptr %i.ep, align 4, !tbaa !29
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.eq = icmp samesign ult i64 %indvars.iv143.i, %i.bo
  br i1 %i.eq, label %bb.db, label %.thread.us.sink.split.i.sink.split.sink.split

bb.db:                                            ; preds = %bb.da
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 1, ptr %i.er, align 4, !tbaa !29
  br label %.thread.us.sink.split.i.sink.split.sink.split

bb.dc:                                            ; preds = %bb.cr, %bb.cr, %bb.cr
  %i.es = icmp slt i64 %indvars.iv143.i, %i.bp
  br i1 %i.es, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 1, ptr %i.et, align 4, !tbaa !29
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.eu = icmp slt i64 %indvars.iv143.i, %i.bn
  br i1 %i.eu, label %.thread.us.sink.split.i.sink.split.sink.split, label %.thread.us.sink.split.i.sink.split

bb.df:                                            ; preds = %bb.cr
  %i.ev = icmp slt i64 %indvars.iv143.i, %i.bp
  br i1 %i.ev, label %.thread.us.sink.split.i.sink.split, label %.thread.us.sink.split.i

bb.dg:                                            ; preds = %bb.cr
  %i.ew = icmp slt i64 %indvars.iv143.i, %i.bp
  br i1 %i.ew, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 1, ptr %i.ex, align 4, !tbaa !29
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ey = icmp samesign ult i64 %indvars.iv143.i, %i.bo
  br i1 %i.ey, label %.thread.us.sink.split.i.sink.split.sink.split, label %.thread.us.sink.split.i.sink.split

bb.dj:                                            ; preds = %bb.cr
  %i.ez = icmp samesign ult i64 %indvars.iv143.i, %i.bo
  br i1 %i.ez, label %.thread.us.sink.split.i.sink.split, label %.thread.us.sink.split.i

.thread.us.sink.split.i.sink.split.sink.split:    ; preds = %bb.di, %bb.de, %bb.db, %bb.da, %bb.cv
  %.sink104 = phi i64 [ 8, %bb.de ], [ -4, %bb.db ], [ 4, %bb.cv ], [ -4, %bb.da ], [ 4, %bb.di ]
  %.sink103.ph = phi i64 [ -4, %bb.de ], [ -8, %bb.db ], [ -8, %bb.cv ], [ -8, %bb.da ], [ -4, %bb.di ]
  %.sink170.i.ph.ph = phi i64 [ -8, %bb.de ], [ -12, %bb.db ], [ -12, %bb.cv ], [ -12, %bb.da ], [ -12, %bb.di ]
  %i.fa = getelementptr i8, ptr %i.ed, i64 %.sink104
  store i32 1, ptr %i.fa, align 4, !tbaa !29
  br label %.thread.us.sink.split.i.sink.split

.thread.us.sink.split.i.sink.split:               ; preds = %.thread.us.sink.split.i.sink.split.sink.split, %bb.dj, %bb.di, %bb.df, %bb.de, %bb.cv, %bb.cs
  %.sink103 = phi i64 [ -4, %bb.di ], [ -4, %bb.de ], [ 12, %bb.df ], [ -8, %bb.cv ], [ 4, %bb.dj ], [ 8, %bb.cs ], [ %.sink103.ph, %.thread.us.sink.split.i.sink.split.sink.split ]
  %.sink170.i.ph = phi i64 [ -12, %bb.di ], [ -8, %bb.de ], [ -4, %bb.df ], [ -12, %bb.cv ], [ -12, %bb.dj ], [ -8, %bb.cs ], [ %.sink170.i.ph.ph, %.thread.us.sink.split.i.sink.split.sink.split ]
  %i.fb = getelementptr i8, ptr %i.ed, i64 %.sink103
  store i32 1, ptr %i.fb, align 4, !tbaa !29
  br label %.thread.us.sink.split.i

.thread.us.sink.split.i:                          ; preds = %.thread.us.sink.split.i.sink.split, %bb.dj, %bb.cs, %bb.df
  %.sink170.i = phi i64 [ -4, %bb.df ], [ -12, %bb.dj ], [ -8, %bb.cs ], [ %.sink170.i.ph, %.thread.us.sink.split.i.sink.split ]
  %i.fc = getelementptr i8, ptr %i.ed, i64 %.sink170.i
  store i32 1, ptr %i.fc, align 4, !tbaa !29
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %.thread.us.sink.split.i, %bb.cr
  %.1.us.i = phi i32 [ %.0138.us.i, %bb.cr ], [ 1, %.thread.us.sink.split.i ]
  store i32 0, ptr %i.ed, align 4, !tbaa !29
  br label %bb.dk

bb.dk:                                            ; preds = %.thread.us.i, %.peel.next.i
  %.2.us.i = phi i32 [ %.1.us.i, %.thread.us.i ], [ %.0138.us.i, %.peel.next.i ] ; 2 uses
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %i.bc
  br i1 %exitcond147.not.i, label %._crit_edge.us.i, label %.peel.next.i, !llvm.loop !37

._crit_edge.us.i:                                 ; preds = %bb.dk, %bb.br, %bb.cq, %bb.at
  %.2.us.lcssa.i = phi i32 [ %.2.us.peel.i, %bb.at ], [ %.2.us.i.peel51, %bb.cq ], [ %.2.us.i.peel, %bb.br ], [ %.2.us.i, %bb.dk ]
  %.not.us.i = icmp eq i32 %.2.us.lcssa.i, 0
  br i1 %.not.us.i, label %.split141.us.i, label %.lr.ph139.us.i, !llvm.loop !38

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader126, %.lr.ph.i24
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i24 ], [ %indvars.iv.i.ph, %.lr.ph.i24.preheader126 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  store i32 1, ptr %i.fd, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i, %i.bc
  br i1 %exitcond.not.i25, label %.lr.ph139.us.preheader.i, label %.lr.ph.i24, !llvm.loop !39

.split.us.i:                                      ; preds = %bb.z, %bb.au, %bb.bs, %bb.cr
  tail call void @free(ptr noundef nonnull %i.be) #4
  br label %ddWindow2.exit

.split141.us.i:                                   ; preds = %._crit_edge.us.i
  tail call void @free(ptr noundef nonnull %i.be) #4
  br label %ddWindow2.exit

.ddWindow2.exit.loopexit107_crit_edge:            ; preds = %.lr.ph116
  br label %ddWindow2.exit, !llvm.loop !34

ddWindow2.exit:                                   ; preds = %.lr.ph.i, %bb.s, %.preheader.i, %bb.g, %bb.f, %bb.d, %.preheader.i.i.preheader, %.lr.ph, %.preheader.i.preheader, %.ddWindow2.exit.loopexit107_crit_edge, %.split141.us.i, %.split.us.i, %bb.y, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.b, %bb.t, %bb.u, %bb.a
  %.020 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.i ], [ 0, %bb.y ], [ %i.ba, %bb.w ], [ %i.aw, %bb.t ], [ %i.ax, %bb.u ], [ 0, %bb.b ], [ 0, %.split.us.i ], [ 1, %.split141.us.i ], [ 0, %bb.i ], [ 1, %bb.k ], [ %spec.select.i, %bb.l ], [ 0, %bb.j ], [ 1, %.preheader.i.i.preheader ], [ 0, %bb.p ], [ %., %.lr.ph ], [ 0, %bb.o ], [ 1, %bb.q ], [ %spec.select.i.i, %bb.r ], [ 0, %.ddWindow2.exit.loopexit107_crit_edge ], [ 0, %bb.f ], [ 1, %.preheader.i.preheader ], [ 0, %bb.d ], [ 1, %bb.g ], [ 1, %bb.s ], [ 0, %.lr.ph.i ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddWindowConv2(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 5 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  br label %tailrecurse

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #5 ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.preheader.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> splat (i32 1), ptr %i.g, align 4, !tbaa !29
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit106, label %.preheader.preheader111

.preheader.preheader111:                          ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.j, align 8, !tbaa !32
  br label %bb.u

.preheader:                                       ; preds = %.preheader.preheader111, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader111 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 1, ptr %i.k, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.loopexit106, label %.preheader, !llvm.loop !42

.loopexit106:                                     ; preds = %.preheader, %middle.block
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.o = load i32, ptr %i.n, align 8, !tbaa !27
  %i.p = sub i32 %i.m, %i.o
  %i.q = add nsw i32 %i.a, -1                     ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = add nsw i32 %1, 1                        ; 2 uses
  %.not96 = icmp eq i32 %i.q, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %exitcond84.peel.not = icmp eq i32 %i.a, 1
  %invariant.op = add i32 %1, 1
  br label %.peel.begin

.peel.begin:                                      ; preds = %.loopexit87, %.loopexit106
  %.055 = phi i32 [ %i.p, %.loopexit106 ], [ %.3.lcssa, %.loopexit87 ] ; 3 uses
  %i.u = load i32, ptr %i.e, align 4, !tbaa !29
  %.not65.peel = icmp eq i32 %i.u, 0
  br i1 %.not65.peel, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.peel.begin
  %i.v = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %1, i32 noundef %i.s) #4 ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not66.peel = icmp slt i32 %i.v, %.055
  br i1 %.not66.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %1, i32 noundef %i.s) #4 ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.loopexit86, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.257.peel = phi i32 [ %i.x, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %i.z = icmp sge i32 %.257.peel, %.055           ; 2 uses
  %brmerge = select i1 %i.z, i1 true, i1 %.not96
  %not. = xor i1 %i.z, true
  %.mux = zext i1 %not. to i32
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.t, align 4, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1.peel = phi i32 [ %.mux, %bb.g ], [ 1, %bb.h ]
  store i32 0, ptr %i.e, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.peel.begin
  %.3.peel = phi i32 [ %.257.peel, %bb.i ], [ %.055, %.peel.begin ] ; 2 uses
  %.2.peel = phi i32 [ %.1.peel, %bb.i ], [ 0, %.peel.begin ] ; 2 uses
  br i1 %exitcond84.peel.not, label %.loopexit87, label %.peel.next

.peel.next:                                       ; preds = %bb.j, %bb.s
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %bb.s ], [ 1, %bb.j ] ; 5 uses
  %.078 = phi i32 [ %.2, %bb.s ], [ %.2.peel, %bb.j ] ; 2 uses
  %.15677 = phi i32 [ %.3, %bb.s ], [ %.3.peel, %bb.j ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv80 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %.not65 = icmp eq i32 %i.ab, 0
  br i1 %.not65, label %bb.s, label %bb.k

bb.k:                                             ; preds = %.peel.next
  %indvars82 = trunc i64 %indvars.iv80 to i32
  %.reass = add i32 %invariant.op, %indvars82     ; 2 uses
  %i.ac = trunc i64 %indvars.iv80 to i32
  %i.ad = add i32 %1, %i.ac                       ; 2 uses
  %i.ae = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %i.ad, i32 noundef %.reass) #4 ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.d, %bb.k
  tail call void @free(ptr noundef nonnull %i.e) #4
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %.not66 = icmp slt i32 %i.ae, %.15677
  br i1 %.not66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %i.ad, i32 noundef %.reass) #4 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit86, label %bb.n

.loopexit86:                                      ; preds = %bb.f, %bb.m
  tail call void @free(ptr noundef nonnull %i.e) #4
  br label %bb.u

bb.n:                                             ; preds = %bb.m, %bb.l
  %.257 = phi i32 [ %i.ag, %bb.m ], [ %i.ae, %bb.l ] ; 2 uses
  %i.ai = icmp slt i32 %.257, %.15677
  br i1 %i.ai, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp samesign ult i64 %indvars.iv80, %i.r
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.al = getelementptr i8, ptr %i.aa, i64 -4
  store i32 1, ptr %i.al, align 4, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.1 = phi i32 [ %.078, %bb.n ], [ 1, %bb.q ]
  store i32 0, ptr %i.aa, align 4, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %.peel.next, %bb.r
  %.3 = phi i32 [ %.257, %bb.r ], [ %.15677, %.peel.next ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.r ], [ %.078, %.peel.next ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %i.c
  br i1 %exitcond84.not, label %.loopexit87, label %.peel.next, !llvm.loop !43

.loopexit87:                                      ; preds = %bb.s, %bb.j
  %.3.lcssa = phi i32 [ %.3.peel, %bb.j ], [ %.3, %bb.s ]
  %.2.lcssa = phi i32 [ %.2.peel, %bb.j ], [ %.2, %bb.s ]
  %.not = icmp eq i32 %.2.lcssa, 0
  br i1 %.not, label %bb.t, label %.peel.begin, !llvm.loop !44

bb.t:                                             ; preds = %.loopexit87
  tail call void @free(ptr noundef nonnull %i.e) #4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit86, %.loopexit, %bb.c
  %.060 = phi i32 [ 1, %bb.t ], [ 0, %bb.c ], [ 0, %.loopexit ], [ 0, %.loopexit86 ]
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddWindowConv3(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
end_hunk_1
