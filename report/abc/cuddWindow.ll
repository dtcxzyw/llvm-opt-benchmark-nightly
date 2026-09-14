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
  %i.af = add nsw i32 %1, 1                       ; 2 uses
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

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.ar = add nsw i32 %i.at, 1                    ; 2 uses
  %i.as = icmp slt i32 %i.ar, %2
  br i1 %i.as, label %.lr.ph, label %ddWindow2.exit, !llvm.loop !34

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %i.at = phi i32 [ %i.ar, %.preheader.i.i ], [ %i.af, %.preheader.i.i.preheader ] ; 2 uses
  %.0.i.i113 = phi i32 [ %i.at, %.preheader.i.i ], [ %1, %.preheader.i.i.preheader ]
  %i.au = tail call fastcc i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %.0.i.i113)
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.ddWindow2.exit.loopexit107_crit_edge, label %.preheader.i.i, !llvm.loop !34

bb.s:                                             ; preds = %.lr.ph.i
  %i.aw = add nsw i32 %.015.i, 1
  %i.ax = add nsw i32 %.015.i, 3
  %i.ay = icmp slt i32 %i.ax, %2
  br i1 %i.ay, label %.lr.ph.i, label %ddWindow2.exit, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.m, %bb.s
  %.015.i = phi i32 [ %i.aw, %bb.s ], [ %1, %bb.m ] ; 3 uses
  %i.az = tail call fastcc i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %.015.i)
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %ddWindow2.exit, label %bb.s

