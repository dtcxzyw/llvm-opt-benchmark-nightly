Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcUtil?download=true
inline.NumInlined: 908
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Abc_NtkReverseTopoOrder_rec:bb.a
  %i.bt = phi i32 [ %.pre77, %.critedge2._crit_edge ], [ %.val49.val.val, %bb.v ] ; 7 uses
  %i.bu = phi ptr [ %.pre75, %.critedge2._crit_edge ], [ %.val49.val, %bb.v ] ; 6 uses
  %.val39 = load i32, ptr %i.b, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !64
  %i.bx = icmp eq i32 %i.bt, %i.bw
  br i1 %i.bx, label %bb.x, label %Vec_IntPush.exit59

bb.x:                                             ; preds = %bb.w
  %i.by = icmp slt i32 %i.bt, 16
  br i1 %i.by, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %.not9.i.i57 = icmp eq ptr %i.ca, null
  br i1 %.not9.i.i57, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ca, i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i58

bb.aa:                                            ; preds = %bb.y
  %i.cc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #37
  br label %Vec_IntGrow.exit.i58

Vec_IntGrow.exit.i58:                             ; preds = %bb.aa, %bb.z
  %i.cd = phi ptr [ %i.cb, %bb.z ], [ %i.cc, %bb.aa ]
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i55

bb.ab:                                            ; preds = %bb.x
  %i.ce = icmp samesign ult i32 %i.bt, 1073741823
  %i.cf = shl nuw nsw i32 %i.bt, 1
  %spec.select.i52 = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 3 uses
  %.not.i9.i53 = icmp samesign ult i32 %i.bt, %spec.select.i52
  br i1 %.not.i9.i53, label %bb.ac, label %Vec_IntPush.exit59

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !65 ; 2 uses
  %.not9.i10.i54 = icmp eq ptr %i.ch, null
  %i.ci = zext nneg i32 %spec.select.i52 to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 2 uses
  br i1 %.not9.i10.i54, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %i.ch, i64 noundef %i.cj) #36
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.cj) #37
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = phi ptr [ %i.ck, %bb.ad ], [ %i.cl, %bb.ae ]
  store ptr %i.cm, ptr %i.cg, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i55

Vec_IntGrow.exit11.sink.split.i55:                ; preds = %bb.af, %Vec_IntGrow.exit.i58
  %spec.select.sink.i56 = phi i32 [ %spec.select.i52, %bb.af ], [ 16, %Vec_IntGrow.exit.i58 ]
  store i32 %spec.select.sink.i56, ptr %i.bu, align 8, !tbaa !64
  %.pre78 = load i32, ptr %i.bv, align 4, !tbaa !59
  br label %Vec_IntPush.exit59

