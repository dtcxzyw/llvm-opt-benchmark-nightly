inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cuddSymmSifting:bb.a

._crit_edge94:                                    ; preds = %Abc_Clock.exit, %bb.d, %bb.k, %.preheader84
  call void @free(ptr noundef %i.h) #14
  %i.dl = load ptr, ptr @entry, align 8, !tbaa !48 ; 2 uses
  %.not75 = icmp eq ptr %i.dl, null
  br i1 %.not75, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge94
  call void @free(ptr noundef nonnull %i.dl) #14
  store ptr null, ptr @entry, align 8, !tbaa !48
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge94, %bb.l
  br i1 %.not87, label %ddSymmSummary.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !8  ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01928.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %.02127.i = phi i32 [ %1, %.lr.ph.i ], [ %i.dx, %.loopexit.i ] ; 5 uses
  %i.do = sext i32 %.02127.i to i64
  %i.dp = getelementptr inbounds [56 x i8], ptr %i.dn, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !27
  %.not24.i = icmp eq i32 %i.dr, %.02127.i
  br i1 %.not24.i, label %.loopexit.i, label %.preheader

.preheader:                                       ; preds = %bb.n, %.preheader
  %.023.i = phi i32 [ %i.dw, %.preheader ], [ %.02127.i, %bb.n ] ; 2 uses
  %.120.i = phi i32 [ %i.ds, %.preheader ], [ %.01928.i, %bb.n ]
  %i.ds = add nsw i32 %.120.i, 1                  ; 2 uses
  %i.dt = sext i32 %.023.i to i64
  %i.du = getelementptr inbounds [56 x i8], ptr %i.dn, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq i32 %i.dw, %.02127.i
  br i1 %.not25.i, label %.loopexit.i, label %.preheader, !llvm.loop !62

.loopexit.i:                                      ; preds = %.preheader, %bb.n
  %.122.i = phi i32 [ %.02127.i, %bb.n ], [ %.023.i, %.preheader ] ; 2 uses
  %.2.i = phi i32 [ %.01928.i, %bb.n ], [ %i.ds, %.preheader ] ; 2 uses
  %i.dx = add nsw i32 %.122.i, 1
  %.not.not.i = icmp slt i32 %.122.i, %2
  br i1 %.not.not.i, label %bb.n, label %ddSymmSummary.exit.loopexit, !llvm.loop !63

ddSymmSummary.exit.loopexit:                      ; preds = %.loopexit.i
  %i.dy = add nsw i32 %.2.i, 1
  br label %ddSymmSummary.exit

.loopexit:                                        ; preds = %bb.j
  %.pr.pre = load ptr, ptr @entry, align 8, !tbaa !48 ; 2 uses
  %.not76 = icmp eq ptr %.pr.pre, null
  br i1 %.not76, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @free(ptr noundef nonnull %.pr.pre) #14
  store ptr null, ptr @entry, align 8, !tbaa !48
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.o
  call void @free(ptr noundef nonnull %i.h) #14
  br label %ddSymmSummary.exit

ddSymmSummary.exit:                               ; preds = %.thread118, %bb.m, %ddSymmSummary.exit.loopexit, %.thread81, %.thread
  %.0 = phi i32 [ 0, %.thread81 ], [ 0, %.thread ], [ 0, %.thread118 ], [ 1, %bb.m ], [ %i.dy, %ddSymmSummary.exit.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @ddSymmUniqueCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load ptr, ptr @entry, align 8, !tbaa !48 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = icmp eq i32 %i.e, %i.i
  %i.k = sub nsw i32 %i.f, %i.b
  %i.l = sub nsw i32 %i.e, %i.i
  %.0 = select i1 %i.j, i32 %i.k, i32 %i.l
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddSymmSiftingAux(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %i.e = sub i32 %i.b, %i.d                       ; 4 uses
  %i.f = sub nsw i32 %1, %2
  %i.g = sub nsw i32 %3, %1
  %i.h = icmp sgt i32 %i.f, %i.g
  br i1 %i.h, label %.preheader363, label %.preheader366

.preheader366:                                    ; preds = %bb.a
  %i.i = icmp slt i32 %1, %3
  br i1 %i.i, label %.lr.ph, label %.loopexit364

.lr.ph:                                           ; preds = %.preheader366
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.d

.preheader363:                                    ; preds = %bb.a
  %i.k = icmp sgt i32 %1, %2
  br i1 %i.k, label %.lr.ph377, label %.loopexit364

.lr.ph377:                                        ; preds = %.preheader363
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph377, %bb.c
  %.0274376 = phi i32 [ %1, %.lr.ph377 ], [ %i.t, %bb.c ] ; 3 uses
  %i.n = add nsw i32 %.0274376, -1                ; 2 uses
  %i.o = tail call i32 @cuddSymmCheck(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef %.0274376)
  %.not329 = icmp eq i32 %i.o, 0
  br i1 %.not329, label %.loopexit364, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27   ; 3 uses
  store i32 %.0274376, ptr %i.s, align 4, !tbaa !27
  %i.u = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %i.t, ptr %i.v, align 4, !tbaa !27
  %i.w = icmp sgt i32 %i.t, %2
  br i1 %i.w, label %bb.b, label %.loopexit364, !llvm.loop !66

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.1374 = phi i32 [ %1, %.lr.ph ], [ %.0, %bb.f ] ; 3 uses
  %i.x = add nsw i32 %.1374, 1                    ; 3 uses
  %i.y = tail call i32 @cuddSymmCheck(ptr noundef nonnull %0, i32 noundef %.1374, i32 noundef %i.x)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit364, label %.preheader365

.preheader365:                                    ; preds = %bb.d
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader365, %bb.e
  %.0 = phi i32 [ %i.ad, %bb.e ], [ %i.x, %.preheader365 ] ; 4 uses
  %i.aa = sext i32 %.0 to i64
  %i.ab = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27 ; 2 uses
  %i.ae = icmp ult i32 %.0, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.f, !llvm.loop !67

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ag = sext i32 %.1374 to i64
  %i.ah = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !27
  store i32 %i.x, ptr %i.ai, align 4, !tbaa !27
  %i.ak = icmp slt i32 %.0, %3
  br i1 %i.ak, label %bb.d, label %.loopexit364, !llvm.loop !68

.loopexit364:                                     ; preds = %bb.d, %bb.f, %bb.b, %bb.c, %.preheader366, %.preheader363
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 13 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit364
  %.0294 = phi i32 [ %1, %.loopexit364 ], [ %i.aq, %bb.g ] ; 9 uses
  %i.an = sext i32 %.0294 to i64                  ; 3 uses
  %i.ao = getelementptr inbounds [56 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27 ; 2 uses
  %i.ar = icmp ult i32 %.0294, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.h, !llvm.loop !69

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq i32 %.0294, %2
  br i1 %i.as, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq i32 %2, %3
  br i1 %i.at, label %.loopexit352, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3) ; 5 uses
  %magicptr = ptrtoint ptr %i.au to i64
  switch i64 %magicptr, label %bb.k [
    i64 1, label %.thread424.thread
    i64 0, label %.loopexit352
  ]

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !70 ; 3 uses
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %i.aw, %bb.k ], [ %i.bb, %bb.l ] ; 3 uses
  %i.ay = sext i32 %.2 to i64
  %i.az = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !27 ; 2 uses
  %i.bc = icmp ult i32 %.2, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.m, !llvm.loop !73

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp eq i32 %.2, %i.aw
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.au, i32 noundef %i.e)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !64
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !65
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %i.aw, i32 noundef %2) ; 2 uses
  %i.bj = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.bi, i32 noundef %i.bh)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0286 = phi ptr [ null, %bb.n ], [ %i.bi, %bb.o ] ; 2 uses
  %.0275 = phi i32 [ %i.be, %bb.n ], [ %i.bj, %bb.o ]
  %.not339 = icmp eq i32 %.0275, 0
  br i1 %.not339, label %bb.av, label %.lr.ph390

bb.q:                                             ; preds = %bb.h
  %i.bk = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.0294) #14
  %i.bl = icmp sgt i32 %i.bk, %3
  br i1 %i.bl, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.bn = getelementptr inbounds [56 x i8], ptr %i.bm, i64 %i.an
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !27 ; 3 uses
  %i.bq = icmp eq i32 %i.bp, %2
  br i1 %i.bq, label %.loopexit352, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %i.bp, i32 noundef %2) ; 5 uses
  %magicptr342 = ptrtoint ptr %i.br to i64
  switch i64 %magicptr342, label %bb.t [
    i64 1, label %.thread424.thread
    i64 0, label %.loopexit352
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = sub nsw i32 %.0294, %i.bp
  %i.bt = load i32, ptr %i.br, align 8, !tbaa !74 ; 3 uses
  %i.bu = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [56 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !27
  %i.bz = sub nsw i32 %i.bt, %i.by
  %i.ca = icmp eq i32 %i.bs, %i.bz
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef %i.e)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !64
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !65
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %i.bt, i32 noundef %3) ; 2 uses
  %i.cg = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.cf, i32 noundef %i.ce)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0279 = phi ptr [ null, %bb.u ], [ %i.cf, %bb.v ] ; 2 uses
  %.1276 = phi i32 [ %i.cb, %bb.u ], [ %i.cg, %bb.v ]
  %.not338 = icmp eq i32 %.1276, 0
  br i1 %.not338, label %bb.av, label %bb.as

