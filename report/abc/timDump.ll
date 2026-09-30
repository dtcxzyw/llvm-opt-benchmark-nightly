Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/timDump?download=true
inline.NumInlined: 39
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Vec_StrPutF:bb.a

Vec_StrPush.exit.Vec_StrPush.exit12_crit_edge:    ; preds = %Vec_StrPush.exit
  %.pre31 = load ptr, ptr %i.u, align 8, !tbaa !13
  br label %Vec_StrPush.exit12

bb.k:                                             ; preds = %Vec_StrPush.exit
  %i.ac = icmp slt i32 %i.z, 16
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %.not9.i.i10 = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef 16) #9
  br label %Vec_StrGrow.exit11.sink.split.i8

bb.n:                                             ; preds = %bb.l
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #7
  br label %Vec_StrGrow.exit11.sink.split.i8

bb.o:                                             ; preds = %bb.k
  %i.ag = icmp samesign ult i32 %i.z, 1073741823
  %i.ah = shl nuw nsw i32 %i.z, 1
  %spec.select.i5 = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 4 uses
  %.not.i9.i6 = icmp samesign ult i32 %i.z, %spec.select.i5
  %.pre32 = load ptr, ptr %i.u, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i9.i6, label %bb.p, label %Vec_StrPush.exit12

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i7 = icmp eq ptr %.pre32, null
  %i.ai = zext nneg i32 %spec.select.i5 to i64    ; 2 uses
  br i1 %.not9.i10.i7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %.pre32, i64 noundef %i.ai) #9
  br label %Vec_StrGrow.exit11.sink.split.i8

bb.r:                                             ; preds = %bb.p
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #7
  br label %Vec_StrGrow.exit11.sink.split.i8

Vec_StrGrow.exit11.sink.split.i8:                 ; preds = %bb.q, %bb.r, %bb.m, %bb.n
  %storemerge = phi ptr [ %i.af, %bb.n ], [ %i.ae, %bb.m ], [ %i.aj, %bb.q ], [ %i.ak, %bb.r ] ; 2 uses
  %spec.select.sink.i9 = phi i32 [ 16, %bb.n ], [ 16, %bb.m ], [ %spec.select.i5, %bb.q ], [ %spec.select.i5, %bb.r ]
  store ptr %storemerge, ptr %i.u, align 8, !tbaa !13
  store i32 %spec.select.sink.i9, ptr %0, align 8, !tbaa !12
  %.pre33 = load i32, ptr %i.b, align 4, !tbaa !11
  br label %Vec_StrPush.exit12

Vec_StrPush.exit12:                               ; preds = %Vec_StrPush.exit.Vec_StrPush.exit12_crit_edge, %bb.o, %Vec_StrGrow.exit11.sink.split.i8
  %i.al = phi i32 [ %i.z, %Vec_StrPush.exit.Vec_StrPush.exit12_crit_edge ], [ %i.z, %bb.o ], [ %.pre33, %Vec_StrGrow.exit11.sink.split.i8 ] ; 2 uses
  %i.am = phi ptr [ %.pre31, %Vec_StrPush.exit.Vec_StrPush.exit12_crit_edge ], [ %.pre32, %bb.o ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i8 ]
  %i.an = add nsw i32 %i.al, 1
  store i32 %i.an, ptr %i.b, align 4, !tbaa !11
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  store i8 %.sroa.0.1.extract.trunc, ptr %i.ap, align 1, !tbaa !34
  %.sroa.0.2.extract.shift = lshr i32 %i.a, 16
  %.sroa.0.2.extract.trunc = trunc i32 %.sroa.0.2.extract.shift to i8
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !11  ; 7 uses
  %i.ar = load i32, ptr %0, align 8, !tbaa !12
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.s, label %Vec_StrPush.exit12.Vec_StrPush.exit20_crit_edge

Vec_StrPush.exit12.Vec_StrPush.exit20_crit_edge:  ; preds = %Vec_StrPush.exit12
  %.pre34 = load ptr, ptr %i.u, align 8, !tbaa !13
  br label %Vec_StrPush.exit20

bb.s:                                             ; preds = %Vec_StrPush.exit12
  %i.at = icmp slt i32 %i.aq, 16
  br i1 %i.at, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %.not9.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not9.i.i18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.au, i64 noundef 16) #9
  br label %Vec_StrGrow.exit11.sink.split.i16

