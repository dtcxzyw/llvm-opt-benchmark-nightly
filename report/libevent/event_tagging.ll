Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event_tagging?download=true
inline.NumInlined: 27
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@evtag_encode_int:bb.a

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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
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
  %i.ab = zext i8 %i.z to i32
  %i.ac = shl i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.x
  %.not42 = icmp sgt i8 %i.z, -1
  br i1 %.not42, label %.thread50, label %.thread, !llvm.loop !9

.thread50:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.lcssa59 = phi i32 [ %i.x, %bb.e ], [ %i.g, %bb.b ], [ %i.m, %bb.c ], [ %i.s, %bb.d ], [ %i.ad, %bb.f ]
  %.lcssa58 = phi i64 [ 4, %bb.e ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 5, %bb.f ] ; 2 uses
  %.not44 = icmp eq i32 %2, 0
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread50
  %i.ae = tail call i32 @evbuffer_drain(ptr noundef %1, i64 noundef %.lcssa58) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread50
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.lcssa59, ptr %0, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = trunc nuw nsw i64 %.lcssa58 to i32
  br label %.thread

.thread:                                          ; preds = %bb.f, %.lr.ph, %.preheader.preheader, %.preheader.peel.next, %.preheader.peel.next60, %.preheader.peel.next67, %bb.a, %bb.j
  %.237 = phi i32 [ -1, %bb.a ], [ %i.af, %bb.j ], [ -1, %.preheader.peel.next ], [ -1, %.preheader.peel.next60 ], [ -1, %.preheader.peel.next67 ], [ -1, %.preheader.preheader ], [ -1, %.lr.ph ], [ -1, %bb.f ]
  ret i32 %.237
}

; Function Attrs: nounwind uwtable
define void @evtag_marshal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, i8 0, i64 5, i1 false)
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
end_hunk_0
