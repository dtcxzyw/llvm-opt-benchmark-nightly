Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/str?download=true
inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@c11_string__ctor2:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define ptr @c11_string__new3(ptr noundef %0, ...) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.c11_sbuf, align 8           ; 5 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @c11_sbuf__ctor(ptr noundef nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @pk_vsprintf(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %2) #26
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.a = call ptr @c11_sbuf__submit(ptr noundef nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret ptr %i.a
}

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare void @pk_vsprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

declare ptr @c11_sbuf__submit(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @c11_string__ctor(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  store i32 %i.b, ptr %0, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %sext = shl i64 %i.a, 32
  %i.d = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr nonnull readonly align 1 %1, i64 %i.d, i1 false)
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.e, align 1, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @c11_string__ctor3(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  store i8 0, ptr %i.c, align 1, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @c11_string__copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = add i32 %i.a, 5
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %0, i64 %i.c, i1 false)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @c11_string__delete(ptr noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { ptr, i32 } @c11_string__sv(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.b, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @c11_sv__replace(ptr nofree readonly captures(none) %0, i32 %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #12 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = add nsw i64 %i.a, 5
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #25 ; 4 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.d, ptr readonly align 1 %0, i64 %i.a, i1 false)
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.a
  store i8 0, ptr %i.e, align 1, !tbaa !13
  %i.f = load i32, ptr %i.c, align 4, !tbaa !12   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.f, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat14 = shufflevector <16 x i8> %broadcast.splatinsert13, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.i, align 1, !tbaa !13 ; 2 uses
  %wide.load15 = load <16 x i8>, ptr %i.j, align 1, !tbaa !13 ; 2 uses
  %i.k = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.l = icmp eq <16 x i8> %wide.load15, %broadcast.splat
  %i.m = select <16 x i1> %i.k, <16 x i8> %broadcast.splat14, <16 x i8> %wide.load
  %i.n = select <16 x i1> %i.l, <16 x i8> %broadcast.splat14, <16 x i8> %wide.load15
  store <16 x i8> %i.m, ptr %i.i, align 1
  store <16 x i8> %i.n, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert17 = insertelement <8 x i8> poison, i8 %2, i64 0
  %broadcast.splat18 = shufflevector <8 x i8> %broadcast.splatinsert17, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %3, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %index21 ; 2 uses
  %wide.load22 = load <8 x i8>, ptr %i.p, align 1, !tbaa !13 ; 2 uses
  %i.q = icmp eq <8 x i8> %wide.load22, %broadcast.splat18
  %i.r = select <8 x i1> %i.q, <8 x i8> %broadcast.splat20, <8 x i8> %wide.load22
  store <8 x i8> %i.r, ptr %i.p, align 1
  %index.next23 = add nuw i64 %index21, 8         ; 2 uses
  %i.s = icmp eq i64 %index.next23, %n.vec16
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %n.vec16, %wide.trip.count
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %i.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13    ; 2 uses
  %i.v = icmp eq i8 %i.u, %2
  %spec.store.select = select i1 %i.v, i8 %3, i8 %i.u
  store i8 %spec.store.select, ptr %i.t, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31
}

; Function Attrs: nounwind uwtable
define ptr @c11_sv__replace2(ptr %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.c11_sbuf, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @c11_sbuf__ctor(ptr noundef nonnull %6) #26
  %i.a = icmp eq i32 %3, 0
  %i.b = sub nsw i32 %1, %3                       ; 2 uses
  %i.c = sext i32 %3 to i64
  %i.d = add i32 %1, 1
  %7 = sub i32 %i.d, %3
  br i1 %i.a, label %c11_sv__index2.exit.us.peel.next, label %.split

c11_sv__index2.exit.us.peel.next:                 ; preds = %bb.a
  %spec.select.i.us.peel = call i32 @llvm.smin.i32(i32 %1, i32 0)
  %i.e = sext i32 %spec.select.i.us.peel to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %i.f, i32 0) #26
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %4, i32 %5) #26
  br label %c11_sv__index2.exit.us

c11_sv__index2.exit.us:                           ; preds = %c11_sv__index2.exit.us, %c11_sv__index2.exit.us.peel.next
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %i.f, i32 0) #26
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %4, i32 %5) #26
  br label %c11_sv__index2.exit.us

.split:                                           ; preds = %bb.a
  %.not21.i38 = icmp slt i32 %i.b, 0
  br i1 %.not21.i38, label %c11_sv__index2.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.d
  %.039 = phi i32 [ %i.n, %bb.d ], [ 0, %.split ] ; 4 uses
  %i.g = sext i32 %.039 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.g, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %bcmp.i = call i32 @bcmp(ptr readonly %i.h, ptr readonly %2, i64 %i.c)
  %.not20.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not20.i, label %.loopexit.loopexit.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %7, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %c11_sv__index2.exit.thread, label %bb.b, !llvm.loop !0

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.b
  %i.i = icmp eq i64 %indvars.iv.i, -1
  br i1 %i.i, label %c11_sv__index2.exit.thread, label %bb.d

bb.d:                                             ; preds = %.loopexit.loopexit.split.loop.exit.i
  %i.j = trunc nsw i64 %indvars.iv.i to i32       ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %.039, i32 0)
  %spec.select.i = call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %1) ; 3 uses
  %spec.store.select1.i = call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %.0.i = call i32 @llvm.smin.i32(i32 %spec.store.select1.i, i32 %1)
  %.1.i = call i32 @llvm.smax.i32(i32 %.0.i, i32 %spec.select.i)
  %i.k = sext i32 %spec.select.i to i64
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = sub nsw i32 %.1.i, %spec.select.i
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %i.l, i32 %i.m) #26
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %4, i32 %5) #26
  %i.n = add nsw i32 %3, %i.j                     ; 3 uses
  %.not21.i = icmp sgt i32 %i.n, %i.b
  br i1 %.not21.i, label %c11_sv__index2.exit.thread, label %.lr.ph.i

