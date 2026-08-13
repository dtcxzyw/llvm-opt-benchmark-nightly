inline.NumInlined: 657
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Ga2_ManRefinePrintPPis:bb.a
  %i.be = icmp sgt i32 %.val29, 0
  br i1 %i.be, label %.lr.ph47.preheader, label %.critedge2

.lr.ph47.preheader:                               ; preds = %.critedge
  %wide.trip.count = zext nneg i32 %.val29 to i64
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.l
  %indvars.iv50 = phi i64 [ 0, %.lr.ph47.preheader ], [ %indvars.iv.next51, %bb.l ] ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !75
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %.val33 = load ptr, ptr %i.bg, align 8, !tbaa !14
  %.not26 = icmp eq ptr %.val33, null
  br i1 %.not26, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph47
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val38, i64 %indvars.iv50
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.bi) ; 0 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph47, !llvm.loop !187

.critedge2:                                       ; preds = %.critedge
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.i = icmp eq ptr %.val38, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.m

.sink.split:                                      ; preds = %bb.l, %.lr.ph47
  %putchar71 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %.critedge2
  tail call void @free(ptr noundef nonnull %.val38) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ga2_GlaPrepareCexAndMap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !10
  store i32 1000, ptr %i.a, align 8, !tbaa !42
  %i.c = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #28 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val4860 = load i32, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.h = icmp sgt i32 %.val4860, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %0, align 8, !tbaa !75
  %i.l = getelementptr i8, ptr %i.k, i64 32
  %.val52.peel = load ptr, ptr %i.l, align 8, !tbaa !14
  %.not.peel = icmp eq ptr %.val52.peel, null
  %.not103 = icmp eq i32 %.val4860, 1
  %or.cond = or i1 %.not.peel, %.not103
  br i1 %or.cond, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %bb.k
  %.pre8088 = phi ptr [ %.pre8089, %bb.k ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.m = phi ptr [ %i.ay, %bb.k ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.n = phi ptr [ %i.az, %bb.k ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.o = phi ptr [ %i.ba, %bb.k ], [ %i.c, %.lr.ph ] ; 5 uses
  %i.p = phi i32 [ %i.bb, %bb.k ], [ 1000, %.lr.ph ] ; 9 uses
  %i.q = phi i32 [ %i.bc, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 1, %.lr.ph ] ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !75
  %i.s = getelementptr i8, ptr %i.m, i64 8
  %.val50 = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34   ; 2 uses
  %i.v = getelementptr i8, ptr %i.r, i64 32
  %.val52 = load ptr, ptr %i.v, align 8, !tbaa !14
  %.not = icmp eq ptr %.val52, null
  br i1 %.not, label %.critedge.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %.peel.next
  %i.w = sext i32 %i.u to i64
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.x = getelementptr i8, ptr %.val4.i, i64 8
  %.val4.val.i = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.y = shl nsw i64 %i.w, 2
  %i.z = getelementptr inbounds i8, ptr %.val4.val.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %Ga2_ObjIsAbs.exit, label %Ga2_ObjIsAbs.exit.thread

Ga2_ObjIsAbs.exit:                                ; preds = %bb.b
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.ad = shl nuw nsw i32 %i.aa, 1
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !82
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84
  %.not59 = icmp eq ptr %i.ah, null
  br i1 %.not59, label %Ga2_ObjIsAbs.exit.thread, label %bb.k

Ga2_ObjIsAbs.exit.thread:                         ; preds = %bb.b, %Ga2_ObjIsAbs.exit
  %i.ai = icmp eq i32 %i.q, %i.p
  br i1 %i.ai, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %Ga2_ObjIsAbs.exit.thread
  %i.aj = icmp slt i32 %i.p, 16
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.o, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.al = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.am = icmp samesign ult i32 %i.p, 1073741823
  %i.an = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.am, i32 %i.an, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %i.o, null
  %i.ao = zext nneg i32 %spec.select.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.ap) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %storemerge = phi ptr [ %i.al, %bb.f ], [ %i.ak, %bb.e ], [ %i.aq, %bb.i ], [ %i.ar, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !33
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !42
  %.pre = load i32, ptr %i.b, align 4, !tbaa !10
  %.pre80.pre = load ptr, ptr %i.e, align 8, !tbaa !89
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Ga2_ObjIsAbs.exit.thread, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %.pre80 = phi ptr [ %.pre8088, %Ga2_ObjIsAbs.exit.thread ], [ %.pre8088, %bb.g ], [ %.pre80.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.as = phi i32 [ %i.q, %Ga2_ObjIsAbs.exit.thread ], [ %i.p, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.at = phi ptr [ %i.n, %Ga2_ObjIsAbs.exit.thread ], [ %i.n, %bb.g ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.au = phi i32 [ %i.p, %Ga2_ObjIsAbs.exit.thread ], [ %i.p, %bb.g ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.av = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.av, ptr %i.b, align 4, !tbaa !10
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.aw
  store i32 %i.u, ptr %i.ax, align 4, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %Ga2_ObjIsAbs.exit, %Vec_IntPush.exit
  %.pre8089 = phi ptr [ %.pre80, %Vec_IntPush.exit ], [ %.pre8088, %Ga2_ObjIsAbs.exit ]
  %i.ay = phi ptr [ %.pre80, %Vec_IntPush.exit ], [ %i.m, %Ga2_ObjIsAbs.exit ] ; 2 uses
  %i.az = phi ptr [ %i.at, %Vec_IntPush.exit ], [ %i.n, %Ga2_ObjIsAbs.exit ] ; 2 uses
  %i.ba = phi ptr [ %i.at, %Vec_IntPush.exit ], [ %i.o, %Ga2_ObjIsAbs.exit ]
  %i.bb = phi i32 [ %i.au, %Vec_IntPush.exit ], [ %i.p, %Ga2_ObjIsAbs.exit ]
  %i.bc = phi i32 [ %i.av, %Vec_IntPush.exit ], [ %i.q, %Ga2_ObjIsAbs.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ay, i64 4
  %.val48 = load i32, ptr %i.bd, align 4, !tbaa !10
  %i.be = sext i32 %.val48 to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.peel.next, label %.critedge.loopexit.loopexit, !llvm.loop !188

.critedge.loopexit.loopexit:                      ; preds = %.peel.next, %bb.k
  %.val4985 = phi ptr [ %i.n, %.peel.next ], [ %i.az, %bb.k ]
  %.val47.pre.pre = load i32, ptr %i.b, align 4, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge.loopexit.loopexit, %bb.a
  %.val49 = phi ptr [ %i.c, %bb.a ], [ %.val4985, %.critedge.loopexit.loopexit ], [ %i.c, %.lr.ph ]
  %.val46 = phi i32 [ 0, %bb.a ], [ %.val47.pre.pre, %.critedge.loopexit.loopexit ], [ 0, %.lr.ph ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !159
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = tail call ptr @Abc_CexAlloc(i32 noundef 0, i32 noundef %.val46, i32 noundef %i.bk) #29 ; 3 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !159 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !178
  %.not4168 = icmp slt i32 %i.bo, 0
  br i1 %.not4168, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge
  %i.bq = getelementptr i8, ptr %0, i64 88
  %i.br = getelementptr i8, ptr %0, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bu = icmp sgt i32 %.val46, 0
  br i1 %i.bu, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bv = load ptr, ptr %0, align 8, !tbaa !75
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %.val51 = load ptr, ptr %i.bw, align 8, !tbaa !14
  %.not42 = icmp eq ptr %.val51, null
  %i.bx = zext nneg i32 %.val46 to i64
  br i1 %.not42, label %._crit_edge, label %.lr.ph66.a

.lr.ph66.a:                                       ; preds = %.preheader.preheader
  %.val3.i.i = load ptr, ptr %i.bq, align 8, !tbaa !91
  %3 = getelementptr i8, ptr %.val3.i.i, i64 8
  %.val3.val.i.i = load ptr, ptr %3, align 8, !tbaa !82
  %.val5.i.i = load ptr, ptr %i.br, align 8, !tbaa !86
  %4 = getelementptr i8, ptr %.val5.i.i, i64 8
  %.val5.val.i.i = load ptr, ptr %4, align 8, !tbaa !33
  br label %.lr.ph66.split

.lr.ph66.split:                                   ; preds = %.critedge2, %.lr.ph66.a
  %indvars.iv76 = phi i64 [ 0, %.lr.ph66.a ], [ %indvars.iv.next77, %.critedge2 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.val3.val.i.i, i64 %indvars.iv76
  %.val5.val.i.i.a = load ptr, ptr %i.by, align 8, !tbaa !84
  %i.bz = getelementptr i8, ptr %.val5.val.i.i.a, i64 8
  %.val.i.i54 = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.ca = trunc nuw nsw i64 %indvars.iv76 to i32
  %i.cb = mul nsw i32 %.val46, %i.ca
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph66.split, %Ga2_ObjSatValue.exit.thread
  %indvars.iv73 = phi i64 [ 0, %.lr.ph66.split ], [ %indvars.iv.next74, %Ga2_ObjSatValue.exit.thread ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %indvars.iv73
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !34
  %i.ce = zext i32 %i.cd to i64
  %sext.i.i.i = shl nuw i64 %i.ce, 32
  %i.cf = ashr exact i64 %sext.i.i.i, 30
  %i.cg = getelementptr inbounds i8, ptr %.val5.val.i.i, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val.i.i54, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !34 ; 3 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %Ga2_ObjSatValue.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = ashr i32 %i.ck, 1                       ; 2 uses
  %i.cn = load ptr, ptr %i.bs, align 8, !tbaa !101 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !107
  %.not.i = icmp slt i32 %i.cm, %i.co
  br i1 %.not.i, label %Ga2_ObjSatValue.exit, label %Ga2_ObjSatValue.exit.thread

Ga2_ObjSatValue.exit:                             ; preds = %bb.m
  %i.cp = getelementptr i8, ptr %i.cn, i64 288
  %.val.i55 = load ptr, ptr %i.cp, align 8, !tbaa !179
  %i.cq = sext i32 %i.cm to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %.val.i55, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !34
  %i.ct = trunc i32 %i.ck to i1
  %i.cu = icmp ne i32 %i.cs, 1
  %.not43 = xor i1 %i.cu, %i.ct
  br i1 %.not43, label %Ga2_ObjSatValue.exit.thread, label %bb.n

bb.n:                                             ; preds = %Ga2_ObjSatValue.exit
  %i.cv = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.cw = add nsw i32 %i.cb, %i.cv                ; 2 uses
  %i.cx = and i32 %i.cw, 31
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = ashr i32 %i.cw, 5
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !34
  %i.dd = or i32 %i.dc, %i.cy
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !34
  br label %Ga2_ObjSatValue.exit.thread

Ga2_ObjSatValue.exit.thread:                      ; preds = %bb.m, %bb.l, %Ga2_ObjSatValue.exit, %bb.n
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.de = icmp samesign ult i64 %indvars.iv.next74, %i.bx
  br i1 %i.de, label %bb.l, label %.critedge2, !llvm.loop !189

.critedge2:                                       ; preds = %Ga2_ObjSatValue.exit.thread
  %.pre87 = load i32, ptr %i.bn, align 8, !tbaa !159
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %i.df = sext i32 %.pre87 to i64
  %.not41.not = icmp slt i64 %indvars.iv76, %i.df
  br i1 %.not41.not, label %.lr.ph66.split, label %._crit_edge, !llvm.loop !190

._crit_edge:                                      ; preds = %.critedge2, %.preheader.preheader, %.preheader.lr.ph, %.critedge
  store ptr %i.a, ptr %2, align 8, !tbaa !49
  store ptr %i.bl, ptr %1, align 8, !tbaa !192
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Ga2_ManRefine(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !193
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !10
  store i32 100, ptr %i.g, align 8, !tbaa !42
  %i.i = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val7099 = load i32, ptr %i.m, align 4, !tbaa !10 ; 2 uses
  %i.n = icmp sgt i32 %.val7099, 0
  br i1 %i.n, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %0, align 8, !tbaa !75
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %.val76.peel = load ptr, ptr %i.r, align 8, !tbaa !14
  %.not62.peel = icmp eq ptr %.val76.peel, null
  %.not136 = icmp eq i32 %.val7099, 1
  %or.cond = or i1 %.not62.peel, %.not136
  br i1 %or.cond, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph, %bb.l
  %.pre121 = phi ptr [ %.pre122, %bb.l ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.s = phi ptr [ %i.bm, %bb.l ], [ %i.l, %.lr.ph ] ; 3 uses
  %i.t = phi ptr [ %i.bn, %bb.l ], [ %i.i, %.lr.ph ] ; 4 uses
  %i.u = phi ptr [ %i.bo, %bb.l ], [ %i.i, %.lr.ph ] ; 6 uses
  %i.v = phi i32 [ %i.bp, %bb.l ], [ 100, %.lr.ph ] ; 9 uses
  %i.w = phi i32 [ %i.bq, %bb.l ], [ 0, %.lr.ph ] ; 6 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 1, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.y = getelementptr i8, ptr %i.s, i64 8
  %.val73 = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val73, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 32
  %.val76 = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ac = sext i32 %i.aa to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [12 x i8], ptr %.val76, i64 %i.ac
  %.not62 = icmp eq ptr %.val76, null
  br i1 %.not62, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.peel.next
  %.val4.i = load ptr, ptr %i.o, align 8, !tbaa !86
  %i.ae = getelementptr i8, ptr %.val4.i, i64 8
  %.val4.val.i = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.af = shl nsw i64 %i.ac, 2
  %i.ag = getelementptr inbounds i8, ptr %.val4.val.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %Ga2_ObjIsAbs.exit, label %Ga2_ObjIsAbs.exit.thread

Ga2_ObjIsAbs.exit:                                ; preds = %bb.c
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !83
  %i.ak = shl nuw nsw i32 %i.ah, 1
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val.i.i = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !84
  %.not96 = icmp eq ptr %i.ao, null
  br i1 %.not96, label %Ga2_ObjIsAbs.exit.thread, label %bb.l

Ga2_ObjIsAbs.exit.thread:                         ; preds = %bb.c, %Ga2_ObjIsAbs.exit
  %.val80 = load i64, ptr %i.ad, align 4          ; 2 uses
  %i.ap = and i64 %.val80, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.ap, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsPi.exit, label %Gia_ObjIsPi.exit.thread

Gia_ObjIsPi.exit:                                 ; preds = %Ga2_ObjIsAbs.exit.thread
  %i.aq = lshr i64 %.val80, 32
  %i.ar = trunc nuw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 536870911
  %i.at = getelementptr i8, ptr %i.x, i64 16
  %.val.i81 = load i32, ptr %i.at, align 8, !tbaa !51
  %i.au = getelementptr i8, ptr %i.x, i64 64
  %.val3.i = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.av = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.av, align 4, !tbaa !10
  %i.aw = sub nsw i32 %.val3.val.i, %.val.i81
  %.not97 = icmp slt i32 %i.as, %i.aw
  br i1 %.not97, label %bb.l, label %Gia_ObjIsPi.exit.thread

Gia_ObjIsPi.exit.thread:                          ; preds = %Ga2_ObjIsAbs.exit.thread, %Gia_ObjIsPi.exit
  %i.ax = icmp eq i32 %i.w, %i.v
  br i1 %i.ax, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %Gia_ObjIsPi.exit.thread
  %i.ay = icmp slt i32 %i.v, 16
  br i1 %i.ay, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ba = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.bb = icmp samesign ult i32 %i.v, 1073741823
  %i.bc = shl nuw nsw i32 %i.v, 1
  %spec.select.i = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.v, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %i.u, null
  %i.bd = zext nneg i32 %spec.select.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.be) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.be) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.ba, %bb.g ], [ %i.az, %bb.f ], [ %i.bf, %bb.j ], [ %i.bg, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.j, align 8, !tbaa !33
  store i32 %spec.select.sink.i, ptr %i.g, align 8, !tbaa !42
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !89
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Gia_ObjIsPi.exit.thread, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %.pre = phi ptr [ %.pre121, %Gia_ObjIsPi.exit.thread ], [ %.pre121, %bb.h ], [ %.pre.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bh = phi ptr [ %i.t, %Gia_ObjIsPi.exit.thread ], [ %i.t, %bb.h ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.bi = phi i32 [ %i.v, %Gia_ObjIsPi.exit.thread ], [ %i.v, %bb.h ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bj = add nsw i32 %i.w, 1                     ; 2 uses
  store i32 %i.bj, ptr %i.h, align 4, !tbaa !10
  %i.bk = sext i32 %i.w to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bk
  store i32 %i.aa, ptr %i.bl, align 4, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %Gia_ObjIsPi.exit, %Ga2_ObjIsAbs.exit, %Vec_IntPush.exit
  %.pre122 = phi ptr [ %.pre, %Vec_IntPush.exit ], [ %.pre121, %Gia_ObjIsPi.exit ], [ %.pre121, %Ga2_ObjIsAbs.exit ]
  %i.bm = phi ptr [ %.pre, %Vec_IntPush.exit ], [ %i.s, %Gia_ObjIsPi.exit ], [ %i.s, %Ga2_ObjIsAbs.exit ] ; 2 uses
  %i.bn = phi ptr [ %i.bh, %Vec_IntPush.exit ], [ %i.t, %Gia_ObjIsPi.exit ], [ %i.t, %Ga2_ObjIsAbs.exit ]
  %i.bo = phi ptr [ %i.bh, %Vec_IntPush.exit ], [ %i.u, %Gia_ObjIsPi.exit ], [ %i.u, %Ga2_ObjIsAbs.exit ]
  %i.bp = phi i32 [ %i.bi, %Vec_IntPush.exit ], [ %i.v, %Gia_ObjIsPi.exit ], [ %i.v, %Ga2_ObjIsAbs.exit ]
  %i.bq = phi i32 [ %i.bj, %Vec_IntPush.exit ], [ %i.w, %Gia_ObjIsPi.exit ], [ %i.w, %Ga2_ObjIsAbs.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bm, i64 4
  %.val70 = load i32, ptr %i.br, align 4, !tbaa !10
  %i.bs = sext i32 %.val70 to i64
  %i.bt = icmp slt i64 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %.peel.next, label %.critedge, !llvm.loop !194

.critedge:                                        ; preds = %.peel.next, %bb.l, %.lr.ph, %bb.b
  %.val69 = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph ], [ %i.bq, %bb.l ], [ %i.w, %.peel.next ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !124
  %i.bw = add nsw i32 %i.bv, %.val69
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !124
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  call void @Ga2_GlaPrepareCexAndMap(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !90
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !49  ; 6 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !195
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !196
  %i.cg = tail call ptr @Rnm_ManRefine(ptr noundef %i.by, ptr noundef %i.bz, ptr noundef %i.ca, i32 noundef %i.cd, i32 noundef %i.cf, i32 noundef 1) #29 ; 5 uses
end_hunk_0
