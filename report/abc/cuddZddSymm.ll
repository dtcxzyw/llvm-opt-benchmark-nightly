inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cuddZddSymmSifting:bb.a
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !30
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30 ; 5 uses
  %i.cn = icmp slt i32 %i.cm, %1
  %i.co = icmp sgt i32 %i.cm, %2
  %or.cond = or i1 %i.cn, %i.co
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cq = sext i32 %i.cm to i64
  %i.cr = getelementptr inbounds [56 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !27
  %i.cu = icmp eq i32 %i.ct, %i.cm
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cv = tail call fastcc i32 @cuddZddSymmSiftingAux(ptr noundef nonnull %0, i32 noundef %i.cm, i32 noundef %1, i32 noundef %2)
  %.not72 = icmp eq i32 %i.cv, 0
  %.pre = load i32, ptr @zddTotalNumberSwapping, align 4, !tbaa !30
  br i1 %.not72, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.cw = phi i32 [ %i.cf, %bb.f ], [ %.pre, %bb.g ], [ %i.cf, %bb.e ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge92, label %bb.d, !llvm.loop !56

._crit_edge92:                                    ; preds = %bb.d, %bb.h, %._crit_edge88
  tail call void @free(ptr noundef %i.h) #12
  %i.cx = load ptr, ptr @zdd_entry, align 8, !tbaa !46 ; 2 uses
  %.not73 = icmp eq ptr %i.cx, null
  br i1 %.not73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge92
  tail call void @free(ptr noundef nonnull %i.cx) #12
  store ptr null, ptr @zdd_entry, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge92, %bb.i
  br i1 %.not84, label %cuddZddSymmSummary.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01928.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %.02127.i = phi i32 [ %1, %.lr.ph.i ], [ %i.dj, %.loopexit.i ] ; 5 uses
  %i.da = sext i32 %.02127.i to i64
  %i.db = getelementptr inbounds [56 x i8], ptr %i.cz, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !27
  %.not24.i = icmp eq i32 %i.dd, %.02127.i
  br i1 %.not24.i, label %.loopexit.i, label %.preheader

.preheader:                                       ; preds = %bb.k, %.preheader
  %.023.i = phi i32 [ %i.di, %.preheader ], [ %.02127.i, %bb.k ] ; 2 uses
  %.120.i = phi i32 [ %i.de, %.preheader ], [ %.01928.i, %bb.k ]
  %i.de = add nsw i32 %.120.i, 1                  ; 2 uses
  %i.df = sext i32 %.023.i to i64
  %i.dg = getelementptr inbounds [56 x i8], ptr %i.cz, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq i32 %i.di, %.02127.i
  br i1 %.not25.i, label %.loopexit.i, label %.preheader, !llvm.loop !57

.loopexit.i:                                      ; preds = %.preheader, %bb.k
  %.122.i = phi i32 [ %.02127.i, %bb.k ], [ %.023.i, %.preheader ] ; 2 uses
  %.2.i = phi i32 [ %.01928.i, %bb.k ], [ %i.de, %.preheader ] ; 2 uses
  %i.dj = add nsw i32 %.122.i, 1
  %.not.not.i = icmp slt i32 %.122.i, %2
  br i1 %.not.not.i, label %bb.k, label %cuddZddSymmSummary.exit.loopexit, !llvm.loop !58

cuddZddSymmSummary.exit.loopexit:                 ; preds = %.loopexit.i
  %i.dk = add nsw i32 %.2.i, 1
  br label %cuddZddSymmSummary.exit

.loopexit:                                        ; preds = %bb.g
  %.pr.pre = load ptr, ptr @zdd_entry, align 8, !tbaa !46 ; 2 uses
  %.not74 = icmp eq ptr %.pr.pre, null
  br i1 %.not74, label %.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %.pr.pre) #12
  store ptr null, ptr @zdd_entry, align 8, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef nonnull %i.h) #12
  br label %cuddZddSymmSummary.exit

cuddZddSymmSummary.exit:                          ; preds = %.thread120, %bb.j, %cuddZddSymmSummary.exit.loopexit, %.thread79, %.thread
  %.0 = phi i32 [ 0, %.thread79 ], [ 0, %.thread ], [ 0, %.thread120 ], [ 1, %bb.j ], [ %i.dk, %cuddZddSymmSummary.exit.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @cuddZddUniqueCompare(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cuddZddSymmSiftingAux(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59   ; 14 uses
  %i.c = icmp sgt i32 %1, %2
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.0319433 = phi i32 [ %1, %.lr.ph ], [ %i.l, %bb.c ] ; 3 uses
  %i.f = add nsw i32 %.0319433, -1                ; 2 uses
  %i.g = tail call i32 @cuddZddSymmCheck(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0319433)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27   ; 3 uses
  store i32 %.0319433, ptr %i.k, align 4, !tbaa !27
  %i.m = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 %i.l, ptr %i.n, align 4, !tbaa !27
  %i.o = icmp sgt i32 %i.l, %2
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %i.p = icmp slt i32 %1, %3
  br i1 %i.p, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph438, %bb.f
  %.1436 = phi i32 [ %1, %.lr.ph438 ], [ %.0, %bb.f ] ; 3 uses
  %i.r = add nsw i32 %.1436, 1                    ; 3 uses
  %i.s = tail call i32 @cuddZddSymmCheck(ptr noundef nonnull %0, i32 noundef %.1436, i32 noundef %i.r)
  %.not376 = icmp eq i32 %i.s, 0
  br i1 %.not376, label %._crit_edge439, label %.preheader421

.preheader421:                                    ; preds = %bb.d
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !8    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader421, %bb.e
  %.0 = phi i32 [ %i.x, %bb.e ], [ %i.r, %.preheader421 ] ; 4 uses
  %i.u = sext i32 %.0 to i64
  %i.v = getelementptr inbounds [56 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 2 uses
  %i.y = icmp ult i32 %.0, %i.x
  br i1 %i.y, label %bb.e, label %bb.f, !llvm.loop !61

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.aa = sext i32 %.1436 to i64
  %i.ab = getelementptr inbounds [56 x i8], ptr %i.t, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !27
  store i32 %i.r, ptr %i.ac, align 4, !tbaa !27
  %i.ae = icmp slt i32 %.0, %3
  br i1 %i.ae, label %bb.d, label %._crit_edge439, !llvm.loop !62

._crit_edge439:                                   ; preds = %bb.f, %bb.d, %._crit_edge
  %i.af = icmp eq i32 %1, %2
  br i1 %i.af, label %.preheader408, label %bb.r

.preheader408:                                    ; preds = %._crit_edge439
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.preheader408, %bb.g
  %.0338 = phi i32 [ %i.al, %bb.g ], [ %1, %.preheader408 ] ; 4 uses
  %i.ai = sext i32 %.0338 to i64                  ; 2 uses
  %i.aj = getelementptr inbounds [56 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !27 ; 3 uses
  %i.am = icmp ult i32 %.0338, %i.al
  br i1 %i.am, label %bb.g, label %bb.h, !llvm.loop !63

bb.h:                                             ; preds = %bb.g
  %i.an = sub nuw nsw i32 %.0338, %i.al
  %i.ao = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.0338, i32 noundef %3, i32 noundef %i.b) ; 7 uses
  %magicptr395 = ptrtoint ptr %i.ao to i64
  switch i64 %magicptr395, label %bb.i [
    i64 1, label %bb.be
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !64 ; 3 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !27
  %.not390 = icmp eq i32 %i.av, %i.ar
  br i1 %.not390, label %bb.p, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
  %i.ax = getelementptr inbounds [56 x i8], ptr %i.aw, i64 %i.ai
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %.1339.pre = load i32, ptr %i.ay, align 4, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.az = phi ptr [ %i.aw, %bb.j ], [ %i.ap, %bb.i ]
  %.1339 = phi i32 [ %.1339.pre, %bb.j ], [ %i.ar, %bb.i ] ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %.1339, %bb.k ], [ %i.bd, %bb.l ] ; 3 uses
  %i.ba = sext i32 %.2 to i64
  %i.bb = getelementptr inbounds [56 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27 ; 2 uses
  %i.be = icmp ult i32 %.2, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m, !llvm.loop !67

bb.m:                                             ; preds = %bb.l
  %i.bf = sub nsw i32 %.2, %.1339
  %i.bg = icmp eq i32 %i.an, %i.bf
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.ao, i32 noundef %i.b)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.bj = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %.1339, i32 noundef %1, i32 noundef %i.bi) ; 2 uses
  %i.bk = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.bj, i32 noundef %i.bi)
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.bl = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, i32 noundef %i.b)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.0330 = phi ptr [ null, %bb.n ], [ %i.bj, %bb.o ], [ null, %bb.p ] ; 2 uses
  %.0320 = phi i32 [ %i.bh, %bb.n ], [ %i.bk, %bb.o ], [ %i.bl, %bb.p ]
  %.not392 = icmp eq i32 %.0320, 0
  br i1 %.not392, label %bb.be, label %bb.bb

bb.r:                                             ; preds = %._crit_edge439
  %i.bm = icmp eq i32 %1, %3
  br i1 %i.bm, label %.preheader412, label %bb.aa

.preheader412:                                    ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8  ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader412, %bb.s
  %.2340 = phi i32 [ %i.bs, %bb.s ], [ %1, %.preheader412 ] ; 2 uses
  %i.bp = sext i32 %.2340 to i64
  %i.bq = getelementptr inbounds [56 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !27 ; 6 uses
  %i.bt = icmp ult i32 %.2340, %i.bs
  br i1 %i.bt, label %bb.s, label %.preheader411, !llvm.loop !68

.preheader411:                                    ; preds = %bb.s, %.preheader411
  %.3 = phi i32 [ %i.bx, %.preheader411 ], [ %i.bs, %bb.s ] ; 3 uses
  %i.bu = sext i32 %.3 to i64
  %i.bv = getelementptr inbounds [56 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !27 ; 2 uses
  %i.by = icmp ult i32 %.3, %i.bx
  br i1 %i.by, label %.preheader411, label %bb.t, !llvm.loop !69

bb.t:                                             ; preds = %.preheader411
  %i.bz = sub nsw i32 %.3, %i.bs
  %i.ca = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %i.bs, i32 noundef %2, i32 noundef %i.b) ; 7 uses
  %magicptr396 = ptrtoint ptr %i.ca to i64
  switch i64 %magicptr396, label %bb.u [
    i64 1, label %.thread
    i64 0, label %.preheader409
  ]

.preheader409:                                    ; preds = %bb.t
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !8
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.bn, align 8, !tbaa !8  ; 2 uses
  %i.cd = load i32, ptr %i.ca, align 8, !tbaa !70 ; 4 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !27
  %.not387 = icmp eq i32 %i.ch, %i.cd
  br i1 %.not387, label %bb.y, label %..loopexit410_crit_edge

..loopexit410_crit_edge:                          ; preds = %bb.u
  %.phi.trans.insert475 = sext i32 %i.cd to i64
  %.phi.trans.insert476 = getelementptr inbounds [56 x i8], ptr %i.cc, i64 %.phi.trans.insert475
  %.phi.trans.insert477 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert476, i64 28
  %.pre478 = load i32, ptr %.phi.trans.insert477, align 4, !tbaa !27
  br label %.loopexit410

bb.v:                                             ; preds = %.preheader409, %bb.v
  %.3341 = phi i32 [ %i.cl, %bb.v ], [ %i.bs, %.preheader409 ] ; 3 uses
  %i.ci = sext i32 %.3341 to i64
  %i.cj = getelementptr inbounds [56 x i8], ptr %i.cb, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27 ; 3 uses
  %i.cm = icmp ult i32 %.3341, %i.cl
  br i1 %i.cm, label %bb.v, label %.loopexit410, !llvm.loop !71

.loopexit410:                                     ; preds = %bb.v, %..loopexit410_crit_edge
  %i.cn = phi i32 [ %.pre478, %..loopexit410_crit_edge ], [ %i.cl, %bb.v ]
  %.4342 = phi i32 [ %i.cd, %..loopexit410_crit_edge ], [ %.3341, %bb.v ] ; 2 uses
  %i.co = sub nsw i32 %.4342, %i.cn
  %i.cp = icmp eq i32 %i.bz, %i.co
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit410
  %i.cq = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.ca, i32 noundef %i.b)
  br label %bb.z

bb.x:                                             ; preds = %.loopexit410
  %i.cr = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.cs = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.4342, i32 noundef %1, i32 noundef %i.cr) ; 2 uses
  %i.ct = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.cs, i32 noundef %i.cr)
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.cu = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.ca, i32 noundef %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %.0324 = phi ptr [ null, %bb.w ], [ %i.cs, %bb.x ], [ null, %bb.y ] ; 2 uses
  %.1321 = phi i32 [ %i.cq, %bb.w ], [ %i.ct, %bb.x ], [ %i.cu, %bb.y ]
  %.not389 = icmp eq i32 %.1321, 0
  br i1 %.not389, label %bb.be, label %bb.bb

