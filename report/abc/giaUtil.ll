inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManReverseLevel:bb.a
  %.pre108 = and i32 %.pre106, 536870911
  br label %Vec_IntUpdateEntry.exit84

Vec_IntUpdateEntry.exit84:                        ; preds = %bb.m, %bb.n
  %.pre-phi109 = phi i32 [ %i.au, %bb.m ], [ %.pre108, %bb.n ]
  %i.bp = zext nneg i32 %.pre-phi109 to i64
  %i.bq = sub nsw i64 %indvars.iv.next, %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %.val55, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8
  %.not91 = icmp sgt i32 %i.bs, %i.u
  br i1 %.not91, label %Vec_IntUpdateEntry.exit77, label %bb.o

bb.o:                                             ; preds = %Vec_IntUpdateEntry.exit84
  store i32 %i.bm, ptr %i.br, align 4, !tbaa !8
  br label %Vec_IntUpdateEntry.exit77

Vec_IntUpdateEntry.exit77:                        ; preds = %bb.o, %Vec_IntUpdateEntry.exit84, %bb.l, %bb.k, %bb.j, %Vec_IntUpdateEntry.exit79, %bb.g, %Gia_ObjFaninId2.exit, %.lr.ph.split
  %i.bt = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.bt, label %.lr.ph.split, label %.critedge, !llvm.loop !82

