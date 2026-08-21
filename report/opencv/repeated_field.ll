Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/repeated_field?download=true
inline.NumInlined: 1118
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldIiE15ExtractSubrangeEiiPi:bb.a
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load i32, ptr %gep, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.u = load i32, ptr %gep.1, align 4, !tbaa !46
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store i32 %i.u, ptr %i.v, align 4, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.w = load i32, ptr %gep.2, align 4, !tbaa !46
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  store i32 %i.w, ptr %i.x, align 4, !tbaa !46
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.y = load i32, ptr %gep.3, align 4, !tbaa !46
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  store i32 %i.y, ptr %i.z, align 4, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !49

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.af = sext i32 %i.aa to i64
  %i.ag = zext nneg i32 %2 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.loopexit.thread
  %.lcssa = phi i32 [ %i.ab, %.loopexit.thread ], [ %i.an, %bb.c ] ; 2 uses
  %i.ah = icmp sgt i32 %.lcssa, 0
  br i1 %i.ah, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ai = sub nsw i32 %.lcssa, %2
  store i32 %i.ai, ptr %0, align 8, !tbaa !40
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.c:                                             ; preds = %.lr.ph23, %bb.c
  %indvars.iv26 = phi i64 [ %i.af, %.lr.ph23 ], [ %indvars.iv.next27, %bb.c ] ; 3 uses
  %i.aj = sub nsw i64 %indvars.iv26, %i.ag
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !46
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aj
  store i32 %i.al, ptr %i.am, align 4, !tbaa !46
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next27, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !50

_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !40
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c)
  %i.d = load i32, ptr %1, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = load i32, ptr %0, align 8, !tbaa !40
  %i.h = add nsw i32 %i.g, %i.d
  store i32 %i.h, ptr %0, align 8, !tbaa !40
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = load i32, ptr %1, align 8, !tbaa !40
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE9MoveArrayEPiS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE18AddAlreadyReservedERKi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.d = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !40
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store i32 %i.a, ptr %i.g, align 4, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIiE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !40
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIiE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE6ResizeEiRKi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !40
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %2, align 4, !tbaa !46     ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.e, %1
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i ; 3 uses
  %i.k = shl nsw i64 %i.f, 2
  %3 = add nsw i64 %i.k, -4
  %4 = shl nsw i64 %i.i, 2
  %i.l = sub nsw i64 %3, %4                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !46
  store <4 x i32> %broadcast.splat, ptr %i.r, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader5

.lr.ph.i.i.i.preheader5:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.06.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader5, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader5 ] ; 2 uses
  store i32 %i.h, ptr %.06.i.i.i, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIiE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIiE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.2", align 16 ; 14 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.in.i = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.in.i9 = select i1 %i.k, ptr %i.l, ptr %i.n
  %i.o = load ptr, ptr %.in.i9, align 8, !tbaa !16 ; 2 uses
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6google8protobuf13RepeatedFieldIiEC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.o)
  %i.q = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %2, align 16, !tbaa !40    ; 2 uses
  %i.s = add nsw i32 %i.r, %i.q
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.s)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.t = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = load i32, ptr %2, align 16, !tbaa !40
  %i.x = add nsw i32 %i.w, %i.t
  store i32 %i.x, ptr %2, align 16, !tbaa !40
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 4 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit: ; preds = %bb.d, %.noexc
  store i32 0, ptr %0, align 8, !tbaa !40
  %i.ad = load i32, ptr %1, align 8, !tbaa !40    ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ad)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.f
  %i.ae = load i32, ptr %1, align 8, !tbaa !40
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ag = load i32, ptr %0, align 8, !tbaa !40
  %i.ah = add nsw i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %0, align 8, !tbaa !40
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.aj = load i32, ptr %1, align 8, !tbaa !40
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.af, ptr nonnull align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit: ; preds = %.noexc11, %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  %i.am = icmp eq ptr %1, %2
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit
  %.0.copyload.i.i.i.i = load i128, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %2, align 16
  br label %_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_.exit: ; preds = %bb.g, %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit
  call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf13RepeatedFieldIiED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.an