bb.aa:                                            ; preds = %bb.r
  %i.cv = sub nsw i32 %1, %2
  %i.cw = sub nsw i32 %3, %1
  %i.cx = icmp sgt i32 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  br i1 %i.cx, label %.preheader416, label %.preheader420

.preheader416:                                    ; preds = %bb.aa, %.preheader416
  %.5343 = phi i32 [ %i.dd, %.preheader416 ], [ %1, %bb.aa ] ; 3 uses
  %i.da = sext i32 %.5343 to i64                  ; 2 uses
  %i.db = getelementptr inbounds [56 x i8], ptr %i.cz, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !27 ; 2 uses
  %i.de = icmp ult i32 %.5343, %i.dd
  br i1 %i.de, label %.preheader416, label %bb.ab, !llvm.loop !72

bb.ab:                                            ; preds = %.preheader416
  %i.df = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.5343, i32 noundef %3, i32 noundef %i.b) ; 8 uses
  %magicptr = ptrtoint ptr %i.df to i64
  switch i64 %magicptr, label %bb.ac [
    i64 1, label %bb.be
    i64 0, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.pre470 = load ptr, ptr %i.cy, align 8, !tbaa !8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.di = getelementptr inbounds [56 x i8], ptr %i.dh, i64 %i.da
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = phi ptr [ %.pre470, %bb.ac ], [ %i.dh, %bb.ad ]
  %.6344.in = phi ptr [ %i.dg, %bb.ac ], [ %i.dj, %bb.ad ]
  %.6344 = load i32, ptr %.6344.in, align 4, !tbaa !30 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.4 = phi i32 [ %.6344, %bb.ae ], [ %i.do, %bb.af ] ; 3 uses
  %i.dl = sext i32 %.4 to i64
  %i.dm = getelementptr inbounds [56 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27 ; 2 uses
  %i.dp = icmp ult i32 %.4, %i.do
  br i1 %i.dp, label %bb.af, label %bb.ag, !llvm.loop !73

bb.ag:                                            ; preds = %bb.af
  %i.dq = sub nsw i32 %.4, %.6344
  %i.dr = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %.6344, i32 noundef %2, i32 noundef %i.b) ; 7 uses
  %magicptr398 = ptrtoint ptr %i.dr to i64
  switch i64 %magicptr398, label %bb.ah [
    i64 1, label %bb.be
    i64 0, label %.preheader414
  ]

.preheader414:                                    ; preds = %bb.ag
  %i.ds = load ptr, ptr %i.cy, align 8, !tbaa !8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dt = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.du = load i32, ptr %i.dr, align 8, !tbaa !70 ; 4 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [56 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !27
  %.not383 = icmp eq i32 %i.dy, %i.du
  br i1 %.not383, label %bb.am, label %..loopexit415_crit_edge

..loopexit415_crit_edge:                          ; preds = %bb.ah
  %.phi.trans.insert471 = sext i32 %i.du to i64
  %.phi.trans.insert472 = getelementptr inbounds [56 x i8], ptr %i.dt, i64 %.phi.trans.insert471
  %.phi.trans.insert473 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert472, i64 28
  %.pre474 = load i32, ptr %.phi.trans.insert473, align 4, !tbaa !27
  br label %.loopexit415

bb.ai:                                            ; preds = %.preheader414, %bb.ai
  %.7 = phi i32 [ %i.ec, %bb.ai ], [ %.6344, %.preheader414 ] ; 3 uses
  %i.dz = sext i32 %.7 to i64
  %i.ea = getelementptr inbounds [56 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !27 ; 3 uses
  %i.ed = icmp ult i32 %.7, %i.ec
  br i1 %i.ed, label %bb.ai, label %.loopexit415, !llvm.loop !74

.loopexit415:                                     ; preds = %bb.ai, %..loopexit415_crit_edge
  %i.ee = phi i32 [ %.pre474, %..loopexit415_crit_edge ], [ %i.ec, %bb.ai ]
  %.8 = phi i32 [ %i.du, %..loopexit415_crit_edge ], [ %.7, %bb.ai ] ; 2 uses
  %i.ef = sub nsw i32 %.8, %i.ee
  %i.eg = icmp eq i32 %i.dq, %i.ef
  br i1 %i.eg, label %bb.aj, label %.preheader413

.preheader413:                                    ; preds = %.loopexit415
  %.not385445 = icmp eq ptr %i.df, null
  br i1 %.not385445, label %bb.al, label %.lr.ph447

.lr.ph447:                                        ; preds = %.preheader413
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted449 = load ptr, ptr %i.eh, align 8, !tbaa !75
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit415
  %i.ei = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.dr, i32 noundef %i.b)
  br label %bb.an

bb.ak:                                            ; preds = %.lr.ph447, %bb.ak
  %i.ej = phi ptr [ %.promoted449, %.lr.ph447 ], [ %.1325446, %bb.ak ]
  %.1325446 = phi ptr [ %i.df, %.lr.ph447 ], [ %i.el, %bb.ak ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1325446, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !76 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1325446, i64 4
  store i32 0, ptr %i.em, align 4, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %.1325446, i64 8
  store ptr %i.ej, ptr %i.en, align 8, !tbaa !77
  %.not385 = icmp eq ptr %i.el, null
  br i1 %.not385, label %._crit_edge448, label %bb.ak, !llvm.loop !78

._crit_edge448:                                   ; preds = %bb.ak
  store ptr %.1325446, ptr %i.eh, align 8, !tbaa !75
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge448, %.preheader413
  %i.eo = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.ep = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.8, i32 noundef %3, i32 noundef %i.eo) ; 2 uses
  %i.eq = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.ep, i32 noundef %i.eo)
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.er = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.dr, i32 noundef %i.b)
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.am
  %.2326 = phi ptr [ %i.df, %bb.aj ], [ %i.ep, %bb.al ], [ %i.df, %bb.am ] ; 2 uses
  %.2322 = phi i32 [ %i.ei, %bb.aj ], [ %i.eq, %bb.al ], [ %i.er, %bb.am ]
  %.not386 = icmp eq i32 %.2322, 0
  br i1 %.not386, label %bb.be, label %bb.bb

.preheader420:                                    ; preds = %bb.aa, %.preheader420
  %.9 = phi i32 [ %i.ev, %.preheader420 ], [ %1, %bb.aa ] ; 2 uses
  %i.es = sext i32 %.9 to i64
  %i.et = getelementptr inbounds [56 x i8], ptr %i.cz, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !27 ; 4 uses
  %i.ew = icmp ult i32 %.9, %i.ev
  br i1 %i.ew, label %.preheader420, label %bb.ao, !llvm.loop !79

bb.ao:                                            ; preds = %.preheader420
  %i.ex = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %2, i32 noundef %i.b) ; 8 uses
  %magicptr399 = ptrtoint ptr %i.ex to i64
  switch i64 %magicptr399, label %bb.ap [
    i64 1, label %.thread
    i64 0, label %.preheader418
  ]

