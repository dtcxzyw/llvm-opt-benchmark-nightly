Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event_tagging?download=true
inline.NumInlined: 27
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s: malloc\00", align 1
@__func__.evtag_unmarshal_string = private unnamed_addr constant [23 x i8] c"evtag_unmarshal_string\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @evtag_init() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define void @evtag_encode_int(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.not23.i = icmp eq i32 %1, 0
  br i1 %.not23.i, label %encode_int_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02025.i = phi i32 [ %i.n, %bb.d ], [ 1, %bb.a ] ; 5 uses
  %.02124.i = phi i32 [ %i.m, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.b = and i32 %.02025.i, 1
  %.not22.i = icmp eq i32 %i.b, 0
  %i.c = lshr i32 %.02025.i, 1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.021.tr.i = trunc i32 %.02124.i to i8          ; 2 uses
  br i1 %.not22.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = and i8 %i.f, -16
  %i.h = and i8 %.021.tr.i, 15
  %i.i = or disjoint i8 %i.g, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = and i8 %i.f, 15
  %i.k = shl i8 %.021.tr.i, 4
  %i.l = or disjoint i8 %i.j, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i8 [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  store i8 %.sink.i, ptr %i.e, align 1
  %i.m = lshr i32 %.02124.i, 4                    ; 2 uses
  %i.n = add nuw nsw i32 %.02025.i, 1             ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i8, ptr %i.a, align 1
  %i.o = and i8 %.pre.i, 15
  %i.p = icmp samesign ugt i32 %.02025.i, 1
  %.020.tr.i = trunc i32 %i.n to i8
  %i.q = shl i8 %.020.tr.i, 4
  %i.r = add i8 %i.q, -32
  %spec.select.i = select i1 %i.p, i8 %i.r, i8 0
  %i.s = or disjoint i8 %i.o, %spec.select.i
  %i.t = add nuw i32 %.02025.i, 2
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  br label %encode_int_internal.exit

encode_int_internal.exit:                         ; preds = %bb.a, %._crit_edge.i
  %.020.lcssa31.i = phi i64 [ 1, %bb.a ], [ %i.v, %._crit_edge.i ]
  %i.w = phi i8 [ 0, %bb.a ], [ %i.s, %._crit_edge.i ]
  store i8 %i.w, ptr %i.a, align 1
  %i.x = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.020.lcssa31.i) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @evbuffer_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @evtag_encode_int64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, i8 0, i64 9, i1 false)
  %.not23.i = icmp eq i64 %1, 0
  br i1 %.not23.i, label %encode_int64_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02025.i = phi i32 [ %i.n, %bb.d ], [ 1, %bb.a ] ; 5 uses
  %.02124.i = phi i64 [ %i.m, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.b = and i32 %.02025.i, 1
  %.not22.i = icmp eq i32 %i.b, 0
  %i.c = lshr i32 %.02025.i, 1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.021.tr.i = trunc i64 %.02124.i to i8          ; 2 uses
  br i1 %.not22.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = and i8 %i.f, -16
  %i.h = and i8 %.021.tr.i, 15
  %i.i = or disjoint i8 %i.g, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = and i8 %i.f, 15
  %i.k = shl i8 %.021.tr.i, 4
  %i.l = or disjoint i8 %i.j, %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i8 [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  store i8 %.sink.i, ptr %i.e, align 1
  %i.m = lshr i64 %.02124.i, 4                    ; 2 uses
  %i.n = add nuw nsw i32 %.02025.i, 1             ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i8, ptr %i.a, align 1
  %i.o = and i8 %.pre.i, 15
  %i.p = icmp samesign ugt i32 %.02025.i, 1
  %.020.tr.i = trunc i32 %i.n to i8
  %i.q = shl i8 %.020.tr.i, 4
  %i.r = add i8 %i.q, -32
  %spec.select.i = select i1 %i.p, i8 %i.r, i8 0
  %i.s = or disjoint i8 %i.o, %spec.select.i
  %i.t = add nuw i32 %.02025.i, 2
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  br label %encode_int64_internal.exit

encode_int64_internal.exit:                       ; preds = %bb.a, %._crit_edge.i
  %.020.lcssa31.i = phi i64 [ 1, %bb.a ], [ %i.v, %._crit_edge.i ]
  %i.w = phi i8 [ 0, %bb.a ], [ %i.s, %._crit_edge.i ]
  store i8 %i.w, ptr %i.a, align 1
  %i.x = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.020.lcssa31.i) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @evtag_encode_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 0, ptr %2, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.011 = phi i32 [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.b = trunc i32 %.011 to i8
  %i.c = and i8 %i.b, 127
  %i.d = lshr i32 %.011, 7                        ; 2 uses
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %masksel = select i1 %.not, i8 0, i8 -128
  %.0 = or disjoint i8 %masksel, %i.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %.0, ptr %i.e, align 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @evbuffer_add(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %indvars.iv.next) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @evtag_decode_tag(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @decode_tag_internal(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @decode_tag_internal(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @evbuffer_get_length(ptr noundef %1) #8 ; 6 uses
  %i.b = tail call i64 @llvm.umin.i64(i64 %i.a, i64 5)
  %i.c = tail call ptr @evbuffer_pullup(ptr noundef %1, i64 noundef %i.b) #8 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  %exitcond.peel.not = icmp eq i64 %i.a, 0
  %or.cond93 = or i1 %.not, %exitcond.peel.not
  br i1 %or.cond93, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.c, align 1               ; 2 uses
  %i.f = and i8 %i.e, 127
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %.not42.peel = icmp sgt i8 %i.e, -1
  br i1 %.not42.peel, label %.thread50, label %.preheader.peel.next

.preheader.peel.next:                             ; preds = %bb.b
  %exitcond.peel62.not = icmp eq i64 %i.a, 1
  br i1 %exitcond.peel62.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.peel.next
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.i = load i8, ptr %i.d, align 1               ; 2 uses
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 7
  %i.m = or disjoint i32 %i.l, %i.g               ; 2 uses
  %.not42.peel66 = icmp sgt i8 %i.i, -1
  br i1 %.not42.peel66, label %.thread50, label %.preheader.peel.next60

.preheader.peel.next60:                           ; preds = %bb.c
  %exitcond.peel69.not = icmp eq i64 %i.a, 2
  br i1 %exitcond.peel69.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %.preheader.peel.next60
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.o = load i8, ptr %i.h, align 1               ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = or disjoint i32 %i.r, %i.m               ; 2 uses
  %.not42.peel73 = icmp sgt i8 %i.o, -1
  br i1 %.not42.peel73, label %.thread50, label %.preheader.peel.next67

.preheader.peel.next67:                           ; preds = %bb.d
  %exitcond.peel76.not = icmp eq i64 %i.a, 3
  br i1 %exitcond.peel76.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %.preheader.peel.next67
  %i.t = load i8, ptr %i.n, align 1               ; 2 uses
  %i.u = and i8 %i.t, 127
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 21
  %i.x = or disjoint i32 %i.w, %i.s               ; 2 uses
  %.not42.peel80 = icmp sgt i8 %i.t, -1
  br i1 %.not42.peel80, label %.thread50, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %exitcond.not96 = icmp eq i64 %i.a, 4
  br i1 %exitcond.not96, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.z = load i8, ptr %i.y, align 1               ; 3 uses
  %i.aa = and i8 %i.z, 112
  %.not41 = icmp eq i8 %i.aa, 0
  br i1 %.not41, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.ab = and i8 %i.z, 15
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw i32 %i.ac, 28
  %i.ae = or disjoint i32 %i.ad, %i.x
  %.not42 = icmp sgt i8 %i.z, -1
  br i1 %.not42, label %.thread50, label %.thread, !llvm.loop !9

.thread50:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa59 = phi i32 [ %i.x, %bb.e ], [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ %i.s, %bb.d ], [ %i.ae, %bb.f ]
  %.lcssa58 = phi i64 [ 4, %bb.e ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 5, %bb.f ] ; 2 uses
  %.not44 = icmp eq i32 %2, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread50
  %i.af = tail call i32 @evbuffer_drain(ptr noundef %1, i64 noundef %.lcssa58) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread50
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.lcssa59, ptr %0, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = trunc nuw nsw i64 %.lcssa58 to i32
  br label %.thread

.thread:                                          ; preds = %bb.f, %.lr.ph, %.preheader.preheader, %.preheader.peel.next, %.preheader.peel.next60, %.preheader.peel.next67, %bb.a, %bb.j
  %.237 = phi i32 [ -1, %bb.a ], [ %i.ag, %bb.j ], [ -1, %.preheader.peel.next ], [ -1, %.preheader.peel.next60 ], [ -1, %.preheader.peel.next67 ], [ -1, %.preheader.preheader ], [ -1, %.lr.ph ], [ -1, %bb.f ]
  ret i32 %.237
}

; Function Attrs: nounwind uwtable
define void @evtag_marshal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i32 0, ptr %4, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.011.i = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.c = trunc i32 %.011.i to i8
  %i.d = and i8 %i.c, 127
  %i.e = lshr i32 %.011.i, 7                      ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %.0.i, ptr %i.f, align 1
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %evtag_encode_tag.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @evbuffer_add(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %indvars.iv.next.i) #8 ; 0 uses
  br label %evtag_encode_tag.exit

evtag_encode_tag.exit:                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.not23.i.i = icmp eq i32 %3, 0
  br i1 %.not23.i.i, label %evtag_encode_int.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %evtag_encode_tag.exit, %bb.g
  %.02025.i.i = phi i32 [ %i.t, %bb.g ], [ 1, %evtag_encode_tag.exit ] ; 5 uses
  %.02124.i.i = phi i32 [ %i.s, %bb.g ], [ %3, %evtag_encode_tag.exit ] ; 2 uses
  %i.h = and i32 %.02025.i.i, 1
  %.not22.i.i = icmp eq i32 %i.h, 0
  %i.i = lshr i32 %.02025.i.i, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %.021.tr.i.i = trunc i32 %.02124.i.i to i8      ; 2 uses
  br i1 %.not22.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.m = and i8 %i.l, -16
  %i.n = and i8 %.021.tr.i.i, 15
  %i.o = or disjoint i8 %i.m, %i.n
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.p = and i8 %i.l, 15
  %i.q = shl i8 %.021.tr.i.i, 4
  %i.r = or disjoint i8 %i.p, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i8 [ %i.r, %bb.f ], [ %i.o, %bb.e ]
  store i8 %.sink.i.i, ptr %i.k, align 1
  %i.s = lshr i32 %.02124.i.i, 4                  ; 2 uses
  %i.t = add nuw nsw i32 %.02025.i.i, 1           ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load i8, ptr %i.a, align 1
  %i.u = and i8 %.pre.i.i, 15
  %i.v = icmp samesign ugt i32 %.02025.i.i, 1
  %.020.tr.i.i = trunc i32 %i.t to i8
  %i.w = shl i8 %.020.tr.i.i, 4
  %i.x = add i8 %i.w, -32
  %spec.select.i.i = select i1 %i.v, i8 %i.x, i8 0
  %i.y = or disjoint i8 %i.u, %spec.select.i.i
  %i.z = add nuw i32 %.02025.i.i, 2
  %i.aa = lshr i32 %i.z, 1
  %i.ab = zext nneg i32 %i.aa to i64
  br label %evtag_encode_int.exit

evtag_encode_int.exit:                            ; preds = %evtag_encode_tag.exit, %._crit_edge.i.i
  %.020.lcssa31.i.i = phi i64 [ 1, %evtag_encode_tag.exit ], [ %i.ab, %._crit_edge.i.i ]
  %i.ac = phi i8 [ 0, %evtag_encode_tag.exit ], [ %i.y, %._crit_edge.i.i ]
  store i8 %i.ac, ptr %i.a, align 1
  %i.ad = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.020.lcssa31.i.i) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ae = zext i32 %3 to i64
  %i.af = call i32 @evbuffer_add(ptr noundef %0, ptr noundef %2, i64 noundef %i.ae) #8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @evtag_marshal_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i32 0, ptr %3, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.011.i = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.c = trunc i32 %.011.i to i8
  %i.d = and i8 %i.c, 127
  %i.e = lshr i32 %.011.i, 7                      ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %.0.i, ptr %i.f, align 1
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %evtag_encode_tag.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @evbuffer_add(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %indvars.iv.next.i) #8 ; 0 uses
  br label %evtag_encode_tag.exit

evtag_encode_tag.exit:                            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.h = call i64 @evbuffer_get_length(ptr noundef %2) #8
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.not23.i.i = icmp eq i32 %i.i, 0
  br i1 %.not23.i.i, label %evtag_encode_int.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %evtag_encode_tag.exit, %bb.g
  %.02025.i.i = phi i32 [ %i.v, %bb.g ], [ 1, %evtag_encode_tag.exit ] ; 5 uses
  %.02124.i.i = phi i32 [ %i.u, %bb.g ], [ %i.i, %evtag_encode_tag.exit ] ; 2 uses
  %i.j = and i32 %.02025.i.i, 1
  %.not22.i.i = icmp eq i32 %i.j, 0
  %i.k = lshr i32 %.02025.i.i, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.021.tr.i.i = trunc i32 %.02124.i.i to i8      ; 2 uses
  br i1 %.not22.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.o = and i8 %i.n, -16
  %i.p = and i8 %.021.tr.i.i, 15
  %i.q = or disjoint i8 %i.o, %i.p
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.r = and i8 %i.n, 15
  %i.s = shl i8 %.021.tr.i.i, 4
  %i.t = or disjoint i8 %i.r, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i8 [ %i.t, %bb.f ], [ %i.q, %bb.e ]
  store i8 %.sink.i.i, ptr %i.m, align 1
  %i.u = lshr i32 %.02124.i.i, 4                  ; 2 uses
  %i.v = add nuw nsw i32 %.02025.i.i, 1           ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load i8, ptr %i.a, align 1
  %i.w = and i8 %.pre.i.i, 15
  %i.x = icmp samesign ugt i32 %.02025.i.i, 1
  %.020.tr.i.i = trunc i32 %i.v to i8
  %i.y = shl i8 %.020.tr.i.i, 4
  %i.z = add i8 %i.y, -32
  %spec.select.i.i = select i1 %i.x, i8 %i.z, i8 0
  %i.aa = or disjoint i8 %i.w, %spec.select.i.i
  %i.ab = add nuw i32 %.02025.i.i, 2
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  br label %evtag_encode_int.exit

evtag_encode_int.exit:                            ; preds = %evtag_encode_tag.exit, %._crit_edge.i.i
  %.020.lcssa31.i.i = phi i64 [ 1, %evtag_encode_tag.exit ], [ %i.ad, %._crit_edge.i.i ]
  %i.ae = phi i8 [ 0, %evtag_encode_tag.exit ], [ %i.aa, %._crit_edge.i.i ]
  store i8 %i.ae, ptr %i.a, align 1
  %i.af = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.020.lcssa31.i.i) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ag = call i32 @evbuffer_add_buffer(ptr noundef %0, ptr noundef %2) #8 ; 0 uses
  ret void
}

declare i64 @evbuffer_get_length(ptr noundef) local_unnamed_addr #3

declare i32 @evbuffer_add_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @evtag_marshal_int(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 10 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  %i.c = alloca [5 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.c, i8 0, i64 5, i1 false)
  %.not23.i = icmp eq i32 %2, 0
  br i1 %.not23.i, label %encode_int_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02025.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.a ] ; 5 uses
  %.02124.i = phi i32 [ %i.o, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.d = and i32 %.02025.i, 1
  %.not22.i = icmp eq i32 %i.d, 0
  %i.e = lshr i32 %.02025.i, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.021.tr.i = trunc i32 %.02124.i to i8          ; 2 uses
  br i1 %.not22.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = and i8 %i.h, -16
  %i.j = and i8 %.021.tr.i, 15
  %i.k = or disjoint i8 %i.i, %i.j
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = and i8 %i.h, 15
  %i.m = shl i8 %.021.tr.i, 4
  %i.n = or disjoint i8 %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i8 [ %i.n, %bb.c ], [ %i.k, %bb.b ]
  store i8 %.sink.i, ptr %i.g, align 1
  %i.o = lshr i32 %.02124.i, 4                    ; 2 uses
  %i.p = add nuw nsw i32 %.02025.i, 1             ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i8, ptr %i.c, align 1
  %i.q = and i8 %.pre.i, 15
  %i.r = icmp samesign ugt i32 %.02025.i, 1
  %.020.tr.i = trunc i32 %i.p to i8
  %i.s = shl i8 %.020.tr.i, 4
  %i.t = add i8 %i.s, -32
  %spec.select.i = select i1 %i.r, i8 %i.t, i8 0
  %i.u = or disjoint i8 %i.q, %spec.select.i
  %i.v = add nuw i32 %.02025.i, 2
  %i.w = lshr i32 %i.v, 1
  br label %encode_int_internal.exit

encode_int_internal.exit:                         ; preds = %bb.a, %._crit_edge.i
  %.020.lcssa31.i = phi i32 [ 1, %bb.a ], [ %i.w, %._crit_edge.i ] ; 4 uses
  %i.x = phi i8 [ 0, %bb.a ], [ %i.u, %._crit_edge.i ]
  store i8 %i.x, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i32 0, ptr %3, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %encode_int_internal.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %encode_int_internal.exit ] ; 2 uses
  %.011.i = phi i32 [ %i.aa, %bb.e ], [ %1, %encode_int_internal.exit ] ; 2 uses
  %i.y = trunc i32 %.011.i to i8
  %i.z = and i8 %i.y, 127
  %i.aa = lshr i32 %.011.i, 7                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.aa, 0                 ; 2 uses
  %masksel.i = select i1 %.not.i6, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %.0.i, ptr %i.ab, align 1
  br i1 %.not.i6, label %bb.f, label %bb.e, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %.lr.ph.i.i.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 @evbuffer_add(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %indvars.iv.next.i) #8 ; 0 uses
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.021.tr.i.i = trunc i32 %.020.lcssa31.i to i8
  %i.ad = load i8, ptr %i.a, align 1
  %i.ae = and i8 %i.ad, -16
  %i.af = and i8 %.021.tr.i.i, 15
  %i.ag = or disjoint i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.a, align 1
  %i.ah = lshr i32 %.020.lcssa31.i, 4             ; 2 uses
  %.not.i.i.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.not, label %evtag_encode_int.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.021.tr.i.i.1 = trunc i32 %i.ah to i8
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 15
  %i.al = shl i8 %.021.tr.i.i.1, 4
  %i.am = or disjoint i8 %i.ak, %i.al
  store i8 %i.am, ptr %i.ai, align 1
  %i.an = lshr i32 %.020.lcssa31.i, 8             ; 2 uses
  %.not.i.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.1, label %evtag_encode_int.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.021.tr.i.i.2 = trunc i32 %i.an to i8
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, -16
  %i.ar = and i8 %.021.tr.i.i.2, 15
  %i.as = or disjoint i8 %i.aq, %i.ar
  store i8 %i.as, ptr %i.ao, align 1
  br label %evtag_encode_int.exit

evtag_encode_int.exit:                            ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i.preheader
  %spec.select.i.i = phi i8 [ 0, %.lr.ph.i.i.preheader ], [ 16, %.lr.ph.i.i.1 ], [ 32, %.lr.ph.i.i.2 ]
  %.02025.i.i.lcssa = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.2 ]
  %.pre.i.i = load i8, ptr %i.a, align 1
  %i.at = and i8 %.pre.i.i, 15
  %i.au = or disjoint i8 %i.at, %spec.select.i.i
  store i8 %i.au, ptr %i.a, align 1
  %i.av = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.02025.i.i.lcssa) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.aw = zext nneg i32 %.020.lcssa31.i to i64
  %i.ax = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.aw) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @evtag_marshal_int64(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 10 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  %i.c = alloca [9 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.c, i8 0, i64 9, i1 false)
  %.not23.i = icmp eq i64 %2, 0
  br i1 %.not23.i, label %encode_int64_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02025.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.a ] ; 5 uses
  %.02124.i = phi i64 [ %i.o, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.d = and i32 %.02025.i, 1
  %.not22.i = icmp eq i32 %i.d, 0
  %i.e = lshr i32 %.02025.i, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.021.tr.i = trunc i64 %.02124.i to i8          ; 2 uses
  br i1 %.not22.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = and i8 %i.h, -16
  %i.j = and i8 %.021.tr.i, 15
  %i.k = or disjoint i8 %i.i, %i.j
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = and i8 %i.h, 15
  %i.m = shl i8 %.021.tr.i, 4
  %i.n = or disjoint i8 %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i8 [ %i.n, %bb.c ], [ %i.k, %bb.b ]
  store i8 %.sink.i, ptr %i.g, align 1
  %i.o = lshr i64 %.02124.i, 4                    ; 2 uses
  %i.p = add nuw nsw i32 %.02025.i, 1             ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i8, ptr %i.c, align 1
  %i.q = and i8 %.pre.i, 15
  %i.r = icmp samesign ugt i32 %.02025.i, 1
  %.020.tr.i = trunc i32 %i.p to i8
  %i.s = shl i8 %.020.tr.i, 4
  %i.t = add i8 %i.s, -32
  %spec.select.i = select i1 %i.r, i8 %i.t, i8 0
  %i.u = or disjoint i8 %i.q, %spec.select.i
  %i.v = add nuw i32 %.02025.i, 2
  %i.w = lshr i32 %i.v, 1
  br label %encode_int64_internal.exit

encode_int64_internal.exit:                       ; preds = %bb.a, %._crit_edge.i
  %.020.lcssa31.i = phi i32 [ 1, %bb.a ], [ %i.w, %._crit_edge.i ] ; 4 uses
  %i.x = phi i8 [ 0, %bb.a ], [ %i.u, %._crit_edge.i ]
  store i8 %i.x, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i32 0, ptr %3, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %encode_int64_internal.exit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %encode_int64_internal.exit ] ; 2 uses
  %.011.i = phi i32 [ %i.aa, %bb.e ], [ %1, %encode_int64_internal.exit ] ; 2 uses
  %i.y = trunc i32 %.011.i to i8
  %i.z = and i8 %i.y, 127
  %i.aa = lshr i32 %.011.i, 7                     ; 2 uses
  %.not.i6 = icmp eq i32 %i.aa, 0                 ; 2 uses
  %masksel.i = select i1 %.not.i6, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %.0.i, ptr %i.ab, align 1
  br i1 %.not.i6, label %bb.f, label %bb.e, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %.lr.ph.i.i.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 @evbuffer_add(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %indvars.iv.next.i) #8 ; 0 uses
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.021.tr.i.i = trunc i32 %.020.lcssa31.i to i8
  %i.ad = load i8, ptr %i.a, align 1
  %i.ae = and i8 %i.ad, -16
  %i.af = and i8 %.021.tr.i.i, 15
  %i.ag = or disjoint i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.a, align 1
  %i.ah = lshr i32 %.020.lcssa31.i, 4             ; 2 uses
  %.not.i.i.not = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.not, label %evtag_encode_int.exit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.021.tr.i.i.1 = trunc i32 %i.ah to i8
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = and i8 %i.aj, 15
  %i.al = shl i8 %.021.tr.i.i.1, 4
  %i.am = or disjoint i8 %i.ak, %i.al
  store i8 %i.am, ptr %i.ai, align 1
  %i.an = lshr i32 %.020.lcssa31.i, 8             ; 2 uses
  %.not.i.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.1, label %evtag_encode_int.exit, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.021.tr.i.i.2 = trunc i32 %i.an to i8
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, -16
  %i.ar = and i8 %.021.tr.i.i.2, 15
  %i.as = or disjoint i8 %i.aq, %i.ar
  store i8 %i.as, ptr %i.ao, align 1
  br label %evtag_encode_int.exit