bb.v:                                             ; preds = %bb.t
  %i.aw = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #7
  br label %Vec_StrGrow.exit11.sink.split.i16

bb.w:                                             ; preds = %bb.s
  %i.ax = icmp samesign ult i32 %i.aq, 1073741823
  %i.ay = shl nuw nsw i32 %i.aq, 1
  %spec.select.i13 = select i1 %i.ax, i32 %i.ay, i32 2147483647 ; 4 uses
  %.not.i9.i14 = icmp samesign ult i32 %i.aq, %spec.select.i13
  %.pre35 = load ptr, ptr %i.u, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i9.i14, label %bb.x, label %Vec_StrPush.exit20

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i15 = icmp eq ptr %.pre35, null
  %i.az = zext nneg i32 %spec.select.i13 to i64   ; 2 uses
  br i1 %.not9.i10.i15, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %.pre35, i64 noundef %i.az) #9
  br label %Vec_StrGrow.exit11.sink.split.i16

bb.z:                                             ; preds = %bb.x
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #7
  br label %Vec_StrGrow.exit11.sink.split.i16

Vec_StrGrow.exit11.sink.split.i16:                ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %storemerge29 = phi ptr [ %i.aw, %bb.v ], [ %i.av, %bb.u ], [ %i.ba, %bb.y ], [ %i.bb, %bb.z ] ; 2 uses
  %spec.select.sink.i17 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i13, %bb.y ], [ %spec.select.i13, %bb.z ]
  store ptr %storemerge29, ptr %i.u, align 8, !tbaa !13
  store i32 %spec.select.sink.i17, ptr %0, align 8, !tbaa !12
  %.pre36 = load i32, ptr %i.b, align 4, !tbaa !11
  br label %Vec_StrPush.exit20

Vec_StrPush.exit20:                               ; preds = %Vec_StrPush.exit12.Vec_StrPush.exit20_crit_edge, %bb.w, %Vec_StrGrow.exit11.sink.split.i16
  %i.bc = phi i32 [ %i.aq, %Vec_StrPush.exit12.Vec_StrPush.exit20_crit_edge ], [ %i.aq, %bb.w ], [ %.pre36, %Vec_StrGrow.exit11.sink.split.i16 ] ; 2 uses
  %i.bd = phi ptr [ %.pre34, %Vec_StrPush.exit12.Vec_StrPush.exit20_crit_edge ], [ %.pre35, %bb.w ], [ %storemerge29, %Vec_StrGrow.exit11.sink.split.i16 ]
  %i.be = add nsw i32 %i.bc, 1
  store i32 %i.be, ptr %i.b, align 4, !tbaa !11
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 %i.bf
  store i8 %.sroa.0.2.extract.trunc, ptr %i.bg, align 1, !tbaa !34
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !11  ; 7 uses
  %i.bi = load i32, ptr %0, align 8, !tbaa !12
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.aa, label %Vec_StrPush.exit20.Vec_StrPush.exit28_crit_edge

Vec_StrPush.exit20.Vec_StrPush.exit28_crit_edge:  ; preds = %Vec_StrPush.exit20
  %.pre37 = load ptr, ptr %i.u, align 8, !tbaa !13
  br label %Vec_StrPush.exit28

bb.aa:                                            ; preds = %Vec_StrPush.exit20
  %i.bk = icmp slt i32 %i.bh, 16
  br i1 %i.bk, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !13  ; 2 uses
  %.not9.i.i26 = icmp eq ptr %i.bl, null
  br i1 %.not9.i.i26, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bm = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bl, i64 noundef 16) #9
  br label %Vec_StrGrow.exit11.sink.split.i24

bb.ad:                                            ; preds = %bb.ab
  %i.bn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #7
  br label %Vec_StrGrow.exit11.sink.split.i24

bb.ae:                                            ; preds = %bb.aa
  %i.bo = icmp samesign ult i32 %i.bh, 1073741823
  %i.bp = shl nuw nsw i32 %i.bh, 1
  %spec.select.i21 = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 4 uses
  %.not.i9.i22 = icmp samesign ult i32 %i.bh, %spec.select.i21
  %.pre38 = load ptr, ptr %i.u, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i9.i22, label %bb.af, label %Vec_StrPush.exit28