bb.i:                                             ; preds = %bb.a, %_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE12SwapElementsEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !46
  %i.h = load i32, ptr %i.f, align 4, !tbaa !46
  store i32 %i.h, ptr %i.d, align 4, !tbaa !46
  store i32 %i.g, ptr %i.f, align 4, !tbaa !46
  ret void
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13RepeatedFieldIjE15ExtractSubrangeEiiPj:bb.a
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.s = load i32, ptr %gep, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.u = load i32, ptr %gep.1, align 4, !tbaa !46
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store i32 %i.u, ptr %i.v, align 4, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.w = load i32, ptr %gep.2, align 4, !tbaa !46
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  store i32 %i.w, ptr %i.x, align 4, !tbaa !46
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.y = load i32, ptr %gep.3, align 4, !tbaa !46
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  store i32 %i.y, ptr %i.z, align 4, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !66

.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61 ; 2 uses
  %i.af = sext i32 %i.aa to i64
  %i.ag = zext nneg i32 %2 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.loopexit.thread
  %.lcssa = phi i32 [ %i.ab, %.loopexit.thread ], [ %i.an, %bb.c ] ; 2 uses
  %i.ah = icmp sgt i32 %.lcssa, 0
  br i1 %i.ah, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ai = sub nsw i32 %.lcssa, %2
  store i32 %i.ai, ptr %0, align 8, !tbaa !58
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.c:                                             ; preds = %.lr.ph23, %bb.c
  %indvars.iv26 = phi i64 [ %i.af, %.lr.ph23 ], [ %indvars.iv.next27, %bb.c ] ; 3 uses
  %i.aj = sub nsw i64 %indvars.iv26, %i.ag
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !46
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.aj
  store i32 %i.al, ptr %i.am, align 4, !tbaa !46
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.an = load i32, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next27, %i.ao
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !67

_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !58
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !58     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c)
  %i.d = load i32, ptr %1, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = load i32, ptr %0, align 8, !tbaa !58
  %i.h = add nsw i32 %i.g, %i.d
  store i32 %i.h, ptr %0, align 8, !tbaa !58
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = load i32, ptr %1, align 8, !tbaa !58
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE9MoveArrayEPjS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE18AddAlreadyReservedERKj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !58
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store i32 %i.a, ptr %i.g, align 4, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIjE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !58
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIjE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE6ResizeEiRKj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !58
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %2, align 4, !tbaa !46     ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.e, %1
  br i1 %.not5.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i ; 3 uses
  %i.k = shl nsw i64 %i.f, 2
  %3 = add nsw i64 %i.k, -4
  %4 = shl nsw i64 %i.i, 2
  %i.l = sub nsw i64 %3, %4                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !46
  store <4 x i32> %broadcast.splat, ptr %i.r, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader5

.lr.ph.i.i.i.preheader5:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.06.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader5, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader5 ] ; 2 uses
  store i32 %i.h, ptr %.06.i.i.i, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !69

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIjE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIjE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.8", align 16 ; 14 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !60
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.in.i = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.in.i9 = select i1 %i.k, ptr %i.l, ptr %i.n
  %i.o = load ptr, ptr %.in.i9, align 8, !tbaa !16 ; 2 uses
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6google8protobuf13RepeatedFieldIjEC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.o)
  %i.q = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %2, align 16, !tbaa !58    ; 2 uses
  %i.s = add nsw i32 %i.r, %i.q
  invoke void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.s)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.t = load i32, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.w = load i32, ptr %2, align 16, !tbaa !58
  %i.x = add nsw i32 %i.w, %i.t
  store i32 %i.x, ptr %2, align 16, !tbaa !58
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 4 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit: ; preds = %bb.d, %.noexc
  store i32 0, ptr %0, align 8, !tbaa !58
  %i.ad = load i32, ptr %1, align 8, !tbaa !58    ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit
  invoke void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ad)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.f
  %i.ae = load i32, ptr %1, align 8, !tbaa !58
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.ag = load i32, ptr %0, align 8, !tbaa !58
  %i.ah = add nsw i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %0, align 8, !tbaa !58
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.aj = load i32, ptr %1, align 8, !tbaa !58
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.af, ptr nonnull align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit: ; preds = %.noexc11, %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit
  %i.am = icmp eq ptr %1, %2
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit
  %.0.copyload.i.i.i.i = load i128, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %2, align 16
  br label %_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_.exit: ; preds = %bb.g, %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit
  call void @_ZN6google8protobuf13RepeatedFieldIjED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf13RepeatedFieldIjED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.an