.preheader418:                                    ; preds = %bb.ao
  %i.ey = load ptr, ptr %i.cy, align 8, !tbaa !8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ez = load i32, ptr %i.ex, align 8, !tbaa !70 ; 2 uses
  %.pre = load ptr, ptr %i.cy, align 8, !tbaa !8
  %.phi.trans.insert = sext i32 %i.ez to i64      ; 2 uses
  %.phi.trans.insert466 = getelementptr inbounds [56 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.phi.trans.insert467 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert466, i64 28
  %.pre468 = load i32, ptr %.phi.trans.insert467, align 4, !tbaa !27
  br label %.loopexit419

bb.aq:                                            ; preds = %.preheader418, %bb.aq
  %.10 = phi i32 [ %i.fd, %bb.aq ], [ %i.ev, %.preheader418 ] ; 3 uses
  %i.fa = sext i32 %.10 to i64                    ; 2 uses
  %i.fb = getelementptr inbounds [56 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !27 ; 3 uses
  %i.fe = icmp ult i32 %.10, %i.fd
  br i1 %i.fe, label %bb.aq, label %.loopexit419, !llvm.loop !80

.loopexit419:                                     ; preds = %bb.aq, %bb.ap
  %.pre-phi481 = phi i64 [ %.phi.trans.insert, %bb.ap ], [ %i.fa, %bb.aq ]
  %i.ff = phi i32 [ %.pre468, %bb.ap ], [ %i.fd, %bb.aq ]
  %.11 = phi i32 [ %i.ez, %bb.ap ], [ %.10, %bb.aq ] ; 2 uses
  %i.fg = sub nsw i32 %.11, %i.ff
  %i.fh = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.11, i32 noundef %3, i32 noundef %i.b) ; 7 uses
  %magicptr401 = ptrtoint ptr %i.fh to i64
  switch i64 %magicptr401, label %bb.ar [
    i64 1, label %bb.be
    i64 0, label %bb.as
  ]

bb.ar:                                            ; preds = %.loopexit419
  %i.fi = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !64 ; 3 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.fi, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !27
  %.not378 = icmp eq i32 %i.fo, %i.fk
  br i1 %.not378, label %bb.az, label %bb.at

bb.as:                                            ; preds = %.loopexit419
  %i.fp = load ptr, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.fq = getelementptr inbounds [56 x i8], ptr %i.fp, i64 %.pre-phi481
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 28
  %.12.pre = load i32, ptr %i.fr, align 4, !tbaa !30
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.fs = phi ptr [ %i.fp, %bb.as ], [ %i.fi, %bb.ar ]
  %.12 = phi i32 [ %.12.pre, %bb.as ], [ %i.fk, %bb.ar ] ; 3 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.5 = phi i32 [ %.12, %bb.at ], [ %i.fw, %bb.au ] ; 3 uses
  %i.ft = sext i32 %.5 to i64
  %i.fu = getelementptr inbounds [56 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 28
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !27 ; 2 uses
  %i.fx = icmp ult i32 %.5, %i.fw
  br i1 %i.fx, label %bb.au, label %bb.av, !llvm.loop !81

bb.av:                                            ; preds = %bb.au
  %i.fy = sub nsw i32 %.5, %.12
  %i.fz = icmp eq i32 %i.fg, %i.fy
  br i1 %i.fz, label %bb.aw, label %.preheader417

.preheader417:                                    ; preds = %bb.av
  %.not380441 = icmp eq ptr %i.ex, null
  br i1 %.not380441, label %bb.ay, label %.lr.ph443

.lr.ph443:                                        ; preds = %.preheader417
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted = load ptr, ptr %i.ga, align 8, !tbaa !75
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gb = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.fh, i32 noundef %i.b)
  br label %bb.ba

bb.ax:                                            ; preds = %.lr.ph443, %bb.ax
  %i.gc = phi ptr [ %.promoted, %.lr.ph443 ], [ %.1331442, %bb.ax ]
  %.1331442 = phi ptr [ %i.ex, %.lr.ph443 ], [ %i.ge, %bb.ax ] ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1331442, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !76 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1331442, i64 4
  store i32 0, ptr %i.gf, align 4, !tbaa !43
  %i.gg = getelementptr inbounds nuw i8, ptr %.1331442, i64 8
  store ptr %i.gc, ptr %i.gg, align 8, !tbaa !77
  %.not380 = icmp eq ptr %i.ge, null
  br i1 %.not380, label %._crit_edge444, label %bb.ax, !llvm.loop !82

._crit_edge444:                                   ; preds = %bb.ax
  store ptr %.1331442, ptr %i.ga, align 8, !tbaa !75
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge444, %.preheader417
  %i.gh = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.gi = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %.12, i32 noundef %2, i32 noundef %i.gh) ; 2 uses
  %i.gj = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.gi, i32 noundef %i.gh)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ar
  %i.gk = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.fh, i32 noundef %i.b)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.ay, %bb.az
  %.2332 = phi ptr [ %i.ex, %bb.aw ], [ %i.gi, %bb.ay ], [ %i.ex, %bb.az ] ; 2 uses
  %.3323 = phi i32 [ %i.gb, %bb.aw ], [ %i.gj, %bb.ay ], [ %i.gk, %bb.az ]
  %.not381 = icmp eq i32 %.3323, 0
  br i1 %.not381, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.z, %bb.ba, %bb.an, %bb.q
  %.3333 = phi ptr [ %.0330, %bb.q ], [ %i.ca, %bb.z ], [ %i.dr, %bb.an ], [ %.2332, %bb.ba ] ; 2 uses
  %.3327 = phi ptr [ %i.ao, %bb.q ], [ %.0324, %bb.z ], [ %.2326, %bb.an ], [ %i.fh, %bb.ba ] ; 2 uses
  %.not393450 = icmp eq ptr %.3327, null
  br i1 %.not393450, label %.preheader406, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.bb
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted454 = load ptr, ptr %i.gl, align 8, !tbaa !75
  br label %bb.bc

..preheader406_crit_edge:                         ; preds = %bb.bc
  store ptr %.4328451, ptr %i.gl, align 8, !tbaa !75
  br label %.preheader406

.preheader406:                                    ; preds = %..preheader406_crit_edge, %bb.bb
  %.not394455 = icmp eq ptr %.3333, null
  br i1 %.not394455, label %.loopexit407, label %.lr.ph457

.lr.ph457:                                        ; preds = %.preheader406
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted458 = load ptr, ptr %i.gm, align 8, !tbaa !75
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph453, %bb.bc
  %i.gn = phi ptr [ %.promoted454, %.lr.ph453 ], [ %.4328451, %bb.bc ]
  %.4328451 = phi ptr [ %.3327, %.lr.ph453 ], [ %i.gp, %bb.bc ] ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.4328451, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !76 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.4328451, i64 4
  store i32 0, ptr %i.gq, align 4, !tbaa !43
  %i.gr = getelementptr inbounds nuw i8, ptr %.4328451, i64 8
  store ptr %i.gn, ptr %i.gr, align 8, !tbaa !77
  %.not393 = icmp eq ptr %i.gp, null
  br i1 %.not393, label %..preheader406_crit_edge, label %bb.bc, !llvm.loop !83