bb.x:                                             ; preds = %bb.q
  %i.ch = sub nsw i32 %.0294, %2
  %i.ci = sub nsw i32 %3, %.0294
  %i.cj = icmp sgt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.ck = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %.0294, i32 noundef %3) ; 6 uses
  %magicptr343 = ptrtoint ptr %i.ck to i64
  switch i64 %magicptr343, label %bb.z [
    i64 1, label %.thread424.thread
    i64 0, label %.preheader357
  ]

.preheader357:                                    ; preds = %bb.y
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !70 ; 2 uses
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.3 = phi i32 [ %i.cn, %bb.z ], [ %i.cs, %bb.aa ] ; 3 uses
  %i.cp = sext i32 %.3 to i64
  %i.cq = getelementptr inbounds [56 x i8], ptr %i.co, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !27 ; 2 uses
  %i.ct = icmp ult i32 %.3, %i.cs
  br i1 %i.ct, label %bb.aa, label %.loopexit356, !llvm.loop !75

bb.ab:                                            ; preds = %.preheader357, %bb.ab
  %.4 = phi i32 [ %i.cx, %bb.ab ], [ %.0294, %.preheader357 ] ; 3 uses
  %i.cu = sext i32 %.4 to i64
  %i.cv = getelementptr inbounds [56 x i8], ptr %i.cl, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !27 ; 3 uses
  %i.cy = icmp ult i32 %.4, %i.cx
  br i1 %i.cy, label %bb.ab, label %.loopexit356, !llvm.loop !76

.loopexit356:                                     ; preds = %bb.ab, %bb.aa
  %.1295 = phi i32 [ %i.cn, %bb.aa ], [ %i.cx, %bb.ab ] ; 4 uses
  %.5 = phi i32 [ %.3, %bb.aa ], [ %.4, %bb.ab ]
  %i.cz = sub nsw i32 %.5, %.1295
  %i.da = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %.1295, i32 noundef %2) ; 5 uses
  %magicptr344 = ptrtoint ptr %i.da to i64
  switch i64 %magicptr344, label %bb.ac [
    i64 1, label %bb.av
    i64 0, label %.preheader354
  ]

.preheader354:                                    ; preds = %.loopexit356
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit356
  %i.dc = load i32, ptr %i.da, align 8, !tbaa !74 ; 2 uses
  %i.dd = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.de = sext i32 %i.dc to i64
  %i.df = getelementptr inbounds [56 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !27
  br label %.loopexit355

bb.ad:                                            ; preds = %.preheader354, %bb.ad
  %.2296 = phi i32 [ %i.dl, %bb.ad ], [ %.1295, %.preheader354 ] ; 3 uses
  %i.di = sext i32 %.2296 to i64
  %i.dj = getelementptr inbounds [56 x i8], ptr %i.db, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !27 ; 2 uses
  %i.dm = icmp ult i32 %.2296, %i.dl
  br i1 %i.dm, label %bb.ad, label %.loopexit355, !llvm.loop !77

.loopexit355:                                     ; preds = %bb.ad, %bb.ac
  %.3297 = phi i32 [ %i.dc, %bb.ac ], [ %.2296, %bb.ad ] ; 2 uses
  %.6 = phi i32 [ %i.dh, %bb.ac ], [ %.1295, %bb.ad ]
  %i.dn = sub nsw i32 %.3297, %.6
  %i.do = icmp eq i32 %i.cz, %i.dn
  br i1 %i.do, label %bb.ae, label %.preheader353

.preheader353:                                    ; preds = %.loopexit355
  %.not336382 = icmp eq ptr %i.ck, null
  br i1 %.not336382, label %bb.ag, label %.lr.ph384

.lr.ph384:                                        ; preds = %.preheader353
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted386 = load ptr, ptr %i.dp, align 8, !tbaa !78
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit355
  %i.dq = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.da, i32 noundef %i.e)
  br label %bb.ah

bb.af:                                            ; preds = %.lr.ph384, %bb.af
  %i.dr = phi ptr [ %.promoted386, %.lr.ph384 ], [ %.1280383, %bb.af ]
  %.1280383 = phi ptr [ %i.ck, %.lr.ph384 ], [ %i.dt, %bb.af ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1280383, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !79 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1280383, i64 4
  store i32 0, ptr %i.du, align 4, !tbaa !37
  %i.dv = getelementptr inbounds nuw i8, ptr %.1280383, i64 8
  store ptr %i.dr, ptr %i.dv, align 8, !tbaa !80
  %.not336 = icmp eq ptr %i.dt, null
  br i1 %.not336, label %._crit_edge385, label %bb.af, !llvm.loop !81

._crit_edge385:                                   ; preds = %bb.af
  store ptr %.1280383, ptr %i.dp, align 8, !tbaa !78
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge385, %.preheader353
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !64
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !65
  %i.dy = sub i32 %i.dw, %i.dx
  %i.dz = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %.3297, i32 noundef %3) ; 2 uses
  %i.ea = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.dz, i32 noundef %i.dy)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.2281 = phi ptr [ %i.ck, %bb.ae ], [ %i.dz, %bb.ag ] ; 2 uses
  %.2277 = phi i32 [ %i.dq, %bb.ae ], [ %i.ea, %bb.ag ]
  %.not337 = icmp eq i32 %.2277, 0
  br i1 %.not337, label %bb.av, label %bb.as

bb.ai:                                            ; preds = %bb.x
  %i.eb = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.ec = getelementptr inbounds [56 x i8], ptr %i.eb, i64 %i.an
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !27 ; 2 uses
  %i.ef = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %i.ee, i32 noundef %2) ; 6 uses
  %magicptr345 = ptrtoint ptr %i.ef to i64
  switch i64 %magicptr345, label %bb.aj [
    i64 1, label %.thread424.thread
    i64 0, label %.preheader361
  ]