bb.i:                                             ; preds = %bb.a, %_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE12SwapElementsEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !46
  %i.h = load i32, ptr %i.f, align 4, !tbaa !46
  store i32 %i.h, ptr %i.d, align 4, !tbaa !46
  store i32 %i.g, ptr %i.f, align 4, !tbaa !46
  ret void
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_:bb.a
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.t, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !78
  %i.u = load i32, ptr %i.d, align 4, !tbaa !76
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !77
  %i.w = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !78
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.u to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ae) #16
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.af = load i32, ptr %1, align 8, !tbaa !74
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ai = load i32, ptr %0, align 8, !tbaa !74
  %i.aj = add nsw i32 %i.ai, %i.af
  store i32 %i.aj, ptr %0, align 8, !tbaa !74
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77
  %i.ao = load i32, ptr %1, align 8, !tbaa !74
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE9MoveArrayEPlS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE18AddAlreadyReservedERKl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !74
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store i64 %i.a, ptr %i.g, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIlE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !74
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIlE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE6ResizeEiRKl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !74
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPllEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 3 uses
  %i.i = icmp eq i32 %i.d, 0
  %.in.i.i = select i1 %i.i, ptr %i.f, ptr %i.h
  %i.j = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.k = icmp slt i32 %1, 4
  br i1 %i.k, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.d, 1073741824
  br i1 %i.l, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i32 %i.d, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %1)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.n = zext nneg i32 %.0.i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = icmp eq ptr %i.j, null
  %i.q = add nuw nsw i64 %i.o, 8                  ; 2 uses
  br i1 %i.p, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.q, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.r, %bb.f ], [ %i.s, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.j, ptr %.018.i, align 8, !tbaa !78
  %i.t = load i32, ptr %i.c, align 4, !tbaa !76
  store i32 %.0.i.i, ptr %i.c, align 4, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !77
  %i.v = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.g, i64 %i.y, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.e, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.ah = sext i32 %1 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i64, ptr %2, align 8, !tbaa !80    ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.ag, %1
  br i1 %.not5.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit
  %i.ak = sext i32 %i.ag to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 3 uses
  %i.am = shl nsw i64 %i.ah, 3
  %3 = add nsw i64 %i.am, -8
  %4 = shl nsw i64 %i.ak, 3
  %i.an = sub nsw i64 %3, %4                      ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !80
  store <2 x i64> %broadcast.splat, ptr %i.at, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader8

.lr.ph.i.i.i.preheader8:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.06.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader8, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 2 uses
  store i64 %i.aj, ptr %.06.i.i.i, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !88

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIlE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIlE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.14", align 16 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.in.i = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.in.i9 = select i1 %i.k, ptr %i.l, ptr %i.n    ; 2 uses
  %i.o = load ptr, ptr %.in.i9, align 8, !tbaa !16
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 8
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = load ptr, ptr %.in.i9, align 8, !tbaa !16
  call void @_ZN6google8protobuf13RepeatedFieldIlEC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.q)
  %i.r = load i32, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 16, !tbaa !74    ; 3 uses
  %i.t = add nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !76   ; 5 uses
  %.not.i.i = icmp slt i32 %i.v, %i.t
  br i1 %.not.i.i, label %bb.f, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = icmp slt i32 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 3 uses
  %i.aa = icmp eq i32 %i.v, 0
  %.in.i.i.i = select i1 %i.aa, ptr %i.x, ptr %i.z
  %i.ab = load ptr, ptr %.in.i.i.i, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp slt i32 %i.t, 4
  br i1 %i.ac, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i32 %i.v, 1073741824
  br i1 %i.ad, label %bb.h, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = shl nsw i32 %i.v, 1
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.t)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ 4, %bb.f ], [ %.sroa.speculated.i.i.i, %bb.h ], [ 2147483647, %bb.g ] ; 2 uses
  %i.af = zext nneg i32 %.0.i.i.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = icmp eq ptr %i.ab, null
  %i.ai = add nuw nsw i64 %i.ag, 8                ; 2 uses
  br i1 %i.ah, label %bb.i, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #15
          to label %.noexc unwind label %bb.x

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i
  %i.ak = invoke noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.ai, ptr noundef nonnull @_ZTIc)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i, %bb.i
  %.018.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i ] ; 2 uses
  store ptr %i.ab, ptr %.018.i.i, align 8, !tbaa !78
  %i.al = load i32, ptr %i.u, align 4, !tbaa !76
  store i32 %.0.i.i.i, ptr %i.u, align 4, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.x, align 8, !tbaa !77
  %i.an = load i32, ptr %2, align 16, !tbaa !74   ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.y, i64 %i.aq, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i