bb.t:                                             ; preds = %bb.a
  %i.bb = tail call fastcc i32 @ddWindowConv2(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %ddWindow2.exit

bb.u:                                             ; preds = %bb.a
  %i.bc = tail call fastcc i32 @ddWindowConv3(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %ddWindow2.exit

bb.v:                                             ; preds = %bb.a
  %i.bd = sub nsw i32 %2, %1                      ; 23 uses
  %i.be = icmp slt i32 %i.bd, 3
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bf = tail call fastcc i32 @ddWindowConv3(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %ddWindow2.exit

bb.x:                                             ; preds = %bb.v
  %i.bg = add nsw i32 %i.bd, -2                   ; 5 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 5 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #5 ; 44 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.y, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.x
  %min.iters.check = icmp ult i32 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph.i24.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.preheader
  %n.vec = and i64 %i.bh, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x i32> splat (i32 1), ptr %i.bl, align 4, !tbaa !29
  store <4 x i32> splat (i32 1), ptr %i.bm, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bh
  br i1 %cmp.n, label %.lr.ph139.us.preheader.i, label %.lr.ph.i24.preheader126

.lr.ph.i24.preheader126:                          ; preds = %.lr.ph.i24.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i24.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i24

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.bo, align 8, !tbaa !32
  br label %ddWindow2.exit

.lr.ph139.us.preheader.i:                         ; preds = %.lr.ph.i24, %middle.block
  %i.bp = add nsw i32 %i.bd, -5
  %i.bq = add nsw i32 %i.bd, -3                   ; 10 uses
  %i.br = add nsw i32 %i.bd, -4
  %i.bs = sext i32 %i.br to i64                   ; 4 uses
  %i.bt = zext nneg i32 %i.bq to i64              ; 4 uses
  %i.bu = sext i32 %i.bp to i64                   ; 4 uses
  %i.bv = icmp samesign ugt i32 %i.bd, 4          ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 7 uses
  %.not.i26 = icmp eq i32 %i.bq, 0                ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 6 uses
  %i.by = icmp samesign ugt i32 %i.bd, 5          ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 4 uses
  %exitcond147.peel.not.i = icmp eq i32 %i.bg, 1
  %i.ca = add i32 %1, 1
  %i.cb = icmp sgt i32 %i.bd, 5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.cd = icmp sgt i32 %i.bd, 5
  %i.ce = icmp ugt i32 %i.bq, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ch = icmp sgt i32 %i.bd, 6
  %i.ci = icmp sgt i32 %i.bd, 5
  %i.cj = icmp ugt i32 %i.bq, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cn = icmp sgt i32 %i.bd, 6
  %i.co = icmp sgt i32 %i.bd, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.cr = icmp sgt i32 %i.bd, 6
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ct = icmp sgt i32 %i.bd, 6
  %i.cu = icmp ugt i32 %i.bq, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cx = icmp ugt i32 %i.bq, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %exitcond147.not.i.peel = icmp eq i32 %i.bg, 2
  %i.cz = add i32 %1, 2
  %i.da = icmp sgt i32 %i.bd, 6
  %i.db = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.dc = icmp sgt i32 %i.bd, 6
  %i.dd = icmp ugt i32 %i.bq, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.dg = icmp sgt i32 %i.bd, 7
  %i.dh = icmp sgt i32 %i.bd, 6
  %i.di = icmp ugt i32 %i.bq, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.dm = getelementptr i8, ptr %i.bj, i64 4
  %i.dn = icmp sgt i32 %i.bd, 7
  %i.do = icmp sgt i32 %i.bd, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.dr = getelementptr i8, ptr %i.bj, i64 4
  %i.ds = icmp sgt i32 %i.bd, 7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.du = icmp sgt i32 %i.bd, 7
  %i.dv = icmp ugt i32 %i.bq, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.dy = getelementptr i8, ptr %i.bj, i64 4
  %i.dz = icmp ugt i32 %i.bq, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %exitcond147.not.i.peel53 = icmp eq i32 %i.bg, 3
  br label %.lr.ph139.us.i

.lr.ph139.us.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph139.us.preheader.i
  %i.eb = load i32, ptr %i.bj, align 4, !tbaa !29
  %.not121.us.peel.i = icmp eq i32 %i.eb, 0
  br i1 %.not121.us.peel.i, label %bb.at, label %bb.z

bb.z:                                             ; preds = %.lr.ph139.us.i
  %i.ec = tail call fastcc i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %1)
  switch i32 %i.ec, label %.split.us.i [
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
  br i1 %i.bv, label %bb.ab, label %.thread.us.peel.i

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.bw, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.bv, label %.thread.i, label %bb.ad

.thread.i:                                        ; preds = %bb.ac
  store i32 1, ptr %i.bw, align 4, !tbaa !29
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not.i26, label %.thread.us.peel.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread.i
  store i32 1, ptr %i.bx, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.af:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  br i1 %i.by, label %.thread162.i, label %bb.ag

.thread162.i:                                     ; preds = %bb.af
  store i32 1, ptr %i.bz, align 4, !tbaa !29
  br label %.thread163.i

bb.ag:                                            ; preds = %bb.af
  br i1 %i.bv, label %.thread163.i, label %bb.ah

.thread163.i:                                     ; preds = %bb.ag, %.thread162.i
  store i32 1, ptr %i.bw, align 4, !tbaa !29
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not.i26, label %.thread.us.peel.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread163.i
  store i32 1, ptr %i.bx, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.aj:                                            ; preds = %bb.z, %bb.z, %bb.z
  br i1 %i.by, label %.thread165.i, label %bb.ak

.thread165.i:                                     ; preds = %bb.aj
  store i32 1, ptr %i.bz, align 4, !tbaa !29
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bv, label %bb.al, label %.thread.us.peel.i

bb.al:                                            ; preds = %bb.ak, %.thread165.i
  store i32 1, ptr %i.bw, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.am:                                            ; preds = %bb.z
  br i1 %i.by, label %bb.an, label %.thread.us.peel.i

bb.an:                                            ; preds = %bb.am
  store i32 1, ptr %i.bz, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.ao:                                            ; preds = %bb.z
  br i1 %i.by, label %.thread166.i, label %bb.ap

.thread166.i:                                     ; preds = %bb.ao
  store i32 1, ptr %i.bz, align 4, !tbaa !29
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not.i26, label %.thread.us.peel.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread166.i
  store i32 1, ptr %i.bx, align 4, !tbaa !29
  br label %.thread.us.peel.i

bb.ar:                                            ; preds = %bb.z
  br i1 %.not.i26, label %.thread.us.peel.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %i.bx, align 4, !tbaa !29
  br label %.thread.us.peel.i

.thread.us.peel.i:                                ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z
  %.1.us.peel.i = phi i32 [ 0, %bb.z ], [ 1, %bb.am ], [ 1, %bb.ap ], [ 1, %bb.ah ], [ 1, %bb.ak ], [ 1, %bb.aa ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.ae ], [ 1, %bb.ai ], [ 1, %bb.al ], [ 1, %bb.an ], [ 1, %bb.aq ], [ 1, %bb.as ], [ 1, %bb.ar ]
  store i32 0, ptr %i.bj, align 4, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %.thread.us.peel.i, %.lr.ph139.us.i
  %.2.us.peel.i = phi i32 [ %.1.us.peel.i, %.thread.us.peel.i ], [ 0, %.lr.ph139.us.i ] ; 3 uses
  br i1 %exitcond147.peel.not.i, label %._crit_edge.us.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.at
  %i.ed = load i32, ptr %i.bx, align 4, !tbaa !29
  %.not121.us.i.peel = icmp eq i32 %i.ed, 0
  br i1 %.not121.us.i.peel, label %bb.br, label %bb.au

bb.au:                                            ; preds = %.peel.next.i.preheader
  %i.ee = tail call fastcc i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %i.ca)
  switch i32 %i.ee, label %.split.us.i [
    i32 1, label %.thread.us.i.peel
    i32 7, label %bb.bp
    i32 13, label %bb.bl
    i32 8, label %bb.bj
    i32 14, label %bb.bf
    i32 9, label %bb.bf
    i32 4, label %bb.bf
    i32 15, label %bb.ba
end_hunk_0
begin_hunk_1_@cuddWindowReorder:bb.a
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
  %i.a = sub nsw i32 %2, %1                       ; 9 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @ddWindowConv2(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.a, -1                     ; 3 uses
  %i.e = zext nneg i32 %i.d to i64                ; 5 uses
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #5 ; 19 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %min.iters.check = icmp ult i32 %i.a, 9
  br i1 %min.iters.check, label %.lr.ph.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> splat (i32 1), ptr %i.i, align 4, !tbaa !29
  store <4 x i32> splat (i32 1), ptr %i.j, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %.lr.ph75.us.preheader, label %.lr.ph.preheader112

.lr.ph.preheader112:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.l, align 8, !tbaa !32
  br label %bb.ag

.lr.ph75.us.preheader:                            ; preds = %.lr.ph, %middle.block
  %i.m = add nsw i32 %i.a, -2                     ; 5 uses
  %i.n = add nsw i32 %i.a, -3
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %wide.trip.count82 = zext nneg i32 %i.m to i64  ; 2 uses
  %i.p = icmp sgt i32 %i.a, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = icmp sgt i32 %i.a, 3
  %.not = icmp eq i32 %i.m, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.not101 = icmp eq i32 %i.m, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %exitcond83.peel.not = icmp eq i32 %i.d, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.w = add i32 %1, 1
  %i.x = icmp sgt i32 %i.a, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.z = icmp sgt i32 %i.a, 4
  %i.aa = icmp ugt i32 %i.m, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ad = icmp ugt i32 %i.m, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %exitcond83.peel93.not = icmp eq i32 %i.d, 2
  br label %.lr.ph75.us

.lr.ph75.us:                                      ; preds = %.lr.ph75.us.preheader, %._crit_edge.us
  %i.af = load i32, ptr %i.g, align 4, !tbaa !29
  %.not65.us.peel = icmp eq i32 %i.af, 0
  br i1 %.not65.us.peel, label %bb.m, label %bb.e

bb.e:                                             ; preds = %.lr.ph75.us
  %i.ag = tail call fastcc i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %1)
  switch i32 %i.ag, label %.split.us [
    i32 1, label %.thread.us.peel
    i32 2, label %bb.k
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.g, label %.thread.us.peel

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.q, align 4, !tbaa !29
  br label %.thread.us.peel

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e
  br i1 %i.r, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 1, ptr %i.s, align 4, !tbaa !29
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not, label %.thread.us.peel, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  store i32 1, ptr %i.t, align 4, !tbaa !29
  br label %.thread.us.peel

bb.k:                                             ; preds = %bb.e
  br i1 %.not101, label %.thread.us.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.u, align 4, !tbaa !29
  br label %.thread.us.peel

.thread.us.peel:                                  ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %bb.f, %bb.g, %bb.e
  %.1.us.peel = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.k ]
  store i32 0, ptr %i.g, align 4, !tbaa !29
  br label %bb.m

bb.m:                                             ; preds = %.thread.us.peel, %.lr.ph75.us
  %.2.us.peel = phi i32 [ %.1.us.peel, %.thread.us.peel ], [ 0, %.lr.ph75.us ] ; 3 uses
  br i1 %exitcond83.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.m
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !29
  %.not65.us.peel85 = icmp eq i32 %i.ah, 0
  br i1 %.not65.us.peel85, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.peel.next
  %i.ai = tail call fastcc i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %i.w)
  switch i32 %i.ai, label %.split.us [
    i32 1, label %.thread.us.peel89
    i32 2, label %bb.v
    i32 3, label %bb.r
    i32 4, label %bb.r
    i32 5, label %bb.r
    i32 6, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.y, align 4, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  store i32 1, ptr %i.g, align 4, !tbaa !29
  br label %.thread.us.peel89

bb.r:                                             ; preds = %bb.n, %bb.n, %bb.n
  br i1 %i.z, label %.thread103, label %bb.s

.thread103:                                       ; preds = %bb.r
  store i32 1, ptr %i.ab, align 4, !tbaa !29
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.aa, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread103, %bb.s
  store i32 1, ptr %i.ac, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  store i32 1, ptr %i.g, align 4, !tbaa !29
  br label %.thread.us.peel89

bb.v:                                             ; preds = %bb.n
  br i1 %i.ad, label %bb.w, label %.thread.us.peel89

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.ae, align 4, !tbaa !29
  br label %.thread.us.peel89

.thread.us.peel89:                                ; preds = %bb.v, %bb.w, %bb.u, %bb.q, %bb.n
  %.1.us.peel90 = phi i32 [ %.2.us.peel, %bb.n ], [ 1, %bb.u ], [ 1, %bb.q ], [ 1, %bb.w ], [ 1, %bb.v ]
  store i32 0, ptr %i.v, align 4, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %.thread.us.peel89, %.peel.next
  %.2.us.peel91 = phi i32 [ %.1.us.peel90, %.thread.us.peel89 ], [ %.2.us.peel, %.peel.next ] ; 2 uses
  br i1 %exitcond83.peel93.not, label %._crit_edge.us, label %.peel.next84

.peel.next84:                                     ; preds = %bb.x, %bb.af
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.af ], [ 2, %bb.x ] ; 7 uses
  %.074.us = phi i32 [ %.2.us, %bb.af ], [ %.2.us.peel91, %bb.x ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv79 ; 6 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %.not65.us = icmp eq i32 %i.ak, 0
  br i1 %.not65.us, label %bb.af, label %bb.y

bb.y:                                             ; preds = %.peel.next84
  %i.al = trunc i64 %indvars.iv79 to i32
  %i.am = add i32 %1, %i.al
  %i.an = tail call fastcc i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %i.am)
  switch i32 %i.an, label %.split.us [
    i32 1, label %.thread.us
    i32 2, label %bb.ae
    i32 3, label %bb.aa
    i32 4, label %bb.aa
    i32 5, label %bb.aa
    i32 6, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.ao = icmp slt i64 %indvars.iv79, %i.o
  br i1 %i.ao, label %.thread.us.sink.split.sink.split, label %.thread.us.sink.split

bb.aa:                                            ; preds = %bb.y, %bb.y, %bb.y
  %i.ap = icmp slt i64 %indvars.iv79, %i.o
  br i1 %i.ap, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aq, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ar = icmp samesign ult i64 %indvars.iv79, %wide.trip.count82
  br i1 %i.ar, label %bb.ad, label %.thread.us.sink.split.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.as, align 4, !tbaa !29
  br label %.thread.us.sink.split.sink.split

bb.ae:                                            ; preds = %bb.y
  %i.at = icmp samesign ult i64 %indvars.iv79, %wide.trip.count82
  br i1 %i.at, label %.thread.us.sink.split.sink.split, label %.thread.us.sink.split

.thread.us.sink.split.sink.split:                 ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.z
  %.sink107.a = phi i64 [ -4, %bb.ac ], [ 8, %bb.z ], [ -4, %bb.ad ], [ 4, %bb.ae ]
  %.sink106.ph = phi i64 [ -8, %bb.ac ], [ -4, %bb.z ], [ -8, %bb.ad ], [ -8, %bb.ae ]
  %i.au = getelementptr i8, ptr %i.aj, i64 %.sink107.a
  store i32 1, ptr %i.au, align 4, !tbaa !29
  br label %.thread.us.sink.split

.thread.us.sink.split:                            ; preds = %.thread.us.sink.split.sink.split, %bb.ae, %bb.z
  %.sink106 = phi i64 [ -4, %bb.z ], [ -8, %bb.ae ], [ %.sink106.ph, %.thread.us.sink.split.sink.split ]
  %i.av = getelementptr i8, ptr %i.aj, i64 %.sink106
  store i32 1, ptr %i.av, align 4, !tbaa !29
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.sink.split, %bb.y
  %.1.us = phi i32 [ %.074.us, %bb.y ], [ 1, %.thread.us.sink.split ]
  store i32 0, ptr %i.aj, align 4, !tbaa !29
  br label %bb.af

bb.af:                                            ; preds = %.thread.us, %.peel.next84
  %.2.us = phi i32 [ %.1.us, %.thread.us ], [ %.074.us, %.peel.next84 ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %i.e
  br i1 %exitcond83.not, label %._crit_edge.us, label %.peel.next84, !llvm.loop !47

._crit_edge.us:                                   ; preds = %bb.af, %bb.x, %bb.m
  %.2.us.lcssa = phi i32 [ %.2.us.peel91, %bb.x ], [ %.2.us.peel, %bb.m ], [ %.2.us, %bb.af ]
  %.not.us = icmp eq i32 %.2.us.lcssa, 0
  br i1 %.not.us, label %.split77.us, label %.lr.ph75.us, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.preheader112, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader112 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 1, ptr %i.aw, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.lr.ph75.us.preheader, label %.lr.ph, !llvm.loop !49

.split.us:                                        ; preds = %bb.n, %bb.e, %bb.y
  tail call void @free(ptr noundef nonnull %i.g) #4
  br label %bb.ag

.split77.us:                                      ; preds = %._crit_edge.us
  tail call void @free(ptr noundef nonnull %i.g) #4
  br label %bb.ag

bb.ag:                                            ; preds = %.split77.us, %.split.us, %bb.d, %bb.b
  %.061 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.d ], [ 0, %.split.us ], [ 1, %.split77.us ]
  ret i32 %.061
}

declare i32 @cuddSwapInPlace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @ddPermuteWindow3(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %i.f = add nsw i32 %1, 1                        ; 10 uses
  %i.g = add nsw i32 %1, 2                        ; 5 uses
  %i.h = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %1, i32 noundef %i.f) #4 ; 3 uses
  %i.i = icmp slt i32 %i.h, %i.e
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.056 = phi i32 [ %i.e, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.a ], [ 2, %bb.b ]
  %i.k = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.g) #4 ; 3 uses
  %i.l = icmp slt i32 %i.k, %.056
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.157 = phi i32 [ %.056, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ 3, %bb.d ]
  %i.n = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.f) #4 ; 3 uses
  %i.o = icmp slt i32 %i.n, %.157
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.258 = phi i32 [ %.157, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.e ], [ 4, %bb.f ]
  %i.q = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.g) #4 ; 3 uses
  %i.r = icmp slt i32 %i.q, %.258
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.359 = phi i32 [ %.258, %bb.g ], [ %i.q, %bb.h ]
  %.3 = phi i32 [ %.2, %bb.g ], [ 5, %bb.h ]      ; 3 uses
  %i.t = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.f) #4 ; 2 uses
  %i.u = icmp slt i32 %i.t, %.359
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.q, label %.thread