bb.af:                                            ; preds = %bb.ae
  %.not9.i10.i23 = icmp eq ptr %.pre38, null
  %i.bq = zext nneg i32 %spec.select.i21 to i64   ; 2 uses
  br i1 %.not9.i10.i23, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.br = tail call ptr @realloc(ptr noundef nonnull %.pre38, i64 noundef %i.bq) #9
  br label %Vec_StrGrow.exit11.sink.split.i24

bb.ah:                                            ; preds = %bb.af
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #7
  br label %Vec_StrGrow.exit11.sink.split.i24

Vec_StrGrow.exit11.sink.split.i24:                ; preds = %bb.ag, %bb.ah, %bb.ac, %bb.ad
  %storemerge30 = phi ptr [ %i.bn, %bb.ad ], [ %i.bm, %bb.ac ], [ %i.br, %bb.ag ], [ %i.bs, %bb.ah ] ; 2 uses
  %spec.select.sink.i25 = phi i32 [ 16, %bb.ad ], [ 16, %bb.ac ], [ %spec.select.i21, %bb.ag ], [ %spec.select.i21, %bb.ah ]
  store ptr %storemerge30, ptr %i.u, align 8, !tbaa !13
  store i32 %spec.select.sink.i25, ptr %0, align 8, !tbaa !12
  %.pre39 = load i32, ptr %i.b, align 4, !tbaa !11
  br label %Vec_StrPush.exit28

Vec_StrPush.exit28:                               ; preds = %Vec_StrPush.exit20.Vec_StrPush.exit28_crit_edge, %bb.ae, %Vec_StrGrow.exit11.sink.split.i24
  %i.bt = phi i32 [ %i.bh, %Vec_StrPush.exit20.Vec_StrPush.exit28_crit_edge ], [ %i.bh, %bb.ae ], [ %.pre39, %Vec_StrGrow.exit11.sink.split.i24 ] ; 2 uses
  %i.bu = phi ptr [ %.pre37, %Vec_StrPush.exit20.Vec_StrPush.exit28_crit_edge ], [ %.pre38, %bb.ae ], [ %storemerge30, %Vec_StrGrow.exit11.sink.split.i24 ]
  %.sroa.0.3.extract.shift = lshr i32 %i.a, 24
  %.sroa.0.3.extract.trunc = trunc nuw i32 %.sroa.0.3.extract.shift to i8
  %i.bv = add nsw i32 %i.bt, 1
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !11
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.bw
  store i8 %.sroa.0.3.extract.trunc, ptr %i.bx, align 1, !tbaa !34
  ret void
}