bb.bd:                                            ; preds = %.lr.ph457, %bb.bd
  %i.gs = phi ptr [ %.promoted458, %.lr.ph457 ], [ %.4334456, %bb.bd ]
  %.4334456 = phi ptr [ %.3333, %.lr.ph457 ], [ %i.gu, %bb.bd ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.4334456, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !76 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.4334456, i64 4
  store i32 0, ptr %i.gv, align 4, !tbaa !43
  %i.gw = getelementptr inbounds nuw i8, ptr %.4334456, i64 8
  store ptr %i.gs, ptr %i.gw, align 8, !tbaa !77
  %.not394 = icmp eq ptr %i.gu, null
  br i1 %.not394, label %..loopexit407_crit_edge, label %bb.bd, !llvm.loop !84

bb.be:                                            ; preds = %.loopexit419, %bb.ag, %bb.ab, %bb.h, %bb.ba, %bb.an, %bb.z, %bb.q
  %.5335 = phi ptr [ null, %bb.h ], [ %.0330, %bb.q ], [ %i.ex, %.loopexit419 ], [ %i.ca, %bb.z ], [ null, %bb.ab ], [ %i.dr, %bb.ag ], [ %i.dr, %bb.an ], [ %.2332, %bb.ba ] ; 2 uses
  %.5329 = phi ptr [ %i.ao, %bb.h ], [ %i.ao, %bb.q ], [ %i.fh, %.loopexit419 ], [ %.0324, %bb.z ], [ %i.df, %bb.ab ], [ %i.df, %bb.ag ], [ %.2326, %bb.an ], [ %i.fh, %bb.ba ] ; 2 uses
  %i.gx = icmp ult ptr %.5329, inttoptr (i64 2 to ptr)
  br i1 %i.gx, label %.thread, label %.preheader404

.preheader404:                                    ; preds = %bb.be
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted459 = load ptr, ptr %i.gy, align 8, !tbaa !75
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader404, %bb.bf
  %i.gz = phi ptr [ %.6, %bb.bf ], [ %.promoted459, %.preheader404 ]
  %.6 = phi ptr [ %i.hb, %bb.bf ], [ %.5329, %.preheader404 ] ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.6, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !76 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.6, i64 4
  store i32 0, ptr %i.hc, align 4, !tbaa !43
  %i.hd = getelementptr inbounds nuw i8, ptr %.6, i64 8
  store ptr %i.gz, ptr %i.hd, align 8, !tbaa !77
  %.old1.not = icmp eq ptr %i.hb, null
  br i1 %.old1.not, label %.loopexit405, label %bb.bf

.loopexit405:                                     ; preds = %bb.bf
  store ptr %.6, ptr %i.gy, align 8, !tbaa !75
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.t, %.loopexit405, %bb.be
  %.5335504 = phi ptr [ %.5335, %bb.be ], [ %.5335, %.loopexit405 ], [ %i.ex, %bb.ao ], [ %i.ca, %bb.t ] ; 2 uses
  %i.he = icmp ult ptr %.5335504, inttoptr (i64 2 to ptr)
  br i1 %i.he, label %.loopexit407, label %.preheader

.preheader:                                       ; preds = %.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted460 = load ptr, ptr %i.hf, align 8, !tbaa !75
  br label %bb.bg

bb.bg:                                            ; preds = %.preheader, %bb.bg
  %i.hg = phi ptr [ %.6336, %bb.bg ], [ %.promoted460, %.preheader ]
  %.6336 = phi ptr [ %i.hi, %bb.bg ], [ %.5335504, %.preheader ] ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.6336, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !76 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.6336, i64 4
  store i32 0, ptr %i.hj, align 4, !tbaa !43
  %i.hk = getelementptr inbounds nuw i8, ptr %.6336, i64 8
  store ptr %i.hg, ptr %i.hk, align 8, !tbaa !77
  %.old3.not = icmp eq ptr %i.hi, null
  br i1 %.old3.not, label %.loopexit, label %bb.bg

.loopexit:                                        ; preds = %bb.bg
  store ptr %.6336, ptr %i.hf, align 8, !tbaa !75
  br label %.loopexit407

..loopexit407_crit_edge:                          ; preds = %bb.bd
  store ptr %.4334456, ptr %i.gm, align 8, !tbaa !75
  br label %.loopexit407

.loopexit407:                                     ; preds = %.preheader406, %..loopexit407_crit_edge, %.loopexit, %.thread
  %.0337 = phi i32 [ 0, %.loopexit ], [ 0, %.thread ], [ 1, %..loopexit407_crit_edge ], [ 1, %.preheader406 ]
  ret i32 %.0337
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @cuddZddSymmSiftingConv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !45   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #13 ; 5 uses
  store ptr %i.g, ptr @zdd_entry, align 8, !tbaa !46
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread143, label %bb.b

.thread143:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.i, align 8, !tbaa !47
  br label %bb.bo

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #13 ; 11 uses
  %i.k = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.k, label %bb.c, label %.preheader149

.preheader149:                                    ; preds = %bb.b
  %i.l = icmp sgt i32 %i.d, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader149
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.d, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.r, align 8, !tbaa !47
  br label %cuddZddSymmSiftingConvAux.exit.thread

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !30
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.x, ptr %i.y, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !30
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.aj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !85

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod276 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.epil.init
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.as = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader149
  tail call void @qsort(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef 4, ptr noundef nonnull @cuddZddUniqueCompare) #12
  %.not161 = icmp sgt i32 %1, %2                  ; 3 uses
  br i1 %.not161, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8  ; 9 uses
  %i.av = sext i32 %1 to i64                      ; 2 uses
  %i.aw = add i32 %2, 1                           ; 2 uses
  %i.ax = sub i32 %i.aw, %1
  %i.ay = sub i32 %2, %1
  %xtraiter277 = and i32 %i.ax, 7                 ; 2 uses
  %lcmp.mod278.not = icmp eq i32 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph164, %.prol.preheader
  %indvars.iv194.prol = phi i64 [ %indvars.iv.next195.prol, %.prol.preheader ], [ %i.av, %.lr.ph164 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph164 ]
  %i.az = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv194.prol
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bb = trunc nsw i64 %indvars.iv194.prol to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !27
  %indvars.iv.next195.prol = add nsw i64 %indvars.iv194.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter277
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !86

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph164
  %indvars.iv194.unr = phi i64 [ %i.av, %.lr.ph164 ], [ %indvars.iv.next195.prol, %.prol.preheader ]
  %i.bc = icmp ult i32 %i.ay, 7
  br i1 %i.bc, label %._crit_edge165, label %.lr.ph164.new

.lr.ph164.new:                                    ; preds = %.prol.loopexit, %.lr.ph164.new
  %indvars.iv194.a = phi i64 [ %indvars.iv.next195.7, %.lr.ph164.new ], [ %indvars.iv194.unr, %.prol.loopexit ] ; 10 uses
  %i.bd = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv194.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = trunc nsw i64 %indvars.iv194.a to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !27
  %indvars.iv.next195.a = add nsw i64 %indvars.iv194.a, 1 ; 2 uses
  %i.bg = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bi = trunc nsw i64 %indvars.iv.next195.a to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !27
  %indvars.iv.next195.1 = add nsw i64 %indvars.iv194.a, 2 ; 2 uses
  %i.bj = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  %i.bl = trunc nsw i64 %indvars.iv.next195.1 to i32
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !27
  %indvars.iv.next195.2 = add nsw i64 %indvars.iv194.a, 3 ; 2 uses
  %i.bm = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %i.bo = trunc nsw i64 %indvars.iv.next195.2 to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !27
  %indvars.iv.next195.3 = add nsw i64 %indvars.iv194.a, 4 ; 2 uses
  %i.bp = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.br = trunc nsw i64 %indvars.iv.next195.3 to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !27
  %indvars.iv.next195.4 = add nsw i64 %indvars.iv194.a, 5 ; 2 uses
  %i.bs = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = trunc nsw i64 %indvars.iv.next195.4 to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !27
  %indvars.iv.next195.5 = add nsw i64 %indvars.iv194.a, 6 ; 2 uses
  %i.bv = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.bx = trunc nsw i64 %indvars.iv.next195.5 to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !27
  %indvars.iv.next195.6 = add nsw i64 %indvars.iv194.a, 7 ; 2 uses
  %i.by = getelementptr inbounds [56 x i8], ptr %i.au, i64 %indvars.iv.next195.6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ca = trunc nsw i64 %indvars.iv.next195.6 to i32
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !27
  %indvars.iv.next195.7 = add nsw i64 %indvars.iv194.a, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next195.7 to i32
  %exitcond197.not.7 = icmp eq i32 %i.aw, %lftr.wideiv.7
  br i1 %exitcond197.not.7, label %._crit_edge165, label %.lr.ph164.new, !llvm.loop !87

._crit_edge165:                                   ; preds = %.prol.loopexit, %.lr.ph164.new, %._crit_edge
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !54
  %. = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cd) ; 2 uses
  %i.ce = icmp sgt i32 %., 0
  br i1 %i.ce, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %._crit_edge165
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160
  %wide.trip.count201 = zext nneg i32 %. to i64
  %.pre211 = load i32, ptr @zddTotalNumberSwapping, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph168, %bb.i
  %i.ci = phi i32 [ %.pre211, %.lr.ph168 ], [ %i.cz, %bb.i ] ; 3 uses
  %indvars.iv198 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next199, %bb.i ] ; 2 uses
  %i.cj = load i32, ptr %i.cf, align 4, !tbaa !55
  %.not123 = icmp slt i32 %i.ci, %i.cj
  br i1 %.not123, label %bb.f, label %._crit_edge169

bb.f:                                             ; preds = %bb.e
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !48
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv198
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !30 ; 5 uses
  %i.cq = icmp slt i32 %i.cp, %1
  %i.cr = icmp sgt i32 %i.cp, %2
  %or.cond = or i1 %i.cq, %i.cr
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !8
  %i.ct = sext i32 %i.cp to i64
  %i.cu = getelementptr inbounds [56 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !27
  %i.cx = icmp eq i32 %i.cw, %i.cp
  br i1 %i.cx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cy = tail call fastcc i32 @cuddZddSymmSiftingAux(ptr noundef nonnull %0, i32 noundef %i.cp, i32 noundef %1, i32 noundef %2)
  %.not124 = icmp eq i32 %i.cy, 0
  %.pre = load i32, ptr @zddTotalNumberSwapping, align 4, !tbaa !30
  br i1 %.not124, label %cuddZddSymmSiftingConvAux.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.cz = phi i32 [ %i.ci, %bb.g ], [ %.pre, %bb.h ], [ %i.ci, %bb.f ]
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge169, label %bb.e, !llvm.loop !88

._crit_edge169:                                   ; preds = %bb.i, %bb.e, %._crit_edge165
  %i.da = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.db = icmp ugt i32 %i.b, %i.da
  br i1 %i.db, label %.preheader147.lr.ph, label %._crit_edge180

.preheader147.lr.ph:                              ; preds = %._crit_edge169
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 14 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 12 uses
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.lr.ph, %._crit_edge178.a
  %i.dh = phi i32 [ %i.da, %.preheader147.lr.ph ], [ %i.ld, %._crit_edge178.a ]
  br i1 %.not161, label %._crit_edge174, label %.preheader146.lr.ph

.preheader146.lr.ph:                              ; preds = %.preheader147
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !29
  %i.dk = load ptr, ptr @zdd_entry, align 8, !tbaa !46
  br label %.preheader146

.preheader146:                                    ; preds = %.preheader146.lr.ph, %bb.k
  %indvars.iv203 = phi i64 [ 0, %.preheader146.lr.ph ], [ %indvars.iv.next204, %bb.k ] ; 2 uses
  %.0103172 = phi i32 [ %1, %.preheader146.lr.ph ], [ %i.dx, %bb.k ]
  br label %bb.j

bb.j:                                             ; preds = %.preheader146, %bb.j
  %.1 = phi i32 [ %i.do, %bb.j ], [ %.0103172, %.preheader146 ] ; 4 uses
  %i.dl = sext i32 %.1 to i64                     ; 2 uses
  %i.dm = getelementptr inbounds [56 x i8], ptr %i.di, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !27 ; 2 uses
  %i.dp = icmp ult i32 %.1, %i.do
  br i1 %i.dp, label %bb.j, label %bb.k, !llvm.loop !89

bb.k:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !49
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.du
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !30
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv203
  store i32 %i.dr, ptr %i.dw, align 4, !tbaa !30
  %i.dx = add nsw i32 %.1, 1
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %.not126.not = icmp slt i32 %.1, %2
  br i1 %.not126.not, label %.preheader146, label %._crit_edge174, !llvm.loop !90

._crit_edge174:                                   ; preds = %bb.k, %.preheader147
  %.0.lcssa = phi i64 [ 0, %.preheader147 ], [ %indvars.iv.next204, %bb.k ]
  tail call void @qsort(ptr noundef nonnull %i.j, i64 noundef %.0.lcssa, i64 noundef 4, ptr noundef nonnull @cuddZddUniqueCompare) #12
  %i.dy = load i32, ptr %i.cc, align 8, !tbaa !54
  %.132 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.dy) ; 2 uses
  %i.dz = icmp sgt i32 %.132, 0
  br i1 %i.dz, label %.lr.ph177.preheader, label %._crit_edge178.a