bb.k:                                             ; preds = %bb.i
  switch i32 %.3, label %default.unreachable79 [
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 1, label %bb.n
    i32 5, label %bb.p
    i32 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.g) #4
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.f) #4
  %.not69 = icmp eq i32 %i.x, 0
  br i1 %.not69, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.y = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.g) #4
  %.not70 = icmp eq i32 %i.y, 0
  br i1 %.not70, label %bb.q, label %.thread

bb.o:                                             ; preds = %bb.k
  %i.z = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.g) #4
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %i.aa = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.f) #4
  %.not67 = icmp eq i32 %i.aa, 0
  br i1 %.not67, label %bb.q, label %.thread

default.unreachable79:                            ; preds = %bb.k
  unreachable

.thread:                                          ; preds = %bb.j, %bb.p, %bb.n
  %.472 = phi i32 [ 6, %bb.j ], [ %.3, %bb.p ], [ %.3, %bb.n ]
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %.thread
  %.060 = phi i32 [ 0, %bb.o ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.n ], [ %.472, %.thread ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.p ]
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 25) i32 @ddPermuteWindow4(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %i.f = add nsw i32 %1, 1                        ; 32 uses
  %i.g = add nsw i32 %1, 2                        ; 34 uses
  %i.h = add nsw i32 %1, 3                        ; 18 uses
  %i.i = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %1, i32 noundef %i.f) #4 ; 3 uses
  %i.j = icmp slt i32 %i.i, %i.e
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0328 = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.a ], [ 7, %bb.b ]
  %i.l = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.g, i32 noundef %i.h) #4 ; 3 uses
  %i.m = icmp slt i32 %i.l, %.0328
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %bb.cm, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1329 = phi i32 [ %.0328, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ 13, %bb.d ]     ; 2 uses
  %i.o = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.f) #4 ; 4 uses
  %i.p = icmp slt i32 %i.o, %.1329
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %i.o, %.1329
  %i.r = icmp samesign ugt i32 %.1, 8
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = icmp eq i32 %i.o, 0
  br i1 %i.s, label %bb.cm, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2330 = phi i32 [ %.1329, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.f ], [ 8, %bb.g ]
  %i.t = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.g) #4 ; 3 uses
  %i.u = icmp slt i32 %i.t, %.2330
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %i.t, 0
end_hunk_1
