Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcUif?download=true
inline.NumInlined: 119
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Wlc_NtkCollectAddMult:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ae = icmp slt i32 %i.p, 16
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 64) #11
  br label %.thread.sink.split.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %.thread.sink.split.sink.split

bb.l:                                             ; preds = %bb.h
  %i.ah = icmp samesign ult i32 %i.p, 1073741823
  %i.ai = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %.thread.sink.split

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %i.q, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.ak) #11
  br label %.thread.sink.split.sink.split

bb.o:                                             ; preds = %bb.m
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #10
  br label %.thread.sink.split.sink.split

bb.p:                                             ; preds = %bb.d
  %i.an = load i32, ptr %i.n, align 4, !tbaa !36  ; 2 uses
  %.not30 = icmp eq i32 %i.an, 0
  br i1 %.not30, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr i8, ptr %i.u, i64 8
  %.val34 = load i32, ptr %i.ao, align 8, !tbaa !28
  %i.ap = getelementptr i8, ptr %i.u, i64 12
  %.val35 = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.aq = sub nsw i32 %.val34, %.val35
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = add nuw nsw i32 %i.ar, 1
  %.not31 = icmp slt i32 %i.as, %i.an
  br i1 %.not31, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = icmp eq i32 %i.t, %i.s
  br i1 %i.at, label %bb.s, label %.thread.sink.split

bb.s:                                             ; preds = %bb.r
  %i.au = icmp slt i32 %i.s, 16
  br i1 %i.au, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not9.i.i43 = icmp eq ptr %i.r, null
  br i1 %.not9.i.i43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.r, i64 noundef 64) #11
  br label %.thread.sink.split.sink.split

bb.v:                                             ; preds = %bb.t
  %i.aw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %.thread.sink.split.sink.split

bb.w:                                             ; preds = %bb.s
  %i.ax = icmp samesign ult i32 %i.s, 1073741823
  %i.ay = shl nuw nsw i32 %i.s, 1
  %spec.select.i38 = select i1 %i.ax, i32 %i.ay, i32 2147483647 ; 4 uses
  %.not.i9.i39 = icmp samesign ult i32 %i.s, %spec.select.i38
  br i1 %.not.i9.i39, label %bb.x, label %.thread.sink.split

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i40 = icmp eq ptr %i.r, null
  %i.az = zext nneg i32 %spec.select.i38 to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i40, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.ba) #11
  br label %.thread.sink.split.sink.split

bb.z:                                             ; preds = %bb.x
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #10
  br label %.thread.sink.split.sink.split