.preheader361:                                    ; preds = %bb.ai
  %i.eg = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i32, ptr %i.ef, align 8, !tbaa !74 ; 2 uses
  %i.ei = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr inbounds [56 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !27
  br label %.loopexit362

bb.ak:                                            ; preds = %.preheader361, %bb.ak
  %.4298 = phi i32 [ %i.eq, %bb.ak ], [ %i.ee, %.preheader361 ] ; 3 uses
  %i.en = sext i32 %.4298 to i64
  %i.eo = getelementptr inbounds [56 x i8], ptr %i.eg, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !27 ; 3 uses
  %i.er = icmp ult i32 %.4298, %i.eq
  br i1 %i.er, label %bb.ak, label %.loopexit362, !llvm.loop !82

.loopexit362:                                     ; preds = %bb.ak, %bb.aj
  %.5299 = phi i32 [ %i.eh, %bb.aj ], [ %.4298, %bb.ak ] ; 4 uses
  %.7 = phi i32 [ %i.em, %bb.aj ], [ %i.eq, %bb.ak ]
  %i.es = sub nsw i32 %.5299, %.7
  %i.et = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %.5299, i32 noundef %3) ; 5 uses
  %magicptr346 = ptrtoint ptr %i.et to i64
  switch i64 %magicptr346, label %bb.al [
    i64 1, label %.thread424
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %.loopexit362
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !70 ; 2 uses
  %i.ew = load ptr, ptr %i.al, align 8, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %.8 = phi i32 [ %i.ev, %bb.al ], [ %i.fa, %bb.am ] ; 3 uses
  %i.ex = sext i32 %.8 to i64
  %i.ey = getelementptr inbounds [56 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !27 ; 2 uses
  %i.fb = icmp ult i32 %.8, %i.fa
  br i1 %i.fb, label %bb.am, label %.loopexit360, !llvm.loop !83

bb.an:                                            ; preds = %.loopexit362
  %i.fc = load ptr, ptr %i.al, align 8, !tbaa !8
  %i.fd = sext i32 %.5299 to i64
  %i.fe = getelementptr inbounds [56 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 28
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !27
  br label %.loopexit360

.loopexit360:                                     ; preds = %bb.am, %bb.an
  %.6300 = phi i32 [ %i.fg, %bb.an ], [ %i.ev, %bb.am ] ; 2 uses
  %.9 = phi i32 [ %.5299, %bb.an ], [ %.8, %bb.am ]
  %i.fh = sub nsw i32 %.9, %.6300
  %i.fi = icmp eq i32 %i.es, %i.fh
  br i1 %i.fi, label %bb.ao, label %.preheader359

.preheader359:                                    ; preds = %.loopexit360
  %.not332379 = icmp eq ptr %i.ef, null
  br i1 %.not332379, label %bb.aq, label %.lr.ph381

.lr.ph381:                                        ; preds = %.preheader359
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted = load ptr, ptr %i.fj, align 8, !tbaa !78
  br label %bb.ap

bb.ao:                                            ; preds = %.loopexit360
  %i.fk = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.et, i32 noundef %i.e)
  br label %bb.ar

bb.ap:                                            ; preds = %.lr.ph381, %bb.ap
  %i.fl = phi ptr [ %.promoted, %.lr.ph381 ], [ %.1287380, %bb.ap ]
  %.1287380 = phi ptr [ %i.ef, %.lr.ph381 ], [ %i.fn, %bb.ap ] ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.1287380, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !79 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1287380, i64 4
  store i32 0, ptr %i.fo, align 4, !tbaa !37
  %i.fp = getelementptr inbounds nuw i8, ptr %.1287380, i64 8
  store ptr %i.fl, ptr %i.fp, align 8, !tbaa !80
  %.not332 = icmp eq ptr %i.fn, null
  br i1 %.not332, label %._crit_edge, label %bb.ap, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.ap
  store ptr %.1287380, ptr %i.fj, align 8, !tbaa !78
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge, %.preheader359
  %i.fq = load i32, ptr %i.a, align 4, !tbaa !64
  %i.fr = load i32, ptr %i.c, align 8, !tbaa !65
  %i.fs = sub i32 %i.fq, %i.fr
  %i.ft = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %.6300, i32 noundef %2) ; 2 uses
  %i.fu = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.ft, i32 noundef %i.fs)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.2288 = phi ptr [ %i.ef, %bb.ao ], [ %i.ft, %bb.aq ] ; 2 uses
  %.3278 = phi i32 [ %i.fk, %bb.ao ], [ %i.fu, %bb.aq ]
  %.not333 = icmp eq i32 %.3278, 0
  br i1 %.not333, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.w, %bb.ar, %bb.ah
  %.3289 = phi ptr [ %.2288, %bb.ar ], [ %i.br, %bb.w ], [ %i.da, %bb.ah ] ; 2 uses
  %.3282 = phi ptr [ %i.et, %bb.ar ], [ %.0279, %bb.w ], [ %.2281, %bb.ah ] ; 2 uses
  %.not340387 = icmp eq ptr %.3282, null
  br i1 %.not340387, label %.preheader351, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.p, %bb.as
  %.3282423 = phi ptr [ %.3282, %bb.as ], [ %i.au, %bb.p ]
  %.3289421 = phi ptr [ %.3289, %bb.as ], [ %.0286, %bb.p ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted391 = load ptr, ptr %i.fv, align 8, !tbaa !78
  br label %bb.at

..preheader351_crit_edge:                         ; preds = %bb.at
  store ptr %.4283388, ptr %i.fv, align 8, !tbaa !78
  br label %.preheader351

.preheader351:                                    ; preds = %..preheader351_crit_edge, %bb.as
  %.3289422 = phi ptr [ %.3289421, %..preheader351_crit_edge ], [ %.3289, %bb.as ] ; 2 uses
  %.not341392 = icmp eq ptr %.3289422, null
  br i1 %.not341392, label %.loopexit352, label %.lr.ph394

.lr.ph394:                                        ; preds = %.preheader351
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted395 = load ptr, ptr %i.fw, align 8, !tbaa !78
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph390, %bb.at
  %i.fx = phi ptr [ %.promoted391, %.lr.ph390 ], [ %.4283388, %bb.at ]
  %.4283388 = phi ptr [ %.3282423, %.lr.ph390 ], [ %i.fz, %bb.at ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.4283388, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !79 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.4283388, i64 4
  store i32 0, ptr %i.ga, align 4, !tbaa !37
  %i.gb = getelementptr inbounds nuw i8, ptr %.4283388, i64 8
  store ptr %i.fx, ptr %i.gb, align 8, !tbaa !80
  %.not340 = icmp eq ptr %i.fz, null
  br i1 %.not340, label %..preheader351_crit_edge, label %bb.at, !llvm.loop !85

bb.au:                                            ; preds = %.lr.ph394, %bb.au
  %i.gc = phi ptr [ %.promoted395, %.lr.ph394 ], [ %.4290393, %bb.au ]
  %.4290393 = phi ptr [ %.3289422, %.lr.ph394 ], [ %i.ge, %bb.au ] ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.4290393, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !79 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.4290393, i64 4
  store i32 0, ptr %i.gf, align 4, !tbaa !37
  %i.gg = getelementptr inbounds nuw i8, ptr %.4290393, i64 8
  store ptr %i.gc, ptr %i.gg, align 8, !tbaa !80
  %.not341 = icmp eq ptr %i.ge, null
  br i1 %.not341, label %..loopexit352_crit_edge, label %bb.au, !llvm.loop !86

bb.av:                                            ; preds = %.loopexit356, %bb.ar, %bb.ah, %bb.w, %bb.p
  %.5291 = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit356 ], [ %.0286, %bb.p ], [ %i.da, %bb.ah ], [ %i.br, %bb.w ], [ %.2288, %bb.ar ] ; 2 uses
  %.5284 = phi ptr [ %i.ck, %.loopexit356 ], [ %i.au, %bb.p ], [ %.2281, %bb.ah ], [ %.0279, %bb.w ], [ %i.et, %bb.ar ] ; 2 uses
  %i.gh = icmp ult ptr %.5284, inttoptr (i64 2 to ptr)
  br i1 %i.gh, label %.thread424, label %.preheader349

.preheader349:                                    ; preds = %bb.av
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted396 = load ptr, ptr %i.gi, align 8, !tbaa !78
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader349, %bb.aw
  %i.gj = phi ptr [ %.6285, %bb.aw ], [ %.promoted396, %.preheader349 ]
  %.6285 = phi ptr [ %i.gl, %bb.aw ], [ %.5284, %.preheader349 ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.6285, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !79 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.6285, i64 4
  store i32 0, ptr %i.gm, align 4, !tbaa !37
  %i.gn = getelementptr inbounds nuw i8, ptr %.6285, i64 8
  store ptr %i.gj, ptr %i.gn, align 8, !tbaa !80
  %.old1.not = icmp eq ptr %i.gl, null
  br i1 %.old1.not, label %.loopexit350, label %bb.aw

.loopexit350:                                     ; preds = %bb.aw
  store ptr %.6285, ptr %i.gi, align 8, !tbaa !78
  br label %.thread424

.thread424.thread:                                ; preds = %bb.ai, %bb.y, %bb.s, %bb.j
  br label %.loopexit352

.thread424:                                       ; preds = %.loopexit362, %.loopexit350, %bb.av
  %.5291427 = phi ptr [ %.5291, %bb.av ], [ %.5291, %.loopexit350 ], [ %i.ef, %.loopexit362 ] ; 2 uses
  %i.go = icmp ult ptr %.5291427, inttoptr (i64 2 to ptr)
  br i1 %i.go, label %.loopexit352, label %.preheader

.preheader:                                       ; preds = %.thread424
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted397 = load ptr, ptr %i.gp, align 8, !tbaa !78
  br label %bb.ax

bb.ax:                                            ; preds = %.preheader, %bb.ax
  %i.gq = phi ptr [ %.6292, %bb.ax ], [ %.promoted397, %.preheader ]
  %.6292 = phi ptr [ %i.gs, %bb.ax ], [ %.5291427, %.preheader ] ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.6292, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !79 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.6292, i64 4
  store i32 0, ptr %i.gt, align 4, !tbaa !37
  %i.gu = getelementptr inbounds nuw i8, ptr %.6292, i64 8
  store ptr %i.gq, ptr %i.gu, align 8, !tbaa !80
  %.old3.not = icmp eq ptr %i.gs, null
  br i1 %.old3.not, label %.loopexit, label %bb.ax

.loopexit:                                        ; preds = %bb.ax
  store ptr %.6292, ptr %i.gp, align 8, !tbaa !78
  br label %.loopexit352

..loopexit352_crit_edge:                          ; preds = %bb.au
  store ptr %.4290393, ptr %i.fw, align 8, !tbaa !78
  br label %.loopexit352

.loopexit352:                                     ; preds = %.thread424.thread, %.preheader351, %..loopexit352_crit_edge, %.loopexit, %.thread424, %bb.s, %bb.r, %bb.j, %bb.i
  %.0293 = phi i32 [ 1, %bb.r ], [ 0, %.loopexit ], [ 1, %bb.i ], [ 1, %bb.s ], [ 1, %bb.j ], [ 0, %.thread424 ], [ 1, %..loopexit352_crit_edge ], [ 1, %.preheader351 ], [ 0, %.thread424.thread ]
  ret i32 %.0293
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @cuddSymmSiftingConv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %i.e = sub i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47   ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #15 ; 5 uses
  store ptr %i.j, ptr @entry, align 8, !tbaa !48
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.l, align 8, !tbaa !49
  br label %bb.bi

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #15 ; 11 uses
  %i.n = icmp eq ptr %i.m, null                   ; 2 uses
  br i1 %i.n, label %bb.c, label %.preheader150

.preheader150:                                    ; preds = %bb.b
  %i.o = icmp sgt i32 %i.g, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader150
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.t = icmp eq i32 %i.g, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.u, align 8, !tbaa !49
  br label %ddSymmSiftingConvAux.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [56 x i8], ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !30
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [56 x i8], ptr %i.s, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !30
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.am, ptr %i.al, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !87

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod247 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !30
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [56 x i8], ptr %i.s, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  store i32 %i.as, ptr %i.at, align 4, !tbaa !30
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.av = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.av, ptr %i.au, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader150
  tail call void @qsort(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef 4, ptr noundef nonnull @ddSymmUniqueCompare) #14
  %.not159 = icmp sgt i32 %1, %2                  ; 3 uses
  br i1 %.not159, label %.preheader148, label %.lr.ph162

.lr.ph162:                                        ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 9 uses
  %i.ay = sext i32 %1 to i64                      ; 2 uses
  %i.az = add i32 %2, 1                           ; 2 uses
  %i.ba = sub i32 %i.az, %1
  %i.bb = sub i32 %2, %1
  %xtraiter248 = and i32 %i.ba, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph162, %.prol.preheader
  %indvars.iv188.prol = phi i64 [ %indvars.iv.next189.prol, %.prol.preheader ], [ %i.ay, %.lr.ph162 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph162 ]
  %i.bc = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv188.prol
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = trunc nsw i64 %indvars.iv188.prol to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !27
  %indvars.iv.next189.prol = add nsw i64 %indvars.iv188.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !88

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph162
  %indvars.iv188.unr = phi i64 [ %i.ay, %.lr.ph162 ], [ %indvars.iv.next189.prol, %.prol.preheader ]
  %i.bf = icmp ult i32 %i.bb, 7
  br i1 %i.bf, label %.preheader148, label %.lr.ph162.new

.preheader148:                                    ; preds = %.prol.loopexit, %.lr.ph162.new, %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 4 uses
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !47  ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 8, !tbaa !54 ; 2 uses
  %.163 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bi)
  %i.bj = icmp sgt i32 %.163, 0
  br i1 %i.bj, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %.preheader148
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre201 = load i32, ptr @ddTotalNumberSwapping, align 4, !tbaa !30
  br label %bb.e

.lr.ph162.new:                                    ; preds = %.prol.loopexit, %.lr.ph162.new
  %indvars.iv188.a = phi i64 [ %indvars.iv.next189.7, %.lr.ph162.new ], [ %indvars.iv188.unr, %.prol.loopexit ] ; 10 uses
  %i.bn = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv188.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bp = trunc nsw i64 %indvars.iv188.a to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !27
  %indvars.iv.next189.a = add nsw i64 %indvars.iv188.a, 1 ; 2 uses
  %i.bq = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = trunc nsw i64 %indvars.iv.next189.a to i32
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !27
  %indvars.iv.next189.1 = add nsw i64 %indvars.iv188.a, 2 ; 2 uses
  %i.bt = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.bv = trunc nsw i64 %indvars.iv.next189.1 to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !27
  %indvars.iv.next189.2 = add nsw i64 %indvars.iv188.a, 3 ; 2 uses
  %i.bw = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.by = trunc nsw i64 %indvars.iv.next189.2 to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !27
  %indvars.iv.next189.3 = add nsw i64 %indvars.iv188.a, 4 ; 2 uses
  %i.bz = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cb = trunc nsw i64 %indvars.iv.next189.3 to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !27
  %indvars.iv.next189.4 = add nsw i64 %indvars.iv188.a, 5 ; 2 uses
  %i.cc = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  %i.ce = trunc nsw i64 %indvars.iv.next189.4 to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !27
  %indvars.iv.next189.5 = add nsw i64 %indvars.iv188.a, 6 ; 2 uses
  %i.cf = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ch = trunc nsw i64 %indvars.iv.next189.5 to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !27
  %indvars.iv.next189.6 = add nsw i64 %indvars.iv188.a, 7 ; 2 uses
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.ax, i64 %indvars.iv.next189.6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ck = trunc nsw i64 %indvars.iv.next189.6 to i32
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !27
  %indvars.iv.next189.7 = add nsw i64 %indvars.iv188.a, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next189.7 to i32
  %exitcond191.not.7 = icmp eq i32 %i.az, %lftr.wideiv.7
  br i1 %exitcond191.not.7, label %.preheader148, label %.lr.ph162.new, !llvm.loop !89

bb.e:                                             ; preds = %.lr.ph165, %bb.i
  %i.cl = phi i32 [ %i.bi, %.lr.ph165 ], [ %i.de, %bb.i ] ; 2 uses
  %i.cm = phi i32 [ %i.bh, %.lr.ph165 ], [ %i.df, %bb.i ] ; 2 uses
  %i.cn = phi i32 [ %.pre201, %.lr.ph165 ], [ %i.dg, %bb.i ] ; 3 uses
  %indvars.iv192 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next193, %bb.i ] ; 2 uses
  %i.co = load i32, ptr %i.bk, align 4, !tbaa !56
  %.not123 = icmp slt i32 %i.cn, %i.co
  br i1 %.not123, label %bb.f, label %._crit_edge166