evtag_encode_int.exit:                            ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i.preheader
  %spec.select.i.i = phi i8 [ 0, %.lr.ph.i.i.preheader ], [ 16, %.lr.ph.i.i.1 ], [ 32, %.lr.ph.i.i.2 ]
  %.02025.i.i.lcssa = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.2 ]
  %.pre.i.i = load i8, ptr %i.a, align 1
  %i.at = and i8 %.pre.i.i, 15
  %i.au = or disjoint i8 %i.at, %spec.select.i.i
  store i8 %i.au, ptr %i.a, align 1
  %i.av = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.02025.i.i.lcssa) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.aw = zext nneg i32 %.020.lcssa31.i to i64
  %i.ax = call i32 @evbuffer_add(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %i.aw) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @evtag_marshal_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9
  %i.b = trunc i64 %i.a to i32
  tail call void @evtag_marshal(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @evtag_marshal_timeval(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i64, ptr %2, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %.not23.i = icmp eq i32 %i.c, 0
  br i1 %.not23.i, label %encode_int_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02025.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.a ] ; 5 uses
  %.02124.i = phi i32 [ %i.o, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = and i32 %.02025.i, 1
  %.not22.i = icmp eq i32 %i.d, 0
  %i.e = lshr i32 %.02025.i, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.021.tr.i = trunc i32 %.02124.i to i8          ; 2 uses
  br i1 %.not22.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = and i8 %i.h, -16
  %i.j = and i8 %.021.tr.i, 15
  %i.k = or disjoint i8 %i.i, %i.j
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = and i8 %i.h, 15
  %i.m = shl i8 %.021.tr.i, 4
  %i.n = or disjoint i8 %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i8 [ %i.n, %bb.c ], [ %i.k, %bb.b ]
  store i8 %.sink.i, ptr %i.g, align 1
  %i.o = lshr i32 %.02124.i, 4                    ; 2 uses
  %i.p = add nuw nsw i32 %.02025.i, 1             ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i8, ptr %i.a, align 1
  %i.q = and i8 %.pre.i, 15
  %i.r = icmp samesign ugt i32 %.02025.i, 1
  %.020.tr.i = trunc i32 %i.p to i8
  %i.s = shl i8 %.020.tr.i, 4
  %i.t = add i8 %i.s, -32
  %spec.select.i = select i1 %i.r, i8 %i.t, i8 0
  %i.u = or disjoint i8 %i.q, %spec.select.i
  %i.v = add nuw i32 %.02025.i, 2
  %i.w = lshr i32 %i.v, 1
  br label %encode_int_internal.exit

encode_int_internal.exit:                         ; preds = %bb.a, %._crit_edge.i
  %.020.lcssa31.i = phi i32 [ 1, %bb.a ], [ %i.w, %._crit_edge.i ] ; 2 uses
  %i.x = phi i8 [ 0, %bb.a ], [ %i.u, %._crit_edge.i ]
  store i8 %i.x, ptr %i.a, align 1
  %i.y = zext nneg i32 %.020.lcssa31.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.z, i8 0, i64 5, i1 false)
  %.not23.i6 = icmp eq i32 %i.ac, 0
  br i1 %.not23.i6, label %encode_int_internal.exit19, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %encode_int_internal.exit, %bb.g
  %.02025.i8 = phi i32 [ %i.ap, %bb.g ], [ 1, %encode_int_internal.exit ] ; 5 uses
  %.02124.i9 = phi i32 [ %i.ao, %bb.g ], [ %i.ac, %encode_int_internal.exit ] ; 2 uses
  %i.ad = and i32 %.02025.i8, 1
  %.not22.i10 = icmp eq i32 %i.ad, 0
  %i.ae = lshr i32 %.02025.i8, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %.021.tr.i11 = trunc i32 %.02124.i9 to i8       ; 2 uses
  br i1 %.not22.i10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i7
  %i.ai = and i8 %i.ah, -16
  %i.aj = and i8 %.021.tr.i11, 15
  %i.ak = or disjoint i8 %i.ai, %i.aj
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i7
  %i.al = and i8 %i.ah, 15
  %i.am = shl i8 %.021.tr.i11, 4
  %i.an = or disjoint i8 %i.al, %i.am
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i12 = phi i8 [ %i.an, %bb.f ], [ %i.ak, %bb.e ]
  store i8 %.sink.i12, ptr %i.ag, align 1
  %i.ao = lshr i32 %.02124.i9, 4                  ; 2 uses
  %i.ap = add nuw nsw i32 %.02025.i8, 1           ; 2 uses
  %.not.i13 = icmp eq i32 %i.ao, 0
  br i1 %.not.i13, label %._crit_edge.i14, label %.lr.ph.i7, !llvm.loop !0

._crit_edge.i14:                                  ; preds = %bb.g
  %.pre.i15 = load i8, ptr %i.z, align 1
  %i.aq = and i8 %.pre.i15, 15
  %i.ar = icmp samesign ugt i32 %.02025.i8, 1
  %.020.tr.i16 = trunc i32 %i.ap to i8
  %i.as = shl i8 %.020.tr.i16, 4
  %i.at = add i8 %i.as, -32
  %spec.select.i17 = select i1 %i.ar, i8 %i.at, i8 0
  %i.au = or disjoint i8 %i.aq, %spec.select.i17
  %i.av = add nuw i32 %.02025.i8, 2
  %i.aw = lshr i32 %i.av, 1
  br label %encode_int_internal.exit19
end_hunk_0