bb.m:                                             ; preds = %bb.l
  %i.at = sext i32 %i.al to i64
  %i.au = shl nsw i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.av) #16
  %.pre = load i32, ptr %2, align 16, !tbaa !74
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.e
  %i.aw = phi i32 [ %.pre, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %i.s, %bb.e ]
  %i.ax = load i32, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !77
  %i.ba = add nsw i32 %i.aw, %i.ax
  store i32 %i.ba, ptr %2, align 16, !tbaa !74
  %i.bb = sext i32 %i.s to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.be = sext i32 %i.ax to i64
  %i.bf = shl nsw i64 %i.be, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bc, ptr nonnull align 8 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit: ; preds = %bb.d, %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i
  store i32 0, ptr %0, align 8, !tbaa !74
  %i.bg = load i32, ptr %1, align 8, !tbaa !74    ; 4 uses
  %.not.i.i12 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i12, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_:bb.a
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.t, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !98
  %i.u = load i32, ptr %i.d, align 4, !tbaa !96
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !97
  %i.w = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.u to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ae) #16
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.af = load i32, ptr %1, align 8, !tbaa !94
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !97
  %i.ai = load i32, ptr %0, align 8, !tbaa !94
  %i.aj = add nsw i32 %i.ai, %i.af
  store i32 %i.aj, ptr %0, align 8, !tbaa !94
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !97
  %i.ao = load i32, ptr %1, align 8, !tbaa !94
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE9MoveArrayEPmS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE18AddAlreadyReservedERKm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !94
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store i64 %i.a, ptr %i.g, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldImE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !94
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldImE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE6ResizeEiRKm(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !94
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96   ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 3 uses
  %i.i = icmp eq i32 %i.d, 0
  %.in.i.i = select i1 %i.i, ptr %i.f, ptr %i.h
  %i.j = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.k = icmp slt i32 %1, 4
  br i1 %i.k, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.d, 1073741824
  br i1 %i.l, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i32 %i.d, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %1)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.n = zext nneg i32 %.0.i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = icmp eq ptr %i.j, null
  %i.q = add nuw nsw i64 %i.o, 8                  ; 2 uses
  br i1 %i.p, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.q, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.r, %bb.f ], [ %i.s, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.j, ptr %.018.i, align 8, !tbaa !98
  %i.t = load i32, ptr %i.c, align 4, !tbaa !96
  store i32 %.0.i.i, ptr %i.c, align 4, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !97
  %i.v = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.g, i64 %i.y, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.e, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ah = sext i32 %1 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i64, ptr %2, align 8, !tbaa !80    ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.ag, %1
  br i1 %.not5.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit
  %i.ak = sext i32 %i.ag to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 3 uses
  %i.am = shl nsw i64 %i.ah, 3
  %3 = add nsw i64 %i.am, -8
  %4 = shl nsw i64 %i.ak, 3
  %i.an = sub nsw i64 %3, %4                      ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !80
  store <2 x i64> %broadcast.splat, ptr %i.at, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader8

.lr.ph.i.i.i.preheader8:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.06.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader8, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 2 uses
  store i64 %i.aj, ptr %.06.i.i.i, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !106

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldImE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldImE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.20", align 16 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !96
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.in.i = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !96
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.in.i9 = select i1 %i.k, ptr %i.l, ptr %i.n    ; 2 uses
  %i.o = load ptr, ptr %.in.i9, align 8, !tbaa !16
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 8
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = load ptr, ptr %.in.i9, align 8, !tbaa !16
  call void @_ZN6google8protobuf13RepeatedFieldImEC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.q)
  %i.r = load i32, ptr %0, align 8, !tbaa !94     ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 16, !tbaa !94    ; 3 uses
  %i.t = add nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96   ; 5 uses
  %.not.i.i = icmp slt i32 %i.v, %i.t
  br i1 %.not.i.i, label %bb.f, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = icmp slt i32 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 3 uses
  %i.aa = icmp eq i32 %i.v, 0
  %.in.i.i.i = select i1 %i.aa, ptr %i.x, ptr %i.z
  %i.ab = load ptr, ptr %.in.i.i.i, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp slt i32 %i.t, 4
  br i1 %i.ac, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i32 %i.v, 1073741824
  br i1 %i.ad, label %bb.h, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = shl nsw i32 %i.v, 1
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.t)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ 4, %bb.f ], [ %.sroa.speculated.i.i.i, %bb.h ], [ 2147483647, %bb.g ] ; 2 uses
  %i.af = zext nneg i32 %.0.i.i.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = icmp eq ptr %i.ab, null
  %i.ai = add nuw nsw i64 %i.ag, 8                ; 2 uses
  br i1 %i.ah, label %bb.i, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #15
          to label %.noexc unwind label %bb.x

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i
  %i.ak = invoke noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.ai, ptr noundef nonnull @_ZTIc)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i, %bb.i
  %.018.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i ] ; 2 uses
  store ptr %i.ab, ptr %.018.i.i, align 8, !tbaa !98
  %i.al = load i32, ptr %i.u, align 4, !tbaa !96
  store i32 %.0.i.i.i, ptr %i.u, align 4, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.x, align 8, !tbaa !97
  %i.an = load i32, ptr %2, align 16, !tbaa !94   ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.y, i64 %i.aq, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !98
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i

