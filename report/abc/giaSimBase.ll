Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 129
begin_hunk_0_@Gia_ManSimPatValues:bb.a
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val27 = load ptr, ptr %i.h, align 8, !tbaa !51 ; 2 uses
  %i.i = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.i, align 4, !tbaa !30 ; 3 uses
  %i.j = mul nsw i32 %.val27.val, %i.f            ; 4 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.l = add i32 %i.j, -1
  %or.cond.i.i = icmp ult i32 %i.l, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.j ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.k, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %spec.store.select.i.i to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !33
  store i32 %i.j, ptr %i.q, align 4, !tbaa !39
  %i.s = sext i32 %i.j to i64
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.t, i1 false)
  %i.u = icmp sgt i32 %.val27.val, 0
  br i1 %i.u, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_WrdStart.exit
  %i.v = getelementptr i8, ptr %.val27, i64 8
  %i.w = getelementptr i8, ptr %i.g, i64 8
  %i.x = sext i32 %i.f to i64                     ; 2 uses
  %i.y = shl nsw i64 %i.x, 3
  %.val26.val.pre = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.z = zext nneg i32 %.val27.val to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val26.val.pre, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = mul nsw i64 %indvars.iv, %i.x
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ac
  %i.ae = mul nsw i32 %i.ab, %i.f
  %.val21 = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val21, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.ag, i64 %i.y, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.ah, label %bb.c, label %.critedge, !llvm.loop !213

.critedge:                                        ; preds = %bb.c, %bb.d, %Vec_WrdStart.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.aj) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge, %bb.e
  tail call void @free(ptr noundef nonnull %i.g) #35
  ret ptr %i.k
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManSimCombine(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val36 = load i32, ptr %i.a, align 4, !tbaa !39
  %i.b = sdiv i32 %.val36, %0                     ; 5 uses
  %i.c = getelementptr i8, ptr %2, i64 4
  %.val35 = load i32, ptr %i.c, align 4, !tbaa !39
  %i.d = sdiv i32 %.val35, %0                     ; 2 uses
  %i.e = add nsw i32 %i.b, %3
  %i.f = mul nsw i32 %i.e, %0                     ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i = icmp ult i32 %i.h, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.f ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !39
  store i32 %spec.store.select.i, ptr %i.g, align 8, !tbaa !41
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %spec.store.select.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #34
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !33
  %i.o = icmp sgt i32 %0, 0
  br i1 %i.o, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %Vec_WrdAlloc.exit
  %.not = icmp eq i32 %i.b, 0
  %i.p = getelementptr i8, ptr %1, i64 8
  %.not33 = icmp eq i32 %i.d, 0
  %i.q = getelementptr i8, ptr %2, i64 8
  %i.r = icmp sgt i32 %i.b, 0
  %i.s = icmp sgt i32 %3, 0
  %i.t = sext i32 %i.b to i64
  %i.u = sext i32 %i.d to i64
  %wide.trip.count84 = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %wide.trip.count79 = zext nneg i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph64, %bb.z
  %.promoted50 = phi ptr [ %i.m, %.lr.ph64 ], [ %.promoted5094, %bb.z ] ; 2 uses
  %.promoted47 = phi i32 [ %spec.store.select.i, %.lr.ph64 ], [ %.promoted4791, %bb.z ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph64 ], [ %.promoted88, %bb.z ] ; 2 uses
  %indvars.iv81 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next82, %bb.z ] ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = mul nsw i64 %indvars.iv81, %i.t
  %.val34 = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.w = getelementptr inbounds [8 x i8], ptr %.val34, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ null, %bb.c ]
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = mul nsw i64 %indvars.iv81, %i.u
  %.val = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.z = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ]
  br i1 %i.r, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.g
  %i.ab = sext i32 %.promoted to i64
  br label %bb.h

..preheader_crit_edge:                            ; preds = %Vec_WrdPush.exit
  %i.ac = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !39
  store i32 %spec.select.sink.i48, ptr %i.g, align 8
  store ptr %storemerge4552, ptr %i.n, align 8
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %bb.g
  %.promoted60 = phi ptr [ %storemerge4552, %..preheader_crit_edge ], [ %.promoted50, %bb.g ] ; 2 uses
  %.promoted57 = phi i32 [ %spec.select.sink.i48, %..preheader_crit_edge ], [ %.promoted47, %bb.g ] ; 2 uses
  %.promoted55 = phi i32 [ %i.ac, %..preheader_crit_edge ], [ %.promoted, %bb.g ] ; 2 uses
  br i1 %i.s, label %.lr.ph54, label %bb.z

.lr.ph54:                                         ; preds = %.preheader
  %i.ad = sext i32 %.promoted55 to i64
  br label %bb.q

bb.h:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %indvars.iv67 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next68, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge4551 = phi ptr [ %.promoted50, %.lr.ph ], [ %storemerge4552, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i49 = phi i32 [ %.promoted47, %.lr.ph ], [ %spec.select.sink.i48, %Vec_WrdPush.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv67
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ag = trunc nsw i64 %indvars.iv to i32
  %i.ah = icmp eq i32 %spec.select.sink.i49, %i.ag
  br i1 %i.ah, label %bb.i, label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp slt i64 %indvars.iv, 16
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i = icmp eq ptr %storemerge4551, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge4551, i64 noundef 128) #37
  br label %Vec_WrdPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #34
  br label %Vec_WrdPush.exit

bb.m:                                             ; preds = %bb.i
  %i.al = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.am = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 2147483647 ; 4 uses
  %i.an = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.an
  br i1 %.not.i9.i, label %bb.n, label %Vec_WrdPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i = icmp eq ptr %storemerge4551, null
  %i.ao = zext nneg i32 %spec.select.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %storemerge4551, i64 noundef %i.ap) #37
  br label %Vec_WrdPush.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #34
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.l, %bb.k, %bb.p, %bb.o, %bb.h, %bb.m
  %storemerge4552 = phi ptr [ %storemerge4551, %bb.h ], [ %storemerge4551, %bb.m ], [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ %i.aq, %bb.o ], [ %i.ar, %bb.p ] ; 4 uses
  %spec.select.sink.i48 = phi i32 [ %spec.select.sink.i49, %bb.h ], [ %spec.select.sink.i49, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %storemerge4552, i64 %indvars.iv
  store i64 %i.af, ptr %i.as, align 8, !tbaa !43
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count
  br i1 %exitcond.not, label %..preheader_crit_edge, label %bb.h, !llvm.loop !214

bb.q:                                             ; preds = %.lr.ph54, %Vec_WrdPush.exit44
  %indvars.iv74 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next75, %Vec_WrdPush.exit44 ] ; 2 uses
  %indvars.iv72 = phi i64 [ %i.ad, %.lr.ph54 ], [ %indvars.iv.next73, %Vec_WrdPush.exit44 ] ; 7 uses
  %storemerge61 = phi ptr [ %.promoted60, %.lr.ph54 ], [ %storemerge62, %Vec_WrdPush.exit44 ] ; 6 uses
  %spec.select.sink.i4159 = phi i32 [ %.promoted57, %.lr.ph54 ], [ %spec.select.sink.i4158, %Vec_WrdPush.exit44 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv74
  %i.au = load i64, ptr %i.at, align 8, !tbaa !43
  %i.av = trunc nsw i64 %indvars.iv72 to i32
  %i.aw = icmp eq i32 %spec.select.sink.i4159, %i.av
  br i1 %i.aw, label %bb.r, label %Vec_WrdPush.exit44

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp slt i64 %indvars.iv72, 16
  br i1 %i.ax, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i42 = icmp eq ptr %storemerge61, null
  br i1 %.not9.i.i42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge61, i64 noundef 128) #37
  br label %Vec_WrdPush.exit44

bb.u:                                             ; preds = %bb.s
  %i.az = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #34
  br label %Vec_WrdPush.exit44

bb.v:                                             ; preds = %bb.r
  %i.ba = icmp samesign ult i64 %indvars.iv72, 1073741823
  %indvars.iv72.tr = trunc i64 %indvars.iv72 to i32
  %i.bb = shl nsw i32 %indvars.iv72.tr, 1
  %spec.select.i37 = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 4 uses
  %i.bc = sext i32 %spec.select.i37 to i64
  %.not.i9.i38 = icmp samesign ult i64 %indvars.iv72, %i.bc
  br i1 %.not.i9.i38, label %bb.w, label %Vec_WrdPush.exit44

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i39 = icmp eq ptr %storemerge61, null
  %i.bd = zext nneg i32 %spec.select.i37 to i64
  %i.be = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  br i1 %.not9.i10.i39, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = tail call ptr @realloc(ptr noundef nonnull %storemerge61, i64 noundef %i.be) #37
  br label %Vec_WrdPush.exit44

bb.y:                                             ; preds = %bb.w
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.be) #34
  br label %Vec_WrdPush.exit44

Vec_WrdPush.exit44:                               ; preds = %bb.u, %bb.t, %bb.y, %bb.x, %bb.q, %bb.v
  %storemerge62 = phi ptr [ %storemerge61, %bb.q ], [ %storemerge61, %bb.v ], [ %i.az, %bb.u ], [ %i.ay, %bb.t ], [ %i.bf, %bb.x ], [ %i.bg, %bb.y ] ; 4 uses
  %spec.select.sink.i4158 = phi i32 [ %spec.select.sink.i4159, %bb.q ], [ %spec.select.sink.i4159, %bb.v ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i37, %bb.x ], [ %spec.select.i37, %bb.y ] ; 3 uses
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %storemerge62, i64 %indvars.iv72
  store i64 %i.au, ptr %i.bh, align 8, !tbaa !43
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge, label %bb.q, !llvm.loop !215

