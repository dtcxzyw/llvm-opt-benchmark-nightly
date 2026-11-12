Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigMffc?download=true
inline.NumInlined: 37
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Aig_NodeMffcSupp:bb.a
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %1, i64 24
  %.val19 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.d = trunc i64 %.val19 to i32
  %i.e = and i32 %i.d, 7
  %i.f = add nsw i32 %i.e, -7
  %narrow.i = icmp ult i32 %i.f, -2
  br i1 %narrow.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %.val19, 7
  %i.h = icmp eq i64 %i.g, 2
  %or.cond = and i1 %i.a, %i.h
  br i1 %or.cond, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28   ; 7 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !29
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %Vec_PtrPush.exit

bb.f:                                             ; preds = %bb.e
  %i.m = icmp slt i32 %i.j, 16
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.o, i64 noundef 128) #10
  br label %Vec_PtrGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.q = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #11
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.r = phi ptr [ %i.p, %bb.h ], [ %i.q, %bb.i ]
  store ptr %i.r, ptr %i.n, align 8, !tbaa !30
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.s = icmp samesign ult i32 %i.j, 1073741823
  %i.t = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.j, %spec.select.i
  br i1 %.not.i10.i, label %bb.k, label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.v, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.x) #10
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = phi ptr [ %i.y, %bb.l ], [ %i.z, %bb.m ]
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !30
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.n, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !29
  %.pre = load i32, ptr %i.i, align 4, !tbaa !28
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_PtrGrow.exit12.sink.split.i
  %i.ab = phi i32 [ %i.j, %bb.e ], [ %i.j, %bb.j ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.ae = add nsw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !28
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.af
  store ptr %1, ptr %i.ag, align 8, !tbaa !31
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  tail call void @Aig_ManIncrementTravId(ptr noundef %0) #9
  %i.ah = tail call i32 @Aig_NodeDeref_rec(ptr noundef nonnull %1, i32 noundef %2, ptr noundef null, ptr noundef null)
  tail call void @Aig_NodeMffcSupp_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef null)
  %i.ai = tail call i32 @Aig_NodeRef_rec(ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %Vec_PtrPush.exit, %bb.o
  %.0 = phi i32 [ %i.ah, %bb.o ], [ 0, %Vec_PtrPush.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

declare void @Aig_ManIncrementTravId(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @Aig_NodeMffcLabel(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  tail call void @Aig_ManIncrementTravId(ptr noundef %0) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.f = tail call i32 @Aig_NodeDeref_rec(ptr noundef %1, i32 noundef 0, ptr noundef %2, ptr noundef %i.e)
  %i.g = tail call i32 @Aig_NodeRefLabel_rec(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) ; 0 uses
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define i32 @Aig_NodeMffcLabelCut(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  tail call void @Aig_ManIncrementTravId(ptr noundef %0) #9
  %i.a = getelementptr i8, ptr %2, i64 4          ; 4 uses
  %.val1821 = load i32, ptr %i.a, align 4, !tbaa !28
  %i.b = icmp sgt i32 %.val1821, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val20 = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val20, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 64
  %i.i = and i64 %i.h, 4294967232
  %i.j = and i64 %i.g, -4294967233
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.f, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val18 = load i32, ptr %i.a, align 4, !tbaa !28
  %i.l = sext i32 %.val18 to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.critedge, !llvm.loop !41

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.n = tail call i32 @Aig_NodeDeref_rec(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null)
  %i.o = tail call i32 @Aig_NodeRefLabel_rec(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 0 uses
  %.val23 = load i32, ptr %i.a, align 4, !tbaa !28
  %i.p = icmp sgt i32 %.val23, 0
  br i1 %i.p, label %.lr.ph25, label %.critedge2

.lr.ph25:                                         ; preds = %.critedge
  %i.q = getelementptr i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph25, %bb.c
  %indvars.iv27 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next28, %bb.c ] ; 2 uses
  %.val19 = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %indvars.iv27
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = add i64 %i.u, 4294967232
  %i.w = and i64 %i.v, 4294967232
  %i.x = and i64 %i.u, -4294967233
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.t, align 8
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !28
  %i.z = sext i32 %.val to i64
  %i.aa = icmp slt i64 %indvars.iv.next28, %i.z
  br i1 %i.aa, label %bb.c, label %.critedge2, !llvm.loop !42

.critedge2:                                       ; preds = %bb.c, %.critedge
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Aig_NodeMffcExtendCut(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val42 = load i32, ptr %i.a, align 4, !tbaa !28 ; 3 uses
  %i.b = icmp sgt i32 %.val42, 0
  br i1 %i.b, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val44 = load ptr, ptr %i.c, align 8, !tbaa !30 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val42 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %4 = icmp ult i32 %.val42, 4
  br i1 %4, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %.03346 = phi i32 [ 0, %.lr.ph.new ], [ %i.n, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %5 = getelementptr i8, ptr %i.e, i64 28
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16777215
  %8 = tail call range(i32 0, 16777216) i32 @llvm.umax.i32(i32 range(i32 0, 16777216) %.03346, i32 range(i32 0, 16777216) %7)
  %9 = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %10 = load ptr, ptr %i.f, align 8, !tbaa !31
  %11 = getelementptr i8, ptr %10, i64 28
  %12 = load i32, ptr %11, align 4
  %i.g = and i32 %12, 16777215
  %i.h = tail call range(i32 0, 16777216) i32 @llvm.umax.i32(i32 range(i32 0, 16777216) %8, i32 range(i32 0, 16777216) %i.g)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %13 = getelementptr i8, ptr %i.k, i64 28
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16777215
  %16 = tail call range(i32 0, 16777216) i32 @llvm.umax.i32(i32 range(i32 0, 16777216) %i.h, i32 range(i32 0, 16777216) %15)
  %17 = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 24
  %18 = load ptr, ptr %i.l, align 8, !tbaa !31
  %19 = getelementptr i8, ptr %18, i64 28
  %20 = load i32, ptr %19, align 4
  %i.m = and i32 %20, 16777215
  %i.n = tail call range(i32 0, 16777216) i32 @llvm.umax.i32(i32 range(i32 0, 16777216) %16, i32 range(i32 0, 16777216) %i.m) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.1 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.unr-lcssa, label %bb.b, !llvm.loop !43

.critedge.unr-lcssa:                              ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.unr-lcssa ]
  %.03346.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.n, %.critedge.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %.epil.preheader.a, %.epil.preheader
  %indvars.iv.epil.init.a = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %.epil.preheader.a ] ; 2 uses
  %.03346.epil.init.a = phi i32 [ %.03346.epil.init, %.epil.preheader ], [ %23, %.epil.preheader.a ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %.epil.preheader.a ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv.epil.init.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr i8, ptr %i.p, i64 28
  %21 = load i32, ptr %i.q, align 4
  %22 = and i32 %21, 16777215
  %23 = tail call range(i32 0, 16777216) i32 @llvm.umax.i32(i32 range(i32 0, 16777216) %.03346.epil.init.a, i32 range(i32 0, 16777216) %22) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init.a, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %.epil.preheader.a, !llvm.loop !44

.critedge:                                        ; preds = %.epil.preheader.a, %.critedge.unr-lcssa
  %.lcssa = phi i32 [ %i.n, %.critedge.unr-lcssa ], [ %23, %.epil.preheader.a ] ; 2 uses
  %i.r = icmp eq i32 %.lcssa, 0
  br i1 %i.r, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.s = tail call i32 @Aig_NodeDeref_rec(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  %.val47 = load i32, ptr %i.a, align 4, !tbaa !28 ; 2 uses
  %i.t = icmp sgt i32 %.val47, 0
  br i1 %i.t, label %.lr.ph51, label %.critedge2

.lr.ph51:                                         ; preds = %bb.c
  %i.u = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val43.pre57 = load ptr, ptr %i.u, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph51, %bb.f
  %.val60 = phi i32 [ %.val47, %.lr.ph51 ], [ %.val, %bb.f ]
  %.val43 = phi ptr [ %.val43.pre57, %.lr.ph51 ], [ %.val4358, %bb.f ] ; 2 uses
  %indvars.iv54 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next55, %bb.f ] ; 2 uses
  %.050 = phi i32 [ 1000000000, %.lr.ph51 ], [ %.2, %bb.f ] ; 3 uses
  %.03648 = phi ptr [ null, %.lr.ph51 ], [ %.238, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val43, i64 %indvars.iv54
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 28
  %24 = load i32, ptr %i.x, align 4
  %i.y = and i32 %24, 16777215
  %.not = icmp eq i32 %i.y, %.lcssa
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @Aig_NodeDeref_rec(ptr noundef nonnull %i.w, i32 noundef 0, ptr noundef null, ptr noundef null) ; 2 uses
  %i.aa = icmp sgt i32 %.050, %i.z
  %spec.select = select i1 %i.aa, ptr %i.w, ptr %.03648
  %spec.select41 = tail call i32 @llvm.smin.i32(i32 %.050, i32 %i.z)
  %i.ab = tail call i32 @Aig_NodeRef_rec(ptr noundef nonnull %i.w, i32 noundef 0) ; 0 uses
  %.val43.pre = load ptr, ptr %i.u, align 8, !tbaa !30
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val = phi i32 [ %.val60, %bb.d ], [ %.val.pre, %bb.e ] ; 2 uses
  %.val4358 = phi ptr [ %.val43, %bb.d ], [ %.val43.pre, %bb.e ]
  %.238 = phi ptr [ %.03648, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.050, %bb.d ], [ %spec.select41, %bb.e ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ac = sext i32 %.val to i64
  %i.ad = icmp slt i64 %indvars.iv.next55, %i.ac
  br i1 %i.ad, label %bb.d, label %.critedge2, !llvm.loop !45

.critedge2:                                       ; preds = %bb.f, %bb.c
  %.036.lcssa = phi ptr [ null, %bb.c ], [ %.238, %bb.f ] ; 3 uses
  %i.ae = tail call i32 @Aig_NodeDeref_rec(ptr noundef %.036.lcssa, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !28
  tail call void @Aig_ManIncrementTravId(ptr noundef %0) #9
  tail call void @Aig_NodeMffcSupp_rec(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %3, i32 noundef 1, ptr noundef %.036.lcssa)
  %i.ag = tail call i32 @Aig_NodeRef_rec(ptr noundef %.036.lcssa, i32 noundef 0) ; 0 uses
  %i.ah = tail call i32 @Aig_NodeRef_rec(ptr noundef %1, i32 noundef 0) ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %.critedge, %.critedge2
  %.039 = phi i32 [ 1, %.critedge2 ], [ 0, %.critedge ], [ 0, %bb.a ]
  ret i32 %.039
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS10Aig_Obj_t_", !8, i64 0}
!10 = !{!"Aig_Obj_t_", !4, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 31, !5, i64 32, !5, i64 36, !4, i64 40}
!11 = !{!10, !9, i64 8}
!12 = !{!10, !9, i64 16}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!15 = !{!"any p2 pointer", !8, i64 0}
!16 = !{!"p2 _ZTS10Aig_Obj_t_", !15, i64 0}
!17 = !{!"p1 int", !8, i64 0}
!18 = !{!"p1 _ZTS10Vec_Vec_t_", !8, i64 0}
!19 = !{!"p1 _ZTS14Aig_MmFixed_t_", !8, i64 0}
!20 = !{!"p1 _ZTS10Vec_Int_t_", !8, i64 0}
!21 = !{!"p1 _ZTS10Abc_Cex_t_", !8, i64 0}
!22 = !{!"p1 _ZTS10Aig_Man_t_", !8, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"Aig_Man_t_", !13, i64 0, !13, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !10, i64 56, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !4, i64 128, !5, i64 156, !16, i64 160, !5, i64 168, !17, i64 176, !5, i64 184, !18, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !17, i64 216, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !16, i64 248, !16, i64 256, !5, i64 264, !19, i64 272, !20, i64 280, !5, i64 288, !8, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !16, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !17, i64 368, !17, i64 376, !14, i64 384, !20, i64 392, !20, i64 400, !21, i64 408, !14, i64 416, !22, i64 424, !14, i64 432, !5, i64 440, !20, i64 448, !18, i64 456, !20, i64 464, !20, i64 472, !5, i64 480, !23, i64 488, !23, i64 496, !23, i64 504, !14, i64 512, !14, i64 520}
!25 = !{!24, !5, i64 312}
!26 = !{!10, !5, i64 32}
!27 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !15, i64 8}
!28 = !{!27, !5, i64 4}
!29 = !{!27, !5, i64 0}
!30 = !{!27, !15, i64 8}
!31 = !{!8, !8, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"float", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!10, !5, i64 36}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = !{!24, !20, i64 464}
!39 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!40 = !{!39, !17, i64 8}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !32}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !46}
!45 = distinct !{!45, !32}
!46 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