bb.m:                                             ; preds = %bb.l
  %i.at = sext i32 %i.al to i64
  %i.au = shl nsw i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.av) #16
  %.pre = load i32, ptr %2, align 16, !tbaa !94
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.e
  %i.aw = phi i32 [ %.pre, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %i.s, %bb.e ]
  %i.ax = load i32, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !97
  %i.ba = add nsw i32 %i.aw, %i.ax
  store i32 %i.ba, ptr %2, align 16, !tbaa !94
  %i.bb = sext i32 %i.s to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.be = sext i32 %i.ax to i64
  %i.bf = shl nsw i64 %i.be, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bc, ptr nonnull align 8 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit: ; preds = %bb.d, %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i
  store i32 0, ptr %0, align 8, !tbaa !94
  %i.bg = load i32, ptr %1, align 8, !tbaa !94    ; 4 uses
  %.not.i.i12 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i12, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13RepeatedFieldIfE15ExtractSubrangeEiiPf:bb.a
.loopexit:                                        ; preds = %bb.a
  br i1 %i.b, label %.loopexit.thread, label %_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.loopexit
  %i.aa = add nsw i32 %2, %1                      ; 2 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !111   ; 4 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph23, label %._crit_edge

.lr.ph23:                                         ; preds = %.loopexit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114 ; 4 uses
  %i.af = sext i32 %i.aa to i64                   ; 4 uses
  %i.ag = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ah = sext i32 %i.ab to i64                   ; 2 uses
  %i.ai = sub nsw i64 %i.ah, %i.af                ; 3 uses
  %min.iters.check35 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check35, label %scalar.ph34.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph23
  %n.vec37 = and i64 %i.ai, -8                    ; 3 uses
  %i.aj = add nsw i64 %n.vec37, %i.af
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next42, %vector.body38 ] ; 2 uses
  %i.ak = add i64 %index39, %i.af                 ; 2 uses
  %i.al = sub nsw i64 %i.ak, %i.ag
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <4 x float>, ptr %i.am, align 4, !tbaa !117
  %wide.load41 = load <4 x float>, ptr %i.an, align 4, !tbaa !117
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x float> %wide.load40, ptr %i.ao, align 4, !tbaa !117
  store <4 x float> %wide.load41, ptr %i.ap, align 4, !tbaa !117
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec37
  br i1 %i.aq, label %middle.block43, label %vector.body38, !llvm.loop !122