._crit_edge:                                      ; preds = %Vec_WrdPush.exit44
  %i.bi = trunc nsw i64 %indvars.iv.next73 to i32 ; 2 uses
  store i32 %i.bi, ptr %i.i, align 4, !tbaa !39
  store i32 %spec.select.sink.i4158, ptr %i.g, align 8
  store ptr %storemerge62, ptr %i.n, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %.preheader
  %.promoted5094 = phi ptr [ %storemerge62, %._crit_edge ], [ %.promoted60, %.preheader ]
  %.promoted4791 = phi i32 [ %spec.select.sink.i4158, %._crit_edge ], [ %.promoted57, %.preheader ]
  %.promoted88 = phi i32 [ %i.bi, %._crit_edge ], [ %.promoted55, %.preheader ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge65, label %bb.c, !llvm.loop !216

._crit_edge65:                                    ; preds = %bb.z, %Vec_WrdAlloc.exit
  ret ptr %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManSimBitPackOne(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge56

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.d = getelementptr i8, ptr %2, i64 8
  %.val49.us = load ptr, ptr %i.d, align 8, !tbaa !33
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.e, %.preheader.lr.ph.split.us
  %.04655.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.aa, %bb.e ] ; 5 uses
  %i.e = lshr i32 %.04655.us, 6
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %invariant.gep.us = getelementptr [8 x i8], ptr %.val49.us, i64 %i.f
  %i.g = and i32 %.04655.us, 63
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw i64 1, %i.h
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 2 uses
  %i.l = ashr i32 %i.k, 1
  %i.m = mul nsw i32 %i.l, %0
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.n
  %i.o = load i64, ptr %gep.us, align 8, !tbaa !43
  %i.p = and i64 %i.o, %i.i
  %.not.us = icmp eq i64 %i.p, 0
  br i1 %.not.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val50.us = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.q = getelementptr inbounds [8 x i8], ptr %.val50.us, i64 %i.n
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.f
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = lshr i64 %i.s, %i.h
  %i.u = trunc i64 %i.t to i32
  %i.v = xor i32 %i.k, %i.u
  %i.w = and i32 %i.v, 1
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge56, label %bb.b, !llvm.loop !217

._crit_edge.us:                                   ; preds = %bb.c
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = icmp eq i32 %5, %i.y
  br i1 %i.z, label %._crit_edge56, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us
  %i.aa = add nuw nsw i32 %.04655.us, 1           ; 2 uses
  %exitcond68.not = icmp eq i32 %i.aa, %3
  br i1 %exitcond68.not, label %._crit_edge56, label %.preheader.us, !llvm.loop !218

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ab = icmp eq i32 %5, 0
  %spec.select = select i1 %i.ab, i32 0, i32 %3
  br label %._crit_edge

._crit_edge56:                                    ; preds = %bb.e, %._crit_edge.us, %bb.d, %bb.a
  %.046.lcssa = phi i32 [ 0, %bb.a ], [ %.04655.us, %bb.d ], [ %3, %bb.e ], [ %.04655.us, %._crit_edge.us ] ; 4 uses
  %i.ac = icmp sgt i32 %5, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge56
  %i.ad = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.ae = lshr i32 %.046.lcssa, 6
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %i.af
  %i.ag = and i32 %.046.lcssa, 63
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = shl nuw i64 1, %i.ah                    ; 3 uses
  %i.aj = getelementptr i8, ptr %1, i64 8
  %wide.trip.count72 = zext nneg i32 %5 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv69 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next70, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv69
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 2 uses
  %i.am = ashr i32 %i.al, 1
  %i.an = mul nsw i32 %i.am, %0
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ao ; 3 uses
  %i.ap = load i64, ptr %gep, align 8, !tbaa !43  ; 3 uses
  %i.aq = and i64 %i.ap, %i.ai
  %.not47 = icmp eq i64 %i.aq, 0
  br i1 %.not47, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val48 = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val48, i64 %i.ao
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.af ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %i.au = lshr i64 %i.at, %i.ah
  %i.av = trunc i64 %i.au to i32
  %i.aw = xor i32 %i.al, %i.av
  %i.ax = and i32 %i.aw, 1
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = xor i64 %i.at, %i.ai
  store i64 %i.az, ptr %i.as, align 8, !tbaa !43
  %.pre = load i64, ptr %gep, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ba = phi i64 [ %.pre, %bb.h ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.bb = or i64 %i.ba, %i.ai
  store i64 %i.bb, ptr %gep, align 8, !tbaa !43
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %bb.f, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.i, %.preheader.lr.ph.split, %._crit_edge56
  %.046.lcssa78 = phi i32 [ %spec.select, %.preheader.lr.ph.split ], [ %.046.lcssa, %._crit_edge56 ], [ %.046.lcssa, %bb.i ]
  %i.bc = icmp eq i32 %.046.lcssa78, %3
  %i.bd = zext i1 %i.bc to i32
  ret i32 %i.bd
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManSimBitPacking(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i32 %2, 6
  %i.b = and i32 %2, 63
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  %i.e = add nsw i32 %i.a, %i.d                   ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val44 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %.val44, i64 4
  %.val44.val = load i32, ptr %i.g, align 4, !tbaa !30 ; 2 uses
  %i.h = mul nsw i32 %.val44.val, %i.e            ; 7 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.j, 15
end_hunk_0
begin_hunk_1_@Gia_SimQualityOne:bb.a
bb.k:                                             ; preds = %.lr.ph135, %bb.o
  %indvars.iv149 = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next150, %bb.o ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [12 x i8], ptr %.val70, i64 %indvars.iv149
  %.val78 = load i64, ptr %i.dv, align 4          ; 2 uses
  %i.dw = and i64 %.val78, 2147483648
  %.not.i102 = icmp ne i64 %i.dw, 0
  %i.dx = and i64 %.val78, 536870911
  %i.dy = icmp eq i64 %i.dx, 536870911
  %narrow.i.not = or i1 %.not.i102, %i.dy
  br i1 %narrow.i.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = mul nsw i64 %indvars.iv149, %i.dt
  %.val72 = load ptr, ptr %i.dr, align 8, !tbaa !33
  %i.ea = getelementptr inbounds [8 x i8], ptr %.val72, i64 %i.dz ; 4 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !43
  %i.ec = and i64 %i.eb, 1
  %.not64 = icmp eq i64 %i.ec, 0
  br i1 %.not64, label %Abc_TtNot.exit109, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ds, label %.lr.ph.i105.preheader, label %Abc_TtCountOnesVec.exit120

.lr.ph.i105.preheader:                            ; preds = %bb.m
  br i1 %min.iters.check169, label %.lr.ph.i105.preheader180, label %vector.body172

vector.body172:                                   ; preds = %.lr.ph.i105.preheader, %vector.body172
  %index173 = phi i64 [ %index.next176, %vector.body172 ], [ 0, %.lr.ph.i105.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index173 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %wide.load174 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !43
  %wide.load175 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !43
  %i.ef = xor <2 x i64> %wide.load174, splat (i64 -1)
  %i.eg = xor <2 x i64> %wide.load175, splat (i64 -1)
  store <2 x i64> %i.ef, ptr %i.ed, align 8, !tbaa !43
  store <2 x i64> %i.eg, ptr %i.ee, align 8, !tbaa !43
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.eh, label %middle.block177, label %vector.body172, !llvm.loop !459

middle.block177:                                  ; preds = %vector.body172
  br i1 %cmp.n178, label %.lr.ph.i113.preheader, label %.lr.ph.i105.preheader180

.lr.ph.i105.preheader180:                         ; preds = %.lr.ph.i105.preheader, %middle.block177
  %indvars.iv.i106.ph = phi i64 [ 0, %.lr.ph.i105.preheader ], [ %n.vec171, %middle.block177 ]
  br label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.preheader180, %.lr.ph.i105
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i107, %.lr.ph.i105 ], [ %indvars.iv.i106.ph, %.lr.ph.i105.preheader180 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i106 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !43
  %i.ek = xor i64 %i.ej, -1
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !43
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i104
  br i1 %exitcond.not.i108, label %.lr.ph.i113.preheader, label %.lr.ph.i105, !llvm.loop !460

Abc_TtNot.exit109:                                ; preds = %bb.l
  br i1 %i.ds, label %.lr.ph.i113.preheader, label %Abc_TtCountOnesVec.exit120

.lr.ph.i113.preheader:                            ; preds = %.lr.ph.i105, %middle.block177, %Abc_TtNot.exit109
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %.lr.ph.i113.preheader, %Abc_TtCountOnes2.exit.i117
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i118, %Abc_TtCountOnes2.exit.i117 ], [ 0, %.lr.ph.i113.preheader ] ; 2 uses
  %.08.i115 = phi i32 [ %i.eq, %Abc_TtCountOnes2.exit.i117 ], [ 0, %.lr.ph.i113.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i114
  %i.em = load i64, ptr %i.el, align 8, !tbaa !43 ; 2 uses
  %.not.i.i116 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i116, label %Abc_TtCountOnes2.exit.i117, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i113
  %i.en = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.em)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  br label %Abc_TtCountOnes2.exit.i117

Abc_TtCountOnes2.exit.i117:                       ; preds = %bb.n, %.lr.ph.i113
  %i.ep = phi i32 [ %i.eo, %bb.n ], [ 0, %.lr.ph.i113 ]
  %i.eq = add nuw nsw i32 %i.ep, %.08.i115        ; 2 uses
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %exitcond.not.i119 = icmp eq i64 %indvars.iv.next.i118, %wide.trip.count.i104
  br i1 %exitcond.not.i119, label %Abc_TtCountOnesVec.exit120, label %.lr.ph.i113, !llvm.loop !75

Abc_TtCountOnesVec.exit120:                       ; preds = %Abc_TtCountOnes2.exit.i117, %bb.m, %Abc_TtNot.exit109
  %.0.lcssa.i110 = phi i32 [ 0, %Abc_TtNot.exit109 ], [ 0, %bb.m ], [ %i.eq, %Abc_TtCountOnes2.exit.i117 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val82, i64 %indvars.iv149
  store i32 %.0.lcssa.i110, ptr %i.er, align 4, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %Abc_TtCountOnesVec.exit120, %bb.k
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.es = icmp samesign ult i64 %indvars.iv.next150, %i.du
  br i1 %i.es, label %bb.k, label %.critedge2, !llvm.loop !461

.critedge2:                                       ; preds = %Abc_TtCountOnesVec.exit, %bb.e, %bb.o, %Vec_IntStart.exit, %Vec_IntStart.exit101
  %.0 = phi ptr [ %i.df, %Vec_IntStart.exit101 ], [ %i.bs, %Vec_IntStart.exit ], [ %i.df, %bb.o ], [ %i.bs, %bb.e ], [ %i.bs, %Abc_TtCountOnesVec.exit ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !33 ; 2 uses
  %.not.i121 = icmp eq ptr %i.eu, null
  br i1 %.not.i121, label %Vec_WrdFree.exit, label %bb.p

bb.p:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.eu) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge2, %bb.p
  tail call void @free(ptr noundef nonnull %i.bp) #35
  %i.ev = load ptr, ptr %i.q, align 8, !tbaa !33  ; 2 uses
  %.not.i122 = icmp eq ptr %i.ev, null
  br i1 %.not.i122, label %Vec_WrdFree.exit123, label %bb.q

bb.q:                                             ; preds = %Vec_WrdFree.exit
  tail call void @free(ptr noundef nonnull %i.ev) #35
  br label %Vec_WrdFree.exit123

Vec_WrdFree.exit123:                              ; preds = %Vec_WrdFree.exit, %bb.q
  tail call void @free(ptr noundef nonnull %i.j) #35
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @Gia_SimQualityTest(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val17 = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %.val17, i64 4
  %.val17.val = load i32, ptr %i.c, align 4, !tbaa !30 ; 2 uses
  %i.d = shl nuw i32 1, %.val17.val
  store i32 0, ptr %i.a, align 4, !tbaa !32
  %.not = icmp eq i32 %.val17.val, 31
  br i1 %.not, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a, %Vec_IntFree.exit20
  %storemerge32 = phi i32 [ %i.be, %Vec_IntFree.exit20 ], [ 0, %bb.a ]
  %i.e = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %storemerge32) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !402
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %.val16, i64 4
  %.val16.val = load i32, ptr %i.g, align 4, !tbaa !30
  call void @Extra_PrintBinary(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef %.val16.val) #35
  %putchar = call i32 @putchar(i32 32)            ; 0 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.h = getelementptr i8, ptr %.val15, i64 4
  %.val15.val = load i32, ptr %i.h, align 4, !tbaa !30 ; 3 uses
  %i.i = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.j = add i32 %.val15.val, -1
  %or.cond.i = icmp ult i32 %i.j, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val15.val ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.i, align 8, !tbaa !128
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph34
  %i.l = sext i32 %spec.store.select.i to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #34
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %.lr.ph34, %bb.b
  %.promoted29 = phi ptr [ %i.n, %bb.b ], [ null, %.lr.ph34 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %.promoted29, ptr %i.o, align 8, !tbaa !31
  %i.p = icmp sgt i32 %.val15.val, 0
  br i1 %i.p, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 7 uses
  %storemerge2130 = phi ptr [ %storemerge2131, %Vec_IntPush.exit ], [ %.promoted29, %Vec_IntAlloc.exit ] ; 6 uses
  %spec.select.sink.i28 = phi i32 [ %spec.select.sink.i27, %Vec_IntPush.exit ], [ %spec.store.select.i, %Vec_IntAlloc.exit ] ; 3 uses
  %.024 = phi i32 [ %i.ag, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !32
  %i.r = lshr i32 %i.q, %.024
  %i.s = and i32 %i.r, 1
  %i.t = trunc nsw i64 %indvars.iv to i32
  %i.u = icmp eq i32 %spec.select.sink.i28, %i.t
  br i1 %i.u, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %.lr.ph
  %i.v = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.v, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge2130, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge2130, i64 noundef 64) #37
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.x = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.z = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %i.aa = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge2130, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call ptr @realloc(ptr noundef nonnull %storemerge2130, i64 noundef %i.ac) #37
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = call noalias ptr @malloc(i64 noundef %i.ac) #34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %.lr.ph, %bb.g
  %storemerge2131 = phi ptr [ %storemerge2130, %.lr.ph ], [ %storemerge2130, %bb.g ], [ %i.x, %bb.f ], [ %i.w, %bb.e ], [ %i.ad, %bb.i ], [ %i.ae, %bb.j ] ; 4 uses
  %spec.select.sink.i27 = phi i32 [ %spec.select.sink.i28, %.lr.ph ], [ %spec.select.sink.i28, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %storemerge2131, i64 %indvars.iv
  store i32 %i.s, ptr %i.af, align 4, !tbaa !32
  %i.ag = add nuw nsw i32 %.024, 1                ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ah = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.ai = icmp slt i32 %i.ag, %.val.val
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !462

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.aj = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.k, align 4, !tbaa !30
  store i32 %spec.select.sink.i27, ptr %i.i, align 8
  store ptr %storemerge2131, ptr %i.o, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %Vec_IntAlloc.exit
  %i.ak = phi ptr [ %storemerge2131, %._crit_edge ], [ %.promoted29, %Vec_IntAlloc.exit ] ; 2 uses
  %i.al = call ptr @Gia_SimQualityOne(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 1) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %Vec_IntSum.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.an to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.an, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi42 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <4 x i32>, ptr %i.ar, align 4, !tbaa !32
  %wide.load43 = load <4 x i32>, ptr %i.as, align 4, !tbaa !32
  %i.at = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.au = add <4 x i32> %wide.load43, %vec.phi42  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !463

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.aw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntSum.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.az, %scalar.ph ], [ %.08.i.ph, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = add nsw i32 %i.ay, %.08.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntSum.exit, label %scalar.ph, !llvm.loop !464

Vec_IntSum.exit:                                  ; preds = %scalar.ph, %middle.block, %bb.k
  %.0.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.aw, %middle.block ], [ %i.az, %scalar.ph ]
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bc, null
  br i1 %.not.i18, label %Vec_IntFree.exit, label %bb.l

bb.l:                                             ; preds = %Vec_IntSum.exit
  call void @free(ptr noundef nonnull %i.bc) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_IntSum.exit, %bb.l
  call void @free(ptr noundef nonnull %i.al) #35
  %.not.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i19, label %Vec_IntFree.exit20, label %bb.m

bb.m:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ak) #35
  br label %Vec_IntFree.exit20

Vec_IntFree.exit20:                               ; preds = %Vec_IntFree.exit, %bb.m
  call void @free(ptr noundef nonnull %i.i) #35
  %putchar14 = call i32 @putchar(i32 10)          ; 0 uses
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !32
  %i.be = add nsw i32 %i.bd, 1                    ; 3 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !32
  %i.bf = icmp slt i32 %i.be, %i.d
  br i1 %i.bf, label %.lr.ph34, label %._crit_edge35, !llvm.loop !465

._crit_edge35:                                    ; preds = %Vec_IntFree.exit20, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_SimGenerateStats(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val24 = load i32, ptr %i.a, align 8, !tbaa !40 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.c = add i32 %.val24, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !128
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !31
  store i32 %.val24, ptr %i.d, align 4, !tbaa !30
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #34 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  store i32 %.val24, ptr %i.d, align 4, !tbaa !30
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val24 to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.k, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %i.l = tail call i32 @Abc_Random(i32 noundef 1) #35 ; 0 uses
  %i.m = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.n = getelementptr i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %Vec_IntStart.exit, %Vec_IntFree.exit29
  %.02036 = phi i32 [ 0, %Vec_IntStart.exit ], [ %i.cj, %Vec_IntFree.exit29 ]
  %.val23 = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr i8, ptr %.val23, i64 4
  %.val23.val = load i32, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.q = add i32 %.val23.val, -1
  %or.cond.i = icmp ult i32 %i.q, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val23.val ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.p, align 8, !tbaa !128
  %.not.i26 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i26, label %Vec_IntAlloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sext i32 %spec.store.select.i to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #34
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.u, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  %i.x = icmp sgt i32 %.val23.val, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

end_hunk_1
begin_hunk_2_@Gia_SimQualityPatternsMax:bb.a
.thread:                                          ; preds = %bb.g
  %i.di = icmp eq i32 %i.bi, 0
  br i1 %i.di, label %.thread69, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.dj = icmp slt i32 %i.bk, 16
  br i1 %i.dj, label %.thread69, label %bb.l

.thread69:                                        ; preds = %.thread, %bb.i
  %i.dk = phi i32 [ %i.bk, %bb.i ], [ 0, %.thread ] ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread69
  %i.dl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 64) #37
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %.thread69
  %i.dm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.i
  %i.dn = icmp samesign ult i32 %i.bk, 1073741823
  %i.do = shl nuw nsw i32 %i.bk, 1
  %spec.select.i = select i1 %i.dn, i32 %i.do, i32 2147483647 ; 6 uses
  %.not.i9.i = icmp samesign ult i32 %i.bk, %spec.select.i
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %i.bj, null
  %i.dp = zext nneg i32 %spec.select.i to i64
  %i.dq = shl nuw nsw i64 %i.dp, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = tail call ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef %i.dq) #37
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.ds = tail call noalias ptr @malloc(i64 noundef %i.dq) #34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %.thread, %bb.h, %bb.l
  %i.dt = phi ptr [ %i.bh, %.thread ], [ %i.bh, %bb.h ], [ %i.bh, %bb.l ], [ %i.dm, %bb.k ], [ %i.dl, %bb.j ], [ %i.dr, %bb.n ], [ %i.ds, %bb.o ] ; 3 uses
  %i.du = phi i32 [ %i.bi, %.thread ], [ %i.bi, %bb.h ], [ %i.bi, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  %i.dv = phi i32 [ %i.bi, %.thread ], [ %i.bk, %bb.h ], [ %i.bk, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  %i.dw = phi i32 [ 0, %.thread ], [ %.pr, %bb.h ], [ %i.bk, %bb.l ], [ %i.dk, %bb.k ], [ %i.dk, %bb.j ], [ %i.bk, %bb.n ], [ %i.bk, %bb.o ] ; 2 uses
  %i.dx = add nsw i32 %i.dw, 1
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dy
  %i.ea = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %Vec_IntPush.exit, %Gia_SimComputeScore.exit64
  %i.eb = phi ptr [ %i.dt, %Vec_IntPush.exit ], [ %i.bh, %Gia_SimComputeScore.exit64 ] ; 4 uses
  %i.ec = phi i32 [ %i.du, %Vec_IntPush.exit ], [ %i.bi, %Gia_SimComputeScore.exit64 ]
  %i.ed = phi ptr [ %i.dt, %Vec_IntPush.exit ], [ %i.bj, %Gia_SimComputeScore.exit64 ]
  %i.ee = phi i32 [ %i.dv, %Vec_IntPush.exit ], [ %i.bk, %Gia_SimComputeScore.exit64 ]
  %.pr79 = phi i32 [ %i.dx, %Vec_IntPush.exit ], [ %.pr, %Gia_SimComputeScore.exit64 ] ; 4 uses
  %.1 = phi double [ %i.de, %Vec_IntPush.exit ], [ %.074, %Gia_SimComputeScore.exit64 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !31 ; 2 uses
  %.not.i65 = icmp eq ptr %i.eg, null
  br i1 %.not.i65, label %Vec_IntFree.exit66, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.eg) #35
  br label %Vec_IntFree.exit66

Vec_IntFree.exit66:                               ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %i.bo) #35
  %.val48 = load ptr, ptr %i.bd, align 8, !tbaa !31 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32
  %i.ej = xor i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val47 = load ptr, ptr %i.ba, align 8, !tbaa !8
  %i.ek = getelementptr i8, ptr %.val47, i64 4
  %.val47.val = load i32, ptr %i.ek, align 4, !tbaa !30
  %i.el = sext i32 %.val47.val to i64
  %i.em = icmp slt i64 %indvars.iv.next, %i.el
  br i1 %i.em, label %bb.e, label %._crit_edge, !llvm.loop !477

._crit_edge:                                      ; preds = %Vec_IntFree.exit66
  %.not43 = icmp eq i32 %.pr79, 0
  br i1 %.not43, label %._crit_edge.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.en = tail call i32 @rand() #35
  %i.eo = srem i32 %i.en, %.pr79
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !32
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge, %bb.r
  %.0.lcssa97 = phi double [ %.1, %bb.r ], [ %.1, %._crit_edge ], [ %i.ay, %bb.d ] ; 2 uses
  %.val4596 = phi i32 [ %.pr79, %bb.r ], [ 0, %._crit_edge ], [ 0, %bb.d ]
  %i.es = phi ptr [ %i.eb, %bb.r ], [ %i.eb, %._crit_edge ], [ %i.a, %bb.d ] ; 2 uses
  %i.et = phi i32 [ %i.er, %bb.r ], [ -1, %._crit_edge ], [ -1, %bb.d ] ; 2 uses
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread
  %i.eu = fdiv double %.0.lcssa97, %i.ay
  %i.ev = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, double noundef %.0.lcssa97, double noundef %i.eu, i32 noundef %.val4596) ; 0 uses
  %i.ew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.et) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.thread
  %.not.i67 = icmp eq ptr %i.es, null
  br i1 %.not.i67, label %Vec_IntFree.exit68, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.es) #35
  br label %Vec_IntFree.exit68

Vec_IntFree.exit68:                               ; preds = %bb.t, %bb.u
  ret i32 %i.et
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #20

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManPatCollectOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr i8, ptr %.val10, i64 4
  %.val10.val = load i32, ptr %i.b, align 4, !tbaa !30 ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.d = add i32 %.val10.val, -1
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val10.val ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !128
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #34
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted17 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.promoted17, ptr %i.i, align 8, !tbaa !31
  %i.j = icmp sgt i32 %.val10.val, 0
  br i1 %i.j, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = ashr i32 %2, 6
  %i.m = sext i32 %i.l to i64
  %i.n = and i32 %2, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next21, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge18 = phi ptr [ %.promoted17, %.lr.ph ], [ %storemerge19, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i16 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i15, %Vec_IntPush.exit ] ; 3 uses
  %i.q = mul nsw i64 %indvars.iv20, %i.p
  %.val = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.r = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %i.u = lshr i64 %i.t, %i.o
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 1
  %i.x = trunc nsw i64 %indvars.iv to i32
  %i.y = icmp eq i32 %spec.select.sink.i16, %i.x
  br i1 %i.y, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.z = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge18, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef 64) #37
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ad = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 2147483647 ; 4 uses
  %i.ae = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge18, null
  %i.af = zext nneg i32 %spec.select.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef %i.ag) #37
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge19 = phi ptr [ %storemerge18, %bb.c ], [ %storemerge18, %bb.h ], [ %i.ab, %bb.g ], [ %i.aa, %bb.f ], [ %i.ah, %bb.j ], [ %i.ai, %bb.k ] ; 3 uses
  %spec.select.sink.i15 = phi i32 [ %spec.select.sink.i16, %bb.c ], [ %spec.select.sink.i16, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %storemerge19, i64 %indvars.iv
  store i32 %i.w, ptr %i.aj, align 4, !tbaa !32
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.ak = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.ak, align 4, !tbaa !30
  %i.al = sext i32 %.val9.val to i64
  %i.am = icmp slt i64 %indvars.iv.next21, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !478

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.an = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.an, ptr %i.e, align 4, !tbaa !30
  store i32 %spec.select.sink.i15, ptr %i.c, align 8
  store ptr %storemerge19, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %Vec_IntAlloc.exit
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManPatUpdateOne(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !30  ; 3 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %4, i64 8
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !31 ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.d, align 8, !tbaa !33 ; 2 uses
  %i.e = ashr i32 %2, 6
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val13, i64 %i.f ; 8 uses
  %i.g = and i32 %2, 63
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 7 uses
  %i.j = sext i32 %3 to i64                       ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 7 uses
  %min.iters.check = icmp ugt i32 %.val, 9
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.k = add nsw i64 %i.f, %wide.trip.count
  %i.l = shl nsw i64 %i.k, 3
  %scevgep = getelementptr i8, ptr %.val13, i64 %i.l
  %i.m = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep16 = getelementptr i8, ptr %.val12, i64 %i.m
  %bound0 = icmp ult ptr %invariant.gep, %scevgep16
  %bound1 = icmp ult ptr %.val12, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue25, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue25 ] ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %wide.load = load <2 x i32>, ptr %i.n, align 4, !tbaa !32, !alias.scope !479
  %wide.load17 = load <2 x i32>, ptr %i.o, align 4, !tbaa !32, !alias.scope !479
  %i.p = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %wide.load18 = load <2 x i64>, ptr %i.p, align 8, !tbaa !43, !alias.scope !482, !noalias !479 ; 3 uses
  %wide.load19 = load <2 x i64>, ptr %i.q, align 8, !tbaa !43, !alias.scope !482, !noalias !479 ; 3 uses
  %i.r = lshr <2 x i64> %wide.load18, %broadcast.splat
  %i.s = lshr <2 x i64> %wide.load19, %broadcast.splat
  %i.t = trunc <2 x i64> %i.r to <2 x i32>
  %i.u = and <2 x i32> %i.t, splat (i32 1)
  %i.v = trunc <2 x i64> %i.s to <2 x i32>
  %i.w = and <2 x i32> %i.v, splat (i32 1)
  %i.x = icmp ne <2 x i32> %i.u, %wide.load       ; 2 uses
  %i.y = icmp ne <2 x i32> %i.w, %wide.load17     ; 2 uses
  %i.z = extractelement <2 x i1> %i.x, i64 0
  br i1 %i.z, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.aa = extractelement <2 x i64> %wide.load18, i64 0
  %i.ab = xor i64 %i.aa, %i.i
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !43, !alias.scope !482, !noalias !479
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ac = extractelement <2 x i1> %i.x, i64 1
  br i1 %i.ac, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = extractelement <2 x i64> %wide.load18, i64 1
  %i.ag = xor i64 %i.af, %i.i
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !43, !alias.scope !482, !noalias !479
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %i.ah = extractelement <2 x i1> %i.y, i64 0
  br i1 %i.ah, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = extractelement <2 x i64> %wide.load19, i64 0
  %i.al = xor i64 %i.ak, %i.i
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !43, !alias.scope !482, !noalias !479
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.am = extractelement <2 x i1> %i.y, i64 1
  br i1 %i.am, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  %i.an = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = extractelement <2 x i64> %wide.load19, i64 1
  %i.aq = xor i64 %i.ap, %i.i
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !43, !alias.scope !482, !noalias !479
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !484

middle.block:                                     ; preds = %pred.store.continue25
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv.ph
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = mul nsw i64 %indvars.iv.ph, %i.j
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.au ; 2 uses
  %i.av = load i64, ptr %gep.prol, align 8, !tbaa !43 ; 2 uses
  %i.aw = lshr i64 %i.av, %i.h
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1
  %.not.prol = icmp eq i32 %i.ay, %i.at
  br i1 %.not.prol, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %scalar.ph.prol
  %i.az = xor i64 %i.av, %i.i
  store i64 %i.az, ptr %gep.prol, align 8, !tbaa !43
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.b, %scalar.ph.prol
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.ba = add nsw i64 %wide.trip.count, -1
  %i.bb = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.bb, label %.critedge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val12, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = mul nsw i64 %indvars.iv, %i.j
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.be ; 2 uses
  %i.bf = load i64, ptr %gep, align 8, !tbaa !43  ; 2 uses
  %i.bg = lshr i64 %i.bf, %i.h
end_hunk_2
begin_hunk_3_@Gia_ManPatDistImprove:bb.a
  %xtraiter158 = and i64 %wide.trip.count.i91, 1
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv.i92.ph
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !32
  %i.ge = mul nuw nsw i64 %indvars.iv.i92.ph, %i.s
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ge ; 2 uses
  %i.gf = load i64, ptr %gep.i.prol, align 8, !tbaa !43 ; 2 uses
  %i.gg = lshr i64 %i.gf, %i.es
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 1
  %.not.i93.prol = icmp eq i32 %i.gi, %i.gd
  br i1 %.not.i93.prol, label %scalar.ph.prol.loopexit.unr-lcssa, label %bb.n

bb.n:                                             ; preds = %scalar.ph.prol
  %i.gj = xor i64 %i.gf, %i.et
  store i64 %i.gj, ptr %gep.i.prol, align 8, !tbaa !43
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.n, %scalar.ph.prol
  %indvars.iv.next.i94.prol = or disjoint i64 %indvars.iv.i92.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i92.unr = phi i64 [ %indvars.iv.i92.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i94.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.gk = add nsw i64 %wide.trip.count.i91, -1
  %i.gl = icmp eq i64 %indvars.iv.i92.ph, %i.gk
  br i1 %i.gl, label %Gia_ManPatUpdateOne.exit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.q
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i94.1, %bb.q ], [ %indvars.iv.i92.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv.i92
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !32
  %i.go = mul nuw nsw i64 %indvars.iv.i92, %i.s
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.go ; 2 uses
  %i.gp = load i64, ptr %gep.i, align 8, !tbaa !43 ; 2 uses
  %i.gq = lshr i64 %i.gp, %i.es
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = and i32 %i.gr, 1
  %.not.i93 = icmp eq i32 %i.gs, %i.gn
  br i1 %.not.i93, label %scalar.ph.1, label %bb.o

bb.o:                                             ; preds = %scalar.ph
  %i.gt = xor i64 %i.gp, %i.et
  store i64 %i.gt, ptr %gep.i, align 8, !tbaa !43
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.o, %scalar.ph
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.pre117, i64 %indvars.iv.next.i94
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !32
  %i.gw = mul nuw nsw i64 %indvars.iv.next.i94, %i.s
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.gw ; 2 uses
  %i.gx = load i64, ptr %gep.i.1, align 8, !tbaa !43 ; 2 uses
  %i.gy = lshr i64 %i.gx, %i.es
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = and i32 %i.gz, 1
  %.not.i93.1 = icmp eq i32 %i.ha, %i.gv
  br i1 %.not.i93.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %scalar.ph.1
  %i.hb = xor i64 %i.gx, %i.et
  store i64 %i.hb, ptr %gep.i.1, align 8, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %scalar.ph.1
  %indvars.iv.next.i94.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i95.1 = icmp eq i64 %indvars.iv.next.i94.1, %wide.trip.count.i91
  br i1 %exitcond.not.i95.1, label %Gia_ManPatUpdateOne.exit.thread, label %scalar.ph, !llvm.loop !493

Gia_ManPatUpdateOne.exit:                         ; preds = %bb.m
  %.not.i96 = icmp eq ptr %.pre117, null
  br i1 %.not.i96, label %Vec_IntFree.exit97, label %Gia_ManPatUpdateOne.exit.thread

Gia_ManPatUpdateOne.exit.thread:                  ; preds = %scalar.ph.prol.loopexit, %bb.q, %middle.block, %Gia_ManPatUpdateOne.exit
  call void @free(ptr noundef nonnull %.pre117) #35
  br label %Vec_IntFree.exit97

Vec_IntFree.exit97:                               ; preds = %Gia_ManPatUpdateOne.exit, %Gia_ManPatUpdateOne.exit.thread
  call void @free(ptr noundef nonnull %i.z) #35
  %i.hc = add nuw nsw i32 %.064106, 1             ; 2 uses
  %exitcond114.not = icmp eq i32 %i.hc, %smax
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond114.not, label %._crit_edge, label %bb.b, !llvm.loop !494

._crit_edge:                                      ; preds = %Vec_IntFree.exit97, %bb.a
  %.062.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bv, %Vec_IntFree.exit97 ]
  %.061.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dz, %Vec_IntFree.exit97 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !31 ; 2 uses
  %.not.i98 = icmp eq ptr %i.he, null
  br i1 %.not.i98, label %Vec_IntFree.exit99, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.he) #35
  br label %Vec_IntFree.exit99

