Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEra2?download=true
inline.NumInlined: 421
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ManDeriveCiTfo:bb.a
  store ptr %i.i, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr i8, ptr %0, i64 32
  %i.l = icmp sgt i32 %.val13.val, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit, %Vec_PtrPush.exit
  %i.m = phi ptr [ %i.ag, %Vec_PtrPush.exit ], [ %i.i, %Vec_PtrAlloc.exit ] ; 6 uses
  %i.n = phi i32 [ %i.ah, %Vec_PtrPush.exit ], [ %spec.store.select.i, %Vec_PtrAlloc.exit ] ; 7 uses
  %i.o = phi i32 [ %i.ai, %Vec_PtrPush.exit ], [ 0, %Vec_PtrAlloc.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_PtrPush.exit ], [ 0, %Vec_PtrAlloc.exit ] ; 2 uses
  %i.p = phi ptr [ %i.al, %Vec_PtrPush.exit ], [ %.val13, %Vec_PtrAlloc.exit ]
  %.val14 = load ptr, ptr %i.k, align 8, !tbaa !51 ; 2 uses
  %.not = icmp eq ptr %.val14, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val15.val = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val15.val, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %.val14, i64 %i.t
  %i.v = tail call ptr @Gia_ManDeriveCiTfoOne(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  %i.w = icmp eq i32 %i.o, %i.n
  br i1 %i.w, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.n, 16
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 128) #29
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.z = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #30
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.aa = icmp samesign ult i32 %i.n, 1073741823
  %i.ab = shl nuw nsw i32 %i.n, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.n, %spec.select.i
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %i.m, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.ad) #29
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #30
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.z, %bb.g ], [ %i.y, %bb.f ], [ %i.ae, %bb.j ], [ %i.af, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.j, align 8, !tbaa !62
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !61
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_PtrGrow.exit12.sink.split.i
  %i.ag = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.h ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ah = phi i32 [ %i.n, %bb.c ], [ %i.n, %bb.h ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.ai = add nuw nsw i32 %i.o, 1                 ; 2 uses
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !59
  %i.aj = zext nneg i32 %i.o to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj
  store ptr %i.v, ptr %i.ak, align 8, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !58  ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val = load i32, ptr %i.am, align 4, !tbaa !53
  %i.an = sext i32 %.val to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %.critedge, !llvm.loop !64

.critedge:                                        ; preds = %.lr.ph, %Vec_PtrPush.exit, %Vec_PtrAlloc.exit
  tail call void @Gia_ManCleanMark0(ptr noundef nonnull %0) #27
  ret ptr %i.c
}

declare void @Gia_ManCleanMark0(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManAreCreate(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 1, i64 noundef 200) #28 ; 11 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.c = ashr i32 %.val, 4
  %i.d = and i32 %.val, 15
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.g, ptr %i.h, align 4, !tbaa !65
  %narrow = add nsw i32 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %narrow, ptr %i.i, align 8, !tbaa !43
  %i.j = tail call noalias dereferenceable_or_null(16384) ptr @calloc(i64 noundef 2048, i64 noundef 8) #28
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !66
  %i.l = tail call noalias dereferenceable_or_null(16384) ptr @calloc(i64 noundef 2048, i64 noundef 8) #28
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !42
  %i.n = tail call ptr @Gia_ManDeriveCiTfo(ptr noundef %0) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.n, ptr %i.o, align 8, !tbaa !67
  %i.p = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val8.i = load i32, ptr %i.p, align 4, !tbaa !68 ; 3 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 5 uses
  %i.r = add i32 %.val8.i, -1
  %or.cond.i.i = icmp ult i32 %i.r, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val8.i ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !59
  store i32 %spec.store.select.i.i, ptr %i.q, align 8, !tbaa !61
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrAlloc.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = sext i32 %spec.store.select.i.i to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #30
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.b, %bb.a
  %.promoted16.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.w, align 8, !tbaa !62
  %i.x = icmp sgt i32 %.val8.i, 0
  br i1 %i.x, label %.lr.ph.i, label %Vec_VecDupInt.exit

.lr.ph.i:                                         ; preds = %Vec_PtrAlloc.exit.i
  %i.y = getelementptr i8, ptr %i.n, i64 8
  br label %bb.c

bb.c:                                             ; preds = %Vec_PtrPush.exit.i, %.lr.ph.i
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %.promoted16.i, %.lr.ph.i ], [ %storemerge18.i, %Vec_PtrPush.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.store.select.i.i, %.lr.ph.i ], [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ] ; 4 uses
  %.val9.i = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val9.i, i64 %indvars.iv19.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !63  ; 2 uses
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !53 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !53
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !54
  %.not.i10.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sext i32 %i.ad to i64
  %i.ag = shl nsw i64 %i.af, 2                    ; 2 uses
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #30
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.d, %bb.c
  %.pre-phi12.i.i = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.al, i64 %.pre-phi12.i.i, i1 false)
  %i.am = trunc nsw i64 %indvars.iv19.i to i32
  %i.an = icmp eq i32 %spec.select.sink.i15.i, %i.am
  br i1 %i.an, label %bb.e, label %Vec_PtrPush.exit.i

bb.e:                                             ; preds = %Vec_IntDup.exit.i
  %i.ao = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.ao, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #29
  br label %Vec_PtrPush.exit.i

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #30
  br label %Vec_PtrPush.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ar = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.as = shl nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i = select i1 %i.ar, i32 %i.as, i32 2147483647 ; 4 uses
  %1 = sext i32 %spec.select.i.i to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %1
  br i1 %.not.i10.i.i, label %bb.j, label %Vec_PtrPush.exit.i

bb.j:                                             ; preds = %bb.i
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %2 = zext nneg i32 %spec.select.i.i to i64
  %i.at = shl nuw nsw i64 %2, 3                   ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = tail call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.at) #29
  br label %Vec_PtrPush.exit.i