.thread.sink.split.sink.split:                    ; preds = %bb.v, %bb.u, %bb.z, %bb.y, %bb.k, %bb.j, %bb.o, %bb.n
  %storemerge.sink = phi ptr [ %i.am, %bb.o ], [ %i.ag, %bb.k ], [ %i.af, %bb.j ], [ %i.al, %bb.n ], [ %i.aw, %bb.v ], [ %i.av, %bb.u ], [ %i.bb, %bb.y ], [ %i.bc, %bb.z ] ; 3 uses
  %spec.select.sink.i42.sink = phi i32 [ %spec.select.i, %bb.o ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i38, %bb.y ], [ %spec.select.i38, %bb.z ] ; 3 uses
  %.sink.ph = phi ptr [ %2, %bb.o ], [ %2, %bb.k ], [ %2, %bb.j ], [ %2, %bb.n ], [ %3, %bb.v ], [ %3, %bb.u ], [ %3, %bb.y ], [ %3, %bb.z ]
  store ptr %storemerge.sink, ptr %i.j, align 8, !tbaa !14
  store i32 %spec.select.sink.i42.sink, ptr %i.g, align 8, !tbaa !13
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %.thread.sink.split.sink.split, %bb.w, %bb.r, %bb.l, %bb.g
  %.sink71 = phi ptr [ %i.q, %bb.w ], [ %i.o, %bb.g ], [ %i.o, %bb.l ], [ %i.q, %bb.r ], [ %storemerge.sink, %.thread.sink.split.sink.split ] ; 3 uses
  %.sink = phi ptr [ %3, %bb.w ], [ %2, %bb.g ], [ %2, %bb.l ], [ %3, %bb.r ], [ %.sink.ph, %.thread.sink.split.sink.split ] ; 2 uses
  %.ph = phi ptr [ %i.o, %bb.w ], [ %i.o, %bb.g ], [ %i.o, %bb.l ], [ %i.o, %bb.r ], [ %storemerge.sink, %.thread.sink.split.sink.split ]
  %.ph62 = phi i32 [ %i.p, %bb.w ], [ %i.p, %bb.g ], [ %i.p, %bb.l ], [ %i.p, %bb.r ], [ %spec.select.sink.i42.sink, %.thread.sink.split.sink.split ]
  %.ph65 = phi i32 [ %i.s, %bb.w ], [ %i.p, %bb.g ], [ %i.p, %bb.l ], [ %i.s, %bb.r ], [ %spec.select.sink.i42.sink, %.thread.sink.split.sink.split ]
  %i.bd = add nsw i32 %i.t, 1                     ; 2 uses
  store i32 %i.bd, ptr %i.h, align 4, !tbaa !12
  %i.be = sext i32 %i.t to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.sink71, i64 %i.be
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !15
  %i.bh = load i32, ptr %.sink, align 4, !tbaa !15
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %.sink, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.d, %bb.e, %bb.f, %bb.q, %bb.p
  %i.bj = phi ptr [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.q ], [ %i.o, %bb.p ], [ %.ph, %.thread.sink.split ] ; 2 uses
  %i.bk = phi i32 [ %i.p, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %bb.q ], [ %i.p, %bb.p ], [ %.ph62, %.thread.sink.split ]
  %i.bl = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.q ], [ %i.q, %bb.p ], [ %.sink71, %.thread.sink.split ]
  %i.bm = phi ptr [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.f ], [ %i.r, %bb.q ], [ %i.r, %bb.p ], [ %.sink71, %.thread.sink.split ]
  %i.bn = phi i32 [ %i.s, %bb.d ], [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.q ], [ %i.s, %bb.p ], [ %.ph65, %.thread.sink.split ]
  %i.bo = phi i32 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %bb.q ], [ %i.t, %bb.p ], [ %i.bd, %.thread.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val32 = load i32, ptr %i.k, align 8, !tbaa !25
  %i.bp = sext i32 %.val32 to i64
  %i.bq = icmp slt i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.d, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %.thread
  %i.br = icmp sgt i32 %i.bo, 0
  br i1 %i.br, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %.critedge
  tail call void @Wlc_NtkCollectBoxes(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %bb.ac

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  %i.bs = phi ptr [ %i.bj, %.critedge ], [ %i.i, %bb.c ] ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.bs) #12
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge.thread, %bb.ab
  tail call void @free(ptr noundef nonnull %i.g) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %Vec_IntFree.exit, %bb.aa
  %.028 = phi ptr [ null, %Vec_IntFree.exit ], [ %i.g, %bb.aa ], [ null, %bb.b ]
  ret ptr %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Wlc_NtkPairIsUifable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val29 = load i32, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %1, i64 12
  %.val30 = load i32, ptr %i.b, align 4, !tbaa !29
  %i.c = sub nsw i32 %.val29, %.val30
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val27 = load i32, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr i8, ptr %2, i64 12
  %.val28 = load i32, ptr %i.f, align 4, !tbaa !29
  %i.g = sub nsw i32 %.val27, %.val28
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.val34 = load i16, ptr %1, align 8             ; 2 uses
  %.val33 = load i16, ptr %2, align 8             ; 2 uses
  %i.i = xor i16 %.val33, %.val34
  %i.j = and i16 %i.i, 64
  %.not20 = icmp eq i16 %i.j, 0
  br i1 %.not20, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %1, i64 4
  %.val37 = load i32, ptr %i.k, align 4, !tbaa !30 ; 6 uses
  %i.l = getelementptr i8, ptr %2, i64 4
  %.val36 = load i32, ptr %i.l, align 4, !tbaa !30
  %.not21 = icmp eq i32 %.val37, %.val36
  br i1 %.not21, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.m = icmp sgt i32 %.val37, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = icmp samesign ugt i32 %.val37, 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 640
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !26 ; 10 uses
  %i.q = and i16 %.val33, 63                      ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  br i1 %i.n, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !31
  %wide.trip.count104 = zext nneg i32 %.val37 to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.us

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %.loopexit, label %Wlc_ObjFanin.exit40.us, !llvm.loop !0

Wlc_ObjFanin.exit40.us:                           ; preds = %bb.d, %.lr.ph.split.us
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.d ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv101
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv101
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.aa ; 3 uses
  %i.ac = getelementptr i8, ptr %i.x, i64 8
  %.val25.us = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.ad = getelementptr i8, ptr %i.x, i64 12
  %.val26.us = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.ae = sub nsw i32 %.val25.us, %.val26.us
  %i.af = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.ag = getelementptr i8, ptr %i.ab, i64 8
  %.val.us = load i32, ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr i8, ptr %i.ab, i64 12
  %.val24.us = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.ai = sub nsw i32 %.val.us, %.val24.us
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %.not22.us = icmp eq i32 %i.af, %i.aj
  br i1 %.not22.us, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %Wlc_ObjFanin.exit40.us
  %.val32.us = load i16, ptr %i.x, align 8
  %.val31.us = load i16, ptr %i.ab, align 8
  %i.ak = xor i16 %.val31.us, %.val32.us
  %i.al = and i16 %i.ak, 64
  %.not23.us = icmp eq i16 %i.al, 0
  br i1 %.not23.us, label %bb.d, label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.am = and i16 %.val34, 63
  switch i16 %i.am, label %Wlc_ObjFanin.exit [
    i16 6, label %.lr.ph.split.split.us
    i16 22, label %.lr.ph.split.split.us
  ]

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.lr.ph.split
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !31  ; 2 uses
  %3 = load i32, ptr %i.an, align 4, !tbaa !15
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %4 ; 3 uses
  switch i16 %i.q, label %Wlc_ObjFanin.exit40.us51 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38.us50
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38.us50
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38.us50:         ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.us
  %6 = load ptr, ptr %i.r, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.us51

Wlc_ObjFanin.exit40.us51:                         ; preds = %.lr.ph.split.split.us, %Wlc_ObjHasArray.exit.thread.i.i.i38.us50
  %7 = phi ptr [ %6, %Wlc_ObjHasArray.exit.thread.i.i.i38.us50 ], [ %i.r, %.lr.ph.split.split.us ]
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %9 ; 3 uses
  %11 = getelementptr i8, ptr %5, i64 8
  %.val25.us52 = load i32, ptr %11, align 8, !tbaa !28
  %12 = getelementptr i8, ptr %5, i64 12
  %.val26.us53 = load i32, ptr %12, align 4, !tbaa !29
  %13 = sub nsw i32 %.val25.us52, %.val26.us53
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 true)
  %15 = getelementptr i8, ptr %10, i64 8
  %.val.us54 = load i32, ptr %15, align 8, !tbaa !28
  %16 = getelementptr i8, ptr %10, i64 12
  %.val24.us55 = load i32, ptr %16, align 4, !tbaa !29
  %17 = sub nsw i32 %.val.us54, %.val24.us55
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 true)
  %.not22.us56 = icmp eq i32 %14, %18
  br i1 %.not22.us56, label %19, label %.loopexit