Vec_IntFree.exit99:                               ; preds = %._crit_edge, %bb.r
  call void @free(ptr noundef nonnull %i.g) #35
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Vec_IntFree.exit99
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %Vec_IntFree.exit99
  %i.hf = sitofp i32 %i.j to double
  %i.hg = insertelement <2 x double> poison, double %.062.lcssa, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %.061.lcssa, i64 1
  %i.hi = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = fdiv <2 x double> %i.hh, %i.hj          ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 0
  %i.hm = extractelement <2 x double> %i.hk, i64 1
  %i.hn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.j, double noundef %i.hl, double noundef %i.hm) ; 0 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_SimCollectRare(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !30
  store i32 100, ptr %i.a, align 8, !tbaa !128
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val35 = load i32, ptr %i.e, align 4, !tbaa !39
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val36 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %.val36, i64 4
  %.val36.val = load i32, ptr %i.g, align 4, !tbaa !30
  %i.h = sdiv i32 %.val35, %.val36.val
  %.fr47 = freeze i32 %i.h                        ; 4 uses
  %i.i = shl i32 %.fr47, 6                        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  store ptr %1, ptr %i.j, align 8, !tbaa !38
  %i.l = tail call ptr @Gia_ManSimPatSim(ptr noundef %0) ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 8
  %i.r = icmp sgt i32 %.fr47, 0
  %wide.trip.count.i = zext i32 %.fr47 to i64     ; 2 uses
  %i.s = shl nsw i32 %.fr47, 5
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %i.t = phi i32 [ %i.aj, %bb.d ], [ %i.n, %.lr.ph ] ; 2 uses
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %bb.d ], [ 0, %.lr.ph ] ; 4 uses
  %.val.us = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.val.us, i64 %indvars.iv51
  %.val37.us = load i64, ptr %i.u, align 4        ; 2 uses
  %i.v = and i64 %.val37.us, 2147483648
  %.not.i.us = icmp ne i64 %i.v, 0
  %i.w = and i64 %.val37.us, 536870911
  %i.x = icmp eq i64 %i.w, 536870911
  %narrow.i.not.us = or i1 %.not.i.us, %i.x
  br i1 %narrow.i.not.us, label %bb.d, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.split.us
  %i.y = mul nuw nsw i64 %indvars.iv51, %wide.trip.count.i
  %.val34.us = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val34.us, i64 %i.y
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %Abc_TtCountOnes2.exit.i.us, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %Abc_TtCountOnes2.exit.i.us ] ; 2 uses
  %.08.i.us = phi i32 [ 0, %.lr.ph.preheader.i.us ], [ %i.af, %Abc_TtCountOnes2.exit.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i.us
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.us, label %Abc_TtCountOnes2.exit.i.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us
  %i.ac = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.ab)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  br label %Abc_TtCountOnes2.exit.i.us