.lr.ph177.preheader:                              ; preds = %._crit_edge174
  %wide.trip.count209 = zext nneg i32 %.132 to i64
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader, %cuddZddSymmSiftingConvAux.exit
  %indvars.iv206 = phi i64 [ 0, %.lr.ph177.preheader ], [ %indvars.iv.next207, %cuddZddSymmSiftingConvAux.exit ] ; 2 uses
  %i.ea = load i32, ptr @zddTotalNumberSwapping, align 4, !tbaa !30
  %i.eb = load i32, ptr %i.de, align 4, !tbaa !55
  %.not127 = icmp slt i32 %i.ea, %i.eb
  br i1 %.not127, label %bb.l, label %._crit_edge178.a

bb.l:                                             ; preds = %.lr.ph177
  %i.ec = load ptr, ptr %i.df, align 8, !tbaa !48
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv206
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !30 ; 8 uses
  %i.ei = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 3 uses
  %i.ej = sext i32 %i.eh to i64
  %i.ek = getelementptr inbounds [56 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !27 ; 4 uses
  %.not128 = icmp ult i32 %i.eh, %i.em
  br i1 %.not128, label %cuddZddSymmSiftingConvAux.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.en = load i32, ptr %i.a, align 8, !tbaa !59  ; 14 uses
  %i.eo = icmp eq i32 %i.eh, %1
  br i1 %i.eo, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ep = sub nsw i32 %1, %i.em
  %i.eq = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.en) ; 7 uses
  %magicptr354.i = ptrtoint ptr %i.eq to i64
  switch i64 %magicptr354.i, label %bb.o [
    i64 1, label %bb.bg
    i64 0, label %.preheader367.i
  ]

.preheader367.i:                                  ; preds = %bb.n
  %i.er = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.es = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !64 ; 3 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !27
  %.not349.i = icmp eq i32 %i.ey, %i.eu
  br i1 %.not349.i, label %bb.u, label %.loopexit368.i

bb.p:                                             ; preds = %bb.p, %.preheader367.i
  %.0298.i = phi i32 [ %i.fc, %bb.p ], [ %1, %.preheader367.i ] ; 2 uses
  %i.ez = sext i32 %.0298.i to i64
  %i.fa = getelementptr inbounds [56 x i8], ptr %i.er, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !27 ; 3 uses
  %i.fd = icmp ult i32 %.0298.i, %i.fc
  br i1 %i.fd, label %bb.p, label %.loopexit368.i, !llvm.loop !91

.loopexit368.i:                                   ; preds = %bb.p, %bb.o
  %i.fe = phi ptr [ %i.es, %bb.o ], [ %i.er, %bb.p ]
  %.1299.i = phi i32 [ %i.eu, %bb.o ], [ %i.fc, %bb.p ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.loopexit368.i
  %.0.i = phi i32 [ %.1299.i, %.loopexit368.i ], [ %i.fi, %bb.q ] ; 3 uses
  %i.ff = sext i32 %.0.i to i64
  %i.fg = getelementptr inbounds [56 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !27 ; 2 uses
  %i.fj = icmp ult i32 %.0.i, %i.fi
  br i1 %i.fj, label %bb.q, label %bb.r, !llvm.loop !92

bb.r:                                             ; preds = %bb.q
  %i.fk = sub nsw i32 %.0.i, %.1299.i
  %i.fl = icmp eq i32 %i.ep, %i.fk
  br i1 %i.fl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fm = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.eq, i32 noundef %i.en)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.fn = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.fo = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %.1299.i, i32 noundef %1, i32 noundef %i.fn) ; 2 uses
  %i.fp = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.fo, i32 noundef %i.fn)
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.fq = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.eq, i32 noundef %i.en)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0290.i = phi ptr [ null, %bb.s ], [ %i.fo, %bb.t ], [ null, %bb.u ] ; 2 uses
  %.0282.i = phi i32 [ %i.fm, %bb.s ], [ %i.fp, %bb.t ], [ %i.fq, %bb.u ]
  %.not351.i = icmp eq i32 %.0282.i, 0
  br i1 %.not351.i, label %bb.bg, label %bb.bd

bb.w:                                             ; preds = %bb.m
  %i.fr = icmp eq i32 %i.eh, %2
  br i1 %i.fr, label %.preheader372.i, label %bb.ae

.preheader372.i:                                  ; preds = %bb.w, %.preheader372.i
  %.2300.i = phi i32 [ %i.fv, %.preheader372.i ], [ %2, %bb.w ] ; 2 uses
  %i.fs = sext i32 %.2300.i to i64
  %i.ft = getelementptr inbounds [56 x i8], ptr %i.ei, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 28
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !27 ; 6 uses
  %i.fw = icmp ult i32 %.2300.i, %i.fv
  br i1 %i.fw, label %.preheader372.i, label %.preheader371.i, !llvm.loop !93

.preheader371.i:                                  ; preds = %.preheader372.i, %.preheader371.i
  %.1.i = phi i32 [ %i.ga, %.preheader371.i ], [ %i.fv, %.preheader372.i ] ; 3 uses
  %i.fx = sext i32 %.1.i to i64
  %i.fy = getelementptr inbounds [56 x i8], ptr %i.ei, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !27 ; 2 uses
  %i.gb = icmp ult i32 %.1.i, %i.ga
  br i1 %i.gb, label %.preheader371.i, label %bb.x, !llvm.loop !94

bb.x:                                             ; preds = %.preheader371.i
  %i.gc = sub nsw i32 %.1.i, %i.fv
  %i.gd = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %i.fv, i32 noundef %1, i32 noundef %i.en) ; 7 uses
  %magicptr355.i = ptrtoint ptr %i.gd to i64
  switch i64 %magicptr355.i, label %bb.y [
    i64 1, label %.thread.i
    i64 0, label %.preheader369.i
  ]

.preheader369.i:                                  ; preds = %bb.x
  %i.ge = load ptr, ptr %i.dc, align 8, !tbaa !8
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gf = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  %i.gg = load i32, ptr %i.gd, align 8, !tbaa !70 ; 4 uses
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [56 x i8], ptr %i.gf, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !27
  %.not346.i = icmp eq i32 %i.gk, %i.gg
  br i1 %.not346.i, label %bb.ac, label %..loopexit370_crit_edge.i

..loopexit370_crit_edge.i:                        ; preds = %bb.y
  %.phi.trans.insert419.i = sext i32 %i.gg to i64
  %.phi.trans.insert420.i = getelementptr inbounds [56 x i8], ptr %i.gf, i64 %.phi.trans.insert419.i
  %.phi.trans.insert421.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert420.i, i64 28
  %.pre422.i = load i32, ptr %.phi.trans.insert421.i, align 4, !tbaa !27
  br label %.loopexit370.i

bb.z:                                             ; preds = %bb.z, %.preheader369.i
  %.3301.i = phi i32 [ %i.go, %bb.z ], [ %i.fv, %.preheader369.i ] ; 3 uses
  %i.gl = sext i32 %.3301.i to i64
  %i.gm = getelementptr inbounds [56 x i8], ptr %i.ge, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !27 ; 3 uses
  %i.gp = icmp ult i32 %.3301.i, %i.go
  br i1 %i.gp, label %bb.z, label %.loopexit370.i, !llvm.loop !95

.loopexit370.i:                                   ; preds = %bb.z, %..loopexit370_crit_edge.i
  %i.gq = phi i32 [ %.pre422.i, %..loopexit370_crit_edge.i ], [ %i.go, %bb.z ]
  %.4302.i = phi i32 [ %i.gg, %..loopexit370_crit_edge.i ], [ %.3301.i, %bb.z ] ; 2 uses
  %i.gr = sub nsw i32 %.4302.i, %i.gq
  %i.gs = icmp eq i32 %i.gc, %i.gr
  br i1 %i.gs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit370.i
  %i.gt = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.gd, i32 noundef %i.en)
  br label %bb.ad

bb.ab:                                            ; preds = %.loopexit370.i
  %i.gu = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.gv = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.4302.i, i32 noundef %2, i32 noundef %i.gu) ; 2 uses
  %i.gw = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.gv, i32 noundef %i.gu)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.gx = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.gd, i32 noundef %i.en)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0286.i = phi ptr [ null, %bb.aa ], [ %i.gv, %bb.ab ], [ null, %bb.ac ] ; 2 uses
  %.1283.i = phi i32 [ %i.gt, %bb.aa ], [ %i.gw, %bb.ab ], [ %i.gx, %bb.ac ]
  %.not348.i = icmp eq i32 %.1283.i, 0
  br i1 %.not348.i, label %bb.bg, label %bb.bd

bb.ae:                                            ; preds = %bb.w
  %i.gy = sub nsw i32 %i.eh, %1
  %i.gz = sub nsw i32 %2, %i.eh
  %i.ha = icmp sgt i32 %i.gy, %i.gz
  br i1 %i.ha, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.hb = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %i.eh, i32 noundef %2, i32 noundef %i.en) ; 8 uses
  %magicptr.i = ptrtoint ptr %i.hb to i64
  switch i64 %magicptr.i, label %bb.ag [
    i64 1, label %bb.bg
    i64 0, label %.preheader376.i
  ]