19:                                               ; preds = %Wlc_ObjFanin.exit40.us51
  %.val32.us57 = load i16, ptr %5, align 8
  %.val31.us58 = load i16, ptr %10, align 8
  %20 = xor i16 %.val31.us58, %.val32.us57
  %21 = and i16 %20, 64
  %.not23.us59 = icmp eq i16 %21, 0
  br i1 %.not23.us59, label %22, label %.loopexit

22:                                               ; preds = %19
  %exitcond.not = icmp eq i32 %.val37, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %22
  %23 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = load i32, ptr %23, align 4, !tbaa !15
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.ap ; 3 uses
  switch i16 %i.q, label %Wlc_ObjFanin.exit40.us51.a [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.a
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.a
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38.us50.a:       ; preds = %bb.f, %bb.f
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.us51.a

Wlc_ObjFanin.exit40.us51.a:                       ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.a, %bb.f
  %i.as = phi ptr [ %i.ar, %Wlc_ObjHasArray.exit.thread.i.i.i38.us50.a ], [ %i.r, %bb.f ]
  %24 = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.at = load i32, ptr %24, align 4, !tbaa !15
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.au ; 3 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 8
  %.val25.us52.a = load i32, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr i8, ptr %i.aq, i64 12
  %.val26.us53.a = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.ay = sub nsw i32 %.val25.us52.a, %.val26.us53.a
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = getelementptr i8, ptr %i.av, i64 8
  %.val.us54.a = load i32, ptr %i.ba, align 8, !tbaa !28
  %i.bb = getelementptr i8, ptr %i.av, i64 12
  %.val24.us55.a = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bc = sub nsw i32 %.val.us54.a, %.val24.us55.a
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.bc, i1 true)
  %.not22.us56.a = icmp eq i32 %i.az, %i.bd
  br i1 %.not22.us56.a, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %Wlc_ObjFanin.exit40.us51.a
  %.val32.us57.a = load i16, ptr %i.aq, align 8
  %.val31.us58.a = load i16, ptr %i.av, align 8
  %i.be = xor i16 %.val31.us58.a, %.val32.us57.a
  %i.bf = and i16 %i.be, 64
  %.not23.us59.a = icmp eq i16 %i.bf, 0
  %spec.select = select i1 %.not23.us59.a, i32 1, i32 0
  br label %.loopexit