Abc_TtCountOnes2.exit.i.us:                       ; preds = %bb.b, %.lr.ph.i.us
  %i.ae = phi i32 [ %i.ad, %bb.b ], [ 0, %.lr.ph.i.us ]
  %i.af = add nuw nsw i32 %i.ae, %.08.i.us        ; 4 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Abc_TtCountOnesVec.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !75

bb.c:                                             ; preds = %Abc_TtCountOnesVec.exit.loopexit.us
  %i.ag = zext i1 %i.am to i32
  %indvars.iv51.tr = trunc nuw i64 %indvars.iv51 to i32
  %i.ah = shl nuw i32 %indvars.iv51.tr, 1
  %i.ai = or disjoint i32 %i.ah, %i.ag
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.a, i32 noundef %i.ai, i32 noundef %i.ao)
  %.pre54 = load i32, ptr %i.m, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Abc_TtCountOnesVec.exit.loopexit.us, %.lr.ph.split.us
  %i.aj = phi i32 [ %.pre54, %bb.c ], [ %i.t, %Abc_TtCountOnesVec.exit.loopexit.us ], [ %i.t, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next52, %i.ak
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !495

Abc_TtCountOnesVec.exit.loopexit.us:              ; preds = %Abc_TtCountOnes2.exit.i.us
  %i.am = icmp slt i32 %i.af, %i.s                ; 2 uses
  %i.an = sub nsw i32 %i.i, %i.af
  %i.ao = select i1 %i.am, i32 %i.af, i32 %i.an   ; 2 uses
  %.not33.us = icmp sgt i32 %i.ao, %2
  br i1 %.not33.us, label %bb.d, label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not33 = icmp sgt i32 %i.i, %2
  br i1 %.not33, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.e
  %i.ap = phi i32 [ %i.av, %bb.e ], [ %i.n, %.lr.ph.split ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 3 uses
  %.val = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv
  %.val37 = load i64, ptr %i.aq, align 4          ; 2 uses
  %i.ar = and i64 %.val37, 2147483648
  %.not.i = icmp ne i64 %i.ar, 0
  %i.as = and i64 %.val37, 536870911
  %i.at = icmp eq i64 %i.as, 536870911
  %narrow.i.not = or i1 %.not.i, %i.at
  br i1 %narrow.i.not, label %bb.e, label %Abc_TtCountOnesVec.exit

Abc_TtCountOnesVec.exit:                          ; preds = %.lr.ph.split.split
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.au = shl nuw i32 %indvars.iv.tr, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.a, i32 noundef %i.au, i32 noundef %i.i)
  %.pre = load i32, ptr %i.m, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %Abc_TtCountOnesVec.exit, %.lr.ph.split.split
  %i.av = phi i32 [ %.pre, %Abc_TtCountOnesVec.exit ], [ %i.ap, %.lr.ph.split.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !495

._crit_edge:                                      ; preds = %bb.e, %bb.d, %.lr.ph.split, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33 ; 2 uses
  %.not.i38 = icmp eq ptr %i.az, null
  br i1 %.not.i38, label %Vec_WrdFree.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.az) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %._crit_edge, %bb.f
  tail call void @free(ptr noundef nonnull %i.l) #35
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_SimQualityImpact(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr i8, ptr %.val69, i64 4
  %.val69.val = load i32, ptr %i.b, align 4, !tbaa !30 ; 6 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.d = add i32 %.val69.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val69.val ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !496
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_FltStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #34
  br label %Vec_FltStart.exit

Vec_FltStart.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !499
  store i32 %.val69.val, ptr %i.i, align 4, !tbaa !500
  %i.k = sext i32 %.val69.val to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.h, i8 0, i64 %i.l, i1 false)
  %i.m = add nsw i32 %.val69.val, 1               ; 2 uses
  %i.n = ashr i32 %i.m, 6
  %i.o = and i32 %i.m, 63
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = add nsw i32 %i.n, %i.q
  %.fr89 = freeze i32 %i.r                        ; 10 uses
  %i.s = mul nsw i32 %.fr89, %.val69.val          ; 4 uses
  %i.t = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 5 uses
  %i.u = add i32 %i.s, -1
  %or.cond.i.i71 = icmp ult i32 %i.u, 15
  %spec.store.select.i.i72 = select i1 %or.cond.i.i71, i32 16, i32 %i.s ; 3 uses
  store i32 %spec.store.select.i.i72, ptr %i.t, align 8, !tbaa !41
  %.not.i.i73 = icmp eq i32 %spec.store.select.i.i72, 0
  br i1 %.not.i.i73, label %Vec_WrdStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_FltStart.exit
  %i.v = sext i32 %spec.store.select.i.i72 to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_FltStart.exit, %bb.c
  %i.y = phi ptr [ %i.x, %bb.c ], [ null, %Vec_FltStart.exit ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !33
  store i32 %i.s, ptr %i.z, align 4, !tbaa !39
  %i.ab = sext i32 %i.s to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ac, i1 false)
  %i.ad = getelementptr i8, ptr %1, i64 4
  %.val60 = load i32, ptr %i.ad, align 4, !tbaa !30 ; 5 uses
  %i.ae = icmp sgt i32 %.val60, 0
  br i1 %i.ae, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_WrdStart.exit
  %i.af = getelementptr i8, ptr %1, i64 8
  %.val63 = load ptr, ptr %i.af, align 8, !tbaa !31
  %i.ag = icmp sgt i32 %.fr89, 0
  %i.ah = zext i32 %.fr89 to i64                  ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  br i1 %i.ag, label %.lr.ph.split.preheader, label %Abc_TtFill.exit.us.preheader

Abc_TtFill.exit.us.preheader:                     ; preds = %.lr.ph
  %i.aj = sext i32 %.fr89 to i64                  ; 3 uses
  %wide.trip.count = zext nneg i32 %.val60 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ak = icmp eq i32 %.val60, 1
  br i1 %i.ak, label %Abc_TtFill.exit.us.epil.preheader, label %Abc_TtFill.exit.us.preheader.new

Abc_TtFill.exit.us.preheader.new:                 ; preds = %Abc_TtFill.exit.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %Abc_TtFill.exit.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count97 = zext nneg i32 %.val60 to i64
  br label %.lr.ph.split

Abc_TtFill.exit.us:                               ; preds = %Abc_TtFill.exit.us, %Abc_TtFill.exit.us.preheader.new
  %indvars.iv = phi i64 [ 0, %Abc_TtFill.exit.us.preheader.new ], [ %indvars.iv.next.1, %Abc_TtFill.exit.us ] ; 4 uses
  %niter = phi i64 [ 0, %Abc_TtFill.exit.us.preheader.new ], [ %niter.next.1, %Abc_TtFill.exit.us ]
  %i.al = mul nsw i64 %indvars.iv, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.al
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = and i64 %indvars.iv.next, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = lshr i64 %indvars.iv, 6
  %i.aq = and i64 %i.ap, 67108863
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = xor i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !43
  %i.au = mul nsw i64 %indvars.iv.next, %i.aj
  %i.av = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.au
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.aw = and i64 %indvars.iv.next.1, 62
  %i.ax = shl nuw nsw i64 1, %i.aw
  %i.ay = lshr i64 %indvars.iv.next.1, 6
  %i.az = and i64 %i.ay, 67108863
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !43
  %i.bc = xor i64 %i.bb, %i.ax
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !43
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit132.unr-lcssa, label %Abc_TtFill.exit.us, !llvm.loop !501

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %Abc_TtFill.exit
  %indvars.iv94 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next95, %Abc_TtFill.exit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val63, i64 %indvars.iv94
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = mul nuw nsw i64 %indvars.iv94, %i.ah
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bf ; 2 uses
  %.not59.not = icmp eq i32 %i.be, 0
  br i1 %.not59.not, label %Abc_TtFill.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 -1, i64 %i.ai, i1 false), !tbaa !43
  br label %Abc_TtFill.exit

