inline.NumInlined: 280
inline.NumDeleted: 31
begin_hunk_0_@zzlDeleteRangeByScore:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !36
  %i.o = call double @fast_float_strtod(ptr noundef nonnull %i.a, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %zzlGetScore.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !92
  %i.q = sitofp i64 %i.p to double
  br label %zzlGetScore.exit

zzlGetScore.exit:                                 ; preds = %bb.d, %bb.e
  %.0.i = phi double [ %i.o, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.r = load i32, ptr %i.g, align 4, !tbaa !48
  %.not.i22 = icmp eq i32 %i.r, 0
  %i.s = load double, ptr %i.h, align 8, !tbaa !49 ; 2 uses
  %i.t = fcmp uge double %.0.i, %i.s
  %i.u = fcmp ugt double %.0.i, %i.s
  %.in.i = select i1 %.not.i22, i1 %i.u, i1 %i.t
  br i1 %.in.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %zzlGetScore.exit
  %i.v = call ptr @lpDeleteRangeWithEntry(ptr noundef %.01623, ptr noundef nonnull %i.d, i64 noundef 2) #17 ; 2 uses
  %i.w = add i64 %.024, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !175

.critedge:                                        ; preds = %bb.b, %zzlGetScore.exit, %bb.f
  %.016.lcssa = phi ptr [ %.01623, %bb.b ], [ %.01623, %zzlGetScore.exit ], [ %i.v, %bb.f ]
  %.0.lcssa = phi i64 [ %.024, %bb.b ], [ %.024, %zzlGetScore.exit ], [ %i.w, %bb.f ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge
  %.015 = phi ptr [ %.016.lcssa, %.critedge ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zzlDeleteRangeByLex(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %2, align 8, !tbaa !24
  %i.b = tail call ptr @zzlFirstInLexRange(ptr noundef %0, ptr noundef nonnull %1) ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.020 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]   ; 3 uses
  %.01419 = phi ptr [ %i.h, %bb.c ], [ %0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.pr, %bb.c ], [ %i.b, %bb.a ]
  %i.e = call ptr @lpNext(ptr noundef %.01419, ptr noundef nonnull %i.d) #17
  %.not17 = icmp eq ptr %i.e, null
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.g = call i32 @zzlLexValueLteMax(ptr noundef %i.f, ptr noundef nonnull %1)
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @lpDeleteRangeWithEntry(ptr noundef %.01419, ptr noundef nonnull %i.a, i64 noundef 2) #17 ; 2 uses
  %i.i = add i64 %.020, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.critedge, label %.preheader, !llvm.loop !176

.critedge:                                        ; preds = %.preheader, %bb.b, %bb.c
  %.014.lcssa = phi ptr [ %.01419, %.preheader ], [ %.01419, %bb.b ], [ %i.h, %bb.c ]
  %.0.lcssa = phi i64 [ %.020, %.preheader ], [ %.020, %bb.b ], [ %i.i, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.013 = phi ptr [ %.014.lcssa, %.critedge ], [ %0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByRank(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = zext i32 %1 to i64                       ; 3 uses
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 6 uses
  %.068 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1.lcssa, %.critedge ] ; 6 uses
  %.03466 = phi i64 [ 0, %.preheader.lr.ph ], [ %.135.lcssa, %.critedge ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.j = getelementptr [16 x i8], ptr %.068, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %.not45 = icmp eq ptr %i.k, null
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not44 = icmp eq i64 %indvars.iv, 1
  br i1 %.not44, label %.lr.ph.split.us, label %zslGetNodeSpanAtLevel.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %.not.i.us61 = icmp ne ptr %i.l, null
  %i.m = zext i1 %.not.i.us61 to i64
  %i.n = add i64 %.03466, %i.m
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %.thread.us, label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph.split.us
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.068, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge.loopexit

zslGetNodeSpanAtLevel.exit.thread.us:             ; preds = %.thread.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %.not.i.us = icmp ne ptr %i.r, null
  %i.s = zext i1 %.not.i.us to i64
  %i.t = add i64 %i.y, %i.s
  %i.u = icmp ult i64 %i.t, %i.g
  br i1 %i.u, label %.thread.us, label %.critedge, !llvm.loop !177

.thread.us:                                       ; preds = %.lr.ph.split.us, %zslGetNodeSpanAtLevel.exit.thread.us
  %i.v = phi ptr [ %i.r, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.l, %.lr.ph.split.us ]
  %.13546.us62 = phi i64 [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %.03466, %.lr.ph.split.us ]
  %i.w = phi ptr [ %i.aa, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.k, %.lr.ph.split.us ] ; 4 uses
  %.not.i37.us = icmp ne ptr %i.v, null
  %i.x = zext i1 %.not.i37.us to i64
  %i.y = add i64 %.13546.us62, %i.x               ; 4 uses
  %i.z = getelementptr [16 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not.us = icmp eq ptr %i.aa, null
  br i1 %.not.us, label %.critedge, label %zslGetNodeSpanAtLevel.exit.thread.us, !llvm.loop !177

zslGetNodeSpanAtLevel.exit:                       ; preds = %.lr.ph, %zslGetNodeSpanAtLevel.exit39
  %i.ab = phi ptr [ %i.ai, %zslGetNodeSpanAtLevel.exit39 ], [ %i.k, %.lr.ph ] ; 3 uses
  %.147 = phi ptr [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.068, %.lr.ph ] ; 2 uses
  %.13546 = phi i64 [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.03466, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.147, i64 %indvars.iv.next
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = add i64 %i.ae, %.13546                  ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.g
  br i1 %i.ag, label %zslGetNodeSpanAtLevel.exit39, label %.critedge

zslGetNodeSpanAtLevel.exit39:                     ; preds = %zslGetNodeSpanAtLevel.exit
  %i.ah = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.critedge, label %zslGetNodeSpanAtLevel.exit, !llvm.loop !177

.critedge:                                        ; preds = %zslGetNodeSpanAtLevel.exit, %zslGetNodeSpanAtLevel.exit39, %.thread.us, %zslGetNodeSpanAtLevel.exit.thread.us, %.preheader
  %.135.lcssa = phi i64 [ %.03466, %.preheader ], [ %i.y, %.thread.us ], [ %i.y, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.af, %zslGetNodeSpanAtLevel.exit39 ], [ %.13546, %zslGetNodeSpanAtLevel.exit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.068, %.preheader ], [ %i.w, %.thread.us ], [ %i.w, %zslGetNodeSpanAtLevel.exit.thread.us ], [ %i.ab, %zslGetNodeSpanAtLevel.exit39 ], [ %.147, %zslGetNodeSpanAtLevel.exit ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1.lcssa, ptr %i.aj, align 8, !tbaa !29
  %i.ak = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ak, label %.preheader, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %.critedge, %.critedge.thread
  %.1.lcssa96 = phi ptr [ %.068, %.critedge.thread ], [ %.1.lcssa, %.critedge ]
  %.135.lcssa95 = phi i64 [ %.03466, %.critedge.thread ], [ %.135.lcssa, %.critedge ]
  %i.al = add i64 %.135.lcssa95, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.034.lcssa = phi i64 [ 1, %bb.a ], [ %i.al, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1.lcssa96, %._crit_edge.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %i.ao = zext i32 %2 to i64                      ; 2 uses
  %i.ap = icmp ne ptr %i.an, null
  %i.aq = icmp ule i64 %.034.lcssa, %i.ao
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %zslUnlinkNode.exit
  %.23675 = phi i64 [ %.034.lcssa, %.lr.ph77 ], [ %.236, %zslUnlinkNode.exit ]
  %.274 = phi ptr [ %i.an, %.lr.ph77 ], [ %i.av, %zslUnlinkNode.exit ] ; 9 uses
  %.03373 = phi i64 [ 0, %.lr.ph77 ], [ %i.cx, %zslUnlinkNode.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.274, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31 ; 4 uses
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = icmp eq ptr %i.ba, %.274
  br i1 %i.bb, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.av, ptr %i.az, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.aw, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = icmp eq ptr %i.bg, %.274
  br i1 %i.bh, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.c

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.274, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bl = add i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !26
  %i.bp = add i64 %i.bl, %i.bo
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31
  store ptr %i.br, ptr %i.bf, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.c:                                             ; preds = %.peel.next.i
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bv = add i64 %i.bu, -1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.c, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.b
  %i.bw = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.av, %bb.b ] ; 2 uses
  %.not.i4042 = icmp eq ptr %i.bw, null
  %i.bx = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29
  %..i43 = select i1 %.not.i4042, ptr %0, ptr %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %..i43, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !31 ; 2 uses
  %.not.i40 = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %.274, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %..i = select i1 %.not.i40, ptr %0, ptr %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !29
  %i.ce = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i
  %i.cf = phi i32 [ %i.aw, %._crit_edge.i ], [ %i.cl, %bb.e ] ; 3 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr [16 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.e, label %zslUnlinkNode.exit

bb.e:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !26
  %i.cl = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.d, align 8, !tbaa !18
  %i.cm = icmp sgt i32 %i.cf, 2
  br i1 %i.cm, label %bb.d, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.d, %bb.e, %._crit_edge.i.thread
  %i.cn = load i64, ptr %i.as, align 8, !tbaa !23
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.as, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.274, i64 24
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !13
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.274, i64 %i.cr
  %i.ct = call i32 @dictDelete(ptr noundef %3, ptr noundef nonnull %i.cs) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.274, ptr noundef nonnull %i.a) #17
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !25
  %i.cw = sub i64 %i.cv, %i.cu
  store i64 %i.cw, ptr %i.at, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cx = add nuw nsw i64 %.03373, 1              ; 2 uses
  %.236 = add nuw nsw i64 %.23675, 1              ; 2 uses
  %i.cy = icmp ne ptr %i.av, null
  %4 = icmp ule i64 %.236, %i.ao
  %i.cz = select i1 %i.cy, i1 %4, i1 false
  br i1 %i.cz, label %bb.b, label %._crit_edge78, !llvm.loop !179

._crit_edge78:                                    ; preds = %zslUnlinkNode.exit, %._crit_edge
  %.033.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.cx, %zslUnlinkNode.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %.033.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zslDeleteRangeByScore(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.preheader.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.040 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %.1, %.critedge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.1 = phi ptr [ %i.j, %bb.c ], [ %.040, %.preheader ] ; 4 uses
  %i.i = getelementptr [16 x i8], ptr %.1, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 3 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.j, align 8, !tbaa !16 ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !45
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = load double, ptr %1, align 8, !tbaa !47  ; 2 uses
  %i.n = fcmp ule double %i.k, %i.m
  %i.o = fcmp ult double %i.k, %i.m
  %.in.i = select i1 %.not.i, i1 %i.o, i1 %i.n
  br i1 %.in.i, label %bb.b, label %.critedge, !llvm.loop !180

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next
  store ptr %.1, ptr %i.p, align 8, !tbaa !29
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.preheader, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %.1, %.critedge ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %zslUnlinkNode.exit
  %.244 = phi ptr [ %i.s, %.lr.ph ], [ %i.ad, %zslUnlinkNode.exit ] ; 10 uses
  %.02943 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %zslUnlinkNode.exit ] ; 2 uses
  %i.x = load double, ptr %.244, align 8, !tbaa !16 ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !48
  %.not.i34 = icmp eq i32 %i.y, 0
  %i.z = load double, ptr %i.u, align 8, !tbaa !49 ; 2 uses
  %i.aa = fcmp uge double %i.x, %i.z
  %i.ab = fcmp ugt double %i.x, %i.z
  %.in.i35 = select i1 %.not.i34, i1 %i.ab, i1 %i.aa
  br i1 %.in.i35, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.244, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !18  ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i.thread

.lr.ph.i:                                         ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.ae to i64
  %i.ag = load ptr, ptr %i.b, align 16, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = icmp eq ptr %i.ai, %.244
  br i1 %i.aj, label %zslIncrNodeSpanAtLevel.exit.peel.i, label %zslDecrNodeSpanAtLevel.exit.peel.i

zslIncrNodeSpanAtLevel.exit.peel.i:               ; preds = %.lr.ph.i
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.peel.i

zslDecrNodeSpanAtLevel.exit.peel.i:               ; preds = %zslIncrNodeSpanAtLevel.exit.peel.i, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.ae, 1
  br i1 %exitcond.peel.not.i, label %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, label %.peel.next.i

zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge: ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %._crit_edge.i.thread

.peel.next.i:                                     ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i, %zslDecrNodeSpanAtLevel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %zslDecrNodeSpanAtLevel.exit.i ], [ 1, %zslDecrNodeSpanAtLevel.exit.peel.i ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq ptr %i.ao, %.244
  br i1 %i.ap, label %zslIncrNodeSpanAtLevel.exit.i, label %bb.f

zslIncrNodeSpanAtLevel.exit.i:                    ; preds = %.peel.next.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.244, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.at = add i64 %i.as, -1
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26
  %i.ax = add i64 %i.at, %i.aw
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  store ptr %i.az, ptr %i.an, align 8, !tbaa !31
  br label %zslDecrNodeSpanAtLevel.exit.i

bb.f:                                             ; preds = %.peel.next.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !26
  br label %zslDecrNodeSpanAtLevel.exit.i

zslDecrNodeSpanAtLevel.exit.i:                    ; preds = %bb.f, %zslIncrNodeSpanAtLevel.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !143

._crit_edge.i.thread:                             ; preds = %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge, %bb.e
  %i.be = phi ptr [ %.pre, %zslDecrNodeSpanAtLevel.exit.peel.i.._crit_edge.i.thread_crit_edge ], [ %i.ad, %bb.e ] ; 2 uses
  %.not.i3637 = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  %..i38 = select i1 %.not.i3637, ptr %0, ptr %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %..i38, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !29
  br label %zslUnlinkNode.exit

._crit_edge.i:                                    ; preds = %zslDecrNodeSpanAtLevel.exit.i
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not.i36 = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %.244, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29
  %..i = select i1 %.not.i36, ptr %0, ptr %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %..i, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !29
  %i.bm = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %._crit_edge.i
  %i.bn = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr [16 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.h, label %zslUnlinkNode.exit

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !26
  %i.bt = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.d, align 8, !tbaa !18
  %i.bu = icmp sgt i32 %i.bn, 2
  br i1 %i.bu, label %bb.g, label %zslUnlinkNode.exit, !llvm.loop !144

zslUnlinkNode.exit:                               ; preds = %bb.g, %bb.h, %._crit_edge.i.thread
  %i.bv = load i64, ptr %i.v, align 8, !tbaa !23
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr %i.v, align 8, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %.244, i64 24
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !13
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %.244, i64 %i.bz
  %i.cb = call i32 @dictDelete(ptr noundef %2, ptr noundef nonnull %i.ca) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @zfree_usable(ptr noundef nonnull %.244, ptr noundef nonnull %i.a) #17
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !24
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !25
  %i.ce = sub i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.w, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cf = add i64 %.02943, 1                      ; 2 uses
end_hunk_0