c11_sv__index2.exit.thread:                       ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit.i, %bb.c, %.split
  %.037 = phi i32 [ %.039, %bb.c ], [ 0, %.split ], [ %.039, %.loopexit.loopexit.split.loop.exit.i ], [ %i.n, %bb.d ]
  %spec.store.select.i23 = call i32 @llvm.smax.i32(i32 %.037, i32 0)
  %spec.select.i24 = call i32 @llvm.smin.i32(i32 %spec.store.select.i23, i32 %1) ; 2 uses
  %i.o = sext i32 %spec.select.i24 to i64
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = sub nsw i32 %1, %spec.select.i24
  call void @c11_sbuf__write_sv(ptr noundef nonnull %6, ptr %i.p, i32 %i.q) #26
  %i.r = call ptr @c11_sbuf__submit(ptr noundef nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %i.r
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11_sv__index2(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, i32 noundef %4) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i32 %1, %3
  %.not21 = icmp sgt i32 %4, %i.b
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.c = sext i32 %3 to i64
  %i.d = sext i32 %4 to i64
  %i.e = add i32 %1, 1
  %5 = sub i32 %i.e, %3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr %2, i64 %i.c)
  %.not20 = icmp eq i32 %bcmp, 0
  br i1 %.not20, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !0

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.g = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit, %bb.b, %bb.a
  %.4 = phi i32 [ %4, %bb.a ], [ -1, %bb.b ], [ %i.g, %.loopexit.loopexit.split.loop.exit ], [ -1, %bb.d ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, i32 } @c11_sv__slice2(ptr %0, i32 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #14 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %1) ; 3 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %.0 = tail call i32 @llvm.smin.i32(i32 %spec.store.select1, i32 %1)
  %.1 = tail call i32 @llvm.smax.i32(i32 %.0, i32 %spec.select)
  %i.a = sext i32 %spec.select to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = sub nsw i32 %.1, %spec.select
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.c, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @c11_sbuf__write_sv(ptr noundef, ptr, i32) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11_sv__u8_length(ptr nofree readonly captures(none) %0, i32 %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %c11__byte_index_to_unicode.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi1 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !13
  %wide.load2 = load <4 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.d = icmp sgt <4 x i8> %wide.load, splat (i8 -65)
  %i.e = icmp sgt <4 x i8> %wide.load2, splat (i8 -65)
  %i.f = zext <4 x i1> %i.d to <4 x i32>
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = add <4 x i32> %vec.phi, %i.f             ; 2 uses
  %i.i = add <4 x i32> %vec.phi1, %i.g            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %c11__byte_index_to_unicode.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not.i = icmp sgt i8 %i.m, -65
  %i.n = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %.067.i, %i.n  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %c11__byte_index_to_unicode.exit, label %.lr.ph.i, !llvm.loop !34

c11__byte_index_to_unicode.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.06.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  ret i32 %.06.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11__byte_index_to_unicode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !13
  %wide.load11 = load <4 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.d = icmp sgt <4 x i8> %wide.load, splat (i8 -65)
  %i.e = icmp sgt <4 x i8> %wide.load11, splat (i8 -65)
  %i.f = zext <4 x i1> %i.d to <4 x i32>
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = add <4 x i32> %vec.phi, %i.f             ; 2 uses
  %i.i = add <4 x i32> %vec.phi10, %i.g           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.067.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %spec.select, %.lr.ph ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.067 = phi i32 [ %spec.select, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader12 ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not = icmp sgt i8 %i.m, -65
  %i.n = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.067, %i.n      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36
}

; Function Attrs: nounwind uwtable
define { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %c11__unicode_index_to_byte.exit

.lr.ph.i:                                         ; preds = %bb.a, %c11__u8_header.exit.i
  %.08.i = phi i32 [ %i.t, %c11__u8_header.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.057.i = phi i32 [ %i.u, %c11__u8_header.exit.i ], [ %2, %bb.a ] ; 2 uses
  %i.b = zext nneg i32 %.08.i to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 5 uses
  %i.f = icmp sgt i8 %i.d, -1
  br i1 %i.f, label %c11__u8_header.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = and i32 %i.e, 224
  %i.h = icmp eq i32 %i.g, 192
  br i1 %i.h, label %c11__u8_header.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.e, 240
  %i.j = icmp eq i32 %i.i, 224
  br i1 %i.j, label %c11__u8_header.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.e, 248
  %i.l = icmp eq i32 %i.k, 240
  br i1 %i.l, label %c11__u8_header.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.e, 252
  %i.n = icmp eq i32 %i.m, 248
  br i1 %i.n, label %c11__u8_header.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 254
  %i.p = icmp eq i32 %i.o, 252
  br i1 %i.p, label %c11__u8_header.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.r = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.q) #27 ; 0 uses
  %i.s = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit.i:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i
end_hunk_0
begin_hunk_1_@c11__unicode_index_to_byte:bb.a
  %i.b = zext nneg i32 %.08 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 5 uses
  %i.f = icmp sgt i8 %i.d, -1
  br i1 %i.f, label %c11__u8_header.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = and i32 %i.e, 224
  %i.h = icmp eq i32 %i.g, 192
  br i1 %i.h, label %c11__u8_header.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.e, 240
  %i.j = icmp eq i32 %i.i, 224
  br i1 %i.j, label %c11__u8_header.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.e, 248
  %i.l = icmp eq i32 %i.k, 240
  br i1 %i.l, label %c11__u8_header.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %i.e, 252
  %i.n = icmp eq i32 %i.m, 248
  br i1 %i.n, label %c11__u8_header.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %i.e, 254
  %i.p = icmp eq i32 %i.o, 252
  br i1 %i.p, label %c11__u8_header.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.r = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.q) #27 ; 0 uses
  %i.s = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit:                              ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ 6, %bb.f ], [ 1, %.lr.ph ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ]
  %i.t = add nuw nsw i32 %.0.i, %.08              ; 2 uses
  %i.u = add nsw i32 %.057, -1
  %i.v = icmp sgt i32 %.057, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %c11__u8_header.exit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.t, %c11__u8_header.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define range(i32 0, 7) i32 @c11__u8_header(i8 noundef zeroext %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 5 uses
  %i.b = icmp sgt i8 %0, -1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 224
  %i.d = icmp eq i32 %i.c, 192
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.a, 240
  %i.f = icmp eq i32 %i.e, 224
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %i.a, 248
  %i.h = icmp eq i32 %i.g, 240
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %i.a, 252
  %i.j = icmp eq i32 %i.i, 248
  br i1 %i.j, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.a, 254
  %i.l = icmp eq i32 %i.k, 252                    ; 2 uses
  %brmerge = or i1 %1, %i.l
  %.mux = select i1 %i.l, i32 6, i32 0
  br i1 %brmerge, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.n = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.m) #27 ; 0 uses
  %i.o = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #28
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %.mux, %bb.f ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @c11_sv__u8_slice(ptr %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.c11_sbuf, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @c11_sbuf__ctor(ptr noundef nonnull %5) #26
  %i.a = icmp sgt i32 %4, 0                       ; 2 uses
  %i.b = icmp slt i32 %2, %3
  %i.c = icmp sgt i32 %2, %3
  %.in10 = select i1 %i.a, i1 %i.b, i1 %i.c
  br i1 %.in10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = call ptr @c11_sbuf__submit(ptr noundef nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %i.d

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %i.h, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.e = call { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %.011) ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = extractvalue { ptr, i32 } %i.e, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %5, ptr %i.f, i32 %i.g) #26
  %i.h = add nsw i32 %.011, %4                    ; 3 uses
  %i.i = icmp slt i32 %i.h, %3
  %i.j = icmp sgt i32 %i.h, %3
  %.in = select i1 %i.a, i1 %i.i, i1 %i.j
  br i1 %.in, label %.lr.ph, label %._crit_edge, !llvm.loop !37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, i32 } @c11_sv__slice(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i, i32 %1) ; 2 uses
  %i.a = sext i32 %spec.select.i to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = sub nsw i32 %1, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.b, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %i.c, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define { ptr, i32 } @c11_sv__strip(ptr %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader.i.i, label %c11__unicode_index_to_byte.exit58

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi120 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !13
  %wide.load121 = load <4 x i8>, ptr %i.c, align 1, !tbaa !13
  %i.d = icmp sgt <4 x i8> %wide.load, splat (i8 -65)
  %i.e = icmp sgt <4 x i8> %wide.load121, splat (i8 -65)
  %i.f = zext <4 x i1> %i.d to <4 x i32>
  %i.g = zext <4 x i1> %i.e to <4 x i32>
  %i.h = add <4 x i32> %vec.phi, %i.f             ; 2 uses
  %i.i = add <4 x i32> %vec.phi120, %i.g          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.i, %i.h
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %c11_sv__u8_length.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.k, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not.i.i = icmp sgt i8 %i.m, -65
  %i.n = zext i1 %.not.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.067.i.i, %i.n ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %c11_sv__u8_length.exit, label %.lr.ph.i.i, !llvm.loop !39

c11_sv__u8_length.exit:                           ; preds = %.lr.ph.i.i, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.k, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 7 uses
  %i.o = icmp ne i32 %spec.select.i.i.lcssa, 0
  %or.cond = select i1 %4, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph, label %c11_sv__index2.exit.thread

.lr.ph:                                           ; preds = %c11_sv__u8_length.exit
  %6 = add i32 %3, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %c11_sv__index2.exit
  %.072 = phi i32 [ 0, %.lr.ph ], [ %i.v, %c11_sv__index2.exit ] ; 4 uses
  %i.p = tail call { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %.072) ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = extractvalue { ptr, i32 } %i.p, 1        ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %c11_sv__index2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not21.i = icmp slt i32 %3, %i.r
  br i1 %.not21.i, label %c11_sv__index2.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.t = sext i32 %i.r to i64
  %7 = sub i32 %6, %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.u, ptr readonly %i.q, i64 %i.t)
  %.not20.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not20.i, label %c11_sv__index2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond, label %c11_sv__index2.exit.thread, label %bb.d, !llvm.loop !0

c11_sv__index2.exit:                              ; preds = %bb.d, %bb.b
  %i.v = add nuw nsw i32 %.072, 1                 ; 2 uses
  %exitcond86.not = icmp eq i32 %i.v, %spec.select.i.i.lcssa
  br i1 %exitcond86.not, label %c11_sv__index2.exit50.thread, label %bb.b

c11_sv__index2.exit.thread:                       ; preds = %bb.c, %bb.e, %c11_sv__u8_length.exit
  %.2 = phi i32 [ 0, %c11_sv__u8_length.exit ], [ %.072, %bb.e ], [ %.072, %bb.c ] ; 7 uses
  %i.w = icmp samesign ult i32 %.2, %spec.select.i.i.lcssa
  %or.cond80 = select i1 %5, i1 %i.w, i1 false
  br i1 %or.cond80, label %.lr.ph76, label %c11_sv__index2.exit50.thread

.lr.ph76:                                         ; preds = %c11_sv__index2.exit.thread
  %8 = add i32 %3, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %c11_sv__index2.exit50
  %.03475 = phi i32 [ %spec.select.i.i.lcssa, %.lr.ph76 ], [ %i.x, %c11_sv__index2.exit50 ] ; 3 uses
  %i.x = add nsw i32 %.03475, -1                  ; 3 uses
  %i.y = tail call { ptr, i32 } @c11_sv__u8_getitem(ptr %0, i32 %1, i32 noundef %i.x) ; 2 uses
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = extractvalue { ptr, i32 } %i.y, 1       ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %c11_sv__index2.exit50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not21.i40 = icmp slt i32 %3, %i.aa
  br i1 %.not21.i40, label %c11_sv__index2.exit50.thread, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.g
  %i.ac = sext i32 %i.aa to i64
  %9 = sub i32 %8, %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i45, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i42
  %bcmp.i43 = tail call i32 @bcmp(ptr readonly %i.ad, ptr readonly %i.z, i64 %i.ac)
  %.not20.i44 = icmp eq i32 %bcmp.i43, 0
  br i1 %.not20.i44, label %c11_sv__index2.exit50, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %lftr.wideiv87 = trunc i64 %indvars.iv.next.i45 to i32
  %exitcond88 = icmp eq i32 %9, %lftr.wideiv87
  br i1 %exitcond88, label %c11_sv__index2.exit50.thread, label %bb.h, !llvm.loop !0

c11_sv__index2.exit50:                            ; preds = %bb.h, %bb.f
  %i.ae = icmp slt i32 %.2, %i.x
  br i1 %i.ae, label %bb.f, label %c11_sv__index2.exit50.thread

c11_sv__index2.exit50.thread:                     ; preds = %c11_sv__index2.exit, %c11_sv__index2.exit50, %bb.g, %bb.i, %c11_sv__index2.exit.thread
  %.299 = phi i32 [ %.2, %c11_sv__index2.exit.thread ], [ %.2, %c11_sv__index2.exit50 ], [ %.2, %bb.i ], [ %.2, %bb.g ], [ %spec.select.i.i.lcssa, %c11_sv__index2.exit ] ; 2 uses
  %.236 = phi i32 [ %spec.select.i.i.lcssa, %c11_sv__index2.exit.thread ], [ %.2, %c11_sv__index2.exit50 ], [ %.03475, %bb.i ], [ %.03475, %bb.g ], [ %spec.select.i.i.lcssa, %c11_sv__index2.exit ] ; 2 uses
  %i.af = icmp sgt i32 %.299, 0
  br i1 %i.af, label %.lr.ph.i51, label %c11__unicode_index_to_byte.exit

.lr.ph.i51:                                       ; preds = %c11_sv__index2.exit50.thread, %c11__u8_header.exit.i
  %.08.i = phi i32 [ %i.ay, %c11__u8_header.exit.i ], [ 0, %c11_sv__index2.exit50.thread ] ; 2 uses
  %.057.i = phi i32 [ %i.az, %c11__u8_header.exit.i ], [ %.299, %c11_sv__index2.exit50.thread ] ; 2 uses
  %i.ag = zext nneg i32 %.08.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 2 uses
  %i.aj = zext i8 %i.ai to i32                    ; 5 uses
  %i.ak = icmp sgt i8 %i.ai, -1
  br i1 %i.ak, label %c11__u8_header.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i51
  %i.al = and i32 %i.aj, 224
  %i.am = icmp eq i32 %i.al, 192
  br i1 %i.am, label %c11__u8_header.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = and i32 %i.aj, 240
  %i.ao = icmp eq i32 %i.an, 224
  br i1 %i.ao, label %c11__u8_header.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = and i32 %i.aj, 248
  %i.aq = icmp eq i32 %i.ap, 240
  br i1 %i.aq, label %c11__u8_header.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = and i32 %i.aj, 252
  %i.as = icmp eq i32 %i.ar, 248
  br i1 %i.as, label %c11__u8_header.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = and i32 %i.aj, 254
  %i.au = icmp eq i32 %i.at, 252
  br i1 %i.au, label %c11__u8_header.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aw = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.av) #27 ; 0 uses
  %i.ax = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit.i:                            ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph.i51
  %.0.i.i = phi i32 [ 6, %bb.n ], [ 1, %.lr.ph.i51 ], [ 2, %bb.j ], [ 3, %bb.k ], [ 4, %bb.l ], [ 5, %bb.m ]
  %i.ay = add nuw nsw i32 %.0.i.i, %.08.i         ; 2 uses
  %i.az = add nsw i32 %.057.i, -1
  %i.ba = icmp sgt i32 %.057.i, 1
  br i1 %i.ba, label %.lr.ph.i51, label %c11__unicode_index_to_byte.exit, !llvm.loop !1