Abc_TtFill.exit:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.split
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 4 uses
  %i.bh = and i64 %indvars.iv.next95, 63
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = lshr i64 %indvars.iv.next95, 6
  %i.bk = and i64 %i.bj, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !43
  %i.bn = xor i64 %i.bm, %i.bi
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !43
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.critedge, label %.lr.ph.split, !llvm.loop !501

.critedge.loopexit132.unr-lcssa:                  ; preds = %Abc_TtFill.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %Abc_TtFill.exit.us.epil.preheader

Abc_TtFill.exit.us.epil.preheader:                ; preds = %.critedge.loopexit132.unr-lcssa, %Abc_TtFill.exit.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %Abc_TtFill.exit.us.preheader ], [ %indvars.iv.next.1, %.critedge.loopexit132.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i32 %.val60 to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bo = mul nsw i64 %indvars.iv.epil.init, %i.aj
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bo
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 2 uses
  %i.bq = and i64 %indvars.iv.next.epil, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = lshr i64 %indvars.iv.next.epil, 6
  %i.bt = and i64 %i.bs, 67108863
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !43
  %i.bw = xor i64 %i.bv, %i.br
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !43
  br label %.critedge

.critedge:                                        ; preds = %Abc_TtFill.exit.us.epil.preheader, %.critedge.loopexit132.unr-lcssa, %Abc_TtFill.exit, %Vec_WrdStart.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38
  store ptr %i.t, ptr %i.bx, align 8, !tbaa !38
  %i.bz = tail call ptr @Gia_ManSimPatSim(ptr noundef %0) ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !38
  %i.ca = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.ca, align 4, !tbaa !30 ; 3 uses
  %i.cb = icmp sgt i32 %.val, 1
end_hunk_3
begin_hunk_4_@Gia_ManSimArrayTest:Vec_PtrPushTwo.exit
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.i94
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i95, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next.i.i98, %i.es
  br i1 %exitcond109.not, label %._crit_edge.thread.i.i93, label %.lr.ph.i.i94, !llvm.loop !177

._crit_edge.i.i91:                                ; preds = %Vec_WecFree.exit
  %.not.i.i92 = icmp eq ptr %.pre.i.i90, null
  br i1 %.not.i.i92, label %Vec_WecFree.exit99, label %._crit_edge.thread.i.i93

._crit_edge.thread.i.i93:                         ; preds = %bb.x, %._crit_edge.i.i91
  tail call void @free(ptr noundef nonnull %.pre.i.i90) #35
  br label %Vec_WecFree.exit99

Vec_WecFree.exit99:                               ; preds = %._crit_edge.i.i91, %._crit_edge.thread.i.i93
  tail call void @free(ptr noundef nonnull %i.h) #35
  %i.ew = load ptr, ptr %i.f, align 8, !tbaa !524 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ew, null
  br i1 %.not.i100, label %Vec_PtrFree.exit101, label %bb.y

bb.y:                                             ; preds = %Vec_WecFree.exit99
  tail call void @free(ptr noundef nonnull %i.ew) #35
  br label %Vec_PtrFree.exit101

Vec_PtrFree.exit101:                              ; preds = %Vec_WecFree.exit99, %bb.y
  tail call void @free(ptr noundef nonnull %i.c) #35
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPtrWrdDumpBin(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.49) ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef %0) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val25 = load i32, ptr %i.e, align 4, !tbaa !522
  store i32 %.val25, ptr %i.a, align 4, !tbaa !32
  %i.f = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.b) ; 0 uses
  %.val2426 = load i32, ptr %i.e, align 4, !tbaa !522
  %i.g = icmp sgt i32 %.val2426, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.val22 = load ptr, ptr %i.h, align 8, !tbaa !524
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val22, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !39  ; 2 uses
  store i32 %.val, ptr %i.a, align 4, !tbaa !32
  %i.l = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.b) ; 0 uses
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val21 = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.n = sext i32 %.val to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call i64 @fwrite(ptr noundef %.val21, i64 noundef 1, i64 noundef %i.o, ptr noundef nonnull %i.b) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val24 = load i32, ptr %i.e, align 4, !tbaa !522
  %i.q = sext i32 %.val24 to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.d, label %.critedge, !llvm.loop !533

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.s = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %.val23 = load i32, ptr %i.e, align 4, !tbaa !522
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %.val23, ptr noundef %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManPtrWrdReadBin(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.82) ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @fseek(ptr noundef nonnull %i.b, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.f = tail call i64 @ftell(ptr noundef nonnull %i.b)
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.j = srem i32 %i.g, 4                         ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %i.j) ; 0 uses
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  tail call void @rewind(ptr noundef nonnull %i.b)
  %i.n = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.b) ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !32   ; 4 uses
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %i.q = add i32 %i.o, -1
  %or.cond.i = icmp ult i32 %i.q, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.o ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store i32 0, ptr %i.r, align 4, !tbaa !522
  store i32 %spec.store.select.i, ptr %i.p, align 8, !tbaa !527
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = sext i32 %spec.store.select.i to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #34
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.g, %bb.h
  %.promoted38 = phi ptr [ %i.u, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %.promoted38, ptr %i.v, align 8, !tbaa !524
  %i.w = icmp sgt i32 %i.o, 0
  br i1 %i.w, label %.lr.ph, label %.critedge

.preheader:                                       ; preds = %Vec_PtrPush.exit
  %i.x = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.x, ptr %i.r, align 4, !tbaa !522
  store i32 %spec.select.sink.i36, ptr %i.p, align 8
  store ptr %storemerge40, ptr %i.v, align 8
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295
  br label %bb.q

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit, %Vec_PtrPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_PtrPush.exit ], [ 0, %Vec_PtrAlloc.exit ] ; 7 uses
  %storemerge39 = phi ptr [ %storemerge40, %Vec_PtrPush.exit ], [ %.promoted38, %Vec_PtrAlloc.exit ] ; 6 uses
  %spec.select.sink.i37 = phi i32 [ %spec.select.sink.i36, %Vec_PtrPush.exit ], [ %spec.store.select.i, %Vec_PtrAlloc.exit ] ; 3 uses
  %.034 = phi i32 [ %i.ap, %Vec_PtrPush.exit ], [ 0, %Vec_PtrAlloc.exit ]
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !39
  store i32 100, ptr %i.y, align 8, !tbaa !41
  %i.aa = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !33
  %i.ac = trunc nsw i64 %indvars.iv to i32
  %i.ad = icmp eq i32 %spec.select.sink.i37, %i.ac
  br i1 %i.ad, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i = icmp eq ptr %storemerge39, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge39, i64 noundef 128) #37
  br label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #34
  br label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.i
  %i.ah = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ai = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %i.aj = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.aj
  br i1 %.not.i10.i, label %bb.n, label %Vec_PtrPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i11.i = icmp eq ptr %storemerge39, null
  %i.ak = zext nneg i32 %spec.select.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call ptr @realloc(ptr noundef nonnull %storemerge39, i64 noundef %i.al) #37
  br label %Vec_PtrPush.exit