.preheader376.i:                                  ; preds = %bb.af
  %i.hc = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !64
  %.pre414.i = load ptr, ptr %i.dc, align 8, !tbaa !8
  br label %.loopexit377.i

bb.ah:                                            ; preds = %bb.ah, %.preheader376.i
  %.5303.i = phi i32 [ %i.hi, %bb.ah ], [ %i.eh, %.preheader376.i ] ; 2 uses
  %i.hf = sext i32 %.5303.i to i64
  %i.hg = getelementptr inbounds [56 x i8], ptr %i.hc, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 28
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !27 ; 3 uses
  %i.hj = icmp ult i32 %.5303.i, %i.hi
  br i1 %i.hj, label %bb.ah, label %.loopexit377.i, !llvm.loop !96

.loopexit377.i:                                   ; preds = %bb.ah, %bb.ag
  %i.hk = phi ptr [ %.pre414.i, %bb.ag ], [ %i.hc, %bb.ah ]
  %.6304.i = phi i32 [ %i.he, %bb.ag ], [ %i.hi, %bb.ah ] ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.loopexit377.i
  %.2.i = phi i32 [ %.6304.i, %.loopexit377.i ], [ %i.ho, %bb.ai ] ; 3 uses
  %i.hl = sext i32 %.2.i to i64
  %i.hm = getelementptr inbounds [56 x i8], ptr %i.hk, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !27 ; 2 uses
  %i.hp = icmp ult i32 %.2.i, %i.ho
  br i1 %i.hp, label %bb.ai, label %bb.aj, !llvm.loop !97

bb.aj:                                            ; preds = %bb.ai
  %i.hq = sub nsw i32 %.2.i, %.6304.i
  %i.hr = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %.6304.i, i32 noundef %1, i32 noundef %i.en) ; 7 uses
  %magicptr357.i = ptrtoint ptr %i.hr to i64
  switch i64 %magicptr357.i, label %bb.ak [
    i64 1, label %bb.bg
    i64 0, label %.preheader374.i
  ]

.preheader374.i:                                  ; preds = %bb.aj
  %i.hs = load ptr, ptr %i.dc, align 8, !tbaa !8
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ht = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  %i.hu = load i32, ptr %i.hr, align 8, !tbaa !70 ; 4 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [56 x i8], ptr %i.ht, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 28
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !27
  %.not342.i = icmp eq i32 %i.hy, %i.hu
  br i1 %.not342.i, label %bb.ap, label %..loopexit375_crit_edge.i

..loopexit375_crit_edge.i:                        ; preds = %bb.ak
  %.phi.trans.insert415.i = sext i32 %i.hu to i64
  %.phi.trans.insert416.i = getelementptr inbounds [56 x i8], ptr %i.ht, i64 %.phi.trans.insert415.i
  %.phi.trans.insert417.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert416.i, i64 28
  %.pre418.i = load i32, ptr %.phi.trans.insert417.i, align 4, !tbaa !27
  br label %.loopexit375.i

bb.al:                                            ; preds = %bb.al, %.preheader374.i
  %.7.i = phi i32 [ %i.ic, %bb.al ], [ %.6304.i, %.preheader374.i ] ; 3 uses
  %i.hz = sext i32 %.7.i to i64
  %i.ia = getelementptr inbounds [56 x i8], ptr %i.hs, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 28
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !27 ; 3 uses
  %i.id = icmp ult i32 %.7.i, %i.ic
  br i1 %i.id, label %bb.al, label %.loopexit375.i, !llvm.loop !98

.loopexit375.i:                                   ; preds = %bb.al, %..loopexit375_crit_edge.i
  %i.ie = phi i32 [ %.pre418.i, %..loopexit375_crit_edge.i ], [ %i.ic, %bb.al ]
  %.8.i = phi i32 [ %i.hu, %..loopexit375_crit_edge.i ], [ %.7.i, %bb.al ] ; 2 uses
  %i.if = sub nsw i32 %.8.i, %i.ie
  %i.ig = icmp eq i32 %i.hq, %i.if
  br i1 %i.ig, label %bb.am, label %.preheader373.i

.preheader373.i:                                  ; preds = %.loopexit375.i
  %.not344391.i = icmp eq ptr %i.hb, null
  br i1 %.not344391.i, label %bb.ao, label %.lr.ph393.i

.lr.ph393.i:                                      ; preds = %.preheader373.i
  %.promoted395.i = load ptr, ptr %i.dg, align 8, !tbaa !75
  br label %bb.an

bb.am:                                            ; preds = %.loopexit375.i
  %i.ih = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.hr, i32 noundef %i.en)
  br label %bb.aq

bb.an:                                            ; preds = %bb.an, %.lr.ph393.i
  %i.ii = phi ptr [ %.promoted395.i, %.lr.ph393.i ], [ %.1287392.i, %bb.an ]
  %.1287392.i = phi ptr [ %i.hb, %.lr.ph393.i ], [ %i.ik, %bb.an ] ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.1287392.i, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !76 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.1287392.i, i64 4
  store i32 0, ptr %i.il, align 4, !tbaa !43
  %i.im = getelementptr inbounds nuw i8, ptr %.1287392.i, i64 8
  store ptr %i.ii, ptr %i.im, align 8, !tbaa !77
  %.not344.i = icmp eq ptr %i.ik, null
  br i1 %.not344.i, label %._crit_edge394.i, label %bb.an, !llvm.loop !99

._crit_edge394.i:                                 ; preds = %bb.an
  store ptr %.1287392.i, ptr %i.dg, align 8, !tbaa !75
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge394.i, %.preheader373.i
  %i.in = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.io = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.8.i, i32 noundef %2, i32 noundef %i.in) ; 2 uses
  %i.ip = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.io, i32 noundef %i.in)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.iq = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.hr, i32 noundef %i.en)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %.2288.i = phi ptr [ %i.hb, %bb.am ], [ %i.io, %bb.ao ], [ %i.hb, %bb.ap ] ; 2 uses
  %.2284.i = phi i32 [ %i.ih, %bb.am ], [ %i.ip, %bb.ao ], [ %i.iq, %bb.ap ]
  %.not345.i = icmp eq i32 %.2284.i, 0
  br i1 %.not345.i, label %bb.bg, label %bb.bd

bb.ar:                                            ; preds = %bb.ae
  %i.ir = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %i.em, i32 noundef %1, i32 noundef %i.en) ; 8 uses
  %magicptr358.i = ptrtoint ptr %i.ir to i64
  switch i64 %magicptr358.i, label %bb.as [
    i64 1, label %.thread.i
    i64 0, label %.preheader381.i
  ]

.preheader381.i:                                  ; preds = %bb.ar
  %i.is = load ptr, ptr %i.dc, align 8, !tbaa !8
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.it = load i32, ptr %i.ir, align 8, !tbaa !70 ; 2 uses
  %.pre.i = load ptr, ptr %i.dc, align 8, !tbaa !8
  %.phi.trans.insert.i = sext i32 %i.it to i64
  %.phi.trans.insert410.i = getelementptr inbounds [56 x i8], ptr %.pre.i, i64 %.phi.trans.insert.i
  %.phi.trans.insert411.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert410.i, i64 28
  %.pre412.i = load i32, ptr %.phi.trans.insert411.i, align 4, !tbaa !27
  br label %.loopexit382.i

bb.at:                                            ; preds = %bb.at, %.preheader381.i
  %.9.i = phi i32 [ %i.ix, %bb.at ], [ %i.em, %.preheader381.i ] ; 3 uses
  %i.iu = sext i32 %.9.i to i64
  %i.iv = getelementptr inbounds [56 x i8], ptr %i.is, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !27 ; 3 uses
  %i.iy = icmp ult i32 %.9.i, %i.ix
  br i1 %i.iy, label %bb.at, label %.loopexit382.i, !llvm.loop !100

.loopexit382.i:                                   ; preds = %bb.at, %bb.as
  %i.iz = phi i32 [ %.pre412.i, %bb.as ], [ %i.ix, %bb.at ]
  %.10.i = phi i32 [ %i.it, %bb.as ], [ %.9.i, %bb.at ] ; 3 uses
  %i.ja = sub nsw i32 %.10.i, %i.iz
  %i.jb = tail call fastcc ptr @cuddZddSymmSifting_down(ptr noundef nonnull %0, i32 noundef %.10.i, i32 noundef %2, i32 noundef %i.en) ; 7 uses
  %magicptr360.i = ptrtoint ptr %i.jb to i64
  switch i64 %magicptr360.i, label %bb.au [
    i64 1, label %bb.bg
    i64 0, label %.preheader379.i
  ]

.preheader379.i:                                  ; preds = %.loopexit382.i
  %i.jc = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  br label %bb.av

bb.au:                                            ; preds = %.loopexit382.i
  %i.jd = load ptr, ptr %i.dc, align 8, !tbaa !8  ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !64 ; 3 uses
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [56 x i8], ptr %i.jd, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !27
  %.not337.i = icmp eq i32 %i.jj, %i.jf
  br i1 %.not337.i, label %bb.bb, label %.loopexit380.i

bb.av:                                            ; preds = %bb.av, %.preheader379.i
  %.11.i = phi i32 [ %i.jn, %bb.av ], [ %.10.i, %.preheader379.i ] ; 2 uses
  %i.jk = sext i32 %.11.i to i64
  %i.jl = getelementptr inbounds [56 x i8], ptr %i.jc, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 28
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !27 ; 3 uses
  %i.jo = icmp ult i32 %.11.i, %i.jn
  br i1 %i.jo, label %bb.av, label %.loopexit380.i, !llvm.loop !101

