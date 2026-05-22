inline.NumInlined: 268
inline.NumDeleted: 134
begin_hunk_0_@_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv:bb.a

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN6google8protobuf2io16CodedInputStream9PushLimitEi(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i = sub i64 %i.g, %i.f
  %.neg4.i = trunc i64 %.neg3.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %.neg2.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i, %.neg4.i               ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = icmp sgt i32 %1, -1
  %i.n = sub nsw i32 2147483647, %i.j
  %.not = icmp samesign ule i32 %1, %i.n
  %or.cond.not = select i1 %i.m, i1 %.not, i1 false, !prof !24
  %i.o = sub nsw i32 %i.l, %i.j
  %i.p = icmp slt i32 %1, %i.o
  %i.q = select i1 %or.cond.not, i1 %i.p, i1 false, !prof !24
  br i1 %i.q, label %bb.b, label %bb.d, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %i.j, %1                     ; 2 uses
  store i32 %i.r, ptr %i.k, align 8, !tbaa !23
  %i.s = sext i32 %i.i to i64
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !3
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.r) ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.b
  br i1 %i.x, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.y = sub nsw i32 %i.b, %i.w                   ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %i.h, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit, %bb.a
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io16CodedInputStream8PopLimitEi(ptr noundef nonnull align 8 captures(none) dereferenceable(80) initializes((36, 37), (40, 44)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %1) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.l, %i.j                   ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p
  store ptr %i.q, ptr %i.d, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  store i32 %.sink.i, ptr %i.b, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.r, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i64 @_ZN6google8protobuf2io16CodedInputStream35IncrementRecursionDepthAndPushLimitEi(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i.i = sub i64 %i.g, %i.f
  %.neg4.i.i = trunc i64 %.neg3.i.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %.neg2.i.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i.i, %.neg4.i.i           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = icmp sgt i32 %1, -1
  %i.n = sub nsw i32 2147483647, %i.j
  %.not.i = icmp samesign ule i32 %1, %i.n
  %or.cond.not.i = select i1 %i.m, i1 %.not.i, i1 false, !prof !24
  %i.o = sub nsw i32 %i.l, %i.j
  %i.p = icmp slt i32 %1, %i.o
  %i.q = select i1 %or.cond.not.i, i1 %i.p, i1 false, !prof !24
  br i1 %i.q, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %i.j, %1                     ; 2 uses
  store i32 %i.r, ptr %i.k, align 8, !tbaa !23
  %i.s = sext i32 %i.i to i64
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 %i.s ; 2 uses
  store ptr %i.t, ptr %i.c, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !3
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.r) ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.b
  br i1 %i.x, label %bb.c, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.y = sub nsw i32 %i.b, %i.w                   ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.aa
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i: ; preds = %bb.c, %bb.b
  %.sink.i.i = phi i32 [ %i.y, %bb.c ], [ 0, %bb.b ]
  store i32 %.sink.i.i, ptr %i.h, align 4, !tbaa !17
  br label %_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit

_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit: ; preds = %bb.a, %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !27
  %.sroa.2.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf2io16CodedInputStream22ReadLengthAndPushLimitEv(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = icmp ult ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !28    ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  br i1 %i.g, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !16
  br label %bb.c

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit: ; preds = %bb.a, %bb.b
  %.08.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.i = tail call noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i)
  %spec.select4 = tail call i64 @llvm.smax.i64(i64 %i.i, i64 0)
  %spec.select = trunc nuw i64 %spec.select4 to i32
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !15
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread
  %i.j = phi ptr [ %.pre4, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit ], [ %i.h, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ]
  %i.k = phi ptr [ %.pre, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit ], [ %i.c, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ] ; 2 uses
  %i.l = phi i32 [ %spec.select, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit ], [ %i.f, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22   ; 3 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.j to i64
  %.neg3.i.i = sub i64 %i.p, %i.o
  %.neg4.i.i = trunc i64 %.neg3.i.i to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 2 uses
  %.neg2.i.i = sub i32 %i.n, %i.r
  %i.s = add i32 %.neg2.i.i, %.neg4.i.i           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !23   ; 2 uses
  %i.v = icmp sgt i32 %i.l, -1
  %i.w = sub nsw i32 2147483647, %i.s
  %.not.i = icmp samesign ule i32 %i.l, %i.w
  %or.cond.not.i = select i1 %i.v, i1 %.not.i, i1 false, !prof !24
  %i.x = sub nsw i32 %i.u, %i.s
  %i.y = icmp slt i32 %i.l, %i.x
  %i.z = select i1 %or.cond.not.i, i1 %i.y, i1 false, !prof !24
  br i1 %i.z, label %bb.d, label %_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.aa = add nsw i32 %i.s, %i.l                  ; 2 uses
  store i32 %i.aa, ptr %i.t, align 8, !tbaa !23
  %i.ab = sext i32 %i.r to i64
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %i.ab ; 2 uses
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.aa) ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.n
  br i1 %i.ag, label %bb.e, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ah = sub nsw i32 %i.n, %i.af                 ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.aj
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i = phi i32 [ %i.ah, %bb.e ], [ 0, %bb.d ]
  store i32 %.sink.i.i, ptr %i.q, align 4, !tbaa !17
  br label %_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit

_ZN6google8protobuf2io16CodedInputStream9PushLimitEi.exit: ; preds = %bb.c, %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit.i
  ret i32 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream34DecrementRecursionDepthAndPopLimitEi(ptr noundef nonnull align 8 captures(none) dereferenceable(80) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !29, !noundef !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i32 %i.n, %i.l                   ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 %i.r
  store ptr %i.s, ptr %i.f, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit

_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.t = trunc nuw i8 %i.b to i1
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !17
  store i8 0, ptr %i.a, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !27
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream37CheckEntireMessageConsumedAndPopLimitEi(ptr noundef nonnull align 8 captures(none) dereferenceable(80) initializes((40, 44)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !26, !range !29, !noundef !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = sext i32 %i.e to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h ; 2 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i32 %i.n, %i.l                   ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 %i.r
  store ptr %i.s, ptr %i.f, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit

_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.t = trunc nuw i8 %i.b to i1
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !17
  store i8 0, ptr %i.a, align 4, !tbaa !26
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp eq i32 %i.b, 2147483647
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = load ptr, ptr %0, align 8, !tbaa !16
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %.neg3.i.neg = sub i64 %i.i, %i.j
  %.neg4.i.neg = trunc i64 %.neg3.i.neg to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %.neg2.i.neg = sub i32 %i.b, %i.e
  %.neg = add i32 %.neg2.i.neg, %i.l
  %i.m = add i32 %.neg, %.neg4.i.neg
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io16CodedInputStream18SetTotalBytesLimitEi(ptr noundef nonnull align 8 captures(none) dereferenceable(80) initializes((48, 52)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !16
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i = sub i64 %i.g, %i.f
  %.neg4.i = trunc i64 %.neg3.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %.neg2.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i, %.neg4.i
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %1) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.speculated, ptr %i.k, align 8, !tbaa !31
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 2 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !3
  %i.p = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated, i32 %i.o) ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.b
  br i1 %i.q, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.r = sub nsw i32 %i.b, %i.p                   ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm7EEEPKhS5_Pm:bb.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 35
  %op.rdx = add nsw i64 %i.z, -4432676798592
  %op.rdx15 = add nuw nsw i64 %i.v, %i.r
  %op.rdx16 = add nuw nsw i64 %i.n, %i.j
  %op.rdx17 = or disjoint i64 %i.d, %i.f
  %op.rdx18 = add nsw i64 %op.rdx, %op.rdx15
  %op.rdx19 = add nuw nsw i64 %op.rdx16, %op.rdx17
  %op.rdx20 = add nsw i64 %op.rdx18, %op.rdx19
  store i64 %op.rdx20, ptr %1, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  ret ptr %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm8EEEPKhS5_Pm(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 49
  %i.e = load i8, ptr %0, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 42
  %op.rdx = add nsw i64 %i.ad, -567382630219904
  %op.rdx15 = add nuw nsw i64 %i.z, %i.v
  %op.rdx16 = add nuw nsw i64 %i.r, %i.n
  %op.rdx17 = or disjoint i64 %i.j, %i.d
  %op.rdx18 = add nsw i64 %op.rdx, %op.rdx15
  %op.rdx19 = add nuw nsw i64 %op.rdx16, %op.rdx17
  %op.rdx20 = add nsw i64 %op.rdx18, %op.rdx19
  %op.rdx21 = add nsw i64 %op.rdx20, %i.f
  store i64 %op.rdx21, ptr %1, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm9EEEPKhS5_Pm(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw i64 %i.c, 56
  %i.e = load i8, ptr %0, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 49
  %op.rdx = add nsw i64 %i.ah, -72624976668147840
  %op.rdx15 = add nuw nsw i64 %i.ad, %i.z
  %op.rdx16 = add nuw nsw i64 %i.v, %i.r
  %op.rdx17 = add nuw nsw i64 %i.n, %i.j
  %op.rdx18 = or disjoint i64 %i.d, %i.f
  %op.rdx19 = add nsw i64 %op.rdx, %op.rdx15
  %op.rdx20 = add nuw nsw i64 %op.rdx16, %op.rdx17
  %op.rdx21 = add nsw i64 %op.rdx19, %op.rdx20
  %op.rdx22 = add i64 %op.rdx21, %op.rdx18
  store i64 %op.rdx22, ptr %1, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  ret ptr %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN6google8protobuf2io12_GLOBAL__N_123DecodeVarint64KnownSizeILm10EEEPKhS5_Pm(ptr noundef readonly captures(ret: address, provenance) %0, ptr noundef nonnull writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = zext i8 %i.b to i64
  %i.d = shl i64 %i.c, 63
  %i.e = load i8, ptr %0, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 35
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 42
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 49
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw i64 %i.ak, 56
  %i.am = xor i64 %i.al, -9223372036854775808
  %op.rdx = add nsw i64 %i.ah, -72624976668147840
  %op.rdx15 = add nuw nsw i64 %i.ad, %i.z
  %op.rdx16 = add nuw nsw i64 %i.v, %i.r
  %op.rdx17 = add nuw nsw i64 %i.n, %i.j
  %op.rdx18 = add i64 %i.d, %i.am
  %op.rdx19 = add nsw i64 %op.rdx, %op.rdx15
  %op.rdx20 = add nuw nsw i64 %op.rdx16, %op.rdx17
  %op.rdx21 = or disjoint i64 %op.rdx18, %i.f
  %op.rdx22 = add nsw i64 %op.rdx19, %op.rdx20
  %op.rdx23 = add i64 %op.rdx22, %op.rdx21
  store i64 %op.rdx23, ptr %1, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10
  ret ptr %i.an
}

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !11, i64 16}
!8 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !9, i64 0, !9, i64 8, !11, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !12, i64 36, !12, i64 37, !12, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !13, i64 64, !14, i64 72}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!15 = !{!8, !9, i64 8}
!16 = !{!8, !9, i64 0}
!17 = !{!8, !4, i64 44}
!18 = !{!8, !4, i64 28}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{ptr @_ZN6google8protobuf2io16CodedInputStream28BackUpInputToCurrentPositionEv}
!22 = !{!8, !4, i64 24}
!23 = !{!8, !4, i64 40}
!24 = !{!"branch_weights", i32 4000000, i32 4001}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!8, !12, i64 36}
!27 = !{!8, !4, i64 52}
!28 = !{!5, !5, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!8, !4, i64 48}
!32 = !{!10, !10, i64 0}
!33 = distinct !{null}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = distinct !{!37, !35}
!38 = !{!39, !9, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !41, i64 8, !5, i64 16}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!41 = !{!"long", !5, i64 0}
!42 = !{!39, !41, i64 8}
!43 = distinct !{!43, !35}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !5, i64 0}
!46 = !{!41, !41, i64 0}
!47 = distinct !{!47, !35}
!48 = !{!49, !50, i64 48}
!49 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !9, i64 0, !9, i64 8, !5, i64 16, !50, i64 48, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59}
!50 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !10, i64 0}
!51 = !{!49, !12, i64 57}
!52 = !{!49, !9, i64 0}
!53 = !{!49, !9, i64 8}
!54 = !{!49, !12, i64 56}
!55 = distinct !{null}
!56 = distinct !{!56, !35}
!57 = distinct !{ptr @_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh, null}
!58 = !{!9, !9, i64 0}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = distinct !{ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh, null}
!63 = distinct !{!63, !35}
!64 = !{!65, !41, i64 0}
!65 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !41, i64 0, !66, i64 8, !5, i64 12, !5, i64 13}
!66 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !67, i64 0}
!67 = !{!"_ZTSSt6atomicIiE", !68, i64 0}
!68 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv: argument 0"}
!71 = distinct !{!71, !"_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv: argument 0"}
!74 = distinct !{!74, !"_ZNK4absl12lts_202505124Cord11chunk_beginEv"}
!75 = !{!73, !70}
!76 = !{!77, !4, i64 0}
!77 = !{!"_ZTSN4absl12lts_2025051213cord_internal21CordRepBtreeNavigatorE", !4, i64 0, !5, i64 4, !5, i64 16}
!78 = !{!79, !41, i64 24}
!79 = !{!"_ZTSN4absl12lts_202505124Cord13ChunkIteratorE", !80, i64 0, !81, i64 16, !41, i64 24, !82, i64 32}
!80 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !41, i64 0, !9, i64 8}
!81 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal7CordRepE", !10, i64 0}
!82 = !{!"_ZTSN4absl12lts_2025051213cord_internal18CordRepBtreeReaderE", !41, i64 0, !77, i64 8}
!83 = !{!65, !5, i64 12}
!84 = !{!85, !81, i64 16}
!85 = !{!"_ZTSN4absl12lts_2025051213cord_internal10CordRepCrcE", !65, i64 0, !81, i64 16, !86, i64 24}
!86 = !{!"_ZTSN4absl12lts_2025051212crc_internal12CrcCordStateE", !87, i64 0}
!87 = !{!"p1 _ZTSN4absl12lts_2025051212crc_internal12CrcCordState13RefcountedRepE", !10, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal12CordRepBtreeE", !10, i64 0}
!90 = !{!81, !81, i64 0}
!91 = distinct !{!91, !35}
!92 = !{!82, !41, i64 0}
!93 = !{!94, !41, i64 16}
!94 = !{!"_ZTSN4absl12lts_2025051213cord_internal16CordRepSubstringE", !65, i64 0, !41, i64 16, !81, i64 24}
!95 = !{!94, !81, i64 24}
!96 = !{!97, !9, i64 16}
!97 = !{!"_ZTSN4absl12lts_2025051213cord_internal15CordRepExternalE", !65, i64 0, !9, i64 16, !10, i64 24}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !35}
!100 = !{!"branch_weights", i32 1, i32 1999}
!101 = !{!"branch_weights", i32 0, i32 1}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35}
!104 = distinct !{null, ptr @_ZN6google8protobuf2io19EpsCopyOutputStream15WriteAliasedRawEPKviPh}
!105 = !{!106, !9, i64 64}
!106 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !49, i64 0, !9, i64 64, !41, i64 72}
end_hunk_1