bb.h:                                             ; preds = %bb.j
  %exitcond95.not = icmp eq i32 %.val37, 1
  br i1 %exitcond95.not, label %.loopexit, label %Wlc_ObjFanin.exit.1

Wlc_ObjFanin.exit.1:                              ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !15
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.bi ; 3 uses
  switch i16 %i.q, label %Wlc_ObjFanin.exit40.1 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38.1
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38.1
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38.1:            ; preds = %Wlc_ObjFanin.exit.1, %Wlc_ObjFanin.exit.1
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40.1

Wlc_ObjFanin.exit40.1:                            ; preds = %Wlc_ObjHasArray.exit.thread.i.i.i38.1, %Wlc_ObjFanin.exit.1
  %i.bl = phi ptr [ %i.bk, %Wlc_ObjHasArray.exit.thread.i.i.i38.1 ], [ %i.r, %Wlc_ObjFanin.exit.1 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !15
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bj, i64 8
  %.val25.1 = load i32, ptr %i.bq, align 8, !tbaa !28
  %i.br = getelementptr i8, ptr %i.bj, i64 12
  %.val26.1 = load i32, ptr %i.br, align 4, !tbaa !29
  %i.bs = sub nsw i32 %.val25.1, %.val26.1
  %i.bt = tail call i32 @llvm.abs.i32(i32 %i.bs, i1 true)
  %i.bu = getelementptr i8, ptr %i.bp, i64 8
  %.val.1 = load i32, ptr %i.bu, align 8, !tbaa !28
  %i.bv = getelementptr i8, ptr %i.bp, i64 12
  %.val24.1 = load i32, ptr %i.bv, align 4, !tbaa !29
  %i.bw = sub nsw i32 %.val.1, %.val24.1
  %i.bx = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %.not22.1 = icmp eq i32 %i.bt, %i.bx
  br i1 %.not22.1, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %Wlc_ObjFanin.exit40.1
  %.val32.1 = load i16, ptr %i.bj, align 8
  %.val31.1 = load i16, ptr %i.bp, align 8
  %i.by = xor i16 %.val31.1, %.val32.1
  %i.bz = and i16 %i.by, 64
  %.not23.1 = icmp eq i16 %i.bz, 0
  %spec.select.a = select i1 %.not23.1, i32 1, i32 0
  br label %.loopexit

Wlc_ObjFanin.exit:                                ; preds = %.lr.ph.split
  %i.ca = load i32, ptr %i.o, align 8, !tbaa !15
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.cb ; 3 uses
  switch i16 %i.q, label %Wlc_ObjFanin.exit40 [
    i16 6, label %Wlc_ObjHasArray.exit.thread.i.i.i38
    i16 22, label %Wlc_ObjHasArray.exit.thread.i.i.i38
  ]

Wlc_ObjHasArray.exit.thread.i.i.i38:              ; preds = %Wlc_ObjFanin.exit, %Wlc_ObjFanin.exit
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !31
  br label %Wlc_ObjFanin.exit40

Wlc_ObjFanin.exit40:                              ; preds = %Wlc_ObjFanin.exit, %Wlc_ObjHasArray.exit.thread.i.i.i38
  %i.ce = phi ptr [ %i.cd, %Wlc_ObjHasArray.exit.thread.i.i.i38 ], [ %i.r, %Wlc_ObjFanin.exit ]
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.cg ; 3 uses
  %i.ci = getelementptr i8, ptr %i.cc, i64 8
  %.val25 = load i32, ptr %i.ci, align 8, !tbaa !28
  %i.cj = getelementptr i8, ptr %i.cc, i64 12
  %.val26 = load i32, ptr %i.cj, align 4, !tbaa !29
  %i.ck = sub nsw i32 %.val25, %.val26
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = getelementptr i8, ptr %i.ch, i64 8
  %.val = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.cn = getelementptr i8, ptr %i.ch, i64 12
  %.val24 = load i32, ptr %i.cn, align 4, !tbaa !29
  %i.co = sub nsw i32 %.val, %.val24
  %i.cp = tail call i32 @llvm.abs.i32(i32 %i.co, i1 true)
  %.not22 = icmp eq i32 %i.cl, %i.cp
  br i1 %.not22, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %Wlc_ObjFanin.exit40
  %.val32 = load i16, ptr %i.cc, align 8
  %.val31 = load i16, ptr %i.ch, align 8
  %i.cq = xor i16 %.val31, %.val32
  %i.cr = and i16 %i.cq, 64
  %.not23 = icmp eq i16 %i.cr, 0
  br i1 %.not23, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.g, %Wlc_ObjFanin.exit40.us51, %19, %22, %Wlc_ObjFanin.exit40.us51.a, %Wlc_ObjFanin.exit40, %bb.j, %bb.h, %Wlc_ObjFanin.exit40.1, %Wlc_ObjFanin.exit40.us, %bb.e, %bb.d, %.preheader, %bb.c, %bb.b, %bb.a
  %.019 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.g ], [ 1, %.preheader ], [ 0, %Wlc_ObjFanin.exit40.us ], [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %Wlc_ObjFanin.exit40 ], [ 1, %bb.h ], [ 0, %bb.j ], [ 0, %Wlc_ObjFanin.exit40.1 ], [ %spec.select.a, %bb.i ], [ 0, %19 ], [ 1, %22 ], [ 0, %Wlc_ObjFanin.exit40.us51 ], [ 0, %Wlc_ObjFanin.exit40.us51.a ]
  ret i32 %.019
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Wlc_NtkCollectMultipliers(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 100, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %0, i64 648        ; 2 uses
  %.val1214 = load i32, ptr %i.e, align 8, !tbaa !25 ; 2 uses
  %i.f = icmp sgt i32 %.val1214, 1
  br i1 %i.f, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 640
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.val1217 = phi i32 [ %.val1214, %.lr.ph ], [ %.val12, %bb.l ]
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.af, %bb.l ] ; 3 uses
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.ag, %bb.l ] ; 5 uses
  %i.j = phi i32 [ 100, %.lr.ph ], [ %i.ah, %bb.l ] ; 8 uses
  %i.k = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.l ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.val13 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val13, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 63
  %i.o = icmp eq i16 %i.n, 45
  br i1 %i.o, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.k, %i.j
  br i1 %i.p, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %i.j, 16
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 64) #11
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i32 %i.j, 1073741823
  %i.u = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.j, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %i.i, null
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.w) #11
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #10
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.x, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !14
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.z = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.h ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.aa = phi i32 [ %i.j, %bb.c ], [ %i.j, %bb.h ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ab = add nsw i32 %i.k, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !12
  %i.ac = sext i32 %i.k to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !15
  %.val12.pre = load i32, ptr %i.e, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %Vec_IntPush.exit
  %.val12 = phi i32 [ %.val1217, %bb.b ], [ %.val12.pre, %Vec_IntPush.exit ] ; 2 uses
  %i.af = phi ptr [ %i.h, %bb.b ], [ %i.z, %Vec_IntPush.exit ] ; 2 uses
  %i.ag = phi ptr [ %i.i, %bb.b ], [ %i.z, %Vec_IntPush.exit ]
  %i.ah = phi i32 [ %i.j, %bb.b ], [ %i.aa, %Vec_IntPush.exit ]
  %i.ai = phi i32 [ %i.k, %bb.b ], [ %i.ab, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i32 %.val12 to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %bb.l
  %i.al = icmp sgt i32 %i.ai, 0
  br i1 %i.al, label %bb.n, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.am = phi ptr [ %i.af, %.critedge ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.am) #12
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge.thread, %bb.m
  tail call void @free(ptr noundef nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %Vec_IntFree.exit
  %.011 = phi ptr [ null, %Vec_IntFree.exit ], [ %i.a, %.critedge ]
  ret ptr %.011
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Wlc_NtkFindUifableMultiplierPairs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Wlc_NtkCollectMultipliers(ptr noundef %0) ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !12
  store i32 16, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #10 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val33 = load i32, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.g = icmp sgt i32 %.val33, 0
  br i1 %i.g, label %.lr.ph61, label %.critedge

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 640        ; 3 uses
  %wide.trip.count70 = zext nneg i32 %.val33 to i64 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph61, %.critedge2
  %i.j = phi ptr [ %i.d, %.lr.ph61 ], [ %i.fi, %.critedge2 ]
  %i.k = phi ptr [ %i.d, %.lr.ph61 ], [ %i.fj, %.critedge2 ]
  %i.l = phi i32 [ 16, %.lr.ph61 ], [ %i.fk, %.critedge2 ]
  %i.m = phi i32 [ 0, %.lr.ph61 ], [ %i.fl, %.critedge2 ]
  %indvars.iv67 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next68, %.critedge2 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv67
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15
  %.val37 = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [24 x i8], ptr %.val37, i64 %i.p ; 7 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = getelementptr i8, ptr %i.q, i64 12
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Wlc_NtkPairIsUifable.exit.thread
  %i.x = phi ptr [ %i.j, %.lr.ph ], [ %i.fe, %Wlc_NtkPairIsUifable.exit.thread ] ; 14 uses
  %i.y = phi ptr [ %i.k, %.lr.ph ], [ %i.ff, %Wlc_NtkPairIsUifable.exit.thread ] ; 18 uses
  %i.z = phi i32 [ %i.l, %.lr.ph ], [ %i.fg, %Wlc_NtkPairIsUifable.exit.thread ] ; 17 uses
  %i.aa = phi i32 [ %i.m, %.lr.ph ], [ %i.fh, %Wlc_NtkPairIsUifable.exit.thread ] ; 18 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Wlc_NtkPairIsUifable.exit.thread ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !15
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !26 ; 10 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %.val36, i64 %i.ad ; 6 uses
  %i.af = icmp eq i64 %indvars.iv, %indvars.iv67
  br i1 %i.af, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val29.i = load i32, ptr %i.r, align 8, !tbaa !28
  %.val30.i = load i32, ptr %i.s, align 4, !tbaa !29
  %i.ag = sub nsw i32 %.val29.i, %.val30.i
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %.val27.i = load i32, ptr %i.ai, align 8, !tbaa !28
  %i.aj = getelementptr i8, ptr %i.ae, i64 12
  %.val28.i = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.ak = sub nsw i32 %.val27.i, %.val28.i
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %.not.i = icmp eq i32 %i.ah, %i.al
  br i1 %.not.i, label %bb.d, label %Wlc_NtkPairIsUifable.exit.thread

bb.d:                                             ; preds = %bb.c
end_hunk_0