bb.p:                                             ; preds = %bb.n
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #34
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.l, %bb.k, %bb.p, %bb.o, %.lr.ph, %bb.m
  %storemerge40 = phi ptr [ %storemerge39, %.lr.ph ], [ %storemerge39, %bb.m ], [ %i.ag, %bb.l ], [ %i.af, %bb.k ], [ %i.am, %bb.o ], [ %i.an, %bb.p ] ; 4 uses
  %spec.select.sink.i36 = phi i32 [ %spec.select.sink.i37, %.lr.ph ], [ %spec.select.sink.i37, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %storemerge40, i64 %indvars.iv
  store ptr %i.y, ptr %i.ao, align 8, !tbaa !92
  %i.ap = add nuw nsw i32 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.o
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !534

bb.q:                                             ; preds = %.preheader, %Vec_WrdFill.exit
  %indvars.iv44 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next45, %Vec_WrdFill.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %storemerge40, i64 %indvars.iv44
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 5 uses
  %i.as = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.b) ; 0 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !32  ; 7 uses
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !41
  %.not.i.i = icmp slt i32 %i.au, %i.at
  br i1 %.not.i.i, label %bb.r, label %Vec_WrdGrow.exit.i

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33 ; 2 uses
  %.not9.i.i33 = icmp eq ptr %i.aw, null
  %i.ax = sext i32 %i.at to i64
  %i.ay = shl nsw i64 %i.ax, 3                    ; 2 uses
  br i1 %.not9.i.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = tail call ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef %i.ay) #37
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.ay) #34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = phi ptr [ %i.az, %bb.s ], [ %i.ba, %bb.t ]
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !33
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !41
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.u, %bb.q
  %i.bc = icmp sgt i32 %i.at, 0
  %i.bd = getelementptr i8, ptr %i.ar, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  br i1 %i.bc, label %.lr.ph.i, label %Vec_WrdFill.exit

.lr.ph.i:                                         ; preds = %Vec_WrdGrow.exit.i
  %i.bf = zext nneg i32 %i.at to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bg, i1 false), !tbaa !43
  br label %Vec_WrdFill.exit

Vec_WrdFill.exit:                                 ; preds = %Vec_WrdGrow.exit.i, %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.at, ptr %i.bh, align 4, !tbaa !39
  %i.bi = sext i32 %i.at to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = tail call i64 @fread(ptr noundef %i.be, i64 noundef 1, i64 noundef %i.bj, ptr noundef nonnull %i.b) ; 0 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond47.not, label %.critedge, label %bb.q, !llvm.loop !535