bb.l:                                             ; preds = %bb.j
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #30
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.i ], [ %i.aq, %bb.h ], [ %i.ap, %bb.g ], [ %i.au, %bb.k ], [ %i.av, %bb.l ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i.i, %bb.k ], [ %spec.select.i.i, %bb.l ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.ab, ptr %i.aw, align 8, !tbaa !63
  %.val.i = load i32, ptr %i.p, align 4, !tbaa !68
  %i.ax = sext i32 %.val.i to i64
  %i.ay = icmp slt i64 %indvars.iv.next20.i, %i.ax
  br i1 %i.ay, label %bb.c, label %..critedge_crit_edge.i, !llvm.loop !71

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.az = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.az, ptr %i.s, align 4, !tbaa !59
  store i32 %spec.select.sink.i14.i, ptr %i.q, align 8
  store ptr %storemerge18.i, ptr %i.w, align 8
  br label %Vec_VecDupInt.exit

Vec_VecDupInt.exit:                               ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.q, ptr %i.ba, align 8, !tbaa !72
  %i.bb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !53
  store i32 100, ptr %i.bb, align 8, !tbaa !54
  %i.bd = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #30
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !73
  %i.bg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !53
  store i32 100, ptr %i.bg, align 8, !tbaa !54
  %i.bi = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 -1, ptr %i.bl, align 8, !tbaa !75
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @Gia_ManAreFree(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @Gia_ManStop(ptr noundef %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManStop(ptr noundef nonnull %i.c) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.g) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not.i41 = icmp eq ptr %i.k, null
  br i1 %.not.i41, label %Vec_IntFree.exit42, label %bb.e

bb.e:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.k) #27
  br label %Vec_IntFree.exit42

Vec_IntFree.exit42:                               ; preds = %Vec_IntFree.exit, %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %.val11.i = load i32, ptr %i.n, align 4, !tbaa !68 ; 2 uses
  %i.o = icmp sgt i32 %.val11.i, 0
  br i1 %i.o, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %Vec_IntFree.exit42
  %i.p = getelementptr i8, ptr %i.m, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.val14.i = phi i32 [ %.val11.i, %.lr.ph.i ], [ %.val.i, %bb.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.val8.i = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63   ; 3 uses
  %.not.i43 = icmp eq ptr %i.r, null
  br i1 %.not.i43, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.t) #27
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.h, %bb.g
  tail call void @free(ptr noundef nonnull %i.r) #27
  %.val.pre.i = load i32, ptr %i.n, align 4, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %Vec_PtrFree.exit.i, %bb.f
  %.val.i = phi i32 [ %.val14.i, %bb.f ], [ %.val.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.u = sext i32 %.val.i to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %bb.f, label %.critedge.i, !llvm.loop !77

.critedge.i:                                      ; preds = %bb.i, %Vec_IntFree.exit42
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62   ; 2 uses
  %.not.i9.i = icmp eq ptr %i.x, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.x) #27
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.m) #27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %.val11.i44 = load i32, ptr %i.aa, align 4, !tbaa !68 ; 2 uses
  %i.ab = icmp sgt i32 %.val11.i44, 0
  br i1 %i.ab, label %.lr.ph.i47, label %.critedge.i45

.lr.ph.i47:                                       ; preds = %Vec_VecFree.exit
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i47
  %.val14.i48 = phi i32 [ %.val11.i44, %.lr.ph.i47 ], [ %.val.i55, %bb.n ]
  %indvars.iv.i49 = phi i64 [ 0, %.lr.ph.i47 ], [ %indvars.iv.next.i56, %bb.n ] ; 2 uses
  %.val8.i50 = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val8.i50, i64 %indvars.iv.i49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 3 uses
  %.not.i51 = icmp eq ptr %i.ae, null
  br i1 %.not.i51, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i52, label %Vec_PtrFree.exit.i53, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ag) #27
  br label %Vec_PtrFree.exit.i53

Vec_PtrFree.exit.i53:                             ; preds = %bb.m, %bb.l
  tail call void @free(ptr noundef nonnull %i.ae) #27
  %.val.pre.i54 = load i32, ptr %i.aa, align 4, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %Vec_PtrFree.exit.i53, %bb.k
  %.val.i55 = phi i32 [ %.val14.i48, %bb.k ], [ %.val.pre.i54, %Vec_PtrFree.exit.i53 ] ; 2 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i49, 1 ; 2 uses
  %i.ah = sext i32 %.val.i55 to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i56, %i.ah
  br i1 %i.ai, label %bb.k, label %.critedge.i45, !llvm.loop !77

.critedge.i45:                                    ; preds = %bb.n, %Vec_VecFree.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !62 ; 2 uses
  %.not.i9.i46 = icmp eq ptr %i.ak, null
  br i1 %.not.i9.i46, label %Vec_VecFree.exit57, label %bb.o

bb.o:                                             ; preds = %.critedge.i45
  tail call void @free(ptr noundef nonnull %i.ak) #27
  br label %Vec_VecFree.exit57
end_hunk_0
begin_hunk_1_@Gia_ManAreCubeCheckList:bb.a
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i56, label %bb.e, !llvm.loop !90

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = xor i32 %i.x, %i.v                       ; 2 uses
  %i.z = lshr i32 %i.y, 1
  %i.aa = and i32 %i.y, 1431655765
  %i.ab = and i32 %i.aa, %i.z
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.d, label %Gia_StaAreDisjoint.exit

bb.f:                                             ; preds = %.lr.ph.i56
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i
  br i1 %exitcond.not.i61, label %.thread, label %.lr.ph.i56, !llvm.loop !91

.lr.ph.i56:                                       ; preds = %bb.d, %bb.f
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i60, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i58
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i58
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8  ; 2 uses
  %i.ag = or i32 %i.af, %i.ad
  %.not.i59 = icmp eq i32 %i.ag, %i.af
  br i1 %.not.i59, label %bb.f, label %.lr.ph.i63

.thread:                                          ; preds = %bb.c, %bb.f
  %i.ah = shl i32 %i.o, 2
  %i.ai = sext i32 %i.ah to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !41 ; 2 uses
  %i.al = add nsw i32 %i.ak, -1                   ; 3 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  %.val2.i.i = load i32, ptr %i.b, align 8, !tbaa !43
  %i.am = lshr i32 %i.al, 20
  %i.an = and i32 %i.am, 2047
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = and i32 %i.al, 1048575
  %i.as = mul nsw i32 %i.ar, %.val2.i.i
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.at
  %i.av = icmp eq ptr %1, %i.au
  br i1 %i.av, label %bb.g, label %Gia_ManAreRycycleSta.exit

bb.g:                                             ; preds = %.thread
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ay = shl i32 %i.ax, 20
  %i.az = add i32 %i.ay, -1048575
  %i.ba = icmp eq i32 %i.ak, %i.az
  br i1 %i.ba, label %bb.h, label %Gia_ManAreRycycleSta.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = add nsw i32 %i.ax, -1
  store i32 %i.bb, ptr %i.aw, align 8, !tbaa !80
  br label %Gia_ManAreRycycleSta.exit

bb.i:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i
  br i1 %exitcond.not.i68, label %bb.j, label %.lr.ph.i63, !llvm.loop !91