c11__unicode_index_to_byte.exit:                  ; preds = %c11__u8_header.exit.i, %c11_sv__index2.exit50.thread
  %.0.lcssa.i = phi i32 [ 0, %c11_sv__index2.exit50.thread ], [ %i.ay, %c11__u8_header.exit.i ] ; 2 uses
  %i.bb = icmp sgt i32 %.236, 0
  br i1 %i.bb, label %.lr.ph.i53, label %c11__unicode_index_to_byte.exit58

.lr.ph.i53:                                       ; preds = %c11__unicode_index_to_byte.exit, %c11__u8_header.exit.i56
  %.08.i54 = phi i32 [ %i.bu, %c11__u8_header.exit.i56 ], [ 0, %c11__unicode_index_to_byte.exit ] ; 2 uses
  %.057.i55 = phi i32 [ %i.bv, %c11__u8_header.exit.i56 ], [ %.236, %c11__unicode_index_to_byte.exit ] ; 2 uses
  %i.bc = zext nneg i32 %.08.i54 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13  ; 2 uses
  %i.bf = zext i8 %i.be to i32                    ; 5 uses
  %i.bg = icmp sgt i8 %i.be, -1
  br i1 %i.bg, label %c11__u8_header.exit.i56, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i53
  %i.bh = and i32 %i.bf, 224
  %i.bi = icmp eq i32 %i.bh, 192
  br i1 %i.bi, label %c11__u8_header.exit.i56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = and i32 %i.bf, 240
  %i.bk = icmp eq i32 %i.bj, 224
  br i1 %i.bk, label %c11__u8_header.exit.i56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = and i32 %i.bf, 248
  %i.bm = icmp eq i32 %i.bl, 240
  br i1 %i.bm, label %c11__u8_header.exit.i56, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = and i32 %i.bf, 252
  %i.bo = icmp eq i32 %i.bn, 248
  br i1 %i.bo, label %c11__u8_header.exit.i56, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = and i32 %i.bf, 254
  %i.bq = icmp eq i32 %i.bp, 252
  br i1 %i.bq, label %c11__u8_header.exit.i56, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bs = tail call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %i.br) #27 ; 0 uses
  %i.bt = tail call i32 @putchar(i32 noundef 10)  ; 0 uses
  tail call void @abort() #28
  unreachable