.critedge:                                        ; preds = %Vec_WrdFill.exit, %Vec_PtrAlloc.exit
  %.val3259 = phi i32 [ 0, %Vec_PtrAlloc.exit ], [ %i.x, %Vec_WrdFill.exit ]
  %i.bl = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %.val3259, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %bb.v, %bb.f, %bb.d, %bb.b
  %.026 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %i.p, %bb.v ], [ %i.p, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret ptr %.026
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManProcessBuffs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val72 = load i32, ptr %i.a, align 8, !tbaa !536 ; 5 uses
  %i.b = add i32 %.val72, -1                      ; 2 uses
  %or.cond.i = icmp ult i32 %i.b, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val72 ; 4 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #34
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 6 uses
  %or.cond.i.i = icmp ult i32 %i.b, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val72 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !140
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 16) #38
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.j = phi ptr [ %i.i, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !142
  store i32 %.val72, ptr %i.k, align 4, !tbaa !143
  %.not = icmp eq i32 %.val72, 0
  br i1 %.not, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %Vec_WecStart.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !40
  %i.m = icmp sgt i32 %.pre, 0
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %i.m, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = icmp sgt i32 %2, 0                       ; 2 uses
  %wide.trip.count.i = zext i32 %2 to i64         ; 6 uses
  %i.r = sext i32 %2 to i64
  %min.iters.check151 = icmp ult i32 %2, 4
  %n.vec153 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n160 = icmp eq i64 %n.vec153, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Abc_TtNot.exit81
  %i.s = phi ptr [ %i.f, %.lr.ph ], [ %i.ci, %Abc_TtNot.exit81 ] ; 6 uses
  %i.t = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.cj, %Abc_TtNot.exit81 ] ; 10 uses
  %i.u = phi ptr [ %i.f, %.lr.ph ], [ %i.ck, %Abc_TtNot.exit81 ] ; 7 uses
  %i.v = phi ptr [ %i.f, %.lr.ph ], [ %i.cl, %Abc_TtNot.exit81 ] ; 5 uses
  %i.w = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.cm, %Abc_TtNot.exit81 ] ; 8 uses
  %i.x = phi i32 [ 0, %.lr.ph ], [ %i.cn, %Abc_TtNot.exit81 ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtNot.exit81 ] ; 3 uses
  %.val65 = load ptr, ptr %i.n, align 8, !tbaa !42 ; 2 uses
  %.not56 = icmp eq ptr %.val65, null
  br i1 %.not56, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %.val65, i64 %indvars.iv
  %.val73 = load i64, ptr %i.y, align 4           ; 3 uses
  %i.z = trunc i64 %.val73 to i32
  %i.aa = and i32 %i.z, 536870911                 ; 2 uses
  %i.ab = lshr i64 %.val73, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 536870911
  %i.ae = icmp ne i32 %i.aa, %i.ad
  %.not.i74 = icmp eq i32 %i.aa, 536870911
  %or.cond.not.i.not107 = or i1 %.not.i74, %i.ae
  %i.af = and i64 %.val73, 2147483648
  %.not4.i = icmp ne i64 %i.af, 0
  %narrow.i.not = or i1 %.not4.i, %or.cond.not.i.not107
  br i1 %narrow.i.not, label %Abc_TtNot.exit81, label %bb.g

end_hunk_4
begin_hunk_5_@Gia_ManComputeRange:bb.a
  %cmp.n129 = icmp eq i64 %n.vec122, %wide.trip.count65.i
  %n.vec = and i64 %wide.trip.count65.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65.i
  br label %.lr.ph34.split.us.split.us.i

.lr.ph34.split.us.split.us.i:                     ; preds = %..loopexit28_crit_edge.us.us.i, %.lr.ph34.split.us.split.us.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph34.split.us.split.us.preheader.i ], [ %indvars.iv.next74.i, %..loopexit28_crit_edge.us.us.i ] ; 4 uses
  %i.v = trunc i64 %indvars.iv73.i to i32         ; 2 uses
  %i.w = shl i32 %i.v, %i.g
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.x ; 4 uses
  %i.z = icmp samesign ult i64 %indvars.iv73.i, 5
  br i1 %i.z, label %.preheader.us.us.i, label %.preheader27.us.us.i

scalar.ph119:                                     ; preds = %scalar.ph119.preheader, %scalar.ph119
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph119 ], [ %indvars.iv61.i.ph, %scalar.ph119.preheader ] ; 3 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.ab = and i32 %i.ak, %i.aa
  %.not.us.us.i = icmp ne i32 %i.ab, 0
  %spec.select.i = sext i1 %.not.us.us.i to i32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv61.i
  store i32 %spec.select.i, ptr %i.ac, align 4, !tbaa !32
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count65.i
  br i1 %exitcond66.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph119, !llvm.loop !689

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %scalar.ph ], [ %indvars.iv67.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv67.i
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !32
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count65.i
  br i1 %exitcond72.not.i, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph, !llvm.loop !690

..loopexit28_crit_edge.us.us.i:                   ; preds = %scalar.ph119, %scalar.ph, %middle.block128, %middle.block
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %Vec_WrdStartTruthTables.exit, label %.lr.ph34.split.us.split.us.i, !llvm.loop !611

.preheader.us.us.i:                               ; preds = %.lr.ph34.split.us.split.us.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @__const.Vec_WrdStartTruthTables.Masks, i64 %indvars.iv73.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !32
  store <4 x i32> %broadcast.splat, ptr %i.ah, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv67.i.ph = phi i64 [ 0, %.preheader.us.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader27.us.us.i:                             ; preds = %.lr.ph34.split.us.split.us.i
  %i.aj = add i32 %i.v, -5
  %i.ak = shl nuw i32 1, %i.aj                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph119.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %.preheader27.us.us.i
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next127, %vector.body125 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph121 ], [ %vec.ind.next, %vector.body125 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.al = and <4 x i32> %broadcast.splat124, %vec.ind
  %i.am = and <4 x i32> %broadcast.splat124, %step.add
  %i.an = icmp ne <4 x i32> %i.al, zeroinitializer
  %i.ao = icmp ne <4 x i32> %i.am, zeroinitializer
  %i.ap = sext <4 x i1> %i.an to <4 x i32>
  %i.aq = sext <4 x i1> %i.ao to <4 x i32>
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index126 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %i.ap, ptr %i.ar, align 4, !tbaa !32
  store <4 x i32> %i.aq, ptr %i.as, align 4, !tbaa !32
  %index.next127 = add nuw i64 %index126, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.at = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.at, label %middle.block128, label %vector.body125, !llvm.loop !692

middle.block128:                                  ; preds = %vector.body125
  br i1 %cmp.n129, label %..loopexit28_crit_edge.us.us.i, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %.preheader27.us.us.i, %middle.block128
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader27.us.us.i ], [ %n.vec122, %middle.block128 ]
  br label %scalar.ph119

Vec_WrdStartTruthTables.exit:                     ; preds = %..loopexit28_crit_edge.us.us.i, %Vec_WrdStart.exit.i
  %i.au = tail call ptr @Gia_ManSimPatSimOut(ptr noundef %0, ptr noundef nonnull %i.i, i32 noundef 1) ; 3 uses
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.av = getelementptr i8, ptr %.val31, i64 4
  %.val31.val = load i32, ptr %i.av, align 4, !tbaa !30 ; 3 uses
  %i.aw = sdiv i32 %i.h, %.val31.val              ; 2 uses
  %i.ax = icmp slt i32 %.val31.val, 6
  %i.ay = shl nuw nsw i32 1, %.val31.val
  %i.az = shl nsw i32 %i.aw, 6
  %i.ba = select i1 %i.ax, i32 %i.ay, i32 %i.az   ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %.val34 = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bc = getelementptr i8, ptr %.val34, i64 4
  %.val34.val = load i32, ptr %i.bc, align 4, !tbaa !30
  %i.bd = add nsw i32 %.val34.val, 3
  %i.be = mul nsw i32 %i.bd, %i.ba
  %i.bf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 10 uses
  %i.bg = tail call i32 @llvm.umax.i32(i32 %i.be, i32 15)
  %spec.store.select.i = add nsw i32 %i.bg, 1     ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 5 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !253
  store i32 %spec.store.select.i, ptr %i.bf, align 8, !tbaa !693
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_StrAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Vec_WrdStartTruthTables.exit
  %i.bi = sext i32 %spec.store.select.i to i64
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #34
  br label %Vec_StrAlloc.exit

Vec_StrAlloc.exit:                                ; preds = %Vec_WrdStartTruthTables.exit, %bb.c
  %i.bk = phi ptr [ %i.bj, %bb.c ], [ null, %Vec_WrdStartTruthTables.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 8 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !255
  %i.bm = icmp sgt i32 %i.ba, 0
  br i1 %i.bm, label %.preheader.lr.ph, label %._crit_edge86

.preheader.lr.ph:                                 ; preds = %Vec_StrAlloc.exit
  %i.bn = getelementptr i8, ptr %i.au, i64 8
  %i.bo = sext i32 %i.aw to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %Vec_StrPush.exit59
  %.promoted82 = phi ptr [ %i.bk, %.preheader.lr.ph ], [ %i.eg, %Vec_StrPush.exit59 ] ; 2 uses
  %.promoted79 = phi i32 [ %spec.store.select.i, %.preheader.lr.ph ], [ %i.ef, %Vec_StrPush.exit59 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.preheader.lr.ph ], [ %i.eh, %Vec_StrPush.exit59 ] ; 2 uses
  %.02785 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ek, %Vec_StrPush.exit59 ] ; 3 uses
  %.val3376 = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bp = getelementptr i8, ptr %.val3376, i64 4
  %.val33.val77 = load i32, ptr %i.bp, align 4, !tbaa !30
  %i.bq = icmp sgt i32 %.val33.val77, 0
  br i1 %i.bq, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %.preheader
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.br = lshr i32 %.02785, 6
  %i.bs = zext nneg i32 %i.br to i64
  %invariant.gep = getelementptr [8 x i8], ptr %.val, i64 %i.bs
  %i.bt = and i32 %.02785, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = sext i32 %.promoted to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_StrPush.exit
  %indvars.iv88 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next89, %Vec_StrPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bv, %.lr.ph ], [ %indvars.iv.next, %Vec_StrPush.exit ] ; 7 uses
  %storemerge7483 = phi ptr [ %.promoted82, %.lr.ph ], [ %storemerge7484, %Vec_StrPush.exit ] ; 6 uses
  %spec.select.sink.i81 = phi i32 [ %.promoted79, %.lr.ph ], [ %spec.select.sink.i80, %Vec_StrPush.exit ] ; 3 uses
  %i.bw = mul nsw i64 %indvars.iv88, %i.bo
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bw
  %i.bx = load i64, ptr %gep, align 8, !tbaa !43
  %i.by = lshr i64 %i.bx, %i.bu
  %i.bz = trunc i64 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = trunc nsw i64 %indvars.iv to i32
  %i.cd = icmp eq i32 %spec.select.sink.i81, %i.cc
  br i1 %i.cd, label %bb.e, label %Vec_StrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.ce = icmp slt i64 %indvars.iv, 16
  br i1 %i.ce, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge7483, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge7483, i64 noundef 16) #37
  br label %Vec_StrPush.exit

bb.h:                                             ; preds = %bb.f
  %i.cg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34
  br label %Vec_StrPush.exit

bb.i:                                             ; preds = %bb.e
  %i.ch = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ci = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i35 = select i1 %i.ch, i32 %i.ci, i32 2147483647 ; 4 uses
  %i.cj = sext i32 %spec.select.i35 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.cj
  br i1 %.not.i9.i, label %bb.j, label %Vec_StrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %storemerge7483, null
  %i.ck = zext nneg i32 %spec.select.i35 to i64   ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = tail call ptr @realloc(ptr noundef nonnull %storemerge7483, i64 noundef %i.ck) #37
  br label %Vec_StrPush.exit