Vec_IntPush.exit59:                               ; preds = %bb.w, %bb.ab, %Vec_IntGrow.exit11.sink.split.i55
  %i.cn = phi i32 [ %i.bt, %bb.w ], [ %i.bt, %bb.ab ], [ %.pre78, %Vec_IntGrow.exit11.sink.split.i55 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65
  %i.cq = add nsw i32 %i.cn, 1
  store i32 %i.cq, ptr %i.bv, align 4, !tbaa !59
  br label %.sink.split

.sink.split:                                      ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit59
  %.sink = phi i32 [ %i.cn, %Vec_IntPush.exit59 ], [ %i.aa, %Vec_IntPush.exit ]
  %.sink90 = phi ptr [ %i.cp, %Vec_IntPush.exit59 ], [ %i.ac, %Vec_IntPush.exit ]
  %.val39.sink = phi i32 [ %.val39, %Vec_IntPush.exit59 ], [ %.val40, %Vec_IntPush.exit ]
  %i.cr = sext i32 %.sink to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %.sink90, i64 %i.cr
  store i32 %.val39.sink, ptr %i.cs, align 4, !tbaa !54
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkReverseTopoOrder(ptr nofree noundef captures(none) initializes((424, 432)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %i.b = getelementptr i8, ptr %.val24, i64 4     ; 2 uses
  %.val24.val = load i32, ptr %i.b, align 4, !tbaa !41 ; 3 uses
  %i.c = mul nsw i32 %.val24.val, 10              ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #37 ; 5 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !64
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #37
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr %i.d, ptr %i.l, align 8, !tbaa !75
  %i.m = shl nsw i32 %.val24.val, 1               ; 8 uses
  %.not.i.i = icmp slt i32 %spec.store.select.i, %i.m
  br i1 %.not.i.i, label %bb.c, label %Vec_IntGrow.exit.i

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %.not9.i.i = icmp eq ptr %i.j, null
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.j, i64 noundef %i.o) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  store ptr %i.r, ptr %i.k, align 8, !tbaa !65
  store i32 %i.m, ptr %i.d, align 8, !tbaa !64
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %Vec_IntAlloc.exit
  %i.s = phi ptr [ %i.r, %bb.f ], [ %i.j, %Vec_IntAlloc.exit ]
  %i.t = icmp sgt i32 %.val24.val, 0
  br i1 %i.t, label %Vec_IntFill.exit, label %Vec_IntFill.exit.thread

Vec_IntFill.exit.thread:                          ; preds = %Vec_IntGrow.exit.i
  store i32 %i.m, ptr %i.f, align 4, !tbaa !59
  br label %.critedge

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.u, i1 false), !tbaa !54
  %.val30.pre = load i32, ptr %i.b, align 4, !tbaa !41 ; 2 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !59
  %i.v = icmp sgt i32 %.val30.pre, 0
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %i.aa = phi ptr [ %.val24, %.lr.ph ], [ %i.au, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.val32 = phi i32 [ %.val30.pre, %.lr.ph ], [ %.val, %bb.l ]
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val19.val = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val19.val, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.ad, i64 20
  %.val20 = load i32, ptr %i.af, align 4
  %i.ag = and i32 %.val20, 15
  %.not = icmp eq i32 %i.ag, 7
  br i1 %.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.val27 = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.ah = getelementptr i8, ptr %i.ad, i64 16
  %.val28 = load i32, ptr %i.ah, align 8, !tbaa !67
  %i.ai = getelementptr i8, ptr %.val27, i64 424
  %.val27.val = load ptr, ptr %i.ai, align 8, !tbaa !75
  %i.aj = getelementptr i8, ptr %.val27.val, i64 8
  %.val27.val.val = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.ak = shl i32 %.val28, 1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val27.val.val, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54
  %.not18 = icmp eq i32 %i.an, 0
  br i1 %.not18, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !63
  %.not.i29 = icmp eq ptr %i.ao, null
  br i1 %.not.i29, label %1, label %Abc_NtkIncrementTravId.exit

1:                                                ; preds = %bb.j
  %2 = add nsw i32 %.val32, 500                   ; 5 uses
  %3 = load i32, ptr %i.x, align 8, !tbaa !64
  %.not.i.i.i = icmp slt i32 %3, %2
  br i1 %.not.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i

bb.k:                                             ; preds = %1
  %i.ap = sext i32 %2 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #37 ; 2 uses
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !65
  store i32 %2, ptr %i.x, align 8, !tbaa !64
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.k, %1
  %4 = phi ptr [ %i.ar, %bb.k ], [ null, %1 ]
  %wide.trip.count.i.i = zext nneg i32 %2 to i64
  %5 = shl nuw nsw i64 %wide.trip.count.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %5, i1 false), !tbaa !54
  store i32 %2, ptr %i.y, align 4, !tbaa !59
  br label %Abc_NtkIncrementTravId.exit

Abc_NtkIncrementTravId.exit:                      ; preds = %bb.j, %Vec_IntGrow.exit.i.i
  %i.as = load i32, ptr %i.z, align 8, !tbaa !66
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.z, align 8, !tbaa !66
  tail call void @Abc_NtkReverseTopoOrder_rec(ptr noundef nonnull %i.ad, i32 noundef 1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %Abc_NtkIncrementTravId.exit, %bb.h, %bb.g, %bb.i
  %i.au = phi ptr [ %.pre, %Abc_NtkIncrementTravId.exit ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ], [ %i.aa, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val = load i32, ptr %i.av, align 4, !tbaa !41 ; 2 uses
  %i.aw = sext i32 %.val to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.g, label %.critedge.loopexit, !llvm.loop !241

.critedge.loopexit:                               ; preds = %bb.l
  %.pre35 = load ptr, ptr %i.l, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr i8, ptr %.pre35, i64 4
  %.val22.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %Vec_IntFill.exit.thread, %.critedge.loopexit, %Vec_IntFill.exit
  %.val22 = phi i32 [ %.val22.pre, %.critedge.loopexit ], [ %i.m, %Vec_IntFill.exit ], [ %i.m, %Vec_IntFill.exit.thread ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 124
  %.val26 = load i32, ptr %i.ay, align 4, !tbaa !54 ; 2 uses
  %i.az = sitofp i32 %.val22 to double
  %i.ba = sitofp i32 %.val26 to double
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %.val26, i32 noundef %.val22, double noundef %i.bb) ; 0 uses
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_NtkReverse_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.val13 = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val14 = load i32, ptr %i.b, align 8, !tbaa !67
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val13, i32 %.val14)
  %i.c = getelementptr i8, ptr %0, i64 44         ; 2 uses
  %.val15 = load i32, ptr %i.c, align 4, !tbaa !50
  %i.d = icmp sgt i32 %.val15, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.val10 = load ptr, ptr %0, align 8, !tbaa !51
  %.val11 = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr i8, ptr %.val10, i64 32
  %.val10.val = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr i8, ptr %.val10.val, i64 8
  %.val10.val.val = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val11, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val10.val.val, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  tail call void @Abc_NtkReverse_rec(ptr noundef %i.l, ptr noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !50
  %i.m = sext i32 %.val to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.c, label %.critedge, !llvm.loop !242

.critedge:                                        ; preds = %bb.c, %bb.b
  %.val12 = load i32, ptr %i.b, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59   ; 7 uses
  %i.q = load i32, ptr %1, align 8, !tbaa !64
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %.critedge
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.u, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.u, i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #37
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  store ptr %i.x, ptr %i.t, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i32 %i.p, 1073741823
  %i.z = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ab, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef %i.ad) #36
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi ptr [ %i.ae, %bb.j ], [ %i.af, %bb.k ]
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !64
  %.pre = load i32, ptr %i.o, align 4, !tbaa !59
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ah = phi i32 [ %i.p, %.critedge ], [ %i.p, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !59
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  store i32 %.val12, ptr %i.am, align 4, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkReverseTopoOrderTest(ptr nofree noundef captures(none) initializes((424, 432)) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #35
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !78
  %.neg26 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79
  %.neg = sdiv i64 %i.e, -1000
  %.neg27 = add i64 %.neg, %.neg26
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg27, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @Abc_NtkReverseTopoOrder(ptr noundef %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !244  ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Vec_IntFreeP.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.j) #35
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !244  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.c
  %i.m = phi ptr [ %i.k, %.thread.i ], [ %i.g, %bb.c ]
  call void @free(ptr noundef nonnull %i.m) #35
  store ptr null, ptr %i.f, align 8, !tbaa !244
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %Abc_Clock.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.n = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #35
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %Abc_Clock.exit19, label %bb.e

bb.e:                                             ; preds = %Vec_IntFreeP.exit
  %i.p = load i64, ptr %3, align 8, !tbaa !78
  %i.q = mul nsw i64 %i.p, 1000000
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !79
  %i.t = sdiv i64 %i.s, 1000
  %i.u = add nsw i64 %i.t, %i.q
  br label %Abc_Clock.exit19

Abc_Clock.exit19:                                 ; preds = %Vec_IntFreeP.exit, %bb.e
  %.0.i18 = phi i64 [ %i.u, %bb.e ], [ -1, %Vec_IntFreeP.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.v = add i64 %.0.i18, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.23)
  %i.w = sitofp i64 %i.v to double
  %i.x = fdiv double %i.w, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.73, double noundef %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.y = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #35
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %Abc_Clock.exit21, label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit19
  %i.aa = load i64, ptr %2, align 8, !tbaa !78
  %.neg29 = mul i64 %i.aa, -1000000
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79
  %.neg28 = sdiv i64 %i.ac, -1000
  %.neg30 = add i64 %.neg28, %.neg29
  br label %Abc_Clock.exit21

Abc_Clock.exit21:                                 ; preds = %Abc_Clock.exit19, %bb.f
  %.0.i20.neg = phi i64 [ %.neg30, %bb.f ], [ 1, %Abc_Clock.exit19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.ad = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #37 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1000, ptr %i.ad, align 8, !tbaa !64
  %i.af = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #37 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val31 = load i32, ptr %i.aj, align 4, !tbaa !41 ; 2 uses
  %i.ak = icmp sgt i32 %.val31, 0
  br i1 %i.ak, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Clock.exit21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.ap = phi ptr [ %i.ai, %.lr.ph ], [ %i.bc, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.val33 = phi i32 [ %.val31, %.lr.ph ], [ %.val, %bb.k ]
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val16.val = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val16.val, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.as, i64 20
  %.val17 = load i32, ptr %i.au, align 4
  %i.av = and i32 %.val17, 15
  %.not = icmp eq i32 %i.av, 7
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 4, !tbaa !59
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !63
  %.not.i22 = icmp eq ptr %i.aw, null
  br i1 %.not.i22, label %5, label %Abc_NtkIncrementTravId.exit

5:                                                ; preds = %bb.i
  %6 = add nsw i32 %.val33, 500                   ; 5 uses
  %7 = load i32, ptr %i.am, align 8, !tbaa !64
  %.not.i.i.i = icmp slt i32 %7, %6
  br i1 %.not.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i

bb.j:                                             ; preds = %5
  %i.ax = sext i32 %6 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = call noalias ptr @malloc(i64 noundef %i.ay) #37 ; 2 uses
  store ptr %i.az, ptr %i.al, align 8, !tbaa !65
  store i32 %6, ptr %i.am, align 8, !tbaa !64
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.j, %5
  %8 = phi ptr [ %i.az, %bb.j ], [ null, %5 ]
  %wide.trip.count.i.i = zext nneg i32 %6 to i64
  %9 = shl nuw nsw i64 %wide.trip.count.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %9, i1 false), !tbaa !54
  store i32 %6, ptr %i.an, align 4, !tbaa !59
  br label %Abc_NtkIncrementTravId.exit

Abc_NtkIncrementTravId.exit:                      ; preds = %bb.i, %Vec_IntGrow.exit.i.i
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !66
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ao, align 8, !tbaa !66
  call void @Abc_NtkReverse_rec(ptr noundef nonnull %i.as, ptr noundef nonnull %i.ad)
  %.pre = load ptr, ptr %i.ah, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %Abc_NtkIncrementTravId.exit, %bb.h, %bb.g
  %i.bc = phi ptr [ %.pre, %Abc_NtkIncrementTravId.exit ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val = load i32, ptr %i.bd, align 4, !tbaa !41 ; 2 uses
  %i.be = sext i32 %.val to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.g, label %.critedge.loopexit, !llvm.loop !243

.critedge.loopexit:                               ; preds = %bb.k
  %.pre35 = load ptr, ptr %i.ag, align 8, !tbaa !65
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Abc_Clock.exit21
  %i.bg = phi ptr [ %.pre35, %.critedge.loopexit ], [ %i.af, %Abc_Clock.exit21 ] ; 2 uses
  %.not.i23 = icmp eq ptr %i.bg, null
  br i1 %.not.i23, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.bg) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.l
  call void @free(ptr noundef nonnull %i.ad) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.bh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #35
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %Abc_Clock.exit25, label %bb.m

bb.m:                                             ; preds = %Vec_IntFree.exit
  %i.bj = load i64, ptr %1, align 8, !tbaa !78
  %i.bk = mul nsw i64 %i.bj, 1000000
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !79
  %i.bn = sdiv i64 %i.bm, 1000
  %i.bo = add nsw i64 %i.bn, %i.bk
  br label %Abc_Clock.exit25

Abc_Clock.exit25:                                 ; preds = %Vec_IntFree.exit, %bb.m
  %.0.i24 = phi i64 [ %i.bo, %bb.m ], [ -1, %Vec_IntFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  %i.bp = add i64 %.0.i24, %.0.i20.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.23)
  %i.bq = sitofp i64 %i.bp to double
  %i.br = fdiv double %i.bq, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.73, double noundef %i.br)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkFromPla(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FxuDataStruct, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.a = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 1, i32 noundef 1) #35 ; 15 uses
  %i.b = tail call ptr @Extra_FileNameGeneric(ptr noundef nonnull @.str.24) #35
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !80
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph42, label %._crit_edge52.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03640 = phi i32 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %i.f = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 2) #35 ; 0 uses
  %i.g = add nuw nsw i32 %.03640, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, %1
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !245

.lr.ph42:                                         ; preds = %.preheader, %.lr.ph42
  %.141 = phi i32 [ %i.i, %.lr.ph42 ], [ 0, %.preheader ]
  %i.h = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 3) #35 ; 0 uses
  %i.i = add nuw nsw i32 %.141, 1                 ; 2 uses
  %exitcond53.not = icmp eq i32 %i.i, %2
  br i1 %exitcond53.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !246

._crit_edge:                                      ; preds = %.lr.ph42
  tail call void @Abc_NtkAddDummyPiNames(ptr noundef nonnull %i.a) #35
  tail call void @Abc_NtkAddDummyPoNames(ptr noundef nonnull %i.a) #35
  %i.j = getelementptr i8, ptr %i.a, i64 40       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.l = getelementptr i8, ptr %i.a, i64 48
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.critedge
  %indvars.iv55 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next56, %.critedge ] ; 3 uses
  %i.m = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 7) #35 ; 3 uses
  %.val43 = load ptr, ptr %i.j, align 8, !tbaa !43 ; 2 uses
  %i.n = getelementptr i8, ptr %.val43, i64 4
  %.val.val44 = load i32, ptr %i.n, align 4, !tbaa !41
  %i.o = icmp sgt i32 %.val.val44, 0
  br i1 %i.o, label %.lr.ph48, label %.critedge