c11__u8_header.exit.i56:                          ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %.lr.ph.i53
  %.0.i.i57 = phi i32 [ 6, %bb.t ], [ 1, %.lr.ph.i53 ], [ 2, %bb.p ], [ 3, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ]
  %i.bu = add nuw nsw i32 %.0.i.i57, %.08.i54     ; 2 uses
  %i.bv = add nsw i32 %.057.i55, -1
  %i.bw = icmp sgt i32 %.057.i55, 1
  br i1 %i.bw, label %.lr.ph.i53, label %c11__unicode_index_to_byte.exit58, !llvm.loop !1

c11__unicode_index_to_byte.exit58:                ; preds = %c11__u8_header.exit.i56, %bb.a, %c11__unicode_index_to_byte.exit
  %.0.lcssa.i105 = phi i32 [ %.0.lcssa.i, %c11__unicode_index_to_byte.exit ], [ 0, %bb.a ], [ %.0.lcssa.i, %c11__u8_header.exit.i56 ]
  %.0.lcssa.i52 = phi i32 [ 0, %c11__unicode_index_to_byte.exit ], [ 0, %bb.a ], [ %i.bu, %c11__u8_header.exit.i56 ]
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i105, i32 %1) ; 3 uses
  %.0.i = tail call i32 @llvm.smin.i32(i32 %.0.lcssa.i52, i32 %1)
  %.1.i = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %spec.select.i)
  %i.bx = sext i32 %spec.select.i to i64
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx
  %i.bz = sub nsw i32 %.1.i, %spec.select.i
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %i.by, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %i.bz, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -2147483648, 2147483647) i32 @c11_sv__index(ptr nofree readonly captures(none) %0, i32 %1, i8 noundef signext %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %i.d = icmp eq i8 %i.c, %2
  br i1 %i.d, label %._crit_edge.loopexit.split.loop.exit14, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit.split.loop.exit14:           ; preds = %.lr.ph
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.split.loop.exit14, %bb.a
  %i.f = phi i32 [ -1, %bb.a ], [ %i.e, %._crit_edge.loopexit.split.loop.exit14 ], [ -1, %bb.b ]
  ret i32 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 2147483647) i32 @c11_sv__rindex(ptr nofree readonly captures(none) %0, i32 %1, i8 noundef signext %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.split.loop.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = icmp sgt i32 %indvars.le, 0
  br i1 %i.c, label %bb.c, label %.split.loop.exit, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv13 = phi i64 [ %i.b, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv13, -1 ; 3 uses
  %i.d = and i64 %indvars.iv.next, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, %2
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %i.g, label %.split.loop.exit, label %bb.b, !llvm.loop !2

.split.loop.exit:                                 ; preds = %bb.b, %bb.c, %bb.a
  %i.h = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le, %bb.c ]
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { ptr, i32 } @c11_sv__filename(ptr %0, i32 %1) local_unnamed_addr #13 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %c11_sv__rindex.exit

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp sgt i32 %indvars.le.i, 0
  br i1 %i.c, label %.lr.ph, label %c11_sv__rindex.exit, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ %i.a, %bb.a ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i19, -1 ; 3 uses
  %i.d = and i64 %indvars.iv.next.i, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, 47
  %indvars.le.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  br i1 %i.g, label %c11_sv__rindex.exit, label %bb.b, !llvm.loop !2

c11_sv__rindex.exit:                              ; preds = %bb.b, %.lr.ph, %bb.a
  %i.h = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le.i, %.lr.ph ]
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph21, label %c11_sv__rindex.exit15