.loopexit380.i:                                   ; preds = %bb.av, %bb.au
  %i.jp = phi ptr [ %i.jd, %bb.au ], [ %i.jc, %bb.av ]
  %.12.i = phi i32 [ %i.jf, %bb.au ], [ %i.jn, %bb.av ] ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.loopexit380.i
  %.3.i = phi i32 [ %.12.i, %.loopexit380.i ], [ %i.jt, %bb.aw ] ; 3 uses
  %i.jq = sext i32 %.3.i to i64
  %i.jr = getelementptr inbounds [56 x i8], ptr %i.jp, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 28
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !27 ; 2 uses
  %i.ju = icmp ult i32 %.3.i, %i.jt
  br i1 %i.ju, label %bb.aw, label %bb.ax, !llvm.loop !102

bb.ax:                                            ; preds = %bb.aw
  %i.jv = sub nsw i32 %.3.i, %.12.i
  %i.jw = icmp eq i32 %i.ja, %i.jv
  br i1 %i.jw, label %bb.ay, label %.preheader378.i

.preheader378.i:                                  ; preds = %bb.ax
  %.not339389.i = icmp eq ptr %i.ir, null
  br i1 %.not339389.i, label %bb.ba, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader378.i
  %.promoted.i = load ptr, ptr %i.dg, align 8, !tbaa !75
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jx = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.jb, i32 noundef %i.en)
  br label %bb.bc

bb.az:                                            ; preds = %bb.az, %.lr.ph.i
  %i.jy = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.1291390.i, %bb.az ]
  %.1291390.i = phi ptr [ %i.ir, %.lr.ph.i ], [ %i.ka, %bb.az ] ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.1291390.i, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !76 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.1291390.i, i64 4
  store i32 0, ptr %i.kb, align 4, !tbaa !43
  %i.kc = getelementptr inbounds nuw i8, ptr %.1291390.i, i64 8
  store ptr %i.jy, ptr %i.kc, align 8, !tbaa !77
  %.not339.i = icmp eq ptr %i.ka, null
  br i1 %.not339.i, label %._crit_edge.i, label %bb.az, !llvm.loop !103

._crit_edge.i:                                    ; preds = %bb.az
  store ptr %.1291390.i, ptr %i.dg, align 8, !tbaa !75
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i, %.preheader378.i
  %i.kd = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.ke = tail call fastcc ptr @cuddZddSymmSifting_up(ptr noundef nonnull %0, i32 noundef %.12.i, i32 noundef %1, i32 noundef %i.kd) ; 2 uses
  %i.kf = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef %i.ke, i32 noundef %i.kd)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.au
  %i.kg = tail call fastcc i32 @cuddZddSymmSiftingBackward(ptr noundef nonnull %0, ptr noundef nonnull %i.jb, i32 noundef %i.en)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.2292.i = phi ptr [ %i.ir, %bb.ay ], [ %i.ke, %bb.ba ], [ %i.ir, %bb.bb ] ; 2 uses
  %.3285.i = phi i32 [ %i.jx, %bb.ay ], [ %i.kf, %bb.ba ], [ %i.kg, %bb.bb ]
  %.not340.i = icmp eq i32 %.3285.i, 0
  br i1 %.not340.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.aq, %bb.ad, %bb.v
  %.3293.i = phi ptr [ %.0290.i, %bb.v ], [ %i.gd, %bb.ad ], [ %i.hr, %bb.aq ], [ %.2292.i, %bb.bc ] ; 2 uses
  %.3289.i = phi ptr [ %i.eq, %bb.v ], [ %.0286.i, %bb.ad ], [ %.2288.i, %bb.aq ], [ %i.jb, %bb.bc ] ; 2 uses
  %.not352396.i = icmp eq ptr %.3289.i, null
  br i1 %.not352396.i, label %.preheader365.i, label %.lr.ph399.i

.lr.ph399.i:                                      ; preds = %bb.bd
  %.promoted400.i = load ptr, ptr %i.dg, align 8, !tbaa !75
  br label %bb.be

..preheader365_crit_edge.i:                       ; preds = %bb.be
  store ptr %.4397.i, ptr %i.dg, align 8, !tbaa !75
  br label %.preheader365.i

.preheader365.i:                                  ; preds = %..preheader365_crit_edge.i, %bb.bd
  %.not353401.i = icmp eq ptr %.3293.i, null
  br i1 %.not353401.i, label %cuddZddSymmSiftingConvAux.exit, label %.lr.ph403.i

.lr.ph403.i:                                      ; preds = %.preheader365.i
  %.promoted404.i = load ptr, ptr %i.dg, align 8, !tbaa !75
  br label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph399.i
  %i.kh = phi ptr [ %.promoted400.i, %.lr.ph399.i ], [ %.4397.i, %bb.be ]
  %.4397.i = phi ptr [ %.3289.i, %.lr.ph399.i ], [ %i.kj, %bb.be ] ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.4397.i, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !76 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.4397.i, i64 4
  store i32 0, ptr %i.kk, align 4, !tbaa !43
  %i.kl = getelementptr inbounds nuw i8, ptr %.4397.i, i64 8
  store ptr %i.kh, ptr %i.kl, align 8, !tbaa !77
  %.not352.i = icmp eq ptr %i.kj, null
  br i1 %.not352.i, label %..preheader365_crit_edge.i, label %bb.be, !llvm.loop !104

bb.bf:                                            ; preds = %bb.bf, %.lr.ph403.i
  %i.km = phi ptr [ %.promoted404.i, %.lr.ph403.i ], [ %.4294402.i, %bb.bf ]
  %.4294402.i = phi ptr [ %.3293.i, %.lr.ph403.i ], [ %i.ko, %bb.bf ] ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.4294402.i, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !76 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.4294402.i, i64 4
  store i32 0, ptr %i.kp, align 4, !tbaa !43
  %i.kq = getelementptr inbounds nuw i8, ptr %.4294402.i, i64 8
  store ptr %i.km, ptr %i.kq, align 8, !tbaa !77
  %.not353.i = icmp eq ptr %i.ko, null
  br i1 %.not353.i, label %..loopexit366_crit_edge.i, label %bb.bf, !llvm.loop !105

bb.bg:                                            ; preds = %bb.bc, %.loopexit382.i, %bb.aq, %bb.aj, %bb.af, %bb.ad, %bb.v, %bb.n
  %.5295.i = phi ptr [ null, %bb.n ], [ %.0290.i, %bb.v ], [ %i.ir, %.loopexit382.i ], [ %i.gd, %bb.ad ], [ null, %bb.af ], [ %i.hr, %bb.aj ], [ %i.hr, %bb.aq ], [ %.2292.i, %bb.bc ] ; 2 uses
  %.5.i = phi ptr [ %i.eq, %bb.n ], [ %i.eq, %bb.v ], [ %i.jb, %.loopexit382.i ], [ %.0286.i, %bb.ad ], [ %i.hb, %bb.af ], [ %i.hb, %bb.aj ], [ %.2288.i, %bb.aq ], [ %i.jb, %bb.bc ] ; 2 uses
  %i.kr = icmp ult ptr %.5.i, inttoptr (i64 2 to ptr)
  br i1 %i.kr, label %.thread.i, label %.preheader363.i

.preheader363.i:                                  ; preds = %bb.bg
  %.promoted405.i = load ptr, ptr %i.dg, align 8, !tbaa !75
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.preheader363.i
  %i.ks = phi ptr [ %.6.i, %bb.bh ], [ %.promoted405.i, %.preheader363.i ]
  %.6.i = phi ptr [ %i.ku, %bb.bh ], [ %.5.i, %.preheader363.i ] ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.6.i, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !76 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.6.i, i64 4
  store i32 0, ptr %i.kv, align 4, !tbaa !43
  %i.kw = getelementptr inbounds nuw i8, ptr %.6.i, i64 8
  store ptr %i.ks, ptr %i.kw, align 8, !tbaa !77
  %.old1.not.i = icmp eq ptr %i.ku, null
  br i1 %.old1.not.i, label %.loopexit364.i, label %bb.bh

.loopexit364.i:                                   ; preds = %bb.bh
  store ptr %.6.i, ptr %i.dg, align 8, !tbaa !75
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ar, %bb.x, %.loopexit364.i, %bb.bg
  %.5295444.i = phi ptr [ %.5295.i, %bb.bg ], [ %.5295.i, %.loopexit364.i ], [ %i.gd, %bb.x ], [ %i.ir, %bb.ar ] ; 2 uses
  %i.kx = icmp ult ptr %.5295444.i, inttoptr (i64 2 to ptr)
  br i1 %i.kx, label %cuddZddSymmSiftingConvAux.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i
  %.promoted406.i = load ptr, ptr %i.dg, align 8, !tbaa !75
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader.i
  %i.ky = phi ptr [ %.6296.i, %bb.bi ], [ %.promoted406.i, %.preheader.i ]
  %.6296.i = phi ptr [ %i.la, %bb.bi ], [ %.5295444.i, %.preheader.i ] ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.6296.i, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !76 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.6296.i, i64 4
  store i32 0, ptr %i.lb, align 4, !tbaa !43
  %i.lc = getelementptr inbounds nuw i8, ptr %.6296.i, i64 8
  store ptr %i.ky, ptr %i.lc, align 8, !tbaa !77
  %.old3.not.i = icmp eq ptr %i.la, null
  br i1 %.old3.not.i, label %.loopexit.i, label %bb.bi

.loopexit.i:                                      ; preds = %bb.bi
  store ptr %.6296.i, ptr %i.dg, align 8, !tbaa !75
  br label %cuddZddSymmSiftingConvAux.exit.thread

..loopexit366_crit_edge.i:                        ; preds = %bb.bf
  store ptr %.4294402.i, ptr %i.dg, align 8, !tbaa !75
  br label %cuddZddSymmSiftingConvAux.exit

cuddZddSymmSiftingConvAux.exit:                   ; preds = %..loopexit366_crit_edge.i, %.preheader365.i, %bb.l
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge178.a, label %.lr.ph177, !llvm.loop !106