.critedge:                                        ; preds = %Vec_IntUpdateEntry.exit77, %.lr.ph, %Vec_IntStart.exit
  ret ptr %i.b
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManRequiredLevel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = tail call ptr @Gia_ManReverseLevel(ptr noundef %0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val28 = load i32, ptr %i.d, align 4, !tbaa !64 ; 3 uses
  %i.e = icmp sgt i32 %.val28, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val29 = load ptr, ptr %i.f, align 8, !tbaa !46
  %.not = icmp eq ptr %.val29, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = getelementptr i8, ptr %i.c, i64 8
  %.val30.val = load ptr, ptr %i.h, align 8, !tbaa !61 ; 5 uses
  %.val27 = load ptr, ptr %i.g, align 8, !tbaa !61 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val28 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %.val28, 4
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.033 = phi i32 [ 0, %.lr.ph.split.new ], [ %i.aj, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.3, %bb.b ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val30.val, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = tail call noundef i32 @llvm.smax.i32(i32 %.033, i32 %i.n)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val30.val, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.u)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val30.val, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = tail call noundef i32 @llvm.smax.i32(i32 %i.v, i32 %i.ab)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val30.val, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = tail call noundef i32 @llvm.smax.i32(i32 %i.ac, i32 %i.ai) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !83

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %.033.epil.init = phi i32 [ 0, %.lr.ph.split ], [ %i.aj, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.033.epil = phi i32 [ %.033.epil.init, %.epil.preheader ], [ %i.ap, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val30.val, i64 %indvars.iv.epil
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = tail call noundef i32 @llvm.smax.i32(i32 %.033.epil, i32 %i.ao) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !84

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.aj, %.critedge.loopexit.unr-lcssa ], [ %i.ap, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph37, label %.critedge2

.lr.ph37:                                         ; preds = %.critedge
  %i.at = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.at, align 8, !tbaa !46
  %.not24 = icmp eq ptr %.val, null
  br i1 %.not24, label %.critedge2, label %.lr.ph37.split

.lr.ph37.split:                                   ; preds = %.lr.ph37
  %i.au = getelementptr i8, ptr %i.a, i64 8
  %.val26 = load ptr, ptr %i.au, align 8, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph37.split, %bb.d
  %indvars.iv40 = phi i64 [ 0, %.lr.ph37.split ], [ %indvars.iv.next41, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val26, i64 %indvars.iv40 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = sub nsw i32 %.0.lcssa, %i.aw
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !8
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.ay = load i32, ptr %i.aq, align 8, !tbaa !42
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next41, %i.az
  br i1 %i.ba, label %bb.d, label %.critedge2, !llvm.loop !85

.critedge2:                                       ; preds = %bb.d, %.lr.ph37, %.critedge
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManComputeSlacks(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call i32 @Gia_ManLevelNum(ptr noundef %0)
  %i.b = tail call ptr @Gia_ManReverseLevel(ptr noundef %0) ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !42  ; 3 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.e = add i32 %.val, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !64
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !72
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #40
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !61
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = icmp sgt i32 %.val, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.n = getelementptr i8, ptr %0, i64 160
  %i.o = getelementptr i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %i.p = phi ptr [ %i.j, %.lr.ph ], [ %i.bn, %Vec_IntPush.exit ] ; 6 uses
  %i.q = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.bo, %Vec_IntPush.exit ] ; 7 uses
  %i.r = phi i32 [ 0, %.lr.ph ], [ %i.bp, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 8 uses
  %.val15 = load ptr, ptr %i.l, align 8, !tbaa !46
  %.not = icmp eq ptr %.val15, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val17 = load ptr, ptr %i.n, align 8, !tbaa !71 ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val17, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 4 uses
  %i.u = sext i32 %i.t to i64                     ; 4 uses
  %.not.i.not.i.i = icmp slt i64 %indvars.iv, %i.u
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %.val17, align 8, !tbaa !72 ; 4 uses
  %i.w = shl nsw i32 %i.v, 1                      ; 2 uses
  %1 = sext i32 %i.w to i64
  %.not.i.i = icmp slt i64 %indvars.iv, %1
  %i.x = sext i32 %i.v to i64
  %.not.i.i.not.i.i.a = icmp slt i64 %indvars.iv, %i.x ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %2

2:                                                ; preds = %bb.e
  br i1 %.not.i.i.not.i.i.a, label %Vec_IntGrow.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %2
  %i.y = getelementptr inbounds nuw i8, ptr %.val17, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !61   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.aa) #41
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ %i.ab, %bb.g ], [ %i.ac, %bb.h ]
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !61
  %i.ae = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.j:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i.a, label %Vec_IntGrow.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = icmp slt i32 %i.v, 1073741823
  %spec.select.i.i.i = select i1 %i.af, i32 %i.w, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.v, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.val17, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !61 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.ah, null
  %i.ai = sext i32 %spec.select.i.i.i to i64
  %i.aj = shl nsw i64 %i.ai, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef %i.aj) #41
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.aj) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = phi ptr [ %i.ak, %bb.m ], [ %i.al, %bb.n ]
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !61
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.o, %bb.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.o ], [ %i.ae, %bb.i ]
  store i32 %spec.select.sink.i.i.i, ptr %.val17, align 8, !tbaa !72
  %.pre.i.i = load i32, ptr %i.s, align 4, !tbaa !64 ; 2 uses
  %.pre = sext i32 %.pre.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.k, %bb.j, %2
  %.pre-phi = phi i64 [ %.pre, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.u, %bb.k ], [ %i.u, %bb.j ], [ %i.u, %2 ] ; 2 uses
  %3 = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.t, %bb.k ], [ %i.t, %bb.j ], [ %i.t, %2 ]
  %.not3.i.i = icmp sgt i64 %.pre-phi, %indvars.iv
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val17, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = sub i32 %i.aq, %3
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.au, i1 false), !tbaa !8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.av, ptr %i.s, align 4, !tbaa !64
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.d, %._crit_edge.i.i.i
  %i.aw = getelementptr i8, ptr %.val17, i64 8
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %.val16 = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !8
  %i.bb = add i32 %i.ay, %i.ba
  %i.bc = sub i32 %i.a, %i.bb
  %i.bd = icmp eq i32 %i.r, %i.q
  br i1 %i.bd, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %Gia_ObjLevelId.exit
  %i.be = icmp slt i32 %i.q, 16
  br i1 %i.be, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.p, i64 noundef 64) #41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.bh = icmp samesign ult i32 %i.q, 1073741823
  %i.bi = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.bh, i32 %i.bi, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  br i1 %.not.i9.i, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i = icmp eq ptr %i.p, null
  %i.bj = zext nneg i32 %spec.select.i to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.bk) #41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bk) #40
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %bb.w, %bb.r, %bb.s
  %storemerge = phi ptr [ %i.bg, %bb.s ], [ %i.bf, %bb.r ], [ %i.bl, %bb.v ], [ %i.bm, %bb.w ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i, %bb.v ], [ %spec.select.i, %bb.w ] ; 2 uses
  store ptr %storemerge, ptr %i.k, align 8, !tbaa !61
  store i32 %spec.select.sink.i, ptr %i.d, align 8, !tbaa !72
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Gia_ObjLevelId.exit, %bb.t, %Vec_IntGrow.exit11.sink.split.i
  %i.bn = phi ptr [ %i.p, %Gia_ObjLevelId.exit ], [ %i.p, %bb.t ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bo = phi i32 [ %i.q, %Gia_ObjLevelId.exit ], [ %i.q, %bb.t ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bp = add nuw nsw i32 %i.r, 1                 ; 2 uses
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !64
  %i.bq = zext nneg i32 %i.r to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bq
  store i32 %i.bc, ptr %i.br, align 4, !tbaa !8
  %i.bs = load i32, ptr %i.c, align 8, !tbaa !42
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %bb.c, label %.critedge, !llvm.loop !86

.critedge:                                        ; preds = %bb.c, %Vec_IntPush.exit, %Vec_IntAlloc.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bw, null
  br i1 %.not.i18, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.bw) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.x
  tail call void @free(ptr noundef nonnull %i.b) #38
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManCreateValueRefs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %i.f, align 4, !tbaa !52
  %.val15 = load i64, ptr %i.e, align 4           ; 4 uses
  %i.g = and i64 %.val15, 2147483648              ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = and i64 %.val15, 536870911               ; 3 uses
  %i.i = icmp ne i64 %i.h, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.i
  br i1 %narrow.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split
  %i.j = sub nsw i64 0, %i.h
  %i.k = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !52
  %i.o = trunc i64 %.val15 to i32
  %i.p = and i32 %i.o, 536870911                  ; 2 uses
  %i.q = lshr i64 %.val15, 32                     ; 2 uses
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 536870911
  %i.t = icmp eq i32 %i.p, %i.s
  %.not.i18 = icmp ne i32 %i.p, 536870911
  %or.cond.not.i = and i1 %.not.i18, %i.t
  br i1 %or.cond.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = and i64 %i.q, 536870911
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph.split
  %.not.i20 = icmp ne i64 %i.g, 0
  %narrow.i21 = and i1 %.not.i20, %i.i
  br i1 %narrow.i21, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink29 = phi i64 [ %i.u, %bb.c ], [ %i.h, %bb.d ]
  %i.v = sub nsw i64 0, %.sink29
  %i.w = getelementptr inbounds [12 x i8], ptr %i.e, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !52
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !87

.critedge:                                        ; preds = %bb.e, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManCreateRefs(ptr nofree noundef captures(none) initializes((144, 152)) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.b = sext i32 %.val to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #42 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.c, ptr %i.d, align 8, !tbaa !88
  %i.e = icmp sgt i32 %.val, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val24, null
  %i.g = getelementptr i8, ptr %0, i64 40
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %Gia_ObjIsMuxId.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %Gia_ObjIsMuxId.exit.thread ] ; 7 uses
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %.val24, i64 %indvars.iv ; 2 uses
  %.val25 = load i64, ptr %i.h, align 4           ; 2 uses
  %i.i = and i64 %.val25, 2147483648              ; 2 uses
end_hunk_0