declare float @Tim_ManGetCiArrival(ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @Tim_ManGetCoRequired(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Tim_ManLoad(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !13 ; 12 uses
  %2 = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %3 = load i8, ptr %2, align 1, !tbaa !34
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %7 = load i8, ptr %6, align 1, !tbaa !34
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %.val.i, i64 6
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %.val.i, i64 7
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  %20 = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = getelementptr inbounds nuw i8, ptr %.val.i, i64 9
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or disjoint i32 %27, %23
  %29 = getelementptr inbounds nuw i8, ptr %.val.i, i64 10
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = or disjoint i32 %28, %32
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 11
  %34 = load i8, ptr %i.b, align 1, !tbaa !34
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %33, %35
  %37 = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 13
  %39 = load i8, ptr %i.c, align 1, !tbaa !34
  %40 = getelementptr inbounds nuw i8, ptr %.val.i, i64 14
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 15
  %42 = load i8, ptr %i.d, align 1, !tbaa !34
  %i.e = tail call ptr @Tim_ManStart(i32 noundef %19, i32 noundef %36) #8 ; 12 uses
  %.val.i121 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i121, i64 20
  %i.g = load i32, ptr %i.f, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)  ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %43 = zext i8 %39 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = zext i8 %38 to i32
  %46 = shl nuw i32 %45, 24
  %47 = or disjoint i32 %44, %46
  %48 = zext i8 %41 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or disjoint i32 %47, %49
  %51 = zext i8 %42 to i32
  %52 = or disjoint i32 %50, %51
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #7 ; 4 uses
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 range(i32 1, -2147483648) %i.h, i32 8) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !21
  store i32 %spec.store.select.i, ptr %i.j, align 8, !tbaa !49
  %i.l = zext nneg i32 %spec.store.select.i to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #7
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !22
  store ptr %i.j, ptr %i.e, align 8, !tbaa !18
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0219 = phi i32 [ %i.ah, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.085218 = phi i32 [ %i.ag, %.lr.ph ], [ %52, %.lr.ph.preheader ] ; 2 uses
  %.087217 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0212216 = phi i32 [ %indvars.iv.next.3.i150, %.lr.ph ], [ 24, %.lr.ph.preheader ] ; 5 uses
  %.val.i127 = load ptr, ptr %i.a, align 8, !tbaa !13 ; 4 uses
  %i.p = sext i32 %.0212216 to i64
  %i.q = getelementptr i8, ptr %.val.i127, i64 %i.p
  %i.r = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 2 uses
  %i.t = sext i32 %.0212216 to i64
  %i.u = getelementptr i8, ptr %.val.i127, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %indvars.iv.next.3.i138 = add i32 %.0212216, 8
  %i.w = load i32, ptr %i.v, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)  ; 2 uses
  %i.y = sext i32 %indvars.iv.next.3.i138 to i64
  %i.z = getelementptr i8, ptr %.val.i127, i64 %i.y
  %indvars.iv.next.3.i144 = add i32 %.0212216, 12
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = sext i32 %indvars.iv.next.3.i144 to i64
  %i.ad = getelementptr i8, ptr %.val.i127, i64 %i.ac
  %indvars.iv.next.3.i150 = add i32 %.0212216, 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  tail call void @Tim_ManCreateBox(ptr noundef nonnull %i.e, i32 noundef %.0219, i32 noundef %i.s, i32 noundef %.085218, i32 noundef %i.x, i32 noundef %i.ab, i32 noundef 0) #8
  tail call void @Tim_ManBoxSetCopy(ptr noundef nonnull %i.e, i32 noundef %.087217, i32 noundef %i.af) #8
  %i.ag = add nsw i32 %i.x, %.085218
  %i.ah = add nsw i32 %i.s, %.0219
  %i.ai = add nuw nsw i32 %.087217, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0212.lcssa = phi i32 [ 24, %bb.a ], [ %indvars.iv.next.3.i150, %.lr.ph ] ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %.critedge2

bb.b:                                             ; preds = %._crit_edge
  %.val.i151 = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aj = sext i32 %.0212.lcssa to i64
  %i.ak = getelementptr i8, ptr %.val.i151, i64 %i.aj
  %indvars.iv.next.3.i156 = add i32 %.0212.lcssa, 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al) ; 3 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph229, label %.preheader

.lr.ph229:                                        ; preds = %bb.b
  %i.ao = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #7 ; 4 uses
  %spec.store.select.i157 = tail call i32 @llvm.umax.i32(i32 range(i32 1, -2147483648) %i.am, i32 8) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !21
  store i32 %spec.store.select.i157, ptr %i.ao, align 8, !tbaa !49
  %i.aq = zext nneg i32 %spec.store.select.i157 to i64
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #7
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

.preheader:                                       ; preds = %Vec_PtrPush.exit, %bb.b
  %.1213.lcssa = phi i32 [ %indvars.iv.next.3.i156, %bb.b ], [ %.2214.lcssa, %Vec_PtrPush.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph233, label %.critedge

bb.c:                                             ; preds = %.lr.ph229, %Vec_PtrPush.exit
  %.1227 = phi i32 [ 0, %.lr.ph229 ], [ %i.dx, %Vec_PtrPush.exit ]
  %.1213226 = phi i32 [ %indvars.iv.next.3.i156, %.lr.ph229 ], [ %.2214.lcssa, %Vec_PtrPush.exit ] ; 4 uses
  %.val.i158 = load ptr, ptr %i.a, align 8, !tbaa !13 ; 8 uses
  %i.ba = sext i32 %.1213226 to i64
  %i.bb = getelementptr i8, ptr %.val.i158, i64 %i.ba
  %indvars.iv.next.3.i163 = add i32 %.1213226, 4
  %i.bc = sext i32 %indvars.iv.next.3.i163 to i64
  %i.bd = getelementptr i8, ptr %.val.i158, i64 %i.bc
  %indvars.iv.next.3.i169 = add i32 %.1213226, 8
  %i.be = sext i32 %indvars.iv.next.3.i169 to i64
  %i.bf = getelementptr i8, ptr %.val.i158, i64 %i.be
  %indvars.iv.next.3.i175 = add i32 %.1213226, 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg) ; 2 uses
  %i.bi = load i32, ptr %i.bb, align 1
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = load i32, ptr %i.bd, align 1
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bk) ; 2 uses
  %i.bm = mul nsw i32 %i.bh, %i.bl                ; 4 uses
  %i.bn = add nsw i32 %i.bm, 3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bp) #7 ; 8 uses
  %i.br = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bs = insertelement <2 x i32> %i.br, i32 %i.bl, i64 1
  %i.bt = sitofp <2 x i32> %i.bs to <2 x float>
  store <2 x float> %i.bt, ptr %i.bq, align 4, !tbaa !27
  %i.bu = sitofp i32 %i.bh to float
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store float %i.bu, ptr %i.bv, align 4, !tbaa !27
  %i.bw = icmp sgt i32 %i.bm, 0
  br i1 %i.bw, label %.lr.ph223.preheader, label %._crit_edge224