._crit_edge178.a:                                 ; preds = %cuddZddSymmSiftingConvAux.exit, %.lr.ph177, %._crit_edge174
  %i.ld = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.le = icmp ugt i32 %i.dh, %i.ld
  br i1 %i.le, label %.preheader147, label %._crit_edge180, !llvm.loop !107

._crit_edge180:                                   ; preds = %._crit_edge178.a, %._crit_edge169
  br i1 %.not161, label %cuddZddSymmSummary.exit, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %._crit_edge180
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !8  ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.i134, %.lr.ph.i133
  %.01928.i = phi i32 [ 0, %.lr.ph.i133 ], [ %.2.i135, %.loopexit.i134 ] ; 2 uses
  %.02127.i = phi i32 [ %1, %.lr.ph.i133 ], [ %i.lq, %.loopexit.i134 ] ; 5 uses
  %i.lh = sext i32 %.02127.i to i64
  %i.li = getelementptr inbounds [56 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 28
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !27
  %.not24.i = icmp eq i32 %i.lk, %.02127.i
  br i1 %.not24.i, label %.loopexit.i134, label %.preheader

.preheader:                                       ; preds = %bb.bj, %.preheader
  %.023.i = phi i32 [ %i.lp, %.preheader ], [ %.02127.i, %bb.bj ] ; 2 uses
  %.120.i = phi i32 [ %i.ll, %.preheader ], [ %.01928.i, %bb.bj ]
  %i.ll = add nsw i32 %.120.i, 1                  ; 2 uses
  %i.lm = sext i32 %.023.i to i64
  %i.ln = getelementptr inbounds [56 x i8], ptr %i.lg, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 28
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !27 ; 2 uses
  %.not25.i = icmp eq i32 %i.lp, %.02127.i
  br i1 %.not25.i, label %.loopexit.i134, label %.preheader, !llvm.loop !57

.loopexit.i134:                                   ; preds = %.preheader, %bb.bj
  %.122.i = phi i32 [ %.02127.i, %bb.bj ], [ %.023.i, %.preheader ] ; 2 uses
  %.2.i135 = phi i32 [ %.01928.i, %bb.bj ], [ %i.ll, %.preheader ] ; 2 uses
  %i.lq = add nsw i32 %.122.i, 1
  %.not.not.i = icmp slt i32 %.122.i, %2
  br i1 %.not.not.i, label %bb.bj, label %cuddZddSymmSummary.exit.loopexit, !llvm.loop !58

cuddZddSymmSummary.exit.loopexit:                 ; preds = %.loopexit.i134
  %i.lr = add nsw i32 %.2.i135, 1
  br label %cuddZddSymmSummary.exit

cuddZddSymmSummary.exit:                          ; preds = %cuddZddSymmSummary.exit.loopexit, %._crit_edge180
  %.019.lcssa.i = phi i32 [ 1, %._crit_edge180 ], [ %i.lr, %cuddZddSymmSummary.exit.loopexit ] ; 2 uses
  tail call void @free(ptr noundef %i.j) #12
  %i.ls = load ptr, ptr @zdd_entry, align 8, !tbaa !46 ; 2 uses
  %.not125 = icmp eq ptr %i.ls, null
  br i1 %.not125, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %cuddZddSymmSummary.exit
  tail call void @free(ptr noundef nonnull %i.ls) #12
  store ptr null, ptr @zdd_entry, align 8, !tbaa !46
  br label %bb.bo

cuddZddSymmSiftingConvAux.exit.thread:            ; preds = %bb.h, %.thread.i, %.loopexit.i, %bb.c
  %.pr = load ptr, ptr @zdd_entry, align 8, !tbaa !46 ; 2 uses
  %.not130 = icmp eq ptr %.pr, null
  br i1 %.not130, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %cuddZddSymmSiftingConvAux.exit.thread
  tail call void @free(ptr noundef nonnull %.pr) #12
  store ptr null, ptr @zdd_entry, align 8, !tbaa !46
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %cuddZddSymmSiftingConvAux.exit.thread
  br i1 %i.k, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @free(ptr noundef nonnull %i.j) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bk, %cuddZddSymmSummary.exit, %.thread143, %bb.bm, %bb.bn
  %.0105 = phi i32 [ 0, %.thread143 ], [ 0, %bb.bn ], [ 0, %bb.bm ], [ %.019.lcssa.i, %cuddZddSymmSummary.exit ], [ %.019.lcssa.i, %bb.bk ]
  ret i32 %.0105
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cuddZddSymmSifting_down(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !108
  %i.b = tail call i32 @cuddZddNextHigh(ptr noundef %0, i32 noundef %1) #12 ; 2 uses
  %.not93 = icmp sgt i32 %i.b, %2
  br i1 %.not93, label %.loopexit90, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.07696 = phi i32 [ %3, %.lr.ph ], [ %.2, %bb.q ] ; 5 uses
  %.07795 = phi i32 [ %i.b, %.lr.ph ], [ %i.ba, %bb.q ] ; 10 uses
  %.07894 = phi i32 [ %1, %.lr.ph ], [ %.0, %bb.q ] ; 6 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.f = sext i32 %.07795 to i64                  ; 3 uses
  %i.g = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ]  ; 3 uses
  %i.j = sext i32 %.0 to i64
  %i.k = getelementptr inbounds [56 x i8], ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %.not85 = icmp eq i32 %i.m, %.07795
  br i1 %.not85, label %bb.d, label %bb.c, !llvm.loop !109

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @cuddZddSymmCheck(ptr noundef nonnull %0, i32 noundef %.07894, i32 noundef %.07795)
  %.not86 = icmp eq i32 %i.n, 0
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !8    ; 4 uses
  %i.p = sext i32 %.07894 to i64
  %i.q = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27   ; 2 uses
  br i1 %.not86, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.07795, ptr %i.r, align 4, !tbaa !27
  %i.t = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.075 = phi i32 [ %i.v, %bb.e ], [ %i.z, %bb.f ]
  %i.w = sext i32 %.075 to i64
  %i.x = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27   ; 2 uses
  %.not88 = icmp eq i32 %i.z, %.07795
  br i1 %.not88, label %bb.g, label %bb.f, !llvm.loop !110

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 %i.s, ptr %i.aa, align 4, !tbaa !27
  br label %bb.q

bb.h:                                             ; preds = %bb.d
  %i.ab = icmp eq i32 %i.s, %.07894
  br i1 %i.ab, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27
  %i.af = icmp eq i32 %i.ae, %.07795
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.07894, i32 noundef %.07795) #12 ; 4 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %._crit_edge106, label %bb.k

._crit_edge106:                                   ; preds = %bb.j
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %split

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #12 ; 7 uses
  %i.aj = icmp eq ptr %i.ai, null
  %.pr.pre107 = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  br i1 %i.aj, label %split, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.07894, ptr %i.ai, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %.07795, ptr %i.ak, align 4, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.pr.pre107, ptr %i.am, align 8, !tbaa !76
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !108
  %i.an = sitofp i32 %i.ag to double
  %i.ao = sitofp i32 %.07696 to double
  %i.ap = load double, ptr %i.d, align 8, !tbaa !112
  %i.aq = fmul double %i.ap, %i.ao
  %i.ar = fcmp olt double %i.aq, %i.an
  br i1 %i.ar, label %.loopexit90, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %.07696)
  %i.as = tail call i32 @cuddZddNextHigh(ptr noundef nonnull %0, i32 noundef %.07795) #12 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.i, %bb.h
  %i.at = call fastcc i32 @zdd_group_move(ptr noundef nonnull %0, i32 noundef %.07894, i32 noundef %.07795, ptr noundef %i.a) ; 2 uses
  %i.au = sitofp i32 %i.at to double
  %i.av = sitofp i32 %.07696 to double
  %i.aw = load double, ptr %i.d, align 8, !tbaa !112
  %i.ax = fmul double %i.aw, %i.av
  %i.ay = fcmp olt double %i.ax, %i.au
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %.loopexit90

bb.p:                                             ; preds = %bb.n
  %spec.select89 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %.07696)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.g
  %.2 = phi i32 [ %.07696, %bb.g ], [ %spec.select, %bb.m ], [ %spec.select89, %bb.p ]
  %i.ba = tail call i32 @cuddZddNextHigh(ptr noundef nonnull %0, i32 noundef %.0) #12 ; 2 uses
  %.not = icmp sgt i32 %i.ba, %2
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !113

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %.loopexit90

split:                                            ; preds = %bb.k, %._crit_edge106
  %.pr = phi ptr [ %.pr.pre, %._crit_edge106 ], [ %.pr.pre107, %bb.k ] ; 2 uses
  %.not8797 = icmp eq ptr %.pr, null
  br i1 %.not8797, label %.loopexit90, label %.lr.ph99

.lr.ph99:                                         ; preds = %split
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted100 = load ptr, ptr %i.bb, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph99, %bb.r
  %i.bc = phi ptr [ %.promoted100, %.lr.ph99 ], [ %i.bd, %bb.r ]
  %i.bd = phi ptr [ %.pr, %.lr.ph99 ], [ %i.bf, %bb.r ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !77
  %.not87 = icmp eq ptr %i.bf, null
  br i1 %.not87, label %..loopexit_crit_edge, label %bb.r, !llvm.loop !114

..loopexit_crit_edge:                             ; preds = %bb.r
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !75
  br label %.loopexit90

.loopexit90:                                      ; preds = %bb.l, %split, %..loopexit_crit_edge, %bb.a, %._crit_edge.loopexit, %bb.o
  %.074 = phi ptr [ inttoptr (i64 1 to ptr), %split ], [ null, %bb.a ], [ %i.az, %bb.o ], [ %.pre, %._crit_edge.loopexit ], [ inttoptr (i64 1 to ptr), %..loopexit_crit_edge ], [ %i.ai, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.074
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cuddZddSymmSiftingBackward(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %.not51 = icmp eq ptr %1, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
end_hunk_0