bb.c:                                             ; preds = %.lr.ph21
  %i.j = icmp sgt i32 %indvars.le.i14, 0
  br i1 %i.j, label %.lr.ph21, label %c11_sv__rindex.exit15, !llvm.loop !2

.lr.ph21:                                         ; preds = %c11_sv__rindex.exit, %bb.c
  %indvars.iv.i1120 = phi i64 [ %indvars.iv.next.i12, %bb.c ], [ %i.a, %c11_sv__rindex.exit ]
  %indvars.iv.next.i12 = add nsw i64 %indvars.iv.i1120, -1 ; 3 uses
  %i.k = and i64 %indvars.iv.next.i12, 4294967295
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, 92
  %indvars.le.i14 = trunc i64 %indvars.iv.next.i12 to i32 ; 2 uses
  br i1 %i.n, label %c11_sv__rindex.exit15, label %bb.c, !llvm.loop !2

c11_sv__rindex.exit15:                            ; preds = %bb.c, %.lr.ph21, %c11_sv__rindex.exit
  %i.o = phi i32 [ -1, %c11_sv__rindex.exit ], [ -1, %bb.c ], [ %indvars.le.i14, %.lr.ph21 ]
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.o) ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %c11_sv__rindex.exit15
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.p, i32 -1)
  %spec.store.select.i.i = add nsw i32 %i.r, 1
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.i, i32 %1) ; 2 uses
  %i.s = sext i32 %spec.select.i.i to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = sub nsw i32 %1, %spec.select.i.i
  br label %bb.e