bb.f:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv192
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !30
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !30 ; 5 uses
  %i.cv = icmp slt i32 %i.cu, %1
  %i.cw = icmp sgt i32 %i.cu, %2
  %or.cond = or i1 %i.cv, %i.cw
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = load ptr, ptr %i.bm, align 8, !tbaa !8
  %i.cy = sext i32 %i.cu to i64
  %i.cz = getelementptr inbounds [56 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !27
  %i.dc = icmp eq i32 %i.db, %i.cu
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dd = tail call fastcc i32 @ddSymmSiftingAux(ptr noundef nonnull %0, i32 noundef %i.cu, i32 noundef %1, i32 noundef %2)
  %.not124 = icmp eq i32 %i.dd, 0
  br i1 %.not124, label %ddSymmSiftingConvAux.exit, label %._crit_edge202

._crit_edge202:                                   ; preds = %bb.h
  %.pre = load i32, ptr @ddTotalNumberSwapping, align 4, !tbaa !30
  %.pre203 = load i32, ptr %i.f, align 8, !tbaa !47
  %.pre204 = load i32, ptr %i.bg, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge202, %bb.g, %bb.f
  %i.de = phi i32 [ %i.cl, %bb.g ], [ %.pre204, %._crit_edge202 ], [ %i.cl, %bb.f ] ; 2 uses
  %i.df = phi i32 [ %i.cm, %bb.g ], [ %.pre203, %._crit_edge202 ], [ %i.cm, %bb.f ] ; 2 uses
  %i.dg = phi i32 [ %i.cn, %bb.g ], [ %.pre, %._crit_edge202 ], [ %i.cn, %bb.f ]
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.df, i32 %i.de)
  %i.dh = sext i32 %. to i64
  %i.di = icmp slt i64 %indvars.iv.next193, %i.dh
  br i1 %i.di, label %bb.e, label %._crit_edge166, !llvm.loop !90

._crit_edge166:                                   ; preds = %bb.i, %bb.e, %.preheader148
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !64
  %i.dk = load i32, ptr %i.c, align 8, !tbaa !65
  %i.dl = sub i32 %i.dj, %i.dk                    ; 2 uses
  %i.dm = icmp ugt i32 %i.e, %i.dl
  br i1 %i.dm, label %.preheader147.lr.ph, label %._crit_edge178

.preheader147.lr.ph:                              ; preds = %._crit_edge166
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 14 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 12 uses
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.lr.ph, %._crit_edge176.a
  %i.ds = phi i32 [ %i.dl, %.preheader147.lr.ph ], [ %i.li, %._crit_edge176.a ]
  br i1 %.not159, label %._crit_edge171, label %.preheader146.lr.ph

.preheader146.lr.ph:                              ; preds = %.preheader147
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !29
  %i.dv = load ptr, ptr @entry, align 8, !tbaa !48
  br label %.preheader146