.lr.ph.i63:                                       ; preds = %.lr.ph.i56, %bb.i
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i67, %bb.i ], [ 0, %.lr.ph.i56 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i65
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i65
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %i.bg = or i32 %i.bf, %i.bd
  %.not.i66 = icmp eq i32 %i.bg, %i.bf
  br i1 %.not.i66, label %bb.i, label %.lr.ph.i70

bb.j:                                             ; preds = %bb.i
  %i.bh = or disjoint i32 %.0.val55, -2147483648
  store i32 %i.bh, ptr %.015, align 4
  %.val53.pre = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %.val52.val.pre = load ptr, ptr %.val53.pre, align 8, !tbaa !44
  br label %Gia_StaAreDisjoint.exit

.lr.ph.i70:                                       ; preds = %.lr.ph.i63, %bb.aa
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %bb.aa ], [ 0, %.lr.ph.i63 ] ; 4 uses
  %.021.i = phi i32 [ %.1.i, %bb.aa ], [ -1, %.lr.ph.i63 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i72
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8  ; 2 uses
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = xor i32 %i.bj, %i.bk
  %i.bm = xor i32 %i.bl, -1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i72
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8  ; 2 uses
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = and i32 %i.bq, %i.bm                    ; 16 uses
  %i.bs = and i32 %i.br, 1431655765               ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i70
  %i.bu = tail call range(i32 1, 17) i32 @llvm.ctpop.i32(i32 range(i32 1, 1431655766) %i.bs)
  %i.bv = icmp samesign ugt i32 %i.bu, 1
  %i.bw = icmp sgt i32 %.021.i, -1
  %or.cond.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.i, label %Gia_StaAreDisjoint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = and i32 %i.br, 1
  %.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i, label %bb.m, label %Gia_WordFindFirstBit.exit.i

bb.m:                                             ; preds = %bb.l
  %i.by = and i32 %i.br, 4
  %.not.2.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.2.i.i, label %bb.n, label %Gia_WordFindFirstBit.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bz = and i32 %i.br, 16
  %.not.4.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.4.i.i, label %bb.o, label %Gia_WordFindFirstBit.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ca = and i32 %i.br, 64
  %.not.6.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.6.i.i, label %bb.p, label %Gia_WordFindFirstBit.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cb = and i32 %i.br, 256
  %.not.8.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.8.i.i, label %bb.q, label %Gia_WordFindFirstBit.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cc = and i32 %i.br, 1024
  %.not.10.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.10.i.i, label %bb.r, label %Gia_WordFindFirstBit.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.br, 4096
  %.not.12.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.12.i.i, label %bb.s, label %Gia_WordFindFirstBit.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ce = and i32 %i.br, 16384
  %.not.14.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.14.i.i, label %bb.t, label %Gia_WordFindFirstBit.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cf = and i32 %i.br, 65536
  %.not.16.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.16.i.i, label %bb.u, label %Gia_WordFindFirstBit.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cg = and i32 %i.br, 262144
  %.not.18.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.18.i.i, label %bb.v, label %Gia_WordFindFirstBit.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ch = and i32 %i.br, 1048576
  %.not.20.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.20.i.i, label %bb.w, label %Gia_WordFindFirstBit.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ci = and i32 %i.br, 4194304
  %.not.22.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.22.i.i, label %bb.x, label %Gia_WordFindFirstBit.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cj = and i32 %i.br, 16777216
  %.not.24.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.24.i.i, label %bb.y, label %Gia_WordFindFirstBit.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ck = and i32 %i.br, 67108864
  %.not.26.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.26.i.i, label %bb.z, label %Gia_WordFindFirstBit.exit.i

bb.z:                                             ; preds = %bb.y
  %i.cl = and i32 %i.br, 268435456
  %.not.28.i.i = icmp eq i32 %i.cl, 0
  %i.cm = select i1 %.not.28.i.i, i32 15, i32 14
  br label %Gia_WordFindFirstBit.exit.i

Gia_WordFindFirstBit.exit.i:                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.06.i.i = phi i32 [ 0, %bb.l ], [ 12, %bb.x ], [ 11, %bb.w ], [ 8, %bb.t ], [ 1, %bb.m ], [ 10, %bb.v ], [ 7, %bb.s ], [ 6, %bb.r ], [ 2, %bb.n ], [ 4, %bb.p ], [ 9, %bb.u ], [ %i.cm, %bb.z ], [ 3, %bb.o ], [ 5, %bb.q ], [ 13, %bb.y ]
  %indvars.iv.tr.i = trunc nsw i64 %indvars.iv.i72 to i32
  %i.cn = shl nsw i32 %indvars.iv.tr.i, 4
  %i.co = or disjoint i32 %.06.i.i, %i.cn
  br label %bb.aa

bb.aa:                                            ; preds = %Gia_WordFindFirstBit.exit.i, %.lr.ph.i70
  %.1.i = phi i32 [ %.021.i, %.lr.ph.i70 ], [ %i.co, %Gia_WordFindFirstBit.exit.i ] ; 3 uses
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i
  br i1 %exitcond.not.i74, label %Gia_StaAreSharpVar.exit, label %.lr.ph.i70, !llvm.loop !92

Gia_StaAreSharpVar.exit:                          ; preds = %bb.aa
  %i.cp = icmp eq i32 %.1.i, -1
  br i1 %i.cp, label %Gia_StaAreDisjoint.exit, label %bb.ab

bb.ab:                                            ; preds = %Gia_StaAreSharpVar.exit
  %i.cq = shl i32 %.1.i, 1                        ; 2 uses
  %i.cr = ashr i32 %i.cq, 5
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = and i32 %i.cq, 30                       ; 2 uses
  %i.cw = shl nuw nsw i32 1, %i.cv                ; 2 uses
  %i.cx = and i32 %i.cu, %i.cw
  %.not50 = icmp eq i32 %i.cx, 0
  br i1 %.not50, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = shl nuw i32 2, %i.cv
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cs ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = or i32 %i.da, %i.cy
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !8
  br label %Gia_StaAreDisjoint.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cs ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.de = or i32 %i.dd, %i.cw
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !8
  br label %Gia_StaAreDisjoint.exit

Gia_StaAreDisjoint.exit:                          ; preds = %bb.e, %bb.k, %bb.ac, %bb.ad, %Gia_StaAreSharpVar.exit, %bb.b, %bb.j
  %.val52.val = phi ptr [ %.val52.val22, %bb.k ], [ %.val52.val.pre, %bb.j ], [ %.val52.val22, %bb.ac ], [ %.val52.val22, %bb.ad ], [ %.val52.val22, %Gia_StaAreSharpVar.exit ], [ %.val52.val22, %bb.b ], [ %.val52.val22, %bb.e ] ; 2 uses
  %.val52 = phi ptr [ %.val5220, %bb.k ], [ %.val53.pre, %bb.j ], [ %.val5220, %bb.ac ], [ %.val5220, %bb.ad ], [ %.val5220, %Gia_StaAreSharpVar.exit ], [ %.val5220, %bb.b ], [ %.val5220, %bb.e ] ; 2 uses
  %.val54 = load i32, ptr %i.b, align 8, !tbaa !43 ; 2 uses
  %i.df = getelementptr i8, ptr %.015, i64 4
  %.0.val = load i32, ptr %i.df, align 4          ; 2 uses
  %i.dg = lshr i32 %.0.val, 20
  %i.dh = and i32 %i.dg, 2047
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !44
  %i.dl = and i32 %.0.val, 1048575
  %i.dm = mul nsw i32 %i.dl, %.val54
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dn ; 2 uses
  %.not9 = icmp eq ptr %i.do, %.val52.val
  br i1 %.not9, label %Gia_ManAreRycycleSta.exit, label %bb.b, !llvm.loop !93

Gia_ManAreRycycleSta.exit:                        ; preds = %Gia_StaAreDisjoint.exit, %bb.a, %bb.h, %bb.g, %.thread
  %.044 = phi i32 [ 0, %bb.h ], [ 0, %.thread ], [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %Gia_StaAreDisjoint.exit ]
  ret i32 %.044
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManAreCubeAddToTree_rec(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr i8, ptr %0, i64 16
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr136 = phi ptr [ %1, %bb.a ], [ %i.y, %tailrecurse.backedge ] ; 25 uses
  %i.c = load i32, ptr %.tr136, align 4           ; 4 uses
  %i.d = shl i32 %i.c, 1                          ; 2 uses
  %i.e = lshr i32 %i.d, 5
  %i.f = and i32 %i.e, 1023
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.j = and i32 %i.d, 30                         ; 2 uses
  %i.k = shl nuw nsw i32 1, %i.j
  %i.l = and i32 %i.k, %i.i
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.m = and i32 %i.c, 1032192
  %.not.i = icmp ne i32 %i.m, 0
  %i.n = getelementptr i8, ptr %.tr136, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = and i32 %i.o, 2147483647
  %or.cond = icmp eq i32 %i.p, 0
  %or.cond197 = select i1 %.not.i, i1 true, i1 %or.cond
  br i1 %or.cond197, label %Gia_ObjHasBranch0.exit.thread, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.o, %bb.i, %bb.b
  %.sink182 = phi i32 [ %i.ew, %bb.o ], [ %i.cl, %bb.i ], [ %i.o, %bb.b ] ; 2 uses
  %.val67 = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.q = lshr i32 %.sink182, 20
  %i.r = and i32 %i.q, 2047
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val67, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = shl i32 %.sink182, 2
  %i.w = and i32 %i.v, 4194300
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.x
  br label %tailrecurse

Gia_ObjHasBranch0.exit.thread:                    ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.tr136, i64 4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.o, ptr %i.aa, align 4, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41
  %i.ad = add nsw i32 %i.ac, -1                   ; 5 uses
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !94
  %i.ae = load i32, ptr %.tr136, align 4          ; 2 uses
  %i.af = lshr i32 %i.ae, 14
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = and i32 %i.ag, 63                       ; 2 uses
  %i.ai = shl nuw nsw i32 %i.ah, 14
  %i.aj = and i32 %i.ae, -1032193                 ; 3 uses
  %i.ak = or disjoint i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %.tr136, align 4
  %i.al = icmp eq i32 %i.ah, 63
  br i1 %i.al, label %bb.c, label %Gia_ManAreCompress.exit

bb.c:                                             ; preds = %Gia_ObjHasBranch0.exit.thread
  %i.am = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %.val65 = load ptr, ptr %i.am, align 8, !tbaa !42 ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val66 = load i32, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %i.ao = lshr i32 %i.ad, 20
  %i.ap = and i32 %i.ao, 2047
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val65, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.at = and i32 %i.ad, 1048575                  ; 2 uses
  %i.au = mul nsw i32 %.val66, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av ; 2 uses
  %.val9.val.i = load ptr, ptr %.val65, align 8, !tbaa !44 ; 2 uses
  %.not12.i = icmp eq ptr %i.aw, %.val9.val.i
  br i1 %.not12.i, label %Gia_ManAreListCountListUsed.exit.thread, label %.lr.ph.i

Gia_ManAreListCountListUsed.exit.thread:          ; preds = %bb.c
  store i32 %i.aj, ptr %.tr136, align 4
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.04.i = phi i32 [ %i.ay, %.lr.ph.i ], [ 0, %bb.c ]
  %.073.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.aw, %bb.c ] ; 2 uses
  %.07.val.i = load i32, ptr %.073.i, align 4
  %.not.i.i = icmp sgt i32 %.07.val.i, -1
  %i.ax = zext i1 %.not.i.i to i32
  %i.ay = add nuw nsw i32 %.04.i, %i.ax           ; 3 uses
  %i.az = getelementptr i8, ptr %.073.i, i64 4
  %.07.val12.i = load i32, ptr %i.az, align 4     ; 2 uses
  %i.ba = lshr i32 %.07.val12.i, 20
  %i.bb = and i32 %i.ba, 2047
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val65, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bf = and i32 %.07.val12.i, 1048575
  %i.bg = mul nsw i32 %i.bf, %.val66
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bh ; 2 uses
  %.not1.i = icmp eq ptr %i.bi, %.val9.val.i
  br i1 %.not1.i, label %Gia_ManAreListCountListUsed.exit, label %.lr.ph.i, !llvm.loop !85

Gia_ManAreListCountListUsed.exit:                 ; preds = %.lr.ph.i
  %i.bj = shl i32 %i.ay, 14
  %i.bk = and i32 %i.bj, 1032192
  %i.bl = or disjoint i32 %i.bk, %i.aj
  store i32 %i.bl, ptr %.tr136, align 4
  %i.bm = and i32 %i.ay, 63
  %i.bn = icmp samesign ult i32 %i.bm, 31
  br i1 %i.bn, label %bb.d, label %bb.g

bb.d:                                             ; preds = %Gia_ManAreListCountListUsed.exit.thread, %Gia_ManAreListCountListUsed.exit
  %i.bo = and i32 %i.ad, -2147483648              ; 2 uses
  store i32 %i.bo, ptr %i.z, align 4
  %.val21.i = load ptr, ptr %i.am, align 8, !tbaa !42 ; 3 uses
  %.val22.i = load i32, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val21.i, i64 %i.aq
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !44
  %i.br = mul nsw i32 %.val22.i, %i.at
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %.val23.val28.i = load ptr, ptr %.val21.i, align 8, !tbaa !44 ; 2 uses
  %.not2429.i = icmp eq ptr %i.bt, %.val23.val28.i
  br i1 %.not2429.i, label %Gia_ManAreCompress.exit, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %bb.d, %bb.f
  %.val23.val40.i = phi ptr [ %.val23.val.i, %bb.f ], [ %.val23.val28.i, %bb.d ]
  %.val2338.i = phi ptr [ %.val23.i, %bb.f ], [ %.val21.i, %bb.d ]
  %.val2036.i = phi i32 [ %.val20.i, %bb.f ], [ %.val22.i, %bb.d ]
  %i.bu = phi i32 [ %i.bv, %bb.f ], [ %i.bo, %bb.d ] ; 2 uses
  %.sroa.03.031.i = phi i32 [ %.sroa.0.033.i, %bb.f ], [ %i.ad, %bb.d ] ; 2 uses
end_hunk_1
begin_hunk_2_@Gia_ManAreCubeCheckTree:bb.a
  %i.an = load i32, ptr %i.g, align 4, !tbaa !65  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.an to i64 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i96, label %bb.e, !llvm.loop !90

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = xor i32 %i.at, %i.ar                    ; 2 uses
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.au, 1431655765
  %i.ax = and i32 %i.aw, %i.av
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.d, label %Gia_StaAreDisjoint.exit

bb.f:                                             ; preds = %.lr.ph.i96
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i98, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i101, label %.thread, label %.lr.ph.i96, !llvm.loop !91

.lr.ph.i96:                                       ; preds = %bb.d, %bb.f
  %indvars.iv.i98 = phi i64 [ %indvars.iv.next.i100, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i98
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i98
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 2 uses
  %i.bc = or i32 %i.bb, %i.az
  %.not.i99 = icmp eq i32 %i.bc, %i.bb
  br i1 %.not.i99, label %bb.f, label %.lr.ph.i103

.thread:                                          ; preds = %bb.c, %bb.f
  %i.bd = shl i32 %.val88, 2
  %i.be = sext i32 %i.bd to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !41 ; 2 uses
  %i.bh = add nsw i32 %i.bg, -1                   ; 3 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !42
  %.val2.i.i = load i32, ptr %i.f, align 8, !tbaa !43
  %i.bi = lshr i32 %i.bh, 20
  %i.bj = and i32 %i.bi, 2047
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44
  %i.bn = and i32 %i.bh, 1048575
  %i.bo = mul nsw i32 %i.bn, %.val2.i.i
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bp
  %i.br = icmp eq ptr %1, %i.bq
  br i1 %i.br, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.thread
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !80 ; 2 uses
  %i.bu = shl i32 %i.bt, 20
  %i.bv = add i32 %i.bu, -1048575
  %i.bw = icmp eq i32 %i.bg, %i.bv
  br i1 %i.bw, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %bb.g
  %i.bx = add nsw i32 %i.bt, -1
  store i32 %i.bx, ptr %i.bs, align 8, !tbaa !80
  br label %.critedge2

bb.i:                                             ; preds = %.lr.ph.i103
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i
  br i1 %exitcond.not.i108, label %bb.j, label %.lr.ph.i103, !llvm.loop !91

.lr.ph.i103:                                      ; preds = %.lr.ph.i96, %bb.i
  %indvars.iv.i105 = phi i64 [ %indvars.iv.next.i107, %bb.i ], [ 0, %.lr.ph.i96 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i105
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i105
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = or i32 %i.cb, %i.bz
  %.not.i106 = icmp eq i32 %i.cc, %i.cb
  br i1 %.not.i106, label %bb.i, label %.lr.ph.i110

bb.j:                                             ; preds = %bb.i
  %i.cd = or disjoint i32 %.val95, -2147483648
  store i32 %i.cd, ptr %i.am, align 4
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !73
  br label %Gia_StaAreDisjoint.exit

.lr.ph.i110:                                      ; preds = %.lr.ph.i103, %bb.aa
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %bb.aa ], [ 0, %.lr.ph.i103 ] ; 4 uses
  %.021.i = phi i32 [ %.1.i, %bb.aa ], [ -1, %.lr.ph.i103 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i112
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8  ; 2 uses
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = xor i32 %i.cf, %i.cg
  %i.ci = xor i32 %i.ch, -1
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i112
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8  ; 2 uses
  %i.cl = lshr i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, %i.ck
  %i.cn = and i32 %i.cm, %i.ci                    ; 16 uses
  %i.co = and i32 %i.cn, 1431655765               ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i110
  %i.cq = tail call range(i32 1, 17) i32 @llvm.ctpop.i32(i32 range(i32 1, 1431655766) %i.co)
  %i.cr = icmp samesign ugt i32 %i.cq, 1
  %i.cs = icmp sgt i32 %.021.i, -1
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %Gia_StaAreDisjoint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = and i32 %i.cn, 1
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %bb.m, label %Gia_WordFindFirstBit.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cu = and i32 %i.cn, 4
  %.not.2.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.2.i.i, label %bb.n, label %Gia_WordFindFirstBit.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cv = and i32 %i.cn, 16
  %.not.4.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.4.i.i, label %bb.o, label %Gia_WordFindFirstBit.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cw = and i32 %i.cn, 64
  %.not.6.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.6.i.i, label %bb.p, label %Gia_WordFindFirstBit.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cx = and i32 %i.cn, 256
  %.not.8.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.8.i.i, label %bb.q, label %Gia_WordFindFirstBit.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cy = and i32 %i.cn, 1024
  %.not.10.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.10.i.i, label %bb.r, label %Gia_WordFindFirstBit.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cz = and i32 %i.cn, 4096
  %.not.12.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.12.i.i, label %bb.s, label %Gia_WordFindFirstBit.exit.i

bb.s:                                             ; preds = %bb.r
  %i.da = and i32 %i.cn, 16384
  %.not.14.i.i = icmp eq i32 %i.da, 0
  br i1 %.not.14.i.i, label %bb.t, label %Gia_WordFindFirstBit.exit.i

bb.t:                                             ; preds = %bb.s
  %i.db = and i32 %i.cn, 65536
  %.not.16.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.16.i.i, label %bb.u, label %Gia_WordFindFirstBit.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dc = and i32 %i.cn, 262144
  %.not.18.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.18.i.i, label %bb.v, label %Gia_WordFindFirstBit.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dd = and i32 %i.cn, 1048576
  %.not.20.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.20.i.i, label %bb.w, label %Gia_WordFindFirstBit.exit.i

bb.w:                                             ; preds = %bb.v
  %i.de = and i32 %i.cn, 4194304
  %.not.22.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.22.i.i, label %bb.x, label %Gia_WordFindFirstBit.exit.i

bb.x:                                             ; preds = %bb.w
  %i.df = and i32 %i.cn, 16777216
  %.not.24.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.24.i.i, label %bb.y, label %Gia_WordFindFirstBit.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dg = and i32 %i.cn, 67108864
  %.not.26.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.26.i.i, label %bb.z, label %Gia_WordFindFirstBit.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dh = and i32 %i.cn, 268435456
  %.not.28.i.i = icmp eq i32 %i.dh, 0
  %i.di = select i1 %.not.28.i.i, i32 15, i32 14
  br label %Gia_WordFindFirstBit.exit.i

Gia_WordFindFirstBit.exit.i:                      ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.06.i.i = phi i32 [ 0, %bb.l ], [ 12, %bb.x ], [ 11, %bb.w ], [ 8, %bb.t ], [ 1, %bb.m ], [ 10, %bb.v ], [ 7, %bb.s ], [ 6, %bb.r ], [ 2, %bb.n ], [ 4, %bb.p ], [ 9, %bb.u ], [ %i.di, %bb.z ], [ 3, %bb.o ], [ 5, %bb.q ], [ 13, %bb.y ]
  %indvars.iv.tr.i = trunc nsw i64 %indvars.iv.i112 to i32
  %i.dj = shl nsw i32 %indvars.iv.tr.i, 4
  %i.dk = or disjoint i32 %.06.i.i, %i.dj
  br label %bb.aa

bb.aa:                                            ; preds = %Gia_WordFindFirstBit.exit.i, %.lr.ph.i110
  %.1.i = phi i32 [ %.021.i, %.lr.ph.i110 ], [ %i.dk, %Gia_WordFindFirstBit.exit.i ] ; 3 uses
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i
  br i1 %exitcond.not.i114, label %Gia_StaAreSharpVar.exit, label %.lr.ph.i110, !llvm.loop !92

Gia_StaAreSharpVar.exit:                          ; preds = %bb.aa
  %i.dl = icmp eq i32 %.1.i, -1
  br i1 %i.dl, label %Gia_StaAreDisjoint.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %Gia_StaAreSharpVar.exit, %Gia_StaAreSharpVar.exit169
  %.1.i.lcssa.lcssa.sink = phi i32 [ %.1.i152, %Gia_StaAreSharpVar.exit169 ], [ %.1.i, %Gia_StaAreSharpVar.exit ]
  %i.dm = phi ptr [ %i.et, %Gia_StaAreSharpVar.exit169 ], [ %i.am, %Gia_StaAreSharpVar.exit ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = shl i32 %.1.i.lcssa.lcssa.sink, 1       ; 2 uses
  %i.dp = ashr i32 %i.do, 5
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = and i32 %i.do, 30                       ; 2 uses
  %i.du = shl nuw nsw i32 1, %i.dt                ; 2 uses
  %i.dv = and i32 %i.ds, %i.du
  %.not85 = icmp eq i32 %i.dv, 0
  %i.dw = shl nuw i32 2, %i.dt
  %spec.select264 = select i1 %.not85, i32 %i.du, i32 %i.dw
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dq ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = or i32 %i.dy, %spec.select264
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !8
  br label %tailrecurse

Gia_StaAreDisjoint.exit:                          ; preds = %bb.e, %bb.k, %Gia_StaAreSharpVar.exit, %bb.b, %bb.j
  %i.ea = phi ptr [ %i.aa, %bb.k ], [ %.pre, %bb.j ], [ %i.aa, %Gia_StaAreSharpVar.exit ], [ %i.aa, %bb.b ], [ %i.aa, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %.val90 = load i32, ptr %i.eb, align 4, !tbaa !53
  %i.ec = sext i32 %.val90 to i64
  %i.ed = icmp slt i64 %indvars.iv.next, %i.ec
  br i1 %i.ed, label %.lr.ph, label %.critedge, !llvm.loop !100

.critedge:                                        ; preds = %.lr.ph, %Gia_StaAreDisjoint.exit, %tailrecurse
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !74  ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %.val89220 = load i32, ptr %i.ef, align 4, !tbaa !53
  %i.eg = icmp sgt i32 %.val89220, 0
  br i1 %i.eg, label %.lr.ph222, label %.critedge2

.lr.ph222:                                        ; preds = %.critedge, %Gia_StaAreDisjoint.exit122
  %i.eh = phi ptr [ %i.ht, %Gia_StaAreDisjoint.exit122 ], [ %i.ee, %.critedge ] ; 5 uses
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %Gia_StaAreDisjoint.exit122 ], [ 0, %.critedge ] ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val91 = load ptr, ptr %i.ei, align 8, !tbaa !55
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val91, i64 %indvars.iv238
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8  ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !42
  %.val86 = load i32, ptr %i.f, align 8, !tbaa !43 ; 2 uses
  %i.el = lshr i32 %i.ek, 20
  %i.em = and i32 %i.el, 2047
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !44 ; 2 uses
  %i.eq = and i32 %i.ek, 1048575
  %i.er = mul nsw i32 %.val86, %i.eq
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.es ; 4 uses
  %.not75 = icmp eq ptr %i.ep, null
  br i1 %.not75, label %.critedge2, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph222
  %.val94 = load i32, ptr %i.et, align 4          ; 2 uses
  %.not76 = icmp sgt i32 %.val94, -1
  br i1 %.not76, label %bb.ac, label %Gia_StaAreDisjoint.exit122

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load i32, ptr %i.g, align 4, !tbaa !65  ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i116, label %.thread179

.lr.ph.i116:                                      ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 4 uses
  %wide.trip.count.i117 = zext nneg i32 %i.eu to i64 ; 4 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i121 = icmp eq i64 %indvars.iv.next.i120, %wide.trip.count.i117
  br i1 %exitcond.not.i121, label %.lr.ph.i124, label %bb.ae, !llvm.loop !90

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i116
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i116 ], [ %indvars.iv.next.i120, %bb.ad ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i118
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i118
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = xor i32 %i.fa, %i.ey                    ; 2 uses
  %i.fc = lshr i32 %i.fb, 1
  %i.fd = and i32 %i.fb, 1431655765
  %i.fe = and i32 %i.fd, %i.fc
  %.not.i119 = icmp eq i32 %i.fe, 0
  br i1 %.not.i119, label %bb.ad, label %Gia_StaAreDisjoint.exit122

bb.af:                                            ; preds = %.lr.ph.i124
  %indvars.iv.next.i128 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i129 = icmp eq i64 %indvars.iv.next.i128, %wide.trip.count.i117
  br i1 %exitcond.not.i129, label %.thread179, label %.lr.ph.i124, !llvm.loop !91

.lr.ph.i124:                                      ; preds = %bb.ad, %bb.af
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i128, %bb.af ], [ 0, %bb.ad ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i126
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !8
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i126
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !8  ; 2 uses
  %i.fj = or i32 %i.fi, %i.fg
  %.not.i127 = icmp eq i32 %i.fj, %i.fi
  br i1 %.not.i127, label %bb.af, label %.lr.ph.i135

.thread179:                                       ; preds = %bb.ac, %bb.af
  %i.fk = shl i32 %.val86, 2
  %i.fl = sext i32 %i.fk to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.fl, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !41 ; 2 uses
  %i.fo = add nsw i32 %i.fn, -1                   ; 3 uses
  %.val.i.i131 = load ptr, ptr %i.e, align 8, !tbaa !42
  %.val2.i.i132 = load i32, ptr %i.f, align 8, !tbaa !43
  %i.fp = lshr i32 %i.fo, 20
  %i.fq = and i32 %i.fp, 2047
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i131, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !44
  %i.fu = and i32 %i.fo, 1048575
  %i.fv = mul nsw i32 %i.fu, %.val2.i.i132
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = icmp eq ptr %1, %i.fx
  br i1 %i.fy, label %bb.ag, label %.critedge2

bb.ag:                                            ; preds = %.thread179
  store i32 %i.fo, ptr %i.fm, align 8, !tbaa !41
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !80 ; 2 uses
  %i.gb = shl i32 %i.ga, 20
  %i.gc = add i32 %i.gb, -1048575
  %i.gd = icmp eq i32 %i.fn, %i.gc
  br i1 %i.gd, label %bb.ah, label %.critedge2

bb.ah:                                            ; preds = %bb.ag
  %i.ge = add nsw i32 %i.ga, -1
  store i32 %i.ge, ptr %i.fz, align 8, !tbaa !80
  br label %.critedge2

bb.ai:                                            ; preds = %.lr.ph.i135
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %indvars.iv.next.i139, %wide.trip.count.i117
  br i1 %exitcond.not.i140, label %bb.aj, label %.lr.ph.i135, !llvm.loop !91

.lr.ph.i135:                                      ; preds = %.lr.ph.i124, %bb.ai
  %indvars.iv.i137 = phi i64 [ %indvars.iv.next.i139, %bb.ai ], [ 0, %.lr.ph.i124 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i137
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !8
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i137
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !8  ; 2 uses
  %i.gj = or i32 %i.gi, %i.gg
  %.not.i138 = icmp eq i32 %i.gj, %i.gi
  br i1 %.not.i138, label %bb.ai, label %.lr.ph.i143

bb.aj:                                            ; preds = %bb.ai
  %i.gk = or disjoint i32 %.val94, -2147483648
  store i32 %i.gk, ptr %i.et, align 4
  %.pre241 = load ptr, ptr %i.b, align 8, !tbaa !74
  br label %Gia_StaAreDisjoint.exit122

.lr.ph.i143:                                      ; preds = %.lr.ph.i135, %bb.ba
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i153, %bb.ba ], [ 0, %.lr.ph.i135 ] ; 4 uses
  %.021.i146 = phi i32 [ %.1.i152, %bb.ba ], [ -1, %.lr.ph.i135 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i145
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !8  ; 2 uses
  %i.gn = lshr i32 %i.gm, 1
  %i.go = xor i32 %i.gm, %i.gn
  %i.gp = xor i32 %i.go, -1
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i145
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8  ; 2 uses
  %i.gs = lshr i32 %i.gr, 1
  %i.gt = xor i32 %i.gs, %i.gr
  %i.gu = and i32 %i.gt, %i.gp                    ; 16 uses
  %i.gv = and i32 %i.gu, 1431655765               ; 2 uses
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.ba, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i143
  %i.gx = tail call range(i32 1, 17) i32 @llvm.ctpop.i32(i32 range(i32 1, 1431655766) %i.gv)
  %i.gy = icmp samesign ugt i32 %i.gx, 1
  %i.gz = icmp sgt i32 %.021.i146, -1
  %or.cond.i147 = select i1 %i.gy, i1 true, i1 %i.gz
  br i1 %or.cond.i147, label %Gia_StaAreDisjoint.exit122, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = and i32 %i.gu, 1
  %.not.i.i148 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i148, label %bb.am, label %Gia_WordFindFirstBit.exit.i149

bb.am:                                            ; preds = %bb.al
  %i.hb = and i32 %i.gu, 4
  %.not.2.i.i155 = icmp eq i32 %i.hb, 0
  br i1 %.not.2.i.i155, label %bb.an, label %Gia_WordFindFirstBit.exit.i149

bb.an:                                            ; preds = %bb.am
  %i.hc = and i32 %i.gu, 16
  %.not.4.i.i156 = icmp eq i32 %i.hc, 0
  br i1 %.not.4.i.i156, label %bb.ao, label %Gia_WordFindFirstBit.exit.i149

bb.ao:                                            ; preds = %bb.an
  %i.hd = and i32 %i.gu, 64
  %.not.6.i.i157 = icmp eq i32 %i.hd, 0
  br i1 %.not.6.i.i157, label %bb.ap, label %Gia_WordFindFirstBit.exit.i149

bb.ap:                                            ; preds = %bb.ao
  %i.he = and i32 %i.gu, 256
  %.not.8.i.i158 = icmp eq i32 %i.he, 0
  br i1 %.not.8.i.i158, label %bb.aq, label %Gia_WordFindFirstBit.exit.i149

bb.aq:                                            ; preds = %bb.ap
  %i.hf = and i32 %i.gu, 1024
  %.not.10.i.i159 = icmp eq i32 %i.hf, 0
  br i1 %.not.10.i.i159, label %bb.ar, label %Gia_WordFindFirstBit.exit.i149

bb.ar:                                            ; preds = %bb.aq
  %i.hg = and i32 %i.gu, 4096
  %.not.12.i.i160 = icmp eq i32 %i.hg, 0
  br i1 %.not.12.i.i160, label %bb.as, label %Gia_WordFindFirstBit.exit.i149

bb.as:                                            ; preds = %bb.ar
  %i.hh = and i32 %i.gu, 16384
  %.not.14.i.i161 = icmp eq i32 %i.hh, 0
  br i1 %.not.14.i.i161, label %bb.at, label %Gia_WordFindFirstBit.exit.i149

bb.at:                                            ; preds = %bb.as
  %i.hi = and i32 %i.gu, 65536
  %.not.16.i.i162 = icmp eq i32 %i.hi, 0
  br i1 %.not.16.i.i162, label %bb.au, label %Gia_WordFindFirstBit.exit.i149

bb.au:                                            ; preds = %bb.at
  %i.hj = and i32 %i.gu, 262144
  %.not.18.i.i163 = icmp eq i32 %i.hj, 0
  br i1 %.not.18.i.i163, label %bb.av, label %Gia_WordFindFirstBit.exit.i149

bb.av:                                            ; preds = %bb.au
  %i.hk = and i32 %i.gu, 1048576
  %.not.20.i.i164 = icmp eq i32 %i.hk, 0
  br i1 %.not.20.i.i164, label %bb.aw, label %Gia_WordFindFirstBit.exit.i149

bb.aw:                                            ; preds = %bb.av
  %i.hl = and i32 %i.gu, 4194304
  %.not.22.i.i165 = icmp eq i32 %i.hl, 0
  br i1 %.not.22.i.i165, label %bb.ax, label %Gia_WordFindFirstBit.exit.i149

bb.ax:                                            ; preds = %bb.aw
  %i.hm = and i32 %i.gu, 16777216
  %.not.24.i.i166 = icmp eq i32 %i.hm, 0
  br i1 %.not.24.i.i166, label %bb.ay, label %Gia_WordFindFirstBit.exit.i149

bb.ay:                                            ; preds = %bb.ax
  %i.hn = and i32 %i.gu, 67108864
  %.not.26.i.i167 = icmp eq i32 %i.hn, 0
  br i1 %.not.26.i.i167, label %bb.az, label %Gia_WordFindFirstBit.exit.i149

bb.az:                                            ; preds = %bb.ay
  %i.ho = and i32 %i.gu, 268435456
  %.not.28.i.i168 = icmp eq i32 %i.ho, 0
  %i.hp = select i1 %.not.28.i.i168, i32 15, i32 14
  br label %Gia_WordFindFirstBit.exit.i149

Gia_WordFindFirstBit.exit.i149:                   ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.06.i.i150 = phi i32 [ 0, %bb.al ], [ 12, %bb.ax ], [ 11, %bb.aw ], [ 8, %bb.at ], [ 1, %bb.am ], [ 10, %bb.av ], [ 7, %bb.as ], [ 6, %bb.ar ], [ 2, %bb.an ], [ 4, %bb.ap ], [ 9, %bb.au ], [ %i.hp, %bb.az ], [ 3, %bb.ao ], [ 5, %bb.aq ], [ 13, %bb.ay ]
  %indvars.iv.tr.i151 = trunc nsw i64 %indvars.iv.i145 to i32
  %i.hq = shl nsw i32 %indvars.iv.tr.i151, 4
  %i.hr = or disjoint i32 %.06.i.i150, %i.hq
  br label %bb.ba

bb.ba:                                            ; preds = %Gia_WordFindFirstBit.exit.i149, %.lr.ph.i143
  %.1.i152 = phi i32 [ %.021.i146, %.lr.ph.i143 ], [ %i.hr, %Gia_WordFindFirstBit.exit.i149 ] ; 3 uses
  %indvars.iv.next.i153 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %exitcond.not.i154 = icmp eq i64 %indvars.iv.next.i153, %wide.trip.count.i117
  br i1 %exitcond.not.i154, label %Gia_StaAreSharpVar.exit169, label %.lr.ph.i143, !llvm.loop !92

Gia_StaAreSharpVar.exit169:                       ; preds = %bb.ba
  %i.hs = icmp eq i32 %.1.i152, -1
  br i1 %i.hs, label %Gia_StaAreDisjoint.exit122, label %tailrecurse.backedge

Gia_StaAreDisjoint.exit122:                       ; preds = %bb.ae, %bb.ak, %Gia_StaAreSharpVar.exit169, %bb.ab, %bb.aj
  %i.ht = phi ptr [ %i.eh, %bb.ak ], [ %.pre241, %bb.aj ], [ %i.eh, %Gia_StaAreSharpVar.exit169 ], [ %i.eh, %bb.ab ], [ %i.eh, %bb.ae ] ; 2 uses
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %.val89 = load i32, ptr %i.hu, align 4, !tbaa !53
  %i.hv = sext i32 %.val89 to i64
  %i.hw = icmp slt i64 %indvars.iv.next239, %i.hv
  br i1 %i.hw, label %.lr.ph222, label %.critedge2, !llvm.loop !101

.critedge2:                                       ; preds = %.critedge, %Gia_StaAreDisjoint.exit122, %.lr.ph222, %bb.ah, %bb.ag, %.thread179, %bb.h, %bb.g, %.thread
  %.070 = phi i32 [ 0, %bb.g ], [ 0, %bb.ah ], [ 0, %bb.h ], [ 0, %bb.ag ], [ 0, %.thread179 ], [ 0, %.thread ], [ 1, %Gia_StaAreDisjoint.exit122 ], [ 1, %.lr.ph222 ], [ 1, %.critedge ]
  ret i32 %.070
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManAreMostUsedPi_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %.val.i15 = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.val.i15 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %sext.i16 = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i16, 30
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not17 = icmp eq i32 %i.k, %i.l
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.m = phi i32 [ %i.ai, %tailrecurse ], [ %i.l, %bb.a ]
  %i.n = phi ptr [ %i.ag, %tailrecurse ], [ %i.j, %bb.a ]
  %.tr1318 = phi ptr [ %i.z, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !8
  %.val = load i64, ptr %.tr1318, align 4         ; 2 uses
  %i.o = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.o, 2684354559
  br i1 %narrow.i.not, label %bb.b, label %tailrecurse

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr1318, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !102
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !102
  br label %.loopexit

tailrecurse:                                      ; preds = %.lr.ph
  %i.s = and i64 %.val, 536870911
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [12 x i8], ptr %.tr1318, i64 %i.t
  tail call void @Gia_ManAreMostUsedPi_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  %i.v = load i64, ptr %.tr1318, align 4
  %i.w = lshr i64 %i.v, 32
  %i.x = and i64 %i.w, 536870911
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [12 x i8], ptr %.tr1318, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !50
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %.val.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12
  %sext.i = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext.i, 30
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %.not = icmp eq i32 %i.ah, %i.ai
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManCheckPOs_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50
  %.val.i13 = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.val.i13 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %sext.i14 = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i14, 30
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = load i32, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not15 = icmp eq i32 %i.k, %i.l
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.m = phi i32 [ %i.ah, %tailrecurse ], [ %i.l, %bb.a ]
  %i.n = phi ptr [ %i.af, %tailrecurse ], [ %i.j, %bb.a ]
  %.tr1217 = phi ptr [ %i.x, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  %accumulator.tr16 = phi i32 [ %i.y, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  store i32 %i.m, ptr %i.n, align 4, !tbaa !8
  %.val = load i64, ptr %.tr1217, align 4         ; 2 uses
  %i.o = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.o, 2684354559
  br i1 %narrow.i.not, label %._crit_edge.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.p = and i64 %.val, 536870911
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [12 x i8], ptr %.tr1217, i64 %i.q
  %i.s = tail call i32 @Gia_ManCheckPOs_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.t = load i64, ptr %.tr1217, align 4
  %i.u = lshr i64 %i.t, 32
  %i.v = and i64 %i.u, 536870911
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [12 x i8], ptr %.tr1217, i64 %i.w ; 2 uses
  %i.y = add i32 %i.s, %accumulator.tr16          ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !50
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %.val.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %sext.i = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext.i, 30
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %.not = icmp eq i32 %i.ag, %i.ah
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %tailrecurse
  %accumulator.tr.lcssa.ph = phi i32 [ %i.y, %tailrecurse ], [ %accumulator.tr16, %.lr.ph ]
  %.0.ph = phi i32 [ 0, %tailrecurse ], [ 1, %.lr.ph ]
  %i.ai = add i32 %.0.ph, %accumulator.tr.lcssa.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %accumulator.ret.tr = phi i32 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit ]
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManAreDeriveNexts_rec(ptr noundef %0, i32 %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !104
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !104
  %i.d = icmp eq i32 %i.c, 1000000
  br i1 %i.d, label %.critedge4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val39.i = load i32, ptr %i.i, align 4, !tbaa !53 ; 4 uses
  %i.j = icmp sgt i32 %.val39.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 32
  %.val45.i = load ptr, ptr %i.k, align 8, !tbaa !51 ; 6 uses
  %.not.i = icmp eq ptr %.val45.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %.val46.val.i = load ptr, ptr %i.l, align 8, !tbaa !55 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val39.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.m = icmp ult i32 %.val39.i, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.split.i.new

.lr.ph.split.i.new:                               ; preds = %.lr.ph.split.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.i.new
end_hunk_2