middle.block43:                                   ; preds = %vector.body38
  %cmp.n44 = icmp eq i64 %i.ai, %n.vec37
  br i1 %cmp.n44, label %._crit_edge, label %scalar.ph34.preheader

scalar.ph34.preheader:                            ; preds = %.lr.ph23, %middle.block43
  %indvars.iv26.ph = phi i64 [ %i.af, %.lr.ph23 ], [ %i.aj, %middle.block43 ]
  br label %scalar.ph34

._crit_edge:                                      ; preds = %scalar.ph34, %middle.block43, %.loopexit.thread
  %i.ar = icmp sgt i32 %i.ab, 0
  br i1 %i.ar, label %bb.b, label %_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.as = sub nsw i32 %i.ab, %2
  store i32 %i.as, ptr %0, align 8, !tbaa !111
  br label %_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit

scalar.ph34:                                      ; preds = %scalar.ph34.preheader, %scalar.ph34
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %scalar.ph34 ], [ %indvars.iv26.ph, %scalar.ph34.preheader ] ; 3 uses
  %i.at = sub nsw i64 %indvars.iv26, %i.ag
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv26
  %i.av = load float, ptr %i.au, align 4, !tbaa !117
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.at
  store float %i.av, ptr %i.aw, align 4, !tbaa !117
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.ax = icmp slt i64 %indvars.iv.next27, %i.ah
  br i1 %i.ax, label %scalar.ph34, label %._crit_edge, !llvm.loop !123

_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi.exit: ; preds = %bb.b, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE8TruncateEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !111
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !111    ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.c = add nsw i32 %i.b, %i.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.c)
  %i.d = load i32, ptr %1, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = load i32, ptr %0, align 8, !tbaa !111
  %i.h = add nsw i32 %i.g, %i.d
  store i32 %i.h, ptr %0, align 8, !tbaa !111
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = load i32, ptr %1, align 8, !tbaa !111
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE9MoveArrayEPfS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE18AddAlreadyReservedERKf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !111
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  store float %i.a, ptr %i.g, align 4, !tbaa !117
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIfE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !111
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIfE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !113
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE6ResizeEiRKf(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPffEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load float, ptr %2, align 4, !tbaa !117  ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.e, %1
  br i1 %.not6.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i ; 3 uses
  %i.k = shl nsw i64 %i.f, 2
  %3 = add nsw i64 %i.k, -4
  %4 = shl nsw i64 %i.i, 2
  %i.l = sub nsw i64 %3, %4                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = shl i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !117
  store <4 x float> %broadcast.splat, ptr %i.r, align 4, !tbaa !117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader5

.lr.ph.i.i.i.preheader5:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader5, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader5 ] ; 2 uses
  store float %i.h, ptr %.07.i.i.i, align 4, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !125

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !111
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIfE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIfE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.26", align 16 ; 14 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !113
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.in.i = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !113
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.in.i9 = select i1 %i.k, ptr %i.l, ptr %i.n
  %i.o = load ptr, ptr %.in.i9, align 8, !tbaa !16 ; 2 uses
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6google8protobuf13RepeatedFieldIfEC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.o)
  %i.q = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %2, align 16, !tbaa !111   ; 2 uses
  %i.s = add nsw i32 %i.r, %i.q
  invoke void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.s)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %i.t = load i32, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.w = load i32, ptr %2, align 16, !tbaa !111
  %i.x = add nsw i32 %i.w, %i.t
  store i32 %i.x, ptr %2, align 16, !tbaa !111
  %i.y = sext i32 %i.r to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 4 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit: ; preds = %bb.d, %.noexc
  store i32 0, ptr %0, align 8, !tbaa !111
  %i.ad = load i32, ptr %1, align 8, !tbaa !111   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit
  invoke void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ad)
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.f
  %i.ae = load i32, ptr %1, align 8, !tbaa !111
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ag = load i32, ptr %0, align 8, !tbaa !111
  %i.ah = add nsw i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %0, align 8, !tbaa !111
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.aj = load i32, ptr %1, align 8, !tbaa !111
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.af, ptr nonnull align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit: ; preds = %.noexc11, %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit
  %i.am = icmp eq ptr %1, %2
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit
  %.0.copyload.i.i.i.i = load i128, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %2, align 16
  br label %_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_.exit: ; preds = %bb.g, %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit
  call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf13RepeatedFieldIfED1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.an