.preheader146:                                    ; preds = %.preheader146.lr.ph, %bb.k
  %indvars.iv195 = phi i64 [ 0, %.preheader146.lr.ph ], [ %indvars.iv.next196, %bb.k ] ; 2 uses
  %.0105169 = phi i32 [ %1, %.preheader146.lr.ph ], [ %i.ei, %bb.k ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader146, %bb.j
  %.1 = phi i32 [ %i.dz, %bb.j ], [ %.0105169, %.preheader146 ] ; 4 uses
  %i.dw = sext i32 %.1 to i64                     ; 2 uses
  %i.dx = getelementptr inbounds [56 x i8], ptr %i.dt, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !27 ; 2 uses
  %i.ea = icmp ult i32 %.1, %i.dz
  br i1 %i.ea, label %bb.j, label %bb.k, !llvm.loop !91

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dw
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !30 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !34
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.ef
  store i32 %i.ee, ptr %i.eg, align 4, !tbaa !30
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv195
  store i32 %i.ec, ptr %i.eh, align 4, !tbaa !30
  %i.ei = add nsw i32 %.1, 1
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %.not126.not = icmp slt i32 %.1, %2
  br i1 %.not126.not, label %.preheader146, label %._crit_edge171.loopexit, !llvm.loop !92

._crit_edge171.loopexit:                          ; preds = %bb.k
  %i.ej = trunc nuw i64 %indvars.iv.next196 to i32
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %.preheader147
  %.0104.lcssa = phi i32 [ 0, %.preheader147 ], [ %i.ej, %._crit_edge171.loopexit ] ; 3 uses
  %i.ek = zext nneg i32 %.0104.lcssa to i64
  tail call void @qsort(ptr noundef nonnull %i.m, i64 noundef %i.ek, i64 noundef 4, ptr noundef nonnull @ddSymmUniqueCompare) #14
  %i.el = load i32, ptr %i.bg, align 8, !tbaa !54
  %.0104.172 = tail call i32 @llvm.smin.i32(i32 %.0104.lcssa, i32 %i.el)
  %i.em = icmp sgt i32 %.0104.172, 0
  br i1 %i.em, label %.lr.ph175, label %._crit_edge176.a

.lr.ph175:                                        ; preds = %._crit_edge171, %ddSymmSiftingConvAux.exit.thread
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %ddSymmSiftingConvAux.exit.thread ], [ 0, %._crit_edge171 ] ; 2 uses
  %i.en = load i32, ptr @ddTotalNumberSwapping, align 4, !tbaa !30
  %i.eo = load i32, ptr %i.dp, align 4, !tbaa !56
  %.not127 = icmp slt i32 %i.en, %i.eo
  br i1 %.not127, label %bb.l, label %._crit_edge176.a

bb.l:                                             ; preds = %.lr.ph175
  %i.ep = load ptr, ptr %i.dq, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv198
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !30
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !30 ; 9 uses
  %i.ev = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.ew = sext i32 %i.eu to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [56 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !27 ; 2 uses
  %.not128 = icmp ult i32 %i.eu, %i.ez
  br i1 %.not128, label %ddSymmSiftingConvAux.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !64
  %i.fb = load i32, ptr %i.c, align 8, !tbaa !65
  %i.fc = sub i32 %i.fa, %i.fb                    ; 4 uses
  %i.fd = icmp eq i32 %i.eu, %1
  br i1 %i.fd, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.fe = sub nsw i32 %1, %i.ez
  %i.ff = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 5 uses
  %magicptr.i = ptrtoint ptr %i.ff to i64
  switch i64 %magicptr.i, label %bb.o [
    i64 1, label %ddSymmSiftingConvAux.exit
    i64 0, label %ddSymmSiftingConvAux.exit.thread
  ]

bb.o:                                             ; preds = %bb.n
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !70 ; 3 uses
  %i.fi = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i32 [ %i.fh, %bb.o ], [ %i.fm, %bb.p ] ; 3 uses
  %i.fj = sext i32 %.0.i to i64
  %i.fk = getelementptr inbounds [56 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !27 ; 2 uses
  %i.fn = icmp ult i32 %.0.i, %i.fm
  br i1 %i.fn, label %bb.p, label %bb.q, !llvm.loop !93

bb.q:                                             ; preds = %bb.p
  %i.fo = sub nsw i32 %.0.i, %i.fh
  %i.fp = icmp eq i32 %i.fe, %i.fo
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fq = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.ff, i32 noundef %i.fc)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fr = load i32, ptr %i.a, align 4, !tbaa !64
  %i.fs = load i32, ptr %i.c, align 8, !tbaa !65
  %i.ft = sub i32 %i.fr, %i.fs
  %i.fu = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %i.fh, i32 noundef %1) ; 2 uses
  %i.fv = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.fu, i32 noundef %i.ft)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0245.i = phi ptr [ null, %bb.r ], [ %i.fu, %bb.s ] ; 2 uses
  %.0234.i = phi i32 [ %i.fq, %bb.r ], [ %i.fv, %bb.s ]
  %.not294.i = icmp eq i32 %.0234.i, 0
  br i1 %.not294.i, label %bb.ba, label %.lr.ph331.i

bb.u:                                             ; preds = %bb.m
  %i.fw = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %i.eu) #14
  %i.fx = icmp sgt i32 %i.fw, %2
  br i1 %i.fx, label %.preheader308.i, label %bb.ac

.preheader308.i:                                  ; preds = %bb.u
  %i.fy = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.preheader308.i
  %.0253.i = phi i32 [ %i.gc, %bb.v ], [ %i.eu, %.preheader308.i ] ; 3 uses
  %i.fz = sext i32 %.0253.i to i64
  %i.ga = getelementptr inbounds [56 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !27 ; 5 uses
  %i.gd = icmp ult i32 %.0253.i, %i.gc
  br i1 %i.gd, label %bb.v, label %bb.w, !llvm.loop !94

bb.w:                                             ; preds = %bb.v
  %i.ge = icmp eq i32 %i.gc, %1
  br i1 %i.ge, label %ddSymmSiftingConvAux.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gf = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %i.gc, i32 noundef %1) ; 5 uses
  %magicptr297.i = ptrtoint ptr %i.gf to i64
  switch i64 %magicptr297.i, label %bb.y [
    i64 1, label %ddSymmSiftingConvAux.exit
    i64 0, label %ddSymmSiftingConvAux.exit.thread
  ]

bb.y:                                             ; preds = %bb.x
  %i.gg = sub nsw i32 %.0253.i, %i.gc
  %i.gh = load i32, ptr %i.gf, align 8, !tbaa !74 ; 3 uses
  %i.gi = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.gj = sext i32 %i.gh to i64
  %i.gk = getelementptr inbounds [56 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !27
  %i.gn = sub nsw i32 %i.gh, %i.gm
  %i.go = icmp eq i32 %i.gg, %i.gn
  br i1 %i.go, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gp = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.gf, i32 noundef %i.fc)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !64
  %i.gr = load i32, ptr %i.c, align 8, !tbaa !65
  %i.gs = sub i32 %i.gq, %i.gr
  %i.gt = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %i.gh, i32 noundef %2) ; 2 uses
  %i.gu = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.gt, i32 noundef %i.gs)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0238.i = phi ptr [ null, %bb.z ], [ %i.gt, %bb.aa ] ; 2 uses
  %.1235.i = phi i32 [ %i.gp, %bb.z ], [ %i.gu, %bb.aa ]
  %.not293.i = icmp eq i32 %.1235.i, 0
  br i1 %.not293.i, label %bb.ba, label %bb.ax

bb.ac:                                            ; preds = %bb.u
  %i.gv = sub nsw i32 %i.eu, %1
  %i.gw = sub nsw i32 %2, %i.eu
  %i.gx = icmp sgt i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.gy = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %i.eu, i32 noundef %2) ; 6 uses
  %magicptr298.i = ptrtoint ptr %i.gy to i64
  switch i64 %magicptr298.i, label %bb.ae [
    i64 1, label %ddSymmSiftingConvAux.exit
    i64 0, label %.preheader313.i
  ]

.preheader313.i:                                  ; preds = %bb.ad
  %i.gz = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !70 ; 2 uses
  %i.hc = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.1.i = phi i32 [ %i.hb, %bb.ae ], [ %i.hg, %bb.af ] ; 3 uses
  %i.hd = sext i32 %.1.i to i64
  %i.he = getelementptr inbounds [56 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 28
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !27 ; 2 uses
  %i.hh = icmp ult i32 %.1.i, %i.hg
  br i1 %i.hh, label %bb.af, label %.loopexit312.i, !llvm.loop !95

bb.ag:                                            ; preds = %bb.ag, %.preheader313.i
  %.1254.i = phi i32 [ %i.hl, %bb.ag ], [ %i.eu, %.preheader313.i ] ; 3 uses
  %i.hi = sext i32 %.1254.i to i64
  %i.hj = getelementptr inbounds [56 x i8], ptr %i.gz, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !27 ; 3 uses
  %i.hm = icmp ult i32 %.1254.i, %i.hl
  br i1 %i.hm, label %bb.ag, label %.loopexit312.i, !llvm.loop !96

.loopexit312.i:                                   ; preds = %bb.ag, %bb.af
  %.2255.i = phi i32 [ %i.hb, %bb.af ], [ %i.hl, %bb.ag ] ; 4 uses
  %.2.i = phi i32 [ %.1.i, %bb.af ], [ %.1254.i, %bb.ag ]
  %i.hn = sub nsw i32 %.2.i, %.2255.i
  %i.ho = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %.2255.i, i32 noundef %1) ; 5 uses
  %magicptr299.i = ptrtoint ptr %i.ho to i64
  switch i64 %magicptr299.i, label %bb.ah [
    i64 1, label %bb.ba
    i64 0, label %.preheader310.i
  ]