bb.l:                                             ; preds = %bb.j
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.ck) #34
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge7484 = phi ptr [ %storemerge7483, %bb.d ], [ %storemerge7483, %bb.i ], [ %i.cg, %bb.h ], [ %i.cf, %bb.g ], [ %i.cl, %bb.k ], [ %i.cm, %bb.l ] ; 4 uses
  %spec.select.sink.i80 = phi i32 [ %spec.select.sink.i81, %bb.d ], [ %spec.select.sink.i81, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i35, %bb.k ], [ %spec.select.i35, %bb.l ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %storemerge7484, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cn, align 1, !tbaa !256
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %.val33 = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.co = getelementptr i8, ptr %.val33, i64 4
  %.val33.val = load i32, ptr %i.co, align 4, !tbaa !30
  %i.cp = sext i32 %.val33.val to i64
  %i.cq = icmp slt i64 %indvars.iv.next89, %i.cp
  br i1 %i.cq, label %bb.d, label %._crit_edge, !llvm.loop !694

._crit_edge:                                      ; preds = %Vec_StrPush.exit
  %i.cr = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.cr, ptr %i.bh, align 4, !tbaa !253
  store i32 %spec.select.sink.i80, ptr %i.bf, align 8
  store ptr %storemerge7484, ptr %i.bl, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.preheader
  %i.cs = phi ptr [ %storemerge7484, %._crit_edge ], [ %.promoted82, %.preheader ] ; 6 uses
  %i.ct = phi i32 [ %spec.select.sink.i80, %._crit_edge ], [ %.promoted79, %.preheader ] ; 5 uses
  %i.cu = phi i32 [ %i.cr, %._crit_edge ], [ %.promoted, %.preheader ] ; 10 uses
  %i.cv = icmp eq i32 %i.cu, %i.ct
  br i1 %i.cv, label %bb.n, label %Vec_StrPush.exit43

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp slt i32 %i.ct, 16
  br i1 %i.cw, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i41 = icmp eq ptr %i.cs, null
  br i1 %.not9.i.i41, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cs, i64 noundef 16) #37
  br label %Vec_StrGrow.exit11.sink.split.i39

bb.q:                                             ; preds = %bb.o
  %i.cy = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34
  br label %Vec_StrGrow.exit11.sink.split.i39

bb.r:                                             ; preds = %bb.n
  %i.cz = icmp samesign ult i32 %i.ct, 1073741823
  %i.da = shl nuw nsw i32 %i.ct, 1
  %spec.select.i36 = select i1 %i.cz, i32 %i.da, i32 2147483647 ; 4 uses
  %.not.i9.i37 = icmp samesign ult i32 %i.ct, %spec.select.i36
  br i1 %.not.i9.i37, label %bb.s, label %Vec_StrPush.exit43

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i38 = icmp eq ptr %i.cs, null
  %i.db = zext nneg i32 %spec.select.i36 to i64   ; 2 uses
  br i1 %.not9.i10.i38, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %i.cs, i64 noundef %i.db) #37
  br label %Vec_StrGrow.exit11.sink.split.i39

bb.u:                                             ; preds = %bb.s
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #34
  br label %Vec_StrGrow.exit11.sink.split.i39

Vec_StrGrow.exit11.sink.split.i39:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge71 = phi ptr [ %i.cy, %bb.q ], [ %i.cx, %bb.p ], [ %i.dc, %bb.t ], [ %i.dd, %bb.u ] ; 2 uses
  %spec.select.sink.i40 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i36, %bb.t ], [ %spec.select.i36, %bb.u ]
  store ptr %storemerge71, ptr %i.bl, align 8, !tbaa !255
  store i32 %spec.select.sink.i40, ptr %i.bf, align 8, !tbaa !693
  br label %Vec_StrPush.exit43

Vec_StrPush.exit43:                               ; preds = %bb.m, %bb.r, %Vec_StrGrow.exit11.sink.split.i39
  %i.de = phi ptr [ %i.cs, %bb.m ], [ %i.cs, %bb.r ], [ %storemerge71, %Vec_StrGrow.exit11.sink.split.i39 ] ; 2 uses
  %i.df = add nsw i32 %i.cu, 1                    ; 7 uses
  store i32 %i.df, ptr %i.bh, align 4, !tbaa !253
  %i.dg = sext i32 %i.cu to i64
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %i.dg
  store i8 32, ptr %i.dh, align 1, !tbaa !256
  %i.di = load i32, ptr %i.bf, align 8, !tbaa !693 ; 2 uses
  %i.dj = icmp eq i32 %i.df, %i.di
  br i1 %i.dj, label %bb.v, label %Vec_StrPush.exit51

bb.v:                                             ; preds = %Vec_StrPush.exit43
  %i.dk = icmp slt i32 %i.cu, 15
  br i1 %i.dk, label %Vec_StrGrow.exit11.sink.split.i47, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = icmp samesign ult i32 %i.cu, 1073741822
  %i.dm = shl nuw nsw i32 %i.df, 1
  %spec.select.i44 = select i1 %i.dl, i32 %i.dm, i32 2147483647 ; 3 uses
  %.not.i9.i45 = icmp samesign ult i32 %i.df, %spec.select.i44
  br i1 %.not.i9.i45, label %bb.x, label %Vec_StrPush.exit51.thread

Vec_StrPush.exit51.thread:                        ; preds = %bb.w
  %i.dn = load ptr, ptr %i.bl, align 8, !tbaa !255 ; 2 uses
  %i.do = add nuw nsw i32 %i.cu, 2
  %i.dp = zext nneg i32 %i.df to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  store i8 49, ptr %i.dq, align 1, !tbaa !256
  br label %Vec_StrPush.exit59

bb.x:                                             ; preds = %bb.w
  %i.dr = zext nneg i32 %spec.select.i44 to i64
  br label %Vec_StrGrow.exit11.sink.split.i47

Vec_StrGrow.exit11.sink.split.i47:                ; preds = %bb.v, %bb.x
  %.sink = phi i64 [ %i.dr, %bb.x ], [ 16, %bb.v ]
  %spec.select.sink.i48 = phi i32 [ %spec.select.i44, %bb.x ], [ 16, %bb.v ] ; 2 uses
  %i.ds = tail call ptr @realloc(ptr noundef nonnull %i.de, i64 noundef %.sink) #37
  store ptr %i.ds, ptr %i.bl, align 8, !tbaa !255
  store i32 %spec.select.sink.i48, ptr %i.bf, align 8, !tbaa !693
  br label %Vec_StrPush.exit51

Vec_StrPush.exit51:                               ; preds = %Vec_StrPush.exit43, %Vec_StrGrow.exit11.sink.split.i47
  %i.dt = phi i32 [ %i.di, %Vec_StrPush.exit43 ], [ %spec.select.sink.i48, %Vec_StrGrow.exit11.sink.split.i47 ] ; 5 uses
  %i.du = load ptr, ptr %i.bl, align 8, !tbaa !255 ; 4 uses
  %i.dv = add nsw i32 %i.cu, 2                    ; 4 uses
  %i.dw = sext i32 %i.df to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  store i8 49, ptr %i.dx, align 1, !tbaa !256
  %i.dy = icmp eq i32 %i.dv, %i.dt
  br i1 %i.dy, label %bb.y, label %Vec_StrPush.exit59

bb.y:                                             ; preds = %Vec_StrPush.exit51
  %i.dz = icmp slt i32 %i.cu, 14
  br i1 %i.dz, label %Vec_StrGrow.exit11.sink.split.i55, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = icmp samesign ult i32 %i.cu, 1073741821
  %i.eb = shl nuw nsw i32 %i.dt, 1
  %spec.select.i52 = select i1 %i.ea, i32 %i.eb, i32 2147483647 ; 3 uses
  %.not.i9.i53 = icmp samesign ult i32 %i.dt, %spec.select.i52
  br i1 %.not.i9.i53, label %bb.aa, label %Vec_StrPush.exit59

bb.aa:                                            ; preds = %bb.z
  %i.ec = zext nneg i32 %spec.select.i52 to i64
  br label %Vec_StrGrow.exit11.sink.split.i55

Vec_StrGrow.exit11.sink.split.i55:                ; preds = %bb.y, %bb.aa
  %.sink115 = phi i64 [ %i.ec, %bb.aa ], [ 16, %bb.y ]
  %spec.select.sink.i56 = phi i32 [ %spec.select.i52, %bb.aa ], [ 16, %bb.y ] ; 2 uses
  %i.ed = tail call ptr @realloc(ptr noundef nonnull %i.du, i64 noundef %.sink115) #37 ; 2 uses
  store ptr %i.ed, ptr %i.bl, align 8, !tbaa !255
  store i32 %spec.select.sink.i56, ptr %i.bf, align 8, !tbaa !693
  br label %Vec_StrPush.exit59

Vec_StrPush.exit59:                               ; preds = %Vec_StrPush.exit51.thread, %Vec_StrPush.exit51, %bb.z, %Vec_StrGrow.exit11.sink.split.i55
  %i.ee = phi i32 [ %i.dv, %Vec_StrPush.exit51 ], [ %i.dv, %bb.z ], [ %i.dv, %Vec_StrGrow.exit11.sink.split.i55 ], [ %i.do, %Vec_StrPush.exit51.thread ]
  %i.ef = phi i32 [ %i.dt, %Vec_StrPush.exit51 ], [ %i.dt, %bb.z ], [ %spec.select.sink.i56, %Vec_StrGrow.exit11.sink.split.i55 ], [ %i.df, %Vec_StrPush.exit51.thread ] ; 2 uses
  %i.eg = phi ptr [ %i.du, %Vec_StrPush.exit51 ], [ %i.du, %bb.z ], [ %i.ed, %Vec_StrGrow.exit11.sink.split.i55 ], [ %i.dn, %Vec_StrPush.exit51.thread ] ; 3 uses
  %i.eh = add nsw i32 %i.cu, 3                    ; 3 uses
  store i32 %i.eh, ptr %i.bh, align 4, !tbaa !253
  %i.ei = sext i32 %i.ee to i64
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 %i.ei
  store i8 10, ptr %i.ej, align 1, !tbaa !256
  %i.ek = add nuw nsw i32 %.02785, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ek, %i.ba
  br i1 %exitcond.not, label %._crit_edge86, label %.preheader, !llvm.loop !695

._crit_edge86:                                    ; preds = %Vec_StrPush.exit59, %Vec_StrAlloc.exit
  %i.el = phi ptr [ %i.bk, %Vec_StrAlloc.exit ], [ %i.eg, %Vec_StrPush.exit59 ] ; 6 uses
  %i.em = phi i32 [ %spec.store.select.i, %Vec_StrAlloc.exit ], [ %i.ef, %Vec_StrPush.exit59 ] ; 5 uses
  %i.en = phi i32 [ 0, %Vec_StrAlloc.exit ], [ %i.eh, %Vec_StrPush.exit59 ] ; 3 uses
  %i.eo = icmp eq i32 %i.en, %i.em
  br i1 %i.eo, label %bb.ab, label %Vec_StrPush.exit67

bb.ab:                                            ; preds = %._crit_edge86
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not9.i.i65 = icmp eq ptr %i.el, null
  br i1 %.not9.i.i65, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.el, i64 noundef 16) #37
  br label %Vec_StrGrow.exit11.sink.split.i63

bb.ae:                                            ; preds = %bb.ac
  %i.er = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34
  br label %Vec_StrGrow.exit11.sink.split.i63

end_hunk_5