bb.i:                                             ; preds = %bb.a, %_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE12SwapElementsEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load float, ptr %i.d, align 4, !tbaa !117
  %i.h = load float, ptr %i.f, align 4, !tbaa !117
  store float %i.h, ptr %i.d, align 4, !tbaa !117
  store float %i.g, ptr %i.f, align 4, !tbaa !117
  ret void
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_:bb.a
  %.018.i = phi ptr [ %i.s, %bb.f ], [ %i.t, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.k, ptr %.018.i, align 8, !tbaa !135
  %i.u = load i32, ptr %i.d, align 4, !tbaa !133
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.g, align 8, !tbaa !134
  %i.w = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.h, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.f, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !135
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = sext i32 %i.u to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ae) #16
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.af = load i32, ptr %1, align 8, !tbaa !131
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.ai = load i32, ptr %0, align 8, !tbaa !131
  %i.aj = add nsw i32 %i.ai, %i.af
  store i32 %i.aj, ptr %0, align 8, !tbaa !131
  %i.ak = sext i32 %i.b to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134
  %i.ao = load i32, ptr %1, align 8, !tbaa !131
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.al, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE9MoveArrayEPdS3_i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE18AddAlreadyReservedERKd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !131
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  store double %i.a, ptr %i.g, align 8, !tbaa !137
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIdE18AddAlreadyReservedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !131
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIdE15unsafe_elementsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE6ResizeEiRKd(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !131
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %_ZSt4fillIPddEvT_S1_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !133  ; 5 uses
  %.not.i = icmp slt i32 %i.d, %1
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 3 uses
  %i.i = icmp eq i32 %i.d, 0
  %.in.i.i = select i1 %i.i, ptr %i.f, ptr %i.h
  %i.j = load ptr, ptr %.in.i.i, align 8, !tbaa !16 ; 3 uses
  %i.k = icmp slt i32 %1, 4
  br i1 %i.k, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.d, 1073741824
  br i1 %i.l, label %bb.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i32 %i.d, 1
  %.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %1)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ 4, %bb.c ], [ %.sroa.speculated.i.i, %bb.e ], [ 2147483647, %bb.d ] ; 2 uses
  %i.n = zext nneg i32 %.0.i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = icmp eq ptr %i.j, null
  %i.q = add nuw nsw i64 %i.o, 8                  ; 2 uses
  br i1 %i.p, label %bb.f, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #15
  br label %bb.g

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i
  %i.s = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.q, ptr noundef nonnull @_ZTIc)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i, %bb.f
  %.018.i = phi ptr [ %i.r, %bb.f ], [ %i.s, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i ] ; 2 uses
  store ptr %i.j, ptr %.018.i, align 8, !tbaa !135
  %i.t = load i32, ptr %i.c, align 4, !tbaa !133
  store i32 %.0.i.i, ptr %i.c, align 4, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !134
  %i.v = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.g, i64 %i.y, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.e, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !135
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i32 %i.t to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ad) #16
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit: ; preds = %bb.b, %bb.i, %bb.j, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !131   ; 2 uses
  %i.ah = sext i32 %1 to i64                      ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load double, ptr %2, align 8, !tbaa !137 ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.ag, %1
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit
  %i.ak = sext i32 %i.ag to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 3 uses
  %i.am = shl nsw i64 %i.ah, 3
  %3 = add nsw i64 %i.am, -8
  %4 = shl nsw i64 %i.ak, 3
  %i.an = sub nsw i64 %3, %4                      ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %broadcast.splat, ptr %next.gep, align 8, !tbaa !137
  store <2 x double> %broadcast.splat, ptr %i.at, align 8, !tbaa !137
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader8