.preheader310.i:                                  ; preds = %.loopexit312.i
  %i.hp = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit312.i
  %i.hq = load i32, ptr %i.ho, align 8, !tbaa !74 ; 2 uses
  %i.hr = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.hs = sext i32 %i.hq to i64
  %i.ht = getelementptr inbounds [56 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !27
  br label %.loopexit311.i

bb.ai:                                            ; preds = %bb.ai, %.preheader310.i
  %.3256.i = phi i32 [ %i.hz, %bb.ai ], [ %.2255.i, %.preheader310.i ] ; 3 uses
  %i.hw = sext i32 %.3256.i to i64
  %i.hx = getelementptr inbounds [56 x i8], ptr %i.hp, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !27 ; 2 uses
  %i.ia = icmp ult i32 %.3256.i, %i.hz
  br i1 %i.ia, label %bb.ai, label %.loopexit311.i, !llvm.loop !97

.loopexit311.i:                                   ; preds = %bb.ai, %bb.ah
  %.4257.i = phi i32 [ %i.hq, %bb.ah ], [ %.3256.i, %bb.ai ] ; 2 uses
  %.3.i = phi i32 [ %i.hv, %bb.ah ], [ %.2255.i, %bb.ai ]
  %i.ib = sub nsw i32 %.4257.i, %.3.i
  %i.ic = icmp eq i32 %i.hn, %i.ib
  br i1 %i.ic, label %bb.aj, label %.preheader309.i

.preheader309.i:                                  ; preds = %.loopexit311.i
  %.not291323.i = icmp eq ptr %i.gy, null
  br i1 %.not291323.i, label %bb.al, label %.lr.ph325.i

.lr.ph325.i:                                      ; preds = %.preheader309.i
  %.promoted327.i = load ptr, ptr %i.dr, align 8, !tbaa !78
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit311.i
  %i.id = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.ho, i32 noundef %i.fc)
  br label %bb.am

bb.ak:                                            ; preds = %bb.ak, %.lr.ph325.i
  %i.ie = phi ptr [ %.promoted327.i, %.lr.ph325.i ], [ %.1239324.i, %bb.ak ]
  %.1239324.i = phi ptr [ %i.gy, %.lr.ph325.i ], [ %i.ig, %bb.ak ] ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.1239324.i, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !79 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.1239324.i, i64 4
  store i32 0, ptr %i.ih, align 4, !tbaa !37
  %i.ii = getelementptr inbounds nuw i8, ptr %.1239324.i, i64 8
  store ptr %i.ie, ptr %i.ii, align 8, !tbaa !80
  %.not291.i = icmp eq ptr %i.ig, null
  br i1 %.not291.i, label %._crit_edge326.i, label %bb.ak, !llvm.loop !98

._crit_edge326.i:                                 ; preds = %bb.ak
  store ptr %.1239324.i, ptr %i.dr, align 8, !tbaa !78
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge326.i, %.preheader309.i
  %i.ij = load i32, ptr %i.a, align 4, !tbaa !64
  %i.ik = load i32, ptr %i.c, align 8, !tbaa !65
  %i.il = sub i32 %i.ij, %i.ik
  %i.im = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %.4257.i, i32 noundef %2) ; 2 uses
  %i.in = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.im, i32 noundef %i.il)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.2240.i = phi ptr [ %i.gy, %bb.aj ], [ %i.im, %bb.al ] ; 2 uses
  %.2236.i = phi i32 [ %i.id, %bb.aj ], [ %i.in, %bb.al ]
  %.not292.i = icmp eq i32 %.2236.i, 0
  br i1 %.not292.i, label %bb.ba, label %bb.ax

bb.an:                                            ; preds = %bb.ac
  %i.io = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.ip = getelementptr inbounds [56 x i8], ptr %i.io, i64 %i.ew
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 28
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !27 ; 3 uses
  %i.is = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %i.ir, i32 noundef %1) ; 6 uses
  %magicptr300.i = ptrtoint ptr %i.is to i64
  switch i64 %magicptr300.i, label %bb.ao [
    i64 1, label %ddSymmSiftingConvAux.exit
    i64 0, label %.preheader317.i
  ]

.preheader317.i:                                  ; preds = %bb.an
  %i.it = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iu = load i32, ptr %i.is, align 8, !tbaa !74 ; 2 uses
  %i.iv = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.iw = sext i32 %i.iu to i64
  %i.ix = getelementptr inbounds [56 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 28
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !27
  br label %.loopexit318.i

bb.ap:                                            ; preds = %bb.ap, %.preheader317.i
  %.5258.i = phi i32 [ %i.jd, %bb.ap ], [ %i.ir, %.preheader317.i ] ; 3 uses
  %i.ja = sext i32 %.5258.i to i64
  %i.jb = getelementptr inbounds [56 x i8], ptr %i.it, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 28
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !27 ; 2 uses
  %i.je = icmp ult i32 %.5258.i, %i.jd
  br i1 %i.je, label %bb.ap, label %.loopexit318.i, !llvm.loop !99

.loopexit318.i:                                   ; preds = %bb.ap, %bb.ao
  %.6259.i = phi i32 [ %i.iu, %bb.ao ], [ %.5258.i, %bb.ap ] ; 4 uses
  %.4.i = phi i32 [ %i.iz, %bb.ao ], [ %i.ir, %bb.ap ]
  %i.jf = sub nsw i32 %.6259.i, %.4.i
  %i.jg = tail call fastcc ptr @ddSymmSiftingDown(ptr noundef nonnull %0, i32 noundef %.6259.i, i32 noundef %2) ; 5 uses
  %magicptr301.i = ptrtoint ptr %i.jg to i64
  switch i64 %magicptr301.i, label %bb.aq [
    i64 1, label %.thread356.i
    i64 0, label %bb.as
  ]

bb.aq:                                            ; preds = %.loopexit318.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !70 ; 2 uses
  %i.jj = load ptr, ptr %i.dn, align 8, !tbaa !8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.5.i = phi i32 [ %i.ji, %bb.aq ], [ %i.jn, %bb.ar ] ; 3 uses
  %i.jk = sext i32 %.5.i to i64
  %i.jl = getelementptr inbounds [56 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 28
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !27 ; 2 uses
  %i.jo = icmp ult i32 %.5.i, %i.jn
  br i1 %i.jo, label %bb.ar, label %.loopexit316.i, !llvm.loop !100

bb.as:                                            ; preds = %.loopexit318.i
  %i.jp = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.jq = sext i32 %.6259.i to i64
  %i.jr = getelementptr inbounds [56 x i8], ptr %i.jp, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 28
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !27
  br label %.loopexit316.i

.loopexit316.i:                                   ; preds = %bb.ar, %bb.as
  %.7.i = phi i32 [ %i.jt, %bb.as ], [ %i.ji, %bb.ar ] ; 2 uses
  %.6.i = phi i32 [ %.6259.i, %bb.as ], [ %.5.i, %bb.ar ]
  %i.ju = sub nsw i32 %.6.i, %.7.i
  %i.jv = icmp eq i32 %i.jf, %i.ju
  br i1 %i.jv, label %bb.at, label %.preheader315.i

.preheader315.i:                                  ; preds = %.loopexit316.i
  %.not287321.i = icmp eq ptr %i.is, null
  br i1 %.not287321.i, label %bb.av, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader315.i
  %.promoted.i = load ptr, ptr %i.dr, align 8, !tbaa !78
  br label %bb.au

bb.at:                                            ; preds = %.loopexit316.i
  %i.jw = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.jg, i32 noundef %i.fc)
  br label %bb.aw

bb.au:                                            ; preds = %bb.au, %.lr.ph.i
  %i.jx = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.1246322.i, %bb.au ]
  %.1246322.i = phi ptr [ %i.is, %.lr.ph.i ], [ %i.jz, %bb.au ] ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1246322.i, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !79 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.1246322.i, i64 4
  store i32 0, ptr %i.ka, align 4, !tbaa !37
  %i.kb = getelementptr inbounds nuw i8, ptr %.1246322.i, i64 8
  store ptr %i.jx, ptr %i.kb, align 8, !tbaa !80
  %.not287.i = icmp eq ptr %i.jz, null
  br i1 %.not287.i, label %._crit_edge.i, label %bb.au, !llvm.loop !101