.lr.ph223.preheader:                              ; preds = %bb.c
  %i.bx = sext i32 %indvars.iv.next.3.i175 to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bm to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.by = icmp ult i32 %i.bm, 4
  br i1 %i.by, label %.lr.ph223.epil.preheader, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph223

.lr.ph223:                                        ; preds = %.lr.ph223, %.lr.ph223.preheader.new
  %indvars.iv241 = phi i64 [ %i.bx, %.lr.ph223.preheader.new ], [ %indvars.iv.next242.3, %.lr.ph223 ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %indvars.iv.next.3, %.lr.ph223 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter.next.3, %.lr.ph223 ]
  %i.bz = getelementptr i8, ptr %.val.i158, i64 %indvars.iv241
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !27
  %i.cd = getelementptr i8, ptr %.val.i158, i64 %indvars.iv241
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !27
  %i.ci = getelementptr i8, ptr %.val.i158, i64 %indvars.iv241
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !27
  %i.cn = getelementptr i8, ptr %.val.i158, i64 %indvars.iv241
  %i.co = getelementptr i8, ptr %i.cn, i64 12
  %indvars.iv.next242.3 = add nsw i64 %indvars.iv241, 16 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge224.loopexit.unr-lcssa, label %.lr.ph223, !llvm.loop !44

._crit_edge224.loopexit.unr-lcssa:                ; preds = %.lr.ph223
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge224.loopexit, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %._crit_edge224.loopexit.unr-lcssa, %.lr.ph223.preheader
  %indvars.iv241.epil.init = phi i64 [ %i.bx, %.lr.ph223.preheader ], [ %indvars.iv.next242.3, %._crit_edge224.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph223.preheader ], [ %indvars.iv.next.3, %._crit_edge224.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph223.epil

.lr.ph223.epil:                                   ; preds = %.lr.ph223.epil, %.lr.ph223.epil.preheader
  %indvars.iv241.epil = phi i64 [ %indvars.iv241.epil.init, %.lr.ph223.epil.preheader ], [ %indvars.iv.next242.epil, %.lr.ph223.epil ] ; 2 uses
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph223.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph223.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph223.epil.preheader ], [ %epil.iter.next, %.lr.ph223.epil ]
  %i.cs = getelementptr i8, ptr %.val.i158, i64 %indvars.iv241.epil
  %indvars.iv.next242.epil = add nsw i64 %indvars.iv241.epil, 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.epil
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge224.loopexit, label %.lr.ph223.epil, !llvm.loop !45

._crit_edge224.loopexit:                          ; preds = %.lr.ph223.epil, %._crit_edge224.loopexit.unr-lcssa
  %indvars.iv.next242.lcssa = phi i64 [ %indvars.iv.next242.3, %._crit_edge224.loopexit.unr-lcssa ], [ %indvars.iv.next242.epil, %.lr.ph223.epil ]
  %i.cw = trunc nsw i64 %indvars.iv.next242.lcssa to i32
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit, %bb.c
  %.2214.lcssa = phi i32 [ %indvars.iv.next.3.i175, %bb.c ], [ %i.cw, %._crit_edge224.loopexit ] ; 2 uses
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !25 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !21 ; 7 uses
  %i.da = load i32, ptr %i.cx, align 8, !tbaa !49
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %._crit_edge224
  %i.dc = icmp slt i32 %i.cz, 16
  br i1 %i.dc, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.de, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.df = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.de, i64 noundef 128) #9
end_hunk_0