.lr.ph48:                                         ; preds = %bb.b, %.lr.ph48
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph48 ], [ 0, %bb.b ] ; 2 uses
  %.val46 = phi ptr [ %.val, %.lr.ph48 ], [ %.val43, %bb.b ]
  %i.p = getelementptr i8, ptr %.val46, i64 8
  %.val38.val = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val38.val, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.m, ptr noundef %i.r) #35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !43  ; 2 uses
  %i.s = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.s, align 4, !tbaa !41
  %i.t = sext i32 %.val.val to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph48, label %.critedge, !llvm.loop !247

.critedge:                                        ; preds = %.lr.ph48, %bb.b
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv55
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = tail call ptr @Abc_SopRegister(ptr noundef %i.v, ptr noundef %i.x) #35
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.y, ptr %i.z, align 8, !tbaa !56
  %.val39 = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.aa = getelementptr i8, ptr %.val39, i64 8
  %.val39.val = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val39.val, i64 %indvars.iv55
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  tail call void @Abc_ObjAddFanin(ptr noundef %i.ac, ptr noundef %i.m) #35
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond58.not, label %._crit_edge52, label %bb.b, !llvm.loop !248

._crit_edge52.critedge:                           ; preds = %.preheader
  tail call void @Abc_NtkAddDummyPiNames(ptr noundef nonnull %i.a) #35
  tail call void @Abc_NtkAddDummyPoNames(ptr noundef nonnull %i.a) #35
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %.critedge, %._crit_edge52.critedge
  %i.ad = tail call i32 @Abc_NtkCheck(ptr noundef nonnull %i.a) #35
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge52
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !82
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.25, i64 44, i64 1, ptr %i.ae) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge52
  call void @Abc_NtkSetDefaultFxParams(ptr noundef nonnull %3) #35
  %i.af = call i32 @Abc_NtkFastExtract(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #35 ; 0 uses
  call void @Abc_NtkFxuFreeInfo(ptr noundef nonnull %3) #35
  %i.ag = call ptr @Abc_NtkStrash(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1, i32 noundef 0) #35
  call void @Abc_NtkDelete(ptr noundef nonnull %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %i.ag
}

declare ptr @Abc_NtkAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Extra_FileNameGeneric(ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkAddDummyPiNames(ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkAddDummyPoNames(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_SopRegister(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkSetDefaultFxParams(ptr noundef) local_unnamed_addr #3

declare i32 @Abc_NtkFastExtract(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkFxuFreeInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Abc_NtkFromPlaTest() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Abc_NtkFromPla(ptr noundef nonnull @__const.Abc_NtkFromPlaTest.pPlas, i32 noundef 4, i32 noundef 2) ; 2 uses
  tail call void @Io_WriteBlifLogic(ptr noundef %i.a, ptr noundef nonnull @.str.28, i32 noundef 0) #35
  tail call void @Abc_NtkDelete(ptr noundef %i.a) #35
  ret void
}

declare void @Io_WriteBlifLogic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkSplitSop(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  %i.e = tail call ptr @Abc_NtkStartFrom(ptr noundef nonnull %0, i32 noundef %i.b, i32 noundef %i.d) #35 ; 7 uses
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !345
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #36
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !100
  %i.s = load i32, ptr %i.c, align 4, !tbaa !344  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !346  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #36 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !346
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !344 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !344
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !59
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !59 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !64
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #36
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #37
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #36
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #37
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !65
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !64
  %.pre = load i32, ptr %i.al, align 4, !tbaa !59
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !59
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !54
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !343 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !343
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #27

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #3

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #28

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #28

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #31

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn }
attributes #29 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nofree nounwind }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { nounwind }
attributes #36 = { nounwind allocsize(1) }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { cold noreturn nounwind }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = distinct !{!7, !39}
!8 = distinct !{!8, !39}
!9 = distinct !{null}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"p1 _ZTS9Nm_Man_t_", !18, i64 0}
!21 = !{!"p1 _ZTS10Vec_Ptr_t_", !18, i64 0}
!22 = !{!"p1 _ZTS10Abc_Ntk_t_", !18, i64 0}
!23 = !{!"p1 _ZTS10Abc_Des_t_", !18, i64 0}
!24 = !{!"double", !14, i64 0}
!25 = !{!"p1 int", !18, i64 0}
!26 = !{!"Vec_Int_t_", !15, i64 0, !15, i64 4, !25, i64 8}
!27 = !{!"p1 _ZTS12Mem_Fixed_t_", !18, i64 0}
!28 = !{!"p1 _ZTS11Mem_Step_t_", !18, i64 0}
!29 = !{!"p1 _ZTS14Abc_ManTime_t_", !18, i64 0}
!30 = !{!"float", !14, i64 0}
!31 = !{!"p1 _ZTS10Vec_Int_t_", !18, i64 0}
!32 = !{!"p1 _ZTS10Abc_Cex_t_", !18, i64 0}
!33 = !{!"p1 float", !18, i64 0}
!34 = !{!"Abc_Ntk_t_", !15, i64 0, !15, i64 4, !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !14, i64 96, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !22, i64 160, !15, i64 168, !23, i64 176, !22, i64 184, !15, i64 192, !15, i64 196, !15, i64 200, !24, i64 208, !15, i64 216, !26, i64 224, !27, i64 240, !28, i64 248, !18, i64 256, !29, i64 264, !18, i64 272, !30, i64 280, !15, i64 284, !31, i64 288, !21, i64 296, !25, i64 304, !32, i64 312, !21, i64 320, !22, i64 328, !18, i64 336, !18, i64 344, !22, i64 352, !18, i64 360, !18, i64 368, !31, i64 376, !31, i64 384, !19, i64 392, !33, i64 400, !21, i64 408, !31, i64 416, !31, i64 424, !21, i64 432, !31, i64 440, !31, i64 448, !31, i64 456}
!35 = !{!"any p2 pointer", !18, i64 0}
!36 = !{!"Vec_Ptr_t_", !15, i64 0, !15, i64 4, !35, i64 8}
!37 = !{!36, !35, i64 8}
!38 = !{!18, !18, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!34, !21, i64 56}
!41 = !{!36, !15, i64 4}
!42 = !{!34, !21, i64 64}
!43 = !{!34, !21, i64 40}
!44 = !{!34, !21, i64 48}
!45 = !{!36, !15, i64 0}
!46 = !{!34, !21, i64 80}
!47 = !{!"p1 _ZTS10Abc_Obj_t_", !18, i64 0}
!48 = !{!"Abc_Obj_t_", !22, i64 0, !47, i64 8, !15, i64 16, !15, i64 20, !15, i64 20, !15, i64 20, !15, i64 20, !15, i64 20, !15, i64 21, !15, i64 21, !15, i64 21, !15, i64 21, !15, i64 21, !26, i64 24, !26, i64 40, !18, i64 56, !14, i64 64, !14, i64 72}
!49 = !{!48, !15, i64 28}
!50 = !{!48, !15, i64 44}
!51 = !{!48, !22, i64 0}
!52 = !{!48, !25, i64 32}
!53 = !{!34, !21, i64 32}
!54 = !{!15, !15, i64 0}
!55 = !{!48, !25, i64 48}
!56 = !{!14, !14, i64 0}
!57 = !{!34, !18, i64 256}
!58 = !{!34, !15, i64 4}
!59 = !{!26, !15, i64 4}
!60 = !{!34, !15, i64 0}
!61 = !{!48, !47, i64 8}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!34, !25, i64 232}
!64 = !{!26, !15, i64 0}
!65 = !{!26, !25, i64 8}
!66 = !{!34, !15, i64 216}
!67 = !{!48, !15, i64 16}
!68 = !{!47, !47, i64 0}
!69 = !{!34, !19, i64 16}
!70 = !{!19, !19, i64 0}
!71 = !{!34, !15, i64 140}
!72 = !{!25, !25, i64 0}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = !{!34, !31, i64 424}
!76 = !{!"long", !14, i64 0}
!77 = !{!"timespec", !76, i64 0, !76, i64 8}
!78 = !{!77, !76, i64 0}
!79 = !{!77, !76, i64 8}
!80 = !{!34, !19, i64 8}
!81 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"Vec_Wec_t_", !15, i64 0, !15, i64 4, !31, i64 8}
!84 = !{!83, !15, i64 0}
!85 = !{!83, !31, i64 8}
!86 = !{!83, !15, i64 4}
!87 = !{!"p1 _ZTS10Gia_Obj_t_", !18, i64 0}
!88 = !{!"p1 _ZTS10Gia_Rpr_t_", !18, i64 0}
!89 = !{!"p1 _ZTS10Vec_Wec_t_", !18, i64 0}
!90 = !{!"p1 _ZTS10Vec_Str_t_", !18, i64 0}
!91 = !{!"p1 _ZTS10Gia_Plc_t_", !18, i64 0}
!92 = !{!"p1 _ZTS10Gia_Man_t_", !18, i64 0}
!93 = !{!"p1 _ZTS10Vec_Flt_t_", !18, i64 0}
!94 = !{!"p1 _ZTS10Vec_Vec_t_", !18, i64 0}
!95 = !{!"p1 _ZTS10Vec_Wrd_t_", !18, i64 0}
!96 = !{!"p1 _ZTS10Vec_Bit_t_", !18, i64 0}
!97 = !{!"p1 _ZTS10Gia_Dat_t_", !18, i64 0}
!98 = !{!"Gia_Man_t_", !19, i64 0, !19, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !87, i64 32, !25, i64 40, !15, i64 48, !15, i64 52, !15, i64 56, !31, i64 64, !31, i64 72, !26, i64 80, !26, i64 96, !15, i64 112, !15, i64 116, !15, i64 120, !26, i64 128, !25, i64 144, !25, i64 152, !31, i64 160, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !25, i64 184, !88, i64 192, !25, i64 200, !25, i64 208, !25, i64 216, !15, i64 224, !15, i64 228, !25, i64 232, !15, i64 240, !31, i64 248, !31, i64 256, !31, i64 264, !89, i64 272, !89, i64 280, !31, i64 288, !18, i64 296, !31, i64 304, !31, i64 312, !90, i64 320, !19, i64 328, !31, i64 336, !31, i64 344, !31, i64 352, !31, i64 360, !31, i64 368, !32, i64 376, !32, i64 384, !21, i64 392, !26, i64 400, !26, i64 416, !31, i64 432, !31, i64 440, !31, i64 448, !31, i64 456, !31, i64 464, !31, i64 472, !31, i64 480, !31, i64 488, !31, i64 496, !31, i64 504, !31, i64 512, !19, i64 520, !91, i64 528, !92, i64 536, !93, i64 544, !93, i64 552, !31, i64 560, !31, i64 568, !31, i64 576, !31, i64 584, !31, i64 592, !15, i64 600, !30, i64 604, !30, i64 608, !31, i64 616, !25, i64 624, !15, i64 632, !21, i64 640, !21, i64 648, !21, i64 656, !31, i64 664, !31, i64 672, !31, i64 680, !31, i64 688, !31, i64 696, !31, i64 704, !31, i64 712, !31, i64 720, !31, i64 728, !94, i64 736, !93, i64 744, !18, i64 752, !18, i64 760, !18, i64 768, !76, i64 776, !76, i64 784, !18, i64 792, !25, i64 800, !15, i64 808, !15, i64 812, !15, i64 816, !15, i64 820, !15, i64 824, !15, i64 828, !15, i64 832, !15, i64 836, !15, i64 840, !15, i64 844, !15, i64 848, !15, i64 852, !95, i64 856, !95, i64 864, !95, i64 872, !95, i64 880, !31, i64 888, !31, i64 896, !31, i64 904, !96, i64 912, !15, i64 920, !15, i64 924, !15, i64 928, !31, i64 936, !15, i64 944, !15, i64 948, !31, i64 952, !31, i64 960, !21, i64 968, !95, i64 976, !31, i64 984, !31, i64 992, !15, i64 1000, !15, i64 1004, !95, i64 1008, !26, i64 1016, !26, i64 1032, !26, i64 1048, !97, i64 1064, !90, i64 1072, !90, i64 1080, !15, i64 1088, !15, i64 1092, !15, i64 1096, !15, i64 1100, !90, i64 1104, !31, i64 1112, !31, i64 1120, !31, i64 1128, !21, i64 1136}
!99 = !{!98, !19, i64 0}
!100 = !{!98, !87, i64 32}
!101 = distinct !{null}
!102 = distinct !{!102, !39}
!103 = !{!34, !21, i64 432}
!104 = !{!"Vec_Att_t_", !15, i64 0, !35, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40}
!105 = !{!104, !18, i64 40}
!106 = !{!104, !15, i64 0}
!107 = !{!104, !35, i64 8}
!108 = !{!104, !18, i64 16}
!109 = !{!104, !18, i64 24}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39}
!112 = distinct !{!112, !39}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !39}
!116 = distinct !{!116, !39}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !39}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39}
!122 = !{!"p1 _ZTS11Dec_Node_t_", !18, i64 0}
!123 = !{!"Dec_Edge_t_", !15, i64 0, !15, i64 0}
!124 = !{!"Dec_Graph_t_", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !122, i64 16, !123, i64 24}
!125 = !{!124, !15, i64 4}
!126 = !{!124, !15, i64 8}
!127 = !{!124, !122, i64 16}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = !{!"p1 _ZTS6DdNode", !18, i64 0}
!133 = !{!132, !132, i64 0}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !39}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = distinct !{!144, !39}
!145 = distinct !{!145, !39}
!146 = distinct !{!146, !39}
!147 = distinct !{!147, !39}
!148 = distinct !{!148, !62}
!149 = distinct !{!149, !62}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, !39}
!152 = distinct !{!152, !39}
!153 = distinct !{!153, !39}
!154 = distinct !{!154, !39}
!155 = distinct !{!155, !39}
!156 = distinct !{!156, !39}
!157 = distinct !{!157, !39}
!158 = distinct !{!158, !39}
!159 = distinct !{!159, !39}
!160 = distinct !{!160, !39}
!161 = distinct !{!161, !39}
!162 = distinct !{!162, !39}
!163 = distinct !{!163, !39}
!164 = distinct !{!164, !62}
!165 = distinct !{!165, !39}
!166 = distinct !{!166, !39}
!167 = distinct !{!167, !39}
!168 = distinct !{!168, !39}
!169 = distinct !{!169, !39}
!170 = distinct !{!170, !39}
!171 = distinct !{!171, !39}
!172 = distinct !{!172, !39}
!173 = distinct !{!173, !39}
!174 = distinct !{!174, !39}
!175 = distinct !{!175, !39}
!176 = distinct !{!176, !39}
!177 = distinct !{!177, !39}
!178 = distinct !{!178, !39}
!179 = distinct !{!179, !39}
!180 = !{!22, !22, i64 0}
!181 = distinct !{!181, !39}
!182 = distinct !{!182, !39}
!183 = distinct !{!183, !39}
!184 = distinct !{!184, !39}
!185 = distinct !{!185, !39}
!186 = distinct !{!186, !39}
!187 = distinct !{!187, !39}
!188 = distinct !{!188, !39}
end_hunk_1