._crit_edge.i:                                    ; preds = %bb.au
  store ptr %.1246322.i, ptr %i.dr, align 8, !tbaa !78
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i, %.preheader315.i
  %i.kc = load i32, ptr %i.a, align 4, !tbaa !64
  %i.kd = load i32, ptr %i.c, align 8, !tbaa !65
  %i.ke = sub i32 %i.kc, %i.kd
  %i.kf = tail call fastcc ptr @ddSymmSiftingUp(ptr noundef nonnull %0, i32 noundef %.7.i, i32 noundef %1) ; 2 uses
  %i.kg = tail call fastcc i32 @ddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.kf, i32 noundef %i.ke)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.2247.i = phi ptr [ %i.is, %bb.at ], [ %i.kf, %bb.av ] ; 2 uses
  %.3237.i = phi i32 [ %i.jw, %bb.at ], [ %i.kg, %bb.av ]
  %.not288.i = icmp eq i32 %.3237.i, 0
  br i1 %.not288.i, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.am, %bb.ab
  %.3248.i = phi ptr [ %.2247.i, %bb.aw ], [ %i.gf, %bb.ab ], [ %i.ho, %bb.am ] ; 2 uses
  %.3241.i = phi ptr [ %i.jg, %bb.aw ], [ %.0238.i, %bb.ab ], [ %.2240.i, %bb.am ] ; 2 uses
  %.not295328.i = icmp eq ptr %.3241.i, null
  br i1 %.not295328.i, label %.preheader306.i, label %.lr.ph331.i

.lr.ph331.i:                                      ; preds = %bb.ax, %bb.t
  %.3241355.i = phi ptr [ %.3241.i, %bb.ax ], [ %i.ff, %bb.t ]
  %.3248353.i = phi ptr [ %.3248.i, %bb.ax ], [ %.0245.i, %bb.t ]
  %.promoted332.i = load ptr, ptr %i.dr, align 8, !tbaa !78
  br label %bb.ay

..preheader306_crit_edge.i:                       ; preds = %bb.ay
  store ptr %.4242329.i, ptr %i.dr, align 8, !tbaa !78
  br label %.preheader306.i

.preheader306.i:                                  ; preds = %..preheader306_crit_edge.i, %bb.ax
  %.3248354.i = phi ptr [ %.3248353.i, %..preheader306_crit_edge.i ], [ %.3248.i, %bb.ax ] ; 2 uses
  %.not296333.i = icmp eq ptr %.3248354.i, null
  br i1 %.not296333.i, label %ddSymmSiftingConvAux.exit.thread, label %.lr.ph335.i

.lr.ph335.i:                                      ; preds = %.preheader306.i
  %.promoted336.i = load ptr, ptr %i.dr, align 8, !tbaa !78
  br label %bb.az

bb.ay:                                            ; preds = %bb.ay, %.lr.ph331.i
  %i.kh = phi ptr [ %.promoted332.i, %.lr.ph331.i ], [ %.4242329.i, %bb.ay ]
  %.4242329.i = phi ptr [ %.3241355.i, %.lr.ph331.i ], [ %i.kj, %bb.ay ] ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.4242329.i, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !79 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.4242329.i, i64 4
  store i32 0, ptr %i.kk, align 4, !tbaa !37
  %i.kl = getelementptr inbounds nuw i8, ptr %.4242329.i, i64 8
  store ptr %i.kh, ptr %i.kl, align 8, !tbaa !80
  %.not295.i = icmp eq ptr %i.kj, null
  br i1 %.not295.i, label %..preheader306_crit_edge.i, label %bb.ay, !llvm.loop !102