bb.e:                                             ; preds = %c11_sv__rindex.exit15, %bb.d
  %.pn18 = phi ptr [ %i.t, %bb.d ], [ %0, %c11_sv__rindex.exit15 ]
  %.pn16 = phi i32 [ %i.u, %bb.d ], [ %1, %c11_sv__rindex.exit15 ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn18, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn16, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11_sv__count(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = sub nsw i32 %1, %3
  %i.c = sext i32 %3 to i64
  %i.d = add i32 %1, 1
  %4 = sub i32 %i.d, %3
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %1, 1
  br label %c11_sv__index2.exit.thread

bb.c:                                             ; preds = %.preheader, %c11_sv__index2.exit
  %.013 = phi i32 [ %i.j, %c11_sv__index2.exit ], [ 0, %.preheader ] ; 4 uses
  %.012 = phi i32 [ %i.k, %c11_sv__index2.exit ], [ 0, %.preheader ] ; 2 uses
  %.not21.i = icmp sgt i32 %.012, %i.b
  br i1 %.not21.i, label %c11_sv__index2.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = sext i32 %.012 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.g, ptr readonly %2, i64 %i.c)
  %.not20.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not20.i, label %c11_sv__index2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %4, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %c11_sv__index2.exit.thread, label %bb.d, !llvm.loop !0

c11_sv__index2.exit:                              ; preds = %bb.d
  %i.h = trunc nsw i64 %indvars.iv.i to i32
  %i.i = icmp eq i64 %indvars.iv.i, -1
  %i.j = add nuw nsw i32 %.013, 1
  %i.k = add nsw i32 %3, %i.h
  br i1 %i.i, label %c11_sv__index2.exit.thread, label %bb.c

c11_sv__index2.exit.thread:                       ; preds = %bb.c, %c11_sv__index2.exit, %bb.e, %bb.b
  %.015 = phi i32 [ %i.e, %bb.b ], [ %.013, %bb.e ], [ %.013, %c11_sv__index2.exit ], [ %.013, %bb.c ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11_sv__startswith(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %3, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %3 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.b)
  %i.c = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11_sv__endswith(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %3, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr %2, i64 %i.d)
  %i.g = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @c11_sv__hash(ptr nofree readonly captures(none) %0, i32 %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.b = icmp ult i32 %1, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi i64 [ 5381, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.067.epil = phi i64 [ %.067.epil.init, %.lr.ph.epil.preheader ], [ %i.g, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = mul i64 %.067.epil, 33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = add i64 %i.c, %i.f                       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.06.lcssa = phi i64 [ 5381, %bb.a ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  ret i64 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.067 = phi i64 [ 5381, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = mul i64 %.067, 33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i64
  %i.l = add i64 %i.h, %i.k
  %i.m = mul i64 %i.l, 33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  %i.r = add i64 %i.m, %i.q
  %i.s = mul i64 %i.r, 33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64
  %i.x = add i64 %i.s, %i.w
  %i.y = mul i64 %i.x, 33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !42
}

; Function Attrs: nounwind uwtable
define void @c11_sv__splitwhitespace(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2) local_unnamed_addr #5 {
bb.a:
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ] ; 3 uses
  %.not = icmp sgt i32 %.018.lcssa, %2
  br i1 %.not, label %bb.j, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.f ] ; 4 uses
  %.01821 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !48
  %i.k = and i16 %i.j, 8192
  %.not20 = icmp eq i16 %i.k, 0
  br i1 %.not20, label %._crit_edge25, label %bb.c

._crit_edge25:                                    ; preds = %bb.b
  %.pre26 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %.01821 to i64
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = sub nsw i32 %i.n, %.01821
  %i.p = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !22
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.s) #26
  %.pre = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %.pre, %bb.d ], [ %i.p, %bb.c ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !23
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v ; 3 uses
  store ptr %i.m, ptr %i.w, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.o, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %i.x = load i32, ptr %i.c, align 8, !tbaa !21
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.c, align 8, !tbaa !21
  %i.z = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge25, %bb.e
end_hunk_1
begin_hunk_2_@c11_sv__splitlines:bb.a
  %switch = icmp eq i8 %i.al, -88
  br i1 %switch, label %.thread, label %bb.l

bb.l:                                             ; preds = %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt3, %bb.j, %bb.i, %bb.k, %c11__u8_header.exit.jt2
  %.0.i94 = phi i32 [ 2, %c11__u8_header.exit.jt2 ], [ 3, %c11__u8_header.exit.jt3 ], [ 3, %bb.j ], [ 2, %bb.i ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ 3, %bb.k ] ; 2 uses
  %i.am = add nsw i32 %.0.i94, %.187              ; 3 uses
  %i.an = icmp slt i32 %i.am, %2
  br i1 %i.an, label %bb.b, label %.thread

.thread:                                          ; preds = %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %c11__u8_header.exit.jt6, %bb.k, %bb.i, %bb.l
  %.1.lcssa.ph = phi i32 [ %.187, %c11__u8_header.exit.jt6 ], [ %.187, %c11__u8_header.exit.jt6 ], [ %.187, %c11__u8_header.exit.jt6 ], [ %.187, %c11__u8_header.exit.jt6 ], [ %.187, %c11__u8_header.exit.jt6 ], [ %.187, %c11__u8_header.exit.jt6 ], [ %.187, %c11__u8_header.exit.jt6 ], [ %i.am, %bb.l ], [ %.187, %bb.i ], [ %.187, %bb.k ] ; 8 uses
  %.274.ph = phi i32 [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i.jt6, %c11__u8_header.exit.jt6 ], [ %.0.i94, %bb.l ], [ 2, %bb.i ], [ 3, %bb.k ]
  %i.ao = icmp slt i32 %.1.lcssa.ph, %2
  br i1 %i.ao, label %bb.m, label %bb.s

bb.m:                                             ; preds = %.thread
  %i.ap = sext i32 %.1.lcssa.ph to i64
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = icmp eq i8 %i.ar, 13
  br i1 %i.as, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.at = add nsw i32 %.1.lcssa.ph, 1             ; 2 uses
  %i.au = icmp slt i32 %i.at, %2
  br i1 %i.au, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = icmp eq i8 %i.ax, 10
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = add nsw i32 %.1.lcssa.ph, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ba = add nsw i32 %.274.ph, %.1.lcssa.ph
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4 = phi i32 [ %i.az, %bb.p ], [ %i.ba, %bb.q ] ; 2 uses
  %spec.select = select i1 %3, i32 %.4, i32 %.1.lcssa.ph
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread
  %.075 = phi i32 [ %.1.lcssa.ph, %.thread ], [ %spec.select, %bb.r ]
  %.5 = phi i32 [ %.1.lcssa.ph, %.thread ], [ %.4, %bb.r ] ; 2 uses
  %i.bb = sext i32 %.07188 to i64
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.bb
  %i.bd = sub nsw i32 %.075, %.07188
  %i.be = load i32, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !22
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bh = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.bh) #26
  %.pre = load i32, ptr %i.b, align 8, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi i32 [ %.pre, %bb.t ], [ %i.be, %bb.s ]
  %i.bj = load ptr, ptr %0, align 8, !tbaa !23
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  store ptr %i.bc, ptr %i.bl, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.bm = load i32, ptr %i.b, align 8, !tbaa !21
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.b, align 8, !tbaa !21
  %i.bo = icmp slt i32 %.5, %2
  br i1 %i.bo, label %.preheader, label %._crit_edge, !llvm.loop !49
}

; Function Attrs: nounwind uwtable
define void @c11_sv__split(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, i8 noundef signext %3) local_unnamed_addr #5 {
bb.a:
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ] ; 3 uses
  %.not = icmp sgt i32 %.019.lcssa, %2
  br i1 %.not, label %bb.j, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.f ] ; 4 uses
  %.01921 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = icmp eq i8 %i.e, %3
  br i1 %i.f, label %bb.c, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.b
  %.pre26 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = sext i32 %.01921 to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = sub nsw i32 %i.i, %.01921
  %i.k = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !22
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.n) #26
  %.pre = load i32, ptr %i.b, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %.pre, %bb.d ], [ %i.k, %bb.c ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  store ptr %i.h, ptr %i.r, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.j, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %i.s = load i32, ptr %i.b, align 8, !tbaa !21
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.b, align 8, !tbaa !21
  %i.u = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge25, %bb.e
  %indvars.iv.next.pre-phi = phi i64 [ %.pre26, %._crit_edge25 ], [ %i.u, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.01921, %._crit_edge25 ], [ %i.v, %bb.e ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !50

bb.g:                                             ; preds = %._crit_edge
  %i.w = sext i32 %.019.lcssa to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = sub nsw i32 %2, %.019.lcssa
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.ae) #26
  %.pre24 = load i32, ptr %i.z, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi i32 [ %.pre24, %bb.h ], [ %i.aa, %bb.g ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !23
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  store ptr %i.x, ptr %i.ai, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !21
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.z, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @c11_sv__split2(ptr dead_on_unwind noalias writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, ptr nofree readonly captures(none) %3, i32 %4) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !13
  tail call void @c11_sv__split(ptr dead_on_unwind writable sret(%struct.c11_vector) align 8 %0, ptr %1, i32 %2, i8 noundef signext %i.b)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @c11_vector__ctor(ptr noundef %0, i32 noundef 16) #26
  %i.c = icmp eq i32 %4, 0
  %i.d = sub nsw i32 %2, %4                       ; 2 uses
  %i.e = sext i32 %4 to i64
  %i.f = add i32 %2, 1
  %5 = sub i32 %i.f, %4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  br i1 %i.c, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !22
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %.split.us.sink.split, label %.split.us.preheader64

.split.us.sink.split:                             ; preds = %.split.us, %.split.us.preheader
  %i.l = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.l) #26
  %.pre44 = load i32, ptr %i.g, align 8, !tbaa !21
  br label %.split.us.preheader64

.split.us.preheader64:                            ; preds = %.split.us.preheader, %.split.us.sink.split
  %.sink.ph = phi i32 [ %.pre44, %.split.us.sink.split ], [ %i.i, %.split.us.preheader ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader64, %.split.us
  %.sink = phi i32 [ %i.q, %.split.us ], [ %.sink.ph, %.split.us.preheader64 ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !23
  %i.n = sext i32 %.sink to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.n ; 3 uses
  store ptr %1, ptr %i.o, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx.us, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx.us, align 4
  %i.p = load i32, ptr %i.g, align 8, !tbaa !21
  %i.q = add nsw i32 %i.p, 1                      ; 3 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !21
  %i.r = load i32, ptr %i.h, align 4, !tbaa !22
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %.split.us.sink.split, label %.split.us

.split:                                           ; preds = %bb.c
  %.not21.i34 = icmp slt i32 %i.d, 0
  br i1 %.not21.i34, label %c11_sv__index2.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.02335 = phi i32 [ %i.aj, %bb.h ], [ 0, %.split ] ; 4 uses
  %i.t = sext i32 %.02335 to i64                  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.t, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.u, ptr readonly %3, i64 %i.e)
  %.not20.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not20.i, label %.loopexit.loopexit.split.loop.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %5, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %c11_sv__index2.exit.thread, label %bb.d, !llvm.loop !0

.loopexit.loopexit.split.loop.exit.i:             ; preds = %bb.d
  %i.v = trunc nsw i64 %indvars.iv.i to i32       ; 2 uses
  %i.w = icmp eq i64 %indvars.iv.i, -1
  br i1 %i.w, label %c11_sv__index2.exit.thread, label %bb.f

bb.f:                                             ; preds = %.loopexit.loopexit.split.loop.exit.i
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.y = sub nsw i32 %i.v, %.02335
  %i.z = load i32, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !22
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.ac) #26
  %.pre = load i32, ptr %i.g, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ad = phi i32 [ %i.z, %bb.f ], [ %.pre, %bb.g ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !23
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  store ptr %i.x, ptr %i.ag, align 8, !tbaa !25
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.y, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !12
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %.sroa.53.0..sroa_idx, align 4
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !21
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.g, align 8, !tbaa !21
  %i.aj = add nsw i32 %4, %i.v                    ; 3 uses
  %.not21.i = icmp sgt i32 %i.aj, %i.d
  br i1 %.not21.i, label %c11_sv__index2.exit.thread, label %.lr.ph.i

c11_sv__index2.exit.thread:                       ; preds = %bb.h, %.loopexit.loopexit.split.loop.exit.i, %bb.e, %.split
  %.02333 = phi i32 [ %.02335, %bb.e ], [ 0, %.split ], [ %.02335, %.loopexit.loopexit.split.loop.exit.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.ak = sext i32 %.02333 to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = sub nsw i32 %2, %.02333
  %i.an = load i32, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !22
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %c11_sv__index2.exit.thread
  %i.aq = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %0) #26
  tail call void @c11_vector__reserve(ptr noundef nonnull %0, i32 noundef %i.aq) #26
  %.pre45 = load i32, ptr %i.g, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %c11_sv__index2.exit.thread
  %i.ar = phi i32 [ %.pre45, %bb.i ], [ %i.an, %c11_sv__index2.exit.thread ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !23
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [16 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store ptr %i.al, ptr %i.au, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %i.av = load i32, ptr %i.g, align 8, !tbaa !21
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.g, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11_bytes__eq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = sext i32 %i.a to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.d, i64 %i.e)
  %i.f = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @c11_sv__cmp(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %i.b = sext i32 %i.a to i64
  %i.c = tail call i32 @strncmp(ptr noundef %0, ptr noundef %2, i64 noundef %i.b) #24 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %i.d = sub nsw i32 %1, %3
  %.0 = select i1 %.not, i32 %i.d, i32 %i.c
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @c11_sv__cmp2(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.b)
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.d) #24 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  %i.f = sub nsw i32 %1, %i.b
  %.0 = select i1 %.not, i32 %i.f, i32 %i.e
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11__streq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #24
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11__sveq(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.a)
  %i.b = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @c11__sveq2(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #24 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %.not = icmp eq i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.c = ashr exact i64 %sext, 32
  %bcmp = tail call i32 @bcmp(ptr %0, ptr nonnull %2, i64 %i.c)
  %i.d = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint nounwind uwtable
declare i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @c11__u8_value(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  switch i32 %0, label %.lr.ph.split.peel.next [
    i32 2, label %.loopexit.loopexit36
    i32 3, label %.loopexit.loopexit71
    i32 4, label %.loopexit.loopexit73
  ]

.lr.ph.split.peel.next:                           ; preds = %.lr.ph
  %wide.trip.count56 = zext nneg i32 %0 to i64    ; 2 uses
  %i.c = add nsw i64 %wide.trip.count56, -1       ; 2 uses
  %min.iters.check = icmp ult i32 %0, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

end_hunk_2