.lr.ph.i.i.i.preheader8:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader8, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader8 ] ; 2 uses
  store double %i.aj, ptr %.07.i.i.i, align 8, !tbaa !137
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !145

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit, %bb.a
  store i32 %1, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN6google8protobuf13RepeatedFieldIdE12mutable_dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK6google8protobuf13RepeatedFieldIdE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4SwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::RepeatedField.32", align 16 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !133
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.in.i = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !133
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.in.i9 = select i1 %i.k, ptr %i.l, ptr %i.n    ; 2 uses
  %i.o = load ptr, ptr %.in.i9, align 8, !tbaa !16
  %i.p = icmp eq ptr %i.h, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i = load i128, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %1, align 8
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.q = load ptr, ptr %.in.i9, align 8, !tbaa !16
  call void @_ZN6google8protobuf13RepeatedFieldIdEC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.q)
  %i.r = load i32, ptr %0, align 8, !tbaa !131    ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 16, !tbaa !131   ; 3 uses
  %i.t = add nsw i32 %i.s, %i.r                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !133  ; 5 uses
  %.not.i.i = icmp slt i32 %i.v, %i.t
  br i1 %.not.i.i, label %bb.f, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = icmp slt i32 %i.v, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 3 uses
  %i.aa = icmp eq i32 %i.v, 0
  %.in.i.i.i = select i1 %i.aa, ptr %i.x, ptr %i.z
  %i.ab = load ptr, ptr %.in.i.i.i, align 8, !tbaa !16 ; 3 uses
  %i.ac = icmp slt i32 %i.t, 4
  br i1 %i.ac, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i32 %i.v, 1073741824
  br i1 %i.ad, label %bb.h, label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = shl nsw i32 %i.v, 1
  %.sroa.speculated.i.i.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.t)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i

_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ 4, %bb.f ], [ %.sroa.speculated.i.i.i, %bb.h ], [ 2147483647, %bb.g ] ; 2 uses
  %i.af = zext nneg i32 %.0.i.i.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = icmp eq ptr %i.ab, null
  %i.ai = add nuw nsw i64 %i.ag, 8                ; 2 uses
  br i1 %i.ah, label %bb.i, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i

bb.i:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #15
          to label %.noexc unwind label %bb.x

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeEii.exit.i.i
  %i.ak = invoke noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 noundef %i.ai, ptr noundef nonnull @_ZTIc)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i, %bb.i
  %.018.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit.i.i ] ; 2 uses
  store ptr %i.ab, ptr %.018.i.i, align 8, !tbaa !135
  %i.al = load i32, ptr %i.u, align 4, !tbaa !133
  store i32 %.0.i.i.i, ptr %i.u, align 4, !tbaa !133
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.x, align 8, !tbaa !134
  %i.an = load i32, ptr %2, align 16, !tbaa !131  ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.y, i64 %i.aq, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !135
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i

bb.m:                                             ; preds = %bb.l
  %i.at = sext i32 %i.al to i64
  %i.au = shl nsw i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 8
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.av) #16
  %.pre = load i32, ptr %2, align 16, !tbaa !131
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.e
  %i.aw = phi i32 [ %.pre, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %i.s, %bb.e ]
  %i.ax = load i32, ptr %0, align 8, !tbaa !131   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !134
  %i.ba = add nsw i32 %i.aw, %i.ax
  store i32 %i.ba, ptr %2, align 16, !tbaa !131
  %i.bb = sext i32 %i.s to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.be = sext i32 %i.ax to i64
  %i.bf = shl nsw i64 %i.be, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bc, ptr nonnull align 8 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit: ; preds = %bb.d, %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i
  store i32 0, ptr %0, align 8, !tbaa !131
  %i.bg = load i32, ptr %1, align 8, !tbaa !131   ; 4 uses
  %.not.i.i12 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i12, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit
end_hunk_5