bb.az:                                            ; preds = %bb.az, %.lr.ph335.i
  %i.km = phi ptr [ %.promoted336.i, %.lr.ph335.i ], [ %.4249334.i, %bb.az ]
  %.4249334.i = phi ptr [ %.3248354.i, %.lr.ph335.i ], [ %i.ko, %bb.az ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.4249334.i, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !79 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.4249334.i, i64 4
  store i32 0, ptr %i.kp, align 4, !tbaa !37
  %i.kq = getelementptr inbounds nuw i8, ptr %.4249334.i, i64 8
  store ptr %i.km, ptr %i.kq, align 8, !tbaa !80
  %.not296.i = icmp eq ptr %i.ko, null
  br i1 %.not296.i, label %..loopexit307_crit_edge.i, label %bb.az, !llvm.loop !103

bb.ba:                                            ; preds = %bb.aw, %bb.am, %.loopexit312.i, %bb.ab, %bb.t
  %.5250.i = phi ptr [ inttoptr (i64 1 to ptr), %.loopexit312.i ], [ %.0245.i, %bb.t ], [ %i.ho, %bb.am ], [ %i.gf, %bb.ab ], [ %.2247.i, %bb.aw ] ; 2 uses
  %.5243.i = phi ptr [ %i.gy, %.loopexit312.i ], [ %i.ff, %bb.t ], [ %.2240.i, %bb.am ], [ %.0238.i, %bb.ab ], [ %i.jg, %bb.aw ] ; 2 uses
  %i.kr = icmp ult ptr %.5243.i, inttoptr (i64 2 to ptr)
  br i1 %i.kr, label %.thread356.i, label %.preheader304.i

.preheader304.i:                                  ; preds = %bb.ba
  %.promoted337.i = load ptr, ptr %i.dr, align 8, !tbaa !78
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader304.i
  %i.ks = phi ptr [ %.6244.i, %bb.bb ], [ %.promoted337.i, %.preheader304.i ]
  %.6244.i = phi ptr [ %i.ku, %bb.bb ], [ %.5243.i, %.preheader304.i ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.6244.i, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !79 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.6244.i, i64 4
  store i32 0, ptr %i.kv, align 4, !tbaa !37
  %i.kw = getelementptr inbounds nuw i8, ptr %.6244.i, i64 8
  store ptr %i.ks, ptr %i.kw, align 8, !tbaa !80
  %.old1.not.i = icmp eq ptr %i.ku, null
  br i1 %.old1.not.i, label %.loopexit305.i, label %bb.bb

.loopexit305.i:                                   ; preds = %bb.bb
  store ptr %.6244.i, ptr %i.dr, align 8, !tbaa !78
  br label %.thread356.i

.thread356.i:                                     ; preds = %.loopexit318.i, %.loopexit305.i, %bb.ba
  %.5250359.i = phi ptr [ %.5250.i, %bb.ba ], [ %.5250.i, %.loopexit305.i ], [ %i.is, %.loopexit318.i ] ; 2 uses
  %i.kx = icmp ult ptr %.5250359.i, inttoptr (i64 2 to ptr)
  br i1 %i.kx, label %ddSymmSiftingConvAux.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread356.i
  %.promoted338.i = load ptr, ptr %i.dr, align 8, !tbaa !78
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.preheader.i
  %i.ky = phi ptr [ %.6251.i, %bb.bc ], [ %.promoted338.i, %.preheader.i ]
  %.6251.i = phi ptr [ %i.la, %bb.bc ], [ %.5250359.i, %.preheader.i ] ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.6251.i, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !79 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.6251.i, i64 4
  store i32 0, ptr %i.lb, align 4, !tbaa !37
  %i.lc = getelementptr inbounds nuw i8, ptr %.6251.i, i64 8
  store ptr %i.ky, ptr %i.lc, align 8, !tbaa !80
  %.old3.not.i = icmp eq ptr %i.la, null
  br i1 %.old3.not.i, label %.loopexit.i, label %bb.bc

.loopexit.i:                                      ; preds = %bb.bc
  store ptr %.6251.i, ptr %i.dr, align 8, !tbaa !78
  br label %ddSymmSiftingConvAux.exit

..loopexit307_crit_edge.i:                        ; preds = %bb.az
  store ptr %.4249334.i, ptr %i.dr, align 8, !tbaa !78
  br label %ddSymmSiftingConvAux.exit.thread

ddSymmSiftingConvAux.exit.thread:                 ; preds = %.preheader306.i, %..loopexit307_crit_edge.i, %bb.n, %bb.x, %bb.w, %bb.l
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.ld = load i32, ptr %i.bg, align 8, !tbaa !54
  %.0104. = tail call i32 @llvm.smin.i32(i32 %.0104.lcssa, i32 %i.ld)
  %i.le = sext i32 %.0104. to i64
  %i.lf = icmp slt i64 %indvars.iv.next199, %i.le
  br i1 %i.lf, label %.lr.ph175, label %._crit_edge176.a, !llvm.loop !104

._crit_edge176.a:                                 ; preds = %ddSymmSiftingConvAux.exit.thread, %.lr.ph175, %._crit_edge171
  %i.lg = load i32, ptr %i.a, align 4, !tbaa !64
  %i.lh = load i32, ptr %i.c, align 8, !tbaa !65
  %i.li = sub i32 %i.lg, %i.lh                    ; 2 uses
  %i.lj = icmp ugt i32 %i.ds, %i.li
  br i1 %i.lj, label %.preheader147, label %._crit_edge178, !llvm.loop !105

._crit_edge178:                                   ; preds = %._crit_edge176.a, %._crit_edge166
  br i1 %.not159, label %ddSymmSummary.exit, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %._crit_edge178
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !8  ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i133, %.lr.ph.i132
  %.01928.i = phi i32 [ 0, %.lr.ph.i132 ], [ %.2.i134, %.loopexit.i133 ] ; 2 uses
  %.02127.i = phi i32 [ %1, %.lr.ph.i132 ], [ %i.lv, %.loopexit.i133 ] ; 5 uses
  %i.lm = sext i32 %.02127.i to i64
  %i.ln = getelementptr inbounds [56 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 28
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !27
  %.not24.i = icmp eq i32 %i.lp, %.02127.i
  br i1 %.not24.i, label %.loopexit.i133, label %.preheader

.preheader:                                       ; preds = %bb.bd, %.preheader
  %.023.i = phi i32 [ %i.lu, %.preheader ], [ %.02127.i, %bb.bd ] ; 2 uses
  %.120.i = phi i32 [ %i.lq, %.preheader ], [ %.01928.i, %bb.bd ]
  %i.lq = add nsw i32 %.120.i, 1                  ; 2 uses
  %i.lr = sext i32 %.023.i to i64
  %i.ls = getelementptr inbounds [56 x i8], ptr %i.ll, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 28
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq i32 %i.lu, %.02127.i
  br i1 %.not25.i, label %.loopexit.i133, label %.preheader, !llvm.loop !62

.loopexit.i133:                                   ; preds = %.preheader, %bb.bd
  %.122.i = phi i32 [ %.02127.i, %bb.bd ], [ %.023.i, %.preheader ] ; 2 uses
  %.2.i134 = phi i32 [ %.01928.i, %bb.bd ], [ %i.lq, %.preheader ] ; 2 uses
  %i.lv = add nsw i32 %.122.i, 1
  %.not.not.i = icmp slt i32 %.122.i, %2
  br i1 %.not.not.i, label %bb.bd, label %ddSymmSummary.exit.loopexit, !llvm.loop !63

ddSymmSummary.exit.loopexit:                      ; preds = %.loopexit.i133
  %i.lw = add nsw i32 %.2.i134, 1
  br label %ddSymmSummary.exit

ddSymmSummary.exit:                               ; preds = %ddSymmSummary.exit.loopexit, %._crit_edge178
  %.019.lcssa.i = phi i32 [ 1, %._crit_edge178 ], [ %i.lw, %ddSymmSummary.exit.loopexit ] ; 2 uses
  tail call void @free(ptr noundef %i.m) #14
  %i.lx = load ptr, ptr @entry, align 8, !tbaa !48 ; 2 uses
  %.not125 = icmp eq ptr %i.lx, null
  br i1 %.not125, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %ddSymmSummary.exit
  tail call void @free(ptr noundef nonnull %i.lx) #14
  store ptr null, ptr @entry, align 8, !tbaa !48
  br label %bb.bi

ddSymmSiftingConvAux.exit:                        ; preds = %bb.h, %bb.n, %bb.x, %bb.ad, %bb.an, %.loopexit.i, %.thread356.i, %bb.c
  %.pr = load ptr, ptr @entry, align 8, !tbaa !48 ; 2 uses
  %.not130 = icmp eq ptr %.pr, null
  br i1 %.not130, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %ddSymmSiftingConvAux.exit
  tail call void @free(ptr noundef nonnull %.pr) #14
  store ptr null, ptr @entry, align 8, !tbaa !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %ddSymmSiftingConvAux.exit
  br i1 %i.n, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @free(ptr noundef nonnull %i.m) #14
  br label %bb.bi

bb.bi:                                            ; preds = %bb.be, %ddSymmSummary.exit, %.thread, %bb.bg, %bb.bh
  %.0106 = phi i32 [ 0, %.thread ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ %.019.lcssa.i, %ddSymmSummary.exit ], [ %.019.lcssa.i, %bb.be ]
  ret i32 %.0106
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ddSymmSiftingDown(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65
  %i.p = sub i32 %i.m, %i.o                       ; 2 uses
  %i.q = icmp sgt i32 %2, %i.k
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.s = sext i32 %2 to i64
  %i.t = sext i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0141186 = phi i32 [ 0, %.lr.ph ], [ %.1142, %bb.e ] ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !30   ; 3 uses
  %i.x = icmp eq i32 %i.w, %i.f
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.w) #14
  %.not173 = icmp eq i32 %i.y, 0
  br i1 %.not173, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.aa = sext i32 %i.w to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.af = icmp eq i32 %i.ae, 1
  %.neg174 = sext i1 %i.af to i32
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.ah = getelementptr inbounds [56 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !34
  %i.ak = add i32 %.0141186, %.neg174
  %i.al = add i32 %i.ak, %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1142 = phi i32 [ %i.al, %bb.d ], [ %.0141186, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.am = icmp sgt i64 %indvars.iv.next, %i.t
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0141.lcssa = phi i32 [ 0, %bb.a ], [ %.1142, %bb.e ] ; 2 uses
  %i.an = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %1) #14 ; 2 uses
  %.not196 = icmp sle i32 %i.an, %2
  %i.ao = icmp sgt i32 %.0141.lcssa, 0
  %or.cond197 = select i1 %.not196, i1 %i.ao, i1 false
  br i1 %or.cond197, label %.lr.ph204, label %.loopexit183

.lr.ph204:                                        ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph204, %.loopexit182
  %.0140202 = phi i32 [ %1, %.lr.ph204 ], [ %.0144, %.loopexit182 ] ; 6 uses
  %.2143201 = phi i32 [ %.0141.lcssa, %.lr.ph204 ], [ %.8, %.loopexit182 ] ; 4 uses
  %.0145200 = phi i32 [ %i.p, %.lr.ph204 ], [ %.2147, %.loopexit182 ] ; 5 uses
  %.0148199 = phi i32 [ %i.p, %.lr.ph204 ], [ %.1149, %.loopexit182 ]
  %.0150198 = phi i32 [ %i.an, %.lr.ph204 ], [ %i.ei, %.loopexit182 ] ; 8 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !8   ; 3 uses
  %i.as = sext i32 %.0150198 to i64               ; 3 uses
  %i.at = getelementptr inbounds [56 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0144 = phi i32 [ %i.av, %bb.f ], [ %i.az, %bb.g ] ; 4 uses
  %i.aw = sext i32 %.0144 to i64                  ; 4 uses
  %i.ax = getelementptr inbounds [56 x i8], ptr %i.ar, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27 ; 2 uses
  %.not163 = icmp eq i32 %i.az, %.0150198
  br i1 %.not163, label %bb.h, label %bb.g, !llvm.loop !108

bb.h:                                             ; preds = %bb.g
  %i.ba = tail call i32 @cuddSymmCheck(ptr noundef nonnull %0, i32 noundef %.0140202, i32 noundef %.0150198)
  %.not164 = icmp eq i32 %i.ba, 0
  %i.bb = sext i32 %.0140202 to i64
  %i.bc = getelementptr inbounds [56 x i8], ptr %i.ar, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27 ; 3 uses
  br i1 %.not164, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i32 %.0150198, ptr %i.bd, align 4, !tbaa !27
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !27
  br label %.loopexit182

bb.j:                                             ; preds = %bb.h
  %i.bg = icmp eq i32 %i.be, %.0140202
  %i.bh = icmp eq i32 %i.av, %.0150198
  %or.cond177 = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond177, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.bi = sext i32 %i.be to i64
  br label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.as
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !30 ; 2 uses
  %i.bm = tail call i32 @cuddTestInteract(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %i.bl) #14
  %.not170 = icmp eq i32 %i.bm, 0
  br i1 %.not170, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.ap, align 8, !tbaa !35
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !37
  %i.bt = icmp eq i32 %i.bs, 1
  %.neg171.neg212 = zext i1 %i.bt to i32
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.bv = getelementptr inbounds [56 x i8], ptr %i.bu, i64 %i.as
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !34
  %.neg181 = add i32 %.2143201, %.neg171.neg212
  %i.by = sub i32 %.neg181, %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi i32 [ %i.by, %bb.l ], [ %.2143201, %bb.k ]
  %i.bz = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.0140202, i32 noundef %.0150198) #14 ; 5 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #14 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.0140202, ptr %i.cb, align 8, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.0150198, ptr %i.cd, align 4, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 %i.bz, ptr %i.ce, align 4, !tbaa !109
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !79
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !106
  %i.ch = sitofp i32 %i.bz to double
  %i.ci = sitofp i32 %.0145200 to double
  %i.cj = load double, ptr %i.aq, align 8, !tbaa !110
end_hunk_0
