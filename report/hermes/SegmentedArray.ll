Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SegmentedArray?download=true
inline.NumInlined: 913
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormiEj:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44, !nonnull !45
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorpLEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !122 {
bb.a:
  %2 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !41, !noalias !123
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42, !noalias !123
  %i.d = add i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44, !noalias !123, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  store i32 %i.h, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormIEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !126 {
bb.a:
  %2 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !41, !noalias !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42, !noalias !127
  %i.d = sub i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44, !noalias !127, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  store i32 %i.h, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !130 {
bb.a:
  %1 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !41, !noalias !131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42, !noalias !131
  %i.d = add i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44, !noalias !131, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  store i32 %i.h, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratormmEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !134 {
bb.a:
  %1 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !41, !noalias !135
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42, !noalias !135
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44, !noalias !135, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  store i32 %i.h, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = icmp ult i32 %i.b, 4096
  %i.d = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.b, -4096
  %i.f = lshr i32 %i.e, 10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32776
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = and i32 %i.b, 1023
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink6 = phi ptr [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %.sink5 = phi i32 [ %i.m, %bb.b ], [ %i.b, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  %i.o = zext nneg i32 %.sink5 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE13inlineStorageEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !guid !137 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9segmentAtERNS0_11PointerBaseEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !138 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48
  %i.e = and i64 %i.d, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9toSegmentEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !guid !139 {
bb.a:
  %i.a = add i32 %0, -4096
  %i.b = lshr i32 %i.a, 10
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE10toInteriorEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !guid !140 {
bb.a:
  %i.a = and i32 %0, 1023
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !141 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = icmp ult i32 %i.b, 4096
  %i.d = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  br i1 %i.c, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.b, -4096
  %i.f = lshr i32 %i.e, 10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32776
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = and i32 %i.b, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit: ; preds = %bb.a, %bb.b
  %.sink6.i = phi ptr [ %i.l, %bb.b ], [ %i.d, %bb.a ]
  %.sink5.i = phi i32 [ %i.m, %bb.b ], [ %i.b, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  %i.o = zext nneg i32 %.sink5.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE11maxElementsEv() local_unnamed_addr #0 comdat align 2 !guid !142 {
bb.a:
  ret i32 521669632
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE14maxNumSegmentsEv() local_unnamed_addr #0 comdat align 2 !guid !143 {
bb.a:
  ret i32 509439
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !144 {
bb.a:
  %i.a = icmp ugt i32 %1, 521669632
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nuw nsw i64 %i.d, 4398046508031
  %i.f = lshr i64 %i.e, 10
  %i.g = trunc i64 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 4096
  %.0.i.i = select i1 %i.c, i32 %1, i32 %i.h
  %i.i = shl nuw nsw i32 %.0.i.i, 3
  %i.j = add nuw nsw i32 %i.i, 15                 ; 2 uses
  %i.k = and i32 %i.j, 2147483640                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.o, %i.q
  br i1 %.not.i.not.i.i.i.i.i, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.s = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, i32 noundef %i.k) #7
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_11HermesValueEEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit

bb.e:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !28
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_11HermesValueEEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit

_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_11HermesValueEEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit: ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.s, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  store i64 0, ptr %i.t, align 8
  %i.u = and i32 %i.j, 16777208
  %i.v = or disjoint i32 %i.u, 268435456
  store i32 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_11HermesValueEEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit, %bb.b
  %.sroa.05.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.t, %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_11HermesValueEEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !157 {
_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit16:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %.sroa.022.0.insert.ext = zext i32 %1 to i64
  %i.c = inttoptr i64 %.sroa.022.0.insert.ext to ptr
  store ptr @.str, ptr %4, align 8, !tbaa !33, !alias.scope !158
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !51, !alias.scope !158
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !33, !alias.scope !158
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 7, ptr %i.f, align 8, !tbaa !52, !alias.scope !158
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 76, ptr %i.g, align 8, !tbaa !53, !alias.scope !158
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.b, ptr %i.h, align 8, !tbaa !54, !alias.scope !158
  %i.i = add nsw i64 %i.b, 76
  store ptr %4, ptr %3, align 8, !tbaa !33, !alias.scope !159
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.j, align 8, !tbaa !51, !alias.scope !159
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !33, !alias.scope !159
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 3, ptr %i.l, align 8, !tbaa !52, !alias.scope !159
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.i, ptr %i.m, align 8, !tbaa !53, !alias.scope !159
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 17, ptr %i.n, align 8, !tbaa !54, !alias.scope !159
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 521669632) #7
  %i.p = sext i32 %i.o to i64
  %i.q = add nsw i64 %i.b, 93
  store ptr %3, ptr %2, align 8, !tbaa !33, !alias.scope !160
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !51, !alias.scope !160
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr inttoptr (i64 521669632 to ptr), ptr %i.s, align 8, !tbaa !33, !alias.scope !160
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 7, ptr %i.t, align 8, !tbaa !52, !alias.scope !160
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.q, ptr %i.u, align 8, !tbaa !53, !alias.scope !160
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.p, ptr %i.v, align 8, !tbaa !54, !alias.scope !160
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE25allocationSizeForCapacityEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !guid !161 {
bb.a:
  %i.a = icmp ult i32 %0, 4097
  %i.b = add i32 %0, -4096
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1023
  %i.e = lshr i64 %i.d, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 4096
  %.0.i = select i1 %i.a, i32 %0, i32 %i.g
  %i.h = shl nuw nsw i32 %.0.i, 3
  %i.i = add nuw nsw i32 %i.h, 8
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15createLongLivedERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !162 {
bb.a:
  %2 = alloca %"class.std::lock_guard", align 8   ; 4 uses
  %i.a = icmp ugt i32 %1, 521669632
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nuw nsw i64 %i.d, 4398046508031
  %i.f = lshr i64 %i.e, 10
  %i.g = trunc i64 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 4096
  %.0.i.i = select i1 %i.c, i32 %1, i32 %i.h
  %i.i = shl nuw nsw i32 %.0.i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.k = add nuw nsw i32 %i.i, 15                 ; 2 uses
  %i.l = and i32 %i.k, 2147483640
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind nonnull writable sret(%"class.std::lock_guard") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %i.j) #7
  %i.m = call noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, i32 noundef %i.l) #7 ; 3 uses
  store i64 0, ptr %i.m, align 8
  %i.n = and i32 %i.k, 16777208
  %i.o = or disjoint i32 %i.n, 268435456
  store i32 %i.o, ptr %i.m, align 8, !tbaa !33
  %i.p = load ptr, ptr %2, align 8, !tbaa !57, !nonnull !45, !align !58
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !163 {
bb.a:
  %i.a = icmp ugt i32 %1, 521669632
  br i1 %i.a, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread, label %bb.b, !prof !30

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nuw nsw i64 %i.d, 4398046508031
  %i.f = lshr i64 %i.e, 10
  %i.g = trunc i64 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 4096
  %.0.i.i.i = select i1 %i.c, i32 %1, i32 %i.h
  %i.i = shl nuw nsw i32 %.0.i.i.i, 3
  %i.j = add nuw nsw i32 %i.i, 15                 ; 2 uses
  %i.k = and i32 %i.j, 2147483640                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.o, %i.q
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.s = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, i32 noundef %i.k) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %bb.b
  store ptr %i.o, ptr %i.l, align 8, !tbaa !28
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit: ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.s, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  store i64 0, ptr %i.t, align 8
  %i.u = and i32 %i.j, 16777208
  %i.v = or disjoint i32 %i.u, 268435456
  store i32 %i.v, ptr %i.t, align 8, !tbaa !33
  %.not = icmp eq ptr %i.t, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.e, !prof !59

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit
  %i.w = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.t, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit, %bb.e
  %.sroa.05.0 = phi ptr [ %i.w, %bb.e ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread ]
  ret ptr %.sroa.05.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !167 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32776
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = add i32 %i.f, %i.n
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.p = add i32 %.0.i, %2                        ; 6 uses
  %i.q = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.r = icmp ult i32 %i.q, 4097
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.s = load i32, ptr %1, align 4
  %i.t = and i32 %i.s, 16777208
  %i.u = add nsw i32 %i.t, -8
  %i.v = lshr exact i32 %i.u, 3
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 4096)
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8capacityEv.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.w = shl i32 %i.q, 10
  %i.x = add i32 %i.w, -4190208
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8capacityEv.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8capacityEv.exit: ; preds = %bb.c, %bb.d
  %.0.i52 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %i.x, %bb.d ]
  %.not = icmp ugt i32 %i.p, %.0.i52
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8capacityEv.exit
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %2)
  br label %bb.ab

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8capacityEv.exit
  %i.y = icmp ult i32 %.0.i, 4097
  br i1 %i.y, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i32 %.0.i, 3
  %narrow = add nuw nsw i32 %i.z, 8               ; 2 uses
  %.not1421.i = icmp eq i32 %narrow, 32776
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.aa = zext nneg i32 %narrow to i64            ; 3 uses
  %i.ab = sub nsw i64 32768, %i.aa                ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1
  %xtraiter = and i64 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01320.i.idx.prol = phi i64 [ %.01320.i.add.prol, %.lr.ph.i.prol ], [ %i.aa, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.01320.i.ptr.prol = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx.prol
  store i64 -1970324836974592, ptr %.01320.i.ptr.prol, align 8, !tbaa !32
  %.01320.i.add.prol = add nuw nsw i64 %.01320.i.idx.prol, 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !164

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.01320.i.idx.unr = phi i64 [ %i.aa, %.lr.ph.i.preheader ], [ %.01320.i.add.prol, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.ab, 56
  br i1 %i.ae, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01320.i.idx = phi i64 [ %.01320.i.add.7, %.lr.ph.i ], [ %.01320.i.idx.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01320.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  store i64 -1970324836974592, ptr %.01320.i.ptr, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 -1970324836974592, ptr %.01320.i.ptr.1, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 -1970324836974592, ptr %.01320.i.ptr.2, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 -1970324836974592, ptr %.01320.i.ptr.3, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 -1970324836974592, ptr %.01320.i.ptr.4, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 -1970324836974592, ptr %.01320.i.ptr.5, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 -1970324836974592, ptr %.01320.i.ptr.6, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 -1970324836974592, ptr %.01320.i.ptr.7, align 8, !tbaa !32
  %.01320.i.add.7 = add nuw nsw i64 %.01320.i.idx, 64 ; 2 uses
  %.not.i.7 = icmp eq i64 %.01320.i.add.7, 32776
  br i1 %.not.i.7, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !0

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  store atomic i32 4096, ptr %i.a release, align 4
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.am = add i32 %.0.i, -4097
  %i.an = lshr i32 %i.am, 10
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, %.critedge
  %i.ao = phi i32 [ %i.an, %.critedge ], [ 0, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit ] ; 5 uses
  %i.ap = add i32 %i.p, 1023
  %i.aq = add i32 %i.p, -4097
  %i.ar = lshr i32 %i.aq, 10                      ; 5 uses
  %i.as = icmp ult i32 %i.p, 4097
  %i.at = add i32 %i.p, -4096
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1023
  %i.aw = lshr i64 %i.av, 10
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 4096
  %.0.i53 = select i1 %i.as, i32 %i.p, i32 %i.ay  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.bb = zext i32 %.0.i53 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %.not1421.i54 = icmp eq i32 %i.ba, %.0.i53
  br i1 %.not1421.i54, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.h
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bd
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %.01320.i56 = phi ptr [ %i.bf, %.lr.ph.i55 ], [ %i.be, %.lr.ph.i55.preheader ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i56, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.01320.i56, i64 8 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bf, %i.bc
  br i1 %.not.i57, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55, !llvm.loop !0

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE19numSlotsForCapacityEj:bb.a
  %.0 = select i1 %i.a, i32 %0, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 !guid !175 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 5 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.i, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  %i.s = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9growRightERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !32 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %i.u, align 8, !tbaa !32
  %i.v = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.x = load ptr, ptr %4, align 8, !tbaa !41, !noalias !176
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !42, !noalias !176
  %i.aa = add i32 %i.z, %.0.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44, !noalias !176, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.x, i32 noundef %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %i.ac) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !42 ; 4 uses
  %i.af = icmp ult i32 %i.ae, 4096
  %i.ag = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  br i1 %i.af, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.ah = add i32 %i.ae, -4096
  %i.ai = lshr i32 %i.ah, 10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32776
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !48
  %i.an = and i64 %i.am, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = and i32 %i.ae, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit: ; preds = %bb.c, %bb.d
  %.sink6.i.i = phi ptr [ %i.ao, %bb.d ], [ %i.ag, %bb.c ]
  %.sink5.i.i = phi i32 [ %i.ap, %bb.d ], [ %i.ae, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.ar = zext nneg i32 %.sink5.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.as, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = and i64 %i.av, -4194304
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = icmp eq ptr %i.au, %i.ax
  br i1 %i.ay, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit, label %bb.e, !prof !46

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 %.sroa.0.0.copyload.i.i.i) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit: ; preds = %bb.e, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %.0 = phi i32 [ 0, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit ], [ 1, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9growRightERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !177 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.i, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  %i.s = add i32 %.0.i, %2
  %i.t = load i32, ptr %i.c, align 4
  %i.u = and i32 %i.t, 16777208
  %i.v = add nsw i32 %i.u, -8                     ; 3 uses
  %i.w = lshr exact i32 %i.v, 3
  %i.x = icmp ult i32 %i.v, 32776
  %i.y = shl nsw i32 %i.v, 7
  %i.z = add nsw i32 %i.y, -4190208
  %.0.i27 = select i1 %i.x, i32 %i.w, i32 %i.z
  %.not = icmp ugt i32 %i.s, %.0.i27
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.aa = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.c, i32 noundef %2) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.ab = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 4097
  br i1 %i.ac, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %i.ab, -4097                    ; 2 uses
  %i.ae = shl i32 %i.ad, 10
  %i.af = add i32 %i.ae, 4096
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.ah = zext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !48
  %i.ak = and i64 %i.aj, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load atomic i32, ptr %i.am monotonic, align 4
  %i.ao = add i32 %i.af, %i.an
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30: ; preds = %bb.d, %bb.e
  %.0.i29 = phi i32 [ %i.ao, %bb.e ], [ %i.ab, %bb.d ]
  %i.ap = add i32 %.0.i29, %2
  %i.aq = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 4097
  br i1 %i.ar, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit33, label %bb.f, !prof !46

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30
  %i.as = add i32 %i.aq, -4097                    ; 2 uses
  %i.at = shl i32 %i.as, 10
  %i.au = add i32 %i.at, 4096
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.aw = zext i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.az = and i64 %i.ay, 281474976710655
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4
  %i.bd = add i32 %i.au, %i.bc
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit33

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit33: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30, %bb.f
  %.0.i32 = phi i32 [ %i.bd, %bb.f ], [ %i.aq, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30 ]
  %i.be = shl i32 %.0.i32, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.be, i32 %i.ap) ; 5 uses
  %i.bf = icmp ugt i32 %.sroa.speculated.i, 521669632
  br i1 %i.bf, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread, label %bb.g, !prof !30

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit33
  %i.bg = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.speculated.i) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit33
  %i.bh = icmp samesign ult i32 %.sroa.speculated.i, 4097
  %i.bi = zext nneg i32 %.sroa.speculated.i to i64
  %i.bj = add nuw nsw i64 %i.bi, 4398046508031
  %i.bk = lshr i64 %i.bj, 10
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bl, 4096
  %.0.i.i.i = select i1 %i.bh, i32 %.sroa.speculated.i, i32 %i.bm
  %i.bn = shl nuw nsw i32 %.0.i.i.i, 3
  %i.bo = add nuw nsw i32 %i.bn, 15               ; 2 uses
  %i.bp = and i32 %i.bo, 2147483640               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28 ; 2 uses
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.bt, %i.bv
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bx = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bw, i32 noundef %i.bp) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit

bb.i:                                             ; preds = %bb.g
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !28
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit: ; preds = %bb.h, %bb.i
  %i.by = phi ptr [ %i.bx, %bb.h ], [ %i.br, %bb.i ] ; 6 uses
  store i64 0, ptr %i.by, align 8
  %i.bz = and i32 %i.bo, 16777208
  %i.ca = or disjoint i32 %i.bz, 268435456
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !33
  %.not41 = icmp eq ptr %i.by, inttoptr (i64 -1 to ptr)
  br i1 %.not41, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i34 = load i64, ptr %i.cb, align 8, !tbaa !32
  %i.cc = and i64 %.sroa.0.0.copyload.i.i34, 281474976710655
  %i.cd = inttoptr i64 %i.cc to ptr               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load atomic i32, ptr %i.ce monotonic, align 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %.idx = shl nuw nsw i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = and i64 %i.cl, -4194304
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = icmp eq ptr %i.ck, %i.cn
  br i1 %i.co, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit, label %bb.k, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cp, ptr noundef nonnull %i.ci, i32 noundef %i.cf) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit: ; preds = %bb.j, %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.cg, i64 %.idx, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store atomic i32 %i.cf, ptr %i.cq release, align 4
  %i.cr = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.by, i32 noundef %2)
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = or i64 %i.cs, -281474976710656
  %i.cu = load ptr, ptr %0, align 8, !tbaa !77
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !178 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.i, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  %i.s = icmp ugt i32 %2, %.0.i
  %i.t = load atomic i32, ptr %i.d monotonic, align 4 ; 5 uses
  %i.u = icmp ult i32 %i.t, 4097                  ; 2 uses
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  br i1 %i.u, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.v = add i32 %i.t, -4097                      ; 2 uses
  %i.w = shl i32 %i.v, 10
  %i.x = add i32 %i.w, 4096
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.z = zext i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.ac = and i64 %i.ab, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add i32 %i.x, %i.af
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19: ; preds = %bb.c, %bb.d
  %.0.i18 = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ah = sub i32 %2, %.0.i18
  %i.ai = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9growRightERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ah)
  br label %bb.i

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  br i1 %i.u, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %i.t, -4097                     ; 2 uses
  %i.ak = shl i32 %i.aj, 10
  %i.al = add i32 %i.ak, 4096
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !48
  %i.aq = and i64 %i.ap, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load atomic i32, ptr %i.as monotonic, align 4
  %i.au = add i32 %i.al, %i.at
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22: ; preds = %bb.e, %bb.f
  %.0.i21 = phi i32 [ %i.au, %bb.f ], [ %i.t, %bb.e ]
  %i.av = icmp ult i32 %2, %.0.i21
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22
  %i.aw = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 4097
  br i1 %i.ax, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26, label %bb.h, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.ay = add i32 %i.aw, -4097                    ; 2 uses
  %i.az = shl i32 %i.ay, 10
  %i.ba = add i32 %i.az, 4096
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !48
  %i.bf = and i64 %i.be, 281474976710655
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load atomic i32, ptr %i.bh monotonic, align 4
  %i.bj = add i32 %i.ba, %i.bi
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26: ; preds = %bb.g, %bb.h
  %.0.i25 = phi i32 [ %i.bj, %bb.h ], [ %i.aw, %bb.g ]
  %i.bk = sub i32 %.0.i25, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.bk)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19
  %.0 = phi i32 [ %i.ai, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19 ], [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22 ], [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE11shrinkRightERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !179 {
bb.a:
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !180 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj:bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.i, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  %i.s = icmp eq i32 %2, %.0.i
  br i1 %i.s, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.t = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.u = icmp ult i32 %i.t, 4097
  br i1 %i.u, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.v = add i32 %i.t, -4097                      ; 2 uses
  %i.w = shl i32 %i.v, 10
  %i.x = add i32 %i.w, 4096
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.z = zext i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !48
  %i.ac = and i64 %i.ab, 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add i32 %i.x, %i.af
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19: ; preds = %bb.c, %bb.d
  %.0.i18 = phi i32 [ %i.ag, %bb.d ], [ %i.t, %bb.c ]
  %i.ah = icmp ugt i32 %2, %.0.i18
  %i.ai = load atomic i32, ptr %i.d monotonic, align 4 ; 5 uses
  %i.aj = icmp ult i32 %i.ai, 4097                ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19
  br i1 %i.aj, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.ak = add i32 %i.ai, -4097                    ; 2 uses
  %i.al = shl i32 %i.ak, 10
  %i.am = add i32 %i.al, 4096
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add i32 %i.am, %i.au
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22: ; preds = %bb.e, %bb.f
  %.0.i21 = phi i32 [ %i.av, %bb.f ], [ %i.ai, %bb.e ]
  %i.aw = sub i32 %2, %.0.i21
  %i.ax = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8growLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.aw)
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit19
  br i1 %i.aj, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26, label %bb.h, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.ay = add i32 %i.ai, -4097                    ; 2 uses
  %i.az = shl i32 %i.ay, 10
  %i.ba = add i32 %i.az, 4096
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !48
  %i.bf = and i64 %i.be, 281474976710655
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load atomic i32, ptr %i.bh monotonic, align 4
  %i.bj = add i32 %i.ba, %i.bi
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26: ; preds = %bb.g, %bb.h
  %.0.i25 = phi i32 [ %i.bj, %bb.h ], [ %i.ai, %bb.g ]
  %i.bk = sub i32 %.0.i25, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE10shrinkLeftERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.bk)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22
  %.0 = phi i32 [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit26 ], [ %i.ax, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit22 ], [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8growLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !187 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %5 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %6 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 2 uses
  %7 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %8 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.i, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.e, %bb.a ]
  %i.s = add i32 %.0.i, %2
  %i.t = load i32, ptr %i.c, align 4
  %i.u = and i32 %i.t, 16777208
  %i.v = add nsw i32 %i.u, -8                     ; 3 uses
  %i.w = lshr exact i32 %i.v, 3
  %i.x = icmp ult i32 %i.v, 32776
  %i.y = shl nsw i32 %i.v, 7
  %i.z = add nsw i32 %i.y, -4190208
  %.0.i24 = select i1 %i.x, i32 %i.w, i32 %i.z
  %.not = icmp ugt i32 %i.s, %.0.i24
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE22growLeftWithinCapacityERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.c, i32 noundef %2)
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit.thread

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.aa = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.ab = icmp ult i32 %i.aa, 4097
  br i1 %i.ab, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit27, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.aa, -4097                    ; 2 uses
  %i.ad = shl i32 %i.ac, 10
  %i.ae = add i32 %i.ad, 4096
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.ag = zext i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = and i64 %i.ai, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load atomic i32, ptr %i.al monotonic, align 4
  %i.an = add i32 %i.ae, %i.am
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit27

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit27: ; preds = %bb.d, %bb.e
  %.0.i26 = phi i32 [ %i.an, %bb.e ], [ %i.aa, %bb.d ]
  %i.ao = add i32 %.0.i26, %2                     ; 2 uses
  %i.ap = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 4097
  br i1 %i.aq, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30, label %bb.f, !prof !46

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit27
  %i.ar = add i32 %i.ap, -4097                    ; 2 uses
  %i.as = shl i32 %i.ar, 10
  %i.at = add i32 %i.as, 4096
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.av = zext i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !48
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = add i32 %i.at, %i.bb
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit27, %bb.f
  %.0.i29 = phi i32 [ %i.bc, %bb.f ], [ %i.ap, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit27 ]
  %i.bd = shl i32 %.0.i29, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.bd, i32 %i.ao) ; 5 uses
  %i.be = icmp ugt i32 %.sroa.speculated.i, 521669632
  br i1 %i.be, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i, label %bb.g, !prof !30

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30
  %i.bf = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.speculated.i) ; 0 uses
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit.thread

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit30
  %i.bg = icmp samesign ult i32 %.sroa.speculated.i, 4097
  %i.bh = zext nneg i32 %.sroa.speculated.i to i64
  %i.bi = add nuw nsw i64 %i.bh, 4398046508031
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, 4096
  %.0.i.i.i.i = select i1 %i.bg, i32 %.sroa.speculated.i, i32 %i.bl
  %i.bm = shl nuw nsw i32 %.0.i.i.i.i, 3
  %i.bn = add nuw nsw i32 %i.bm, 15               ; 2 uses
  %i.bo = and i32 %i.bn, 2147483640               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.br = zext nneg i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.bs, %i.bu
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bw = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bv, i32 noundef %i.bo) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i

bb.i:                                             ; preds = %bb.g
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !28
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i: ; preds = %bb.i, %bb.h
  %i.bx = phi ptr [ %i.bw, %bb.h ], [ %i.bq, %bb.i ] ; 4 uses
  store i64 0, ptr %i.bx, align 8
  %i.by = and i32 %i.bn, 16777208
  %i.bz = or disjoint i32 %i.by, 268435456
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.bx, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit.thread, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit, !prof !59

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i
  %i.ca = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.bx, i32 noundef %i.ao) ; 3 uses
  %.not55 = icmp eq ptr %i.ca, inttoptr (i64 -1 to ptr)
  br i1 %.not55, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %i.cc, align 8, !tbaa !32
  %i.cd = and i64 %.sroa.0.0.copyload.i.i31, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.cf = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.cf, align 8, !tbaa !32
  %i.cg = and i64 %.sroa.0.0.copyload.i.i32, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load atomic i32, ptr %i.ci monotonic, align 4, !noalias !188 ; 3 uses
  %i.ck = icmp ult i32 %i.cj, 4097
  br i1 %i.ck, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit, label %bb.k, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.cl = add i32 %i.cj, -4097                    ; 2 uses
  %i.cm = shl i32 %i.cl, 10
  %i.cn = add i32 %i.cm, 4096
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 32776
  %i.cp = zext i32 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !48, !noalias !188
  %i.cs = and i64 %i.cr, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load atomic i32, ptr %i.cu monotonic, align 4, !noalias !188
  %i.cw = add i32 %i.cn, %i.cv
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi i32 [ %i.cw, %bb.k ], [ %i.cj, %bb.j ]
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 noundef %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.cx = load ptr, ptr %8, align 8, !tbaa !41, !noalias !189
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !42, !noalias !189
  %i.da = add i32 %i.cz, %2
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !44, !noalias !189, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.cx, i32 noundef %i.da, ptr noundef nonnull align 1 dereferenceable(1) %i.dc) #7
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.sroa.041.0.copyload42 = load ptr, ptr %7, align 8 ; 3 uses
  %.sroa.748.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.748.0.copyload50 = load ptr, ptr %.sroa.748.0..sroa_idx49, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.037.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.538.0.copyload = load ptr, ptr %.sroa.538.0..sroa_idx, align 8
  %.not1.i = icmp eq i32 %.sroa.4.0.copyload, %.sroa.3.0.copyload
  br i1 %.not1.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit
  %.sroa.543.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.543.0.copyload45 = load i32, ptr %.sroa.543.0..sroa_idx44, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.041.0.copyload42, i64 32776
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 32776
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %i.dj = phi i32 [ %.sroa.543.0.copyload45, %.lr.ph.i ], [ %i.er, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.dk = phi i32 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.ep, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.dl = icmp ult i32 %i.dj, 4096
  br i1 %i.dl, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i, label %bb.m, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.dm = add i32 %i.dj, -4096
  %i.dn = lshr i32 %i.dm, 10
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !48, !noalias !190
  %i.dr = and i64 %i.dq, 281474976710655
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = and i32 %i.dj, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i: ; preds = %bb.m, %bb.l
  %.sink6.i.i.i = phi ptr [ %i.ds, %bb.m ], [ %.sroa.041.0.copyload42, %bb.l ]
  %.sink5.i.i.i = phi i32 [ %i.dt, %bb.m ], [ %i.dj, %bb.l ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.dv = zext nneg i32 %.sink5.i.i.i to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dv ; 3 uses
  %i.dx = icmp ult i32 %i.dk, 4096
  br i1 %i.dx, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i, label %bb.n, !prof !46

bb.n:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i
  %i.dy = add i32 %i.dk, -4096
  %i.dz = lshr i32 %i.dy, 10
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !48, !noalias !190
  %i.ed = and i64 %i.ec, 281474976710655
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = and i32 %i.dk, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i: ; preds = %bb.n, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.ee, %bb.n ], [ %.sroa.037.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.ef, %bb.n ], [ %i.dk, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.eh = zext nneg i32 %.sink5.i.i to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh
  %.sroa.0.0.copyload.i = load i64, ptr %i.ei, align 8, !tbaa !32, !noalias !190 ; 2 uses
  %i.ej = load ptr, ptr %i.dg, align 8, !tbaa !35, !noalias !190
  %i.ek = ptrtoint ptr %i.dw to i64
  %i.el = and i64 %i.ek, -4194304
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = icmp eq ptr %i.ej, %i.em
  br i1 %i.en, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.o, !prof !46

bb.o:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i64 %.sroa.0.0.copyload.i) #7, !noalias !190
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.o, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.dw, align 8, !tbaa !48, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !190
  %i.eo = add i32 %i.dk, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.037.0.copyload, i32 noundef %i.eo, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.538.0.copyload) #7, !noalias !190
  %i.ep = load i32, ptr %i.dh, align 8, !tbaa !42, !noalias !190 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7, !noalias !190
  %i.eq = add i32 %i.dj, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.041.0.copyload42, i32 noundef %i.eq, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.748.0.copyload50) #7, !noalias !190
  %i.er = load i32, ptr %i.di, align 8, !tbaa !42, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7, !noalias !190
  %.not.i33 = icmp eq i32 %i.ep, %.sroa.3.0.copyload
  br i1 %.not.i33, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.l, !llvm.loop !1

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.es = or i64 %i.cb, -281474976710656
  %i.et = load ptr, ptr %0, align 8, !tbaa !77
  store i64 %i.es, ptr %i.et, align 8, !tbaa !48
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit.thread

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit.thread: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEjj.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.i ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE10shrinkLeftERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !197 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %5 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  %6 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 6 uses
  %7 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 2 uses
  %8 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.a = load ptr, ptr %6, align 8, !tbaa !41, !noalias !198
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42, !noalias !198
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorpLEj:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83, !noalias !262
  %i.d = add i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !262, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !83
  store i32 %i.h, ptr %i.b, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormIEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !265 {
bb.a:
  %2 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !82, !noalias !266
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83, !noalias !266
  %i.d = sub i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !266, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !83
  store i32 %i.h, ptr %i.b, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !269 {
bb.a:
  %1 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !82, !noalias !270
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83, !noalias !270
  %i.d = add i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !270, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !83
  store i32 %i.h, ptr %i.b, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratormmEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !273 {
bb.a:
  %1 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = load ptr, ptr %0, align 8, !tbaa !82, !noalias !274
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83, !noalias !274
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !noalias !274, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i32 noundef %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !83
  store i32 %i.h, ptr %i.b, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !275 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = icmp ult i32 %i.b, 4096
  %i.d = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !nonnull !45
  %i.g = add i32 %i.b, -4096
  %i.h = lshr i32 %i.g, 10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16392
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !86
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = zext i32 %i.l to i64
  %i.o = add i64 %i.n, %i.m
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = and i32 %i.b, 1023
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink6 = phi ptr [ %i.p, %bb.b ], [ %i.d, %bb.a ]
  %.sink5 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  %i.s = zext nneg i32 %.sink5 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE13inlineStorageEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !guid !276 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9segmentAtERNS0_11PointerBaseEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !277 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.d, 0
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %i.d to i64
  %i.g = add i64 %i.f, %i.e
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.h
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9toSegmentEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !guid !278 {
bb.a:
  %i.a = add i32 %0, -4096
  %i.b = lshr i32 %i.a, 10
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10toInteriorEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !guid !279 {
bb.a:
  %i.a = and i32 %0, 1023
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !guid !280 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = icmp ult i32 %i.b, 4096
  %i.d = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  br i1 %i.c, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84, !nonnull !45
  %i.g = add i32 %i.b, -4096
  %i.h = lshr i32 %i.g, 10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16392
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !86
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = zext i32 %i.l to i64
  %i.o = add i64 %i.n, %i.m
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = and i32 %i.b, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit: ; preds = %bb.a, %bb.b
  %.sink6.i = phi ptr [ %i.p, %bb.b ], [ %i.d, %bb.a ]
  %.sink5.i = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  %i.s = zext nneg i32 %.sink5.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE11maxElementsEv() local_unnamed_addr #0 comdat align 2 !guid !281 {
bb.a:
  ret i32 1047529472
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE14maxNumSegmentsEv() local_unnamed_addr #0 comdat align 2 !guid !282 {
bb.a:
  ret i32 1022974
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !283 {
bb.a:
  %i.a = icmp ugt i32 %1, 1047529472
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nuw nsw i64 %i.d, 4398046508031
  %i.f = lshr i64 %i.e, 10
  %i.g = trunc i64 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 4096
  %.0.i.i = select i1 %i.c, i32 %1, i32 %i.h
  %i.i = shl nuw nsw i32 %.0.i.i, 2
  %i.j = add nuw nsw i32 %i.i, 15                 ; 2 uses
  %i.k = and i32 %i.j, 2147483640                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.o, %i.q
  br i1 %.not.i.not.i.i.i.i.i, label %bb.d, label %bb.e, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.s = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, i32 noundef %i.k) #7
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit

bb.e:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !28
  br label %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit

_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit: ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.s, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  store i64 0, ptr %i.t, align 4
  %i.u = and i32 %i.j, 16777208
  %i.v = or disjoint i32 %i.u, 285212672
  store i32 %i.v, ptr %i.t, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit, %bb.b
  %.sroa.05.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.t, %_ZN6hermes2vm7Runtime13makeAVariableINS0_18SegmentedArrayBaseINS0_13HermesValue32EEELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_jDpOT2_.exit ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !296 {
_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit16:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %1) #7
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %.sroa.022.0.insert.ext = zext i32 %1 to i64
  %i.c = inttoptr i64 %.sroa.022.0.insert.ext to ptr
  store ptr @.str, ptr %4, align 8, !tbaa !33, !alias.scope !297
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !51, !alias.scope !297
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !33, !alias.scope !297
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 7, ptr %i.f, align 8, !tbaa !52, !alias.scope !297
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 76, ptr %i.g, align 8, !tbaa !53, !alias.scope !297
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.b, ptr %i.h, align 8, !tbaa !54, !alias.scope !297
  %i.i = add nsw i64 %i.b, 76
  store ptr %4, ptr %3, align 8, !tbaa !33, !alias.scope !298
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.j, align 8, !tbaa !51, !alias.scope !298
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !33, !alias.scope !298
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 3, ptr %i.l, align 8, !tbaa !52, !alias.scope !298
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.i, ptr %i.m, align 8, !tbaa !53, !alias.scope !298
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 17, ptr %i.n, align 8, !tbaa !54, !alias.scope !298
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.4, i32 noundef 1047529472) #7
  %i.p = sext i32 %i.o to i64
  %i.q = add nsw i64 %i.b, 93
  store ptr %3, ptr %2, align 8, !tbaa !33, !alias.scope !299
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !51, !alias.scope !299
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr inttoptr (i64 1047529472 to ptr), ptr %i.s, align 8, !tbaa !33, !alias.scope !299
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 7, ptr %i.t, align 8, !tbaa !52, !alias.scope !299
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.q, ptr %i.u, align 8, !tbaa !53, !alias.scope !299
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.p, ptr %i.v, align 8, !tbaa !54, !alias.scope !299
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE25allocationSizeForCapacityEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 !guid !300 {
bb.a:
  %i.a = icmp ult i32 %0, 4097
  %i.b = add i32 %0, -4096
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1023
  %i.e = lshr i64 %i.d, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 4096
  %.0.i = select i1 %i.a, i32 %0, i32 %i.g
  %i.h = shl nuw nsw i32 %.0.i, 2
  %i.i = add nuw nsw i32 %i.h, 8
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15createLongLivedERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !301 {
bb.a:
  %2 = alloca %"class.std::lock_guard", align 8   ; 4 uses
  %i.a = icmp ugt i32 %1, 1047529472
  br i1 %i.a, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nuw nsw i64 %i.d, 4398046508031
  %i.f = lshr i64 %i.e, 10
  %i.g = trunc i64 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 4096
  %.0.i.i = select i1 %i.c, i32 %1, i32 %i.h
  %i.i = shl nuw nsw i32 %.0.i.i, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.k = add nuw nsw i32 %i.i, 15                 ; 2 uses
  %i.l = and i32 %i.k, 2147483640
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind nonnull writable sret(%"class.std::lock_guard") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8112) %i.j) #7
  %i.m = call noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, i32 noundef %i.l) #7 ; 3 uses
  store i64 0, ptr %i.m, align 4
  %i.n = and i32 %i.k, 16777208
  %i.o = or disjoint i32 %i.n, 285212672
  store i32 %i.o, ptr %i.m, align 4, !tbaa !33
  %i.p = load ptr, ptr %2, align 8, !tbaa !57, !nonnull !45, !align !58
  %i.q = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !302 {
bb.a:
  %i.a = icmp ugt i32 %1, 1047529472
  br i1 %i.a, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, label %bb.b, !prof !30

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) ; 0 uses
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 4097
  %i.d = zext nneg i32 %1 to i64
  %i.e = add nuw nsw i64 %i.d, 4398046508031
  %i.f = lshr i64 %i.e, 10
  %i.g = trunc i64 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 4096
  %.0.i.i.i = select i1 %i.c, i32 %1, i32 %i.h
  %i.i = shl nuw nsw i32 %.0.i.i.i, 2
  %i.j = add nuw nsw i32 %i.i, 15                 ; 2 uses
  %i.k = and i32 %i.j, 2147483640                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.o, %i.q
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.s = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.r, i32 noundef %i.k) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %bb.b
  store ptr %i.o, ptr %i.l, align 8, !tbaa !28
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.s, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  store i64 0, ptr %i.t, align 4
  %i.u = and i32 %i.j, 16777208
  %i.v = or disjoint i32 %i.u, 285212672
  store i32 %i.v, ptr %i.t, align 4, !tbaa !33
  %.not = icmp eq ptr %i.t, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.f, label %bb.e, !prof !59

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %i.w = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.t, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %bb.e
  %.sroa.05.0 = phi ptr [ %i.w, %bb.e ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !313 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %0 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.s = add i32 %.0.i, %2                        ; 6 uses
  %i.t = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.u = icmp ult i32 %i.t, 4097
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.v = load i32, ptr %1, align 4
  %i.w = and i32 %i.v, 16777212
  %i.x = add nsw i32 %i.w, -8
  %i.y = lshr exact i32 %i.x, 2
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.y, i32 4096)
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.z = shl i32 %i.t, 10
  %i.aa = add i32 %i.z, -4190208
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit: ; preds = %bb.c, %bb.d
  %.0.i52 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %i.aa, %bb.d ]
  %.not = icmp ugt i32 %i.s, %.0.i52
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %2)
  br label %bb.z

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv.exit
  %i.ab = icmp ult i32 %.0.i, 4097
  br i1 %i.ab, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ac = shl nuw nsw i32 %.0.i, 2
  %narrow = add nuw nsw i32 %i.ac, 8              ; 2 uses
  %.not1421.i = icmp eq i32 %narrow, 16392
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ad = zext nneg i32 %narrow to i64            ; 4 uses
  %i.ae = sub nsw i64 16388, %i.ad                ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader142, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2
  %i.ai = add i64 %i.ah, %i.ad
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl nuw i64 %index, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 7), ptr %gep, align 4, !tbaa !9
  store <4 x i32> splat (i32 7), ptr %i.ak, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader142

.lr.ph.i.preheader142:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.01320.i.idx.ph = phi i64 [ %i.ad, %.lr.ph.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader142, %.lr.ph.i
  %.01320.i.idx = phi i64 [ %.01320.i.add, %.lr.ph.i ], [ %.01320.i.idx.ph, %.lr.ph.i.preheader142 ] ; 2 uses
  %.01320.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  store i32 7, ptr %.01320.i.ptr, align 4, !tbaa !9
  %.01320.i.add = add nuw nsw i64 %.01320.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.01320.i.add, 16392
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !304

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.g
  store atomic i32 4096, ptr %i.a release, align 4
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.am = add i32 %.0.i, -4097
  %i.an = lshr i32 %i.am, 10
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, %.critedge
  %i.ao = phi i32 [ %i.an, %.critedge ], [ 0, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit ] ; 5 uses
  %i.ap = add i32 %i.s, 1023
  %i.aq = add i32 %i.s, -4097
  %i.ar = lshr i32 %i.aq, 10                      ; 5 uses
  %i.as = icmp ult i32 %i.s, 4097
  %i.at = add i32 %i.s, -4096
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1023
  %i.aw = lshr i64 %i.av, 10
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 4096
  %.0.i53 = select i1 %i.as, i32 %i.s, i32 %i.ay  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.bb = zext i32 %.0.i53 to i64                 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %.not1421.i54 = icmp eq i32 %i.ba, %.0.i53
  br i1 %.not1421.i54, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.h
  %i.bd = zext i32 %i.ba to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bd ; 3 uses
  %i.bf = shl nuw nsw i64 %i.bb, 2
  %i.bg = shl nuw nsw i64 %i.bd, 2
  %i.bh = add nsw i64 %i.bf, -4
  %i.bi = sub nsw i64 %i.bh, %i.bg                ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check109 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check109, label %.lr.ph.i55.preheader141, label %vector.ph110

vector.ph110:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec111 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bl = shl i64 %n.vec111, 2
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next114, %vector.body112 ] ; 2 uses
  %i.bn = shl i64 %index113, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bn ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE:bb.a
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !30

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bc = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bb, i32 noundef 16) #7
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.o:                                             ; preds = %bb.m
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !28
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.o, %bb.n
  %i.bd = phi ptr [ %i.bc, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.be, align 8, !tbaa !325
  store i32 402653200, ptr %i.bd, align 8, !tbaa !33
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %1 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = or i32 %i.bi, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.c ], [ %i.an, %bb.j ], [ 14, %bb.d ], [ 15, %bb.e ], [ %i.z, %bb.f ], [ %i.ac, %bb.g ], [ %i.ag, %bb.h ], [ %i.ak, %bb.i ], [ %i.av, %bb.l ], [ %i.bj, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i12 = load i64, ptr %i.bk, align 8, !tbaa !32
  %i.bl = and i64 %.sroa.0.0.copyload.i.i12, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.bm, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.bn = load ptr, ptr %4, align 8, !tbaa !82, !noalias !326
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !83, !noalias !326
  %i.bq = add i32 %i.bp, %.0.i
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84, !noalias !326, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.bn, i32 noundef %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %i.bs) #7
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !83 ; 4 uses
  %i.bv = icmp ult i32 %i.bu, 4096
  %i.bw = load ptr, ptr %3, align 8, !tbaa !82    ; 2 uses
  br i1 %i.bv, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit, label %bb.p, !prof !46

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !84, !nonnull !45
  %i.bz = add i32 %i.bu, -4096
  %i.ca = lshr i32 %i.bz, 10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16392
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !86
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = zext i32 %i.ce to i64
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = and i32 %i.bu, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit, %bb.p
  %.sink6.i.i = phi ptr [ %i.ci, %bb.p ], [ %i.bw, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %.sink5.i.i = phi i32 [ %i.cj, %bb.p ], [ %i.bu, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.cl = zext nneg i32 %.sink5.i.i to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  store i32 %.sroa.04.0.i, ptr %i.cm, align 4, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !35
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = and i64 %i.cp, -4194304
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = icmp eq ptr %i.co, %i.cr
  br i1 %i.cs, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit, label %bb.q, !prof !46

bb.q:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ct, ptr noundef nonnull align 4 dereferenceable(4) %i.cm, i32 %.sroa.04.0.i) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit: ; preds = %bb.q, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %.0 = phi i32 [ 0, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit ], [ 1, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit ], [ 1, %bb.q ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9growRightERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !327 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  %i.n = ptrtoint ptr %1 to i64
  %i.o = zext i32 %i.m to i64
  %i.p = add i64 %i.o, %i.n
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = add i32 %i.i, %i.t
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.u, %bb.b ], [ %i.e, %bb.a ]
  %i.v = add i32 %.0.i, %2
  %i.w = load i32, ptr %i.c, align 4
  %i.x = and i32 %i.w, 16777212
  %i.y = add nsw i32 %i.x, -8                     ; 3 uses
  %i.z = lshr exact i32 %i.y, 2
  %i.aa = icmp ult i32 %i.y, 16388
  %i.ab = shl i32 %i.y, 8
  %i.ac = add i32 %i.ab, -4190208
  %.0.i27 = select i1 %i.aa, i32 %i.z, i32 %i.ac
  %.not = icmp ugt i32 %i.v, %.0.i27
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.ad = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.c, i32 noundef %2) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.ae = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 4097
  br i1 %i.af, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit31, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.ag = add i32 %i.ae, -4097                    ; 2 uses
  %i.ah = shl i32 %i.ag, 10
  %i.ai = add i32 %i.ah, 4096
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.ak = zext i32 %i.ag to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i29 = icmp eq i32 %i.am, 0
  %i.an = ptrtoint ptr %1 to i64
  %i.ao = zext i32 %i.am to i64
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = select i1 %.not.i.i.i.i.i.i29, ptr null, ptr %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load atomic i32, ptr %i.as monotonic, align 4
  %i.au = add i32 %i.ai, %i.at
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit31

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit31: ; preds = %bb.d, %bb.e
  %.0.i30 = phi i32 [ %i.au, %bb.e ], [ %i.ae, %bb.d ]
  %i.av = add i32 %.0.i30, %2
  %i.aw = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 4097
  br i1 %i.ax, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit35, label %bb.f, !prof !46

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit31
  %i.ay = add i32 %i.aw, -4097                    ; 2 uses
  %i.az = shl i32 %i.ay, 10
  %i.ba = add i32 %i.az, 4096
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i33 = icmp eq i32 %i.be, 0
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = zext i32 %i.be to i64
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = select i1 %.not.i.i.i.i.i.i33, ptr null, ptr %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4
  %i.bm = add i32 %i.ba, %i.bl
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit35

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit35: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit31, %bb.f
  %.0.i34 = phi i32 [ %i.bm, %bb.f ], [ %i.aw, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit31 ]
  %i.bn = shl i32 %.0.i34, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.bn, i32 %i.av) ; 5 uses
  %i.bo = icmp ugt i32 %.sroa.speculated.i, 1047529472
  br i1 %i.bo, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, label %bb.g, !prof !30

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit35
  %i.bp = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.speculated.i) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit35
  %i.bq = icmp samesign ult i32 %.sroa.speculated.i, 4097
  %i.br = zext nneg i32 %.sroa.speculated.i to i64
  %i.bs = add nuw nsw i64 %i.br, 4398046508031
  %i.bt = lshr i64 %i.bs, 10
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bu, 4096
  %.0.i.i.i = select i1 %i.bq, i32 %.sroa.speculated.i, i32 %i.bv
  %i.bw = shl nuw nsw i32 %.0.i.i.i, 2
  %i.bx = add nuw nsw i32 %i.bw, 15               ; 2 uses
  %i.by = and i32 %i.bx, 2147483640               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28 ; 2 uses
  %i.cb = zext nneg i32 %i.by to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.cc, %i.ce
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cg = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cf, i32 noundef %i.by) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

bb.i:                                             ; preds = %bb.g
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !28
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.h, %bb.i
  %i.ch = phi ptr [ %i.cg, %bb.h ], [ %i.ca, %bb.i ] ; 6 uses
  store i64 0, ptr %i.ch, align 4
  %i.ci = and i32 %i.bx, 16777208
  %i.cj = or disjoint i32 %i.ci, 285212672
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !33
  %.not43 = icmp eq ptr %i.ch, inttoptr (i64 -1 to ptr)
  br i1 %.not43, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %i.ck = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i36 = load i64, ptr %i.ck, align 8, !tbaa !32
  %i.cl = and i64 %.sroa.0.0.copyload.i.i36, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load atomic i32, ptr %i.cn monotonic, align 4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = zext i32 %i.co to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  %.idx = shl nuw nsw i64 %i.cq, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !35
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = and i64 %i.cu, -4194304
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = icmp eq ptr %i.ct, %i.cw
  br i1 %i.cx, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit, label %bb.k, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cy, ptr noundef nonnull %i.cr, i32 noundef %i.co) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit: ; preds = %bb.j, %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 4 %i.cp, i64 %.idx, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store atomic i32 %i.co, ptr %i.cz release, align 4
  %i.da = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ch, i32 noundef %2)
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = or i64 %i.db, -281474976710656
  %i.dd = load ptr, ptr %0, align 8, !tbaa !77
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_copyEPS3_S4_S4_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !328 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  %i.n = ptrtoint ptr %1 to i64
  %i.o = zext i32 %i.m to i64
  %i.p = add i64 %i.o, %i.n
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = add i32 %i.i, %i.t
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.u, %bb.b ], [ %i.e, %bb.a ]
  %i.v = icmp ugt i32 %2, %.0.i
  %i.w = load atomic i32, ptr %i.d monotonic, align 4 ; 5 uses
  %i.x = icmp ult i32 %i.w, 4097                  ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  br i1 %i.x, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20, label %bb.d, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.y = add i32 %i.w, -4097                      ; 2 uses
  %i.z = shl i32 %i.y, 10
  %i.aa = add i32 %i.z, 4096
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.ac = zext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i18 = icmp eq i32 %i.ae, 0
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = zext i32 %i.ae to i64
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = select i1 %.not.i.i.i.i.i.i18, ptr null, ptr %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4
  %i.am = add i32 %i.aa, %i.al
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20: ; preds = %bb.c, %bb.d
  %.0.i19 = phi i32 [ %i.am, %bb.d ], [ %i.w, %bb.c ]
  %i.an = sub i32 %2, %.0.i19
  %i.ao = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9growRightERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.an)
  br label %bb.i

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  br i1 %i.x, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.ap = add i32 %i.w, -4097                     ; 2 uses
  %i.aq = shl i32 %i.ap, 10
  %i.ar = add i32 %i.aq, 4096
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.at = zext i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i22 = icmp eq i32 %i.av, 0
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = zext i32 %i.av to i64
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = select i1 %.not.i.i.i.i.i.i22, ptr null, ptr %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4
  %i.bd = add i32 %i.ar, %i.bc
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24: ; preds = %bb.e, %bb.f
  %.0.i23 = phi i32 [ %i.bd, %bb.f ], [ %i.w, %bb.e ]
  %i.be = icmp ult i32 %2, %.0.i23
  br i1 %i.be, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24
  %i.bf = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.bg = icmp ult i32 %i.bf, 4097
  br i1 %i.bg, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29, label %bb.h, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.bh = add i32 %i.bf, -4097                    ; 2 uses
  %i.bi = shl i32 %i.bh, 10
  %i.bj = add i32 %i.bi, 4096
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.bl = zext i32 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i27 = icmp eq i32 %i.bn, 0
  %i.bo = ptrtoint ptr %1 to i64
  %i.bp = zext i32 %i.bn to i64
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = select i1 %.not.i.i.i.i.i.i27, ptr null, ptr %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4
  %i.bv = add i32 %i.bj, %i.bu
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29: ; preds = %bb.g, %bb.h
  %.0.i28 = phi i32 [ %i.bv, %bb.h ], [ %i.bf, %bb.g ]
  %i.bw = sub i32 %.0.i28, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20
  %.0 = phi i32 [ %i.ao, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20 ], [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24 ], [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29 ]
  ret i32 %.0
}

end_hunk_4
begin_hunk_5_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj:bb.a
  %i.ac = zext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i18 = icmp eq i32 %i.ae, 0
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = zext i32 %i.ae to i64
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = select i1 %.not.i.i.i.i.i.i18, ptr null, ptr %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4
  %i.am = add i32 %i.aa, %i.al
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20: ; preds = %bb.c, %bb.d
  %.0.i19 = phi i32 [ %i.am, %bb.d ], [ %i.w, %bb.c ]
  %i.an = icmp ugt i32 %2, %.0.i19
  %i.ao = load atomic i32, ptr %i.d monotonic, align 4 ; 5 uses
  %i.ap = icmp ult i32 %i.ao, 4097                ; 2 uses
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20
  br i1 %i.ap, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %i.ao, -4097                    ; 2 uses
  %i.ar = shl i32 %i.aq, 10
  %i.as = add i32 %i.ar, 4096
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i22 = icmp eq i32 %i.aw, 0
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = zext i32 %i.aw to i64
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = select i1 %.not.i.i.i.i.i.i22, ptr null, ptr %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 4
  %i.be = add i32 %i.as, %i.bd
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24: ; preds = %bb.e, %bb.f
  %.0.i23 = phi i32 [ %i.be, %bb.f ], [ %i.ao, %bb.e ]
  %i.bf = sub i32 %2, %.0.i23
  %i.bg = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8growLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.bf)
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit20
  br i1 %i.ap, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29, label %bb.h, !prof !46

bb.h:                                             ; preds = %bb.g
  %i.bh = add i32 %i.ao, -4097                    ; 2 uses
  %i.bi = shl i32 %i.bh, 10
  %i.bj = add i32 %i.bi, 4096
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.bl = zext i32 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i27 = icmp eq i32 %i.bn, 0
  %i.bo = ptrtoint ptr %1 to i64
  %i.bp = zext i32 %i.bn to i64
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = select i1 %.not.i.i.i.i.i.i27, ptr null, ptr %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4
  %i.bv = add i32 %i.bj, %i.bu
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29: ; preds = %bb.g, %bb.h
  %.0.i28 = phi i32 [ %i.bv, %bb.h ], [ %i.ao, %bb.g ]
  %i.bw = sub i32 %.0.i28, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10shrinkLeftERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24
  %.0 = phi i32 [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit29 ], [ %i.bg, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit24 ], [ 1, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8growLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !337 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %5 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %6 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 2 uses
  %7 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %8 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !32
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  %i.n = ptrtoint ptr %1 to i64
  %i.o = zext i32 %i.m to i64
  %i.p = add i64 %i.o, %i.n
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = add i32 %i.i, %i.t
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.u, %bb.b ], [ %i.e, %bb.a ]
  %i.v = add i32 %.0.i, %2
  %i.w = load i32, ptr %i.c, align 4
  %i.x = and i32 %i.w, 16777212
  %i.y = add nsw i32 %i.x, -8                     ; 3 uses
  %i.z = lshr exact i32 %i.y, 2
  %i.aa = icmp ult i32 %i.y, 16388
  %i.ab = shl i32 %i.y, 8
  %i.ac = add i32 %i.ab, -4190208
  %.0.i24 = select i1 %i.aa, i32 %i.z, i32 %i.ac
  %.not = icmp ugt i32 %i.v, %.0.i24
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE22growLeftWithinCapacityERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.c, i32 noundef %2)
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit.thread

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.ad = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 4097
  br i1 %i.ae, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit28, label %bb.e, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.af = add i32 %i.ad, -4097                    ; 2 uses
  %i.ag = shl i32 %i.af, 10
  %i.ah = add i32 %i.ag, 4096
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.aj = zext i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i26 = icmp eq i32 %i.al, 0
  %i.am = ptrtoint ptr %1 to i64
  %i.an = zext i32 %i.al to i64
  %i.ao = add i64 %i.an, %i.am
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = select i1 %.not.i.i.i.i.i.i26, ptr null, ptr %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4
  %i.at = add i32 %i.ah, %i.as
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit28

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit28: ; preds = %bb.d, %bb.e
  %.0.i27 = phi i32 [ %i.at, %bb.e ], [ %i.ad, %bb.d ]
  %i.au = add i32 %.0.i27, %2                     ; 2 uses
  %i.av = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 4097
  br i1 %i.aw, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit32, label %bb.f, !prof !46

bb.f:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit28
  %i.ax = add i32 %i.av, -4097                    ; 2 uses
  %i.ay = shl i32 %i.ax, 10
  %i.az = add i32 %i.ay, 4096
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16392
  %i.bb = zext i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !86 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq i32 %i.bd, 0
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = zext i32 %i.bd to i64
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = select i1 %.not.i.i.i.i.i.i30, ptr null, ptr %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load atomic i32, ptr %i.bj monotonic, align 4
  %i.bl = add i32 %i.az, %i.bk
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit32

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit32: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit28, %bb.f
  %.0.i31 = phi i32 [ %i.bl, %bb.f ], [ %i.av, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit28 ]
  %i.bm = shl i32 %.0.i31, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.bm, i32 %i.au) ; 5 uses
  %i.bn = icmp ugt i32 %.sroa.speculated.i, 1047529472
  br i1 %i.bn, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i, label %bb.g, !prof !30

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i: ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit32
  %i.bo = tail call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.speculated.i) ; 0 uses
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit.thread

bb.g:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit32
  %i.bp = icmp samesign ult i32 %.sroa.speculated.i, 4097
  %i.bq = zext nneg i32 %.sroa.speculated.i to i64
  %i.br = add nuw nsw i64 %i.bq, 4398046508031
  %i.bs = lshr i64 %i.br, 10
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bt, 4096
  %.0.i.i.i.i = select i1 %i.bp, i32 %.sroa.speculated.i, i32 %i.bu
  %i.bv = shl nuw nsw i32 %.0.i.i.i.i, 2
  %i.bw = add nuw nsw i32 %i.bv, 15               ; 2 uses
  %i.bx = and i32 %i.bw, 2147483640               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28 ; 2 uses
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.cb, %i.cd
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cf = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ce, i32 noundef %i.bx) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i

bb.i:                                             ; preds = %bb.g
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !28
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i: ; preds = %bb.i, %bb.h
  %i.cg = phi ptr [ %i.cf, %bb.h ], [ %i.bz, %bb.i ] ; 4 uses
  store i64 0, ptr %i.cg, align 4
  %i.ch = and i32 %i.bw, 16777208
  %i.ci = or disjoint i32 %i.ch, 285212672
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !33
  %.not.i = icmp eq ptr %i.cg, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit.thread, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit, !prof !59

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i
  %i.cj = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.cg, i32 noundef %i.au) ; 3 uses
  %.not57 = icmp eq ptr %i.cj, inttoptr (i64 -1 to ptr)
  br i1 %.not57, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i33 = load i64, ptr %i.cl, align 8, !tbaa !32
  %i.cm = and i64 %.sroa.0.0.copyload.i.i33, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(8) %i.cn, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.co = load ptr, ptr %0, align 8, !tbaa !76
  %.sroa.0.0.copyload.i.i34 = load i64, ptr %i.co, align 8, !tbaa !32
  %i.cp = and i64 %.sroa.0.0.copyload.i.i34, 281474976710655
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load atomic i32, ptr %i.cr monotonic, align 4, !noalias !338 ; 3 uses
  %i.ct = icmp ult i32 %i.cs, 4097
  br i1 %i.ct, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit, label %bb.k, !prof !46

bb.k:                                             ; preds = %bb.j
  %i.cu = add i32 %i.cs, -4097                    ; 2 uses
  %i.cv = shl i32 %i.cu, 10
  %i.cw = add i32 %i.cv, 4096
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16392
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !86, !noalias !338 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.da, 0
  %i.db = ptrtoint ptr %1 to i64
  %i.dc = zext i32 %i.da to i64
  %i.dd = add i64 %i.dc, %i.db
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = select i1 %.not.i.i.i.i.i.i.i, ptr null, ptr %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load atomic i32, ptr %i.dg monotonic, align 4, !noalias !338
  %i.di = add i32 %i.cw, %i.dh
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi i32 [ %i.di, %bb.k ], [ %i.cs, %bb.j ]
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.cq, i32 noundef %.0.i.i, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.cj, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1) #7
  %i.dj = load ptr, ptr %8, align 8, !tbaa !82, !noalias !339
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !83, !noalias !339
  %i.dm = add i32 %i.dl, %2
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !84, !noalias !339, !nonnull !45
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.dj, i32 noundef %i.dm, ptr noundef nonnull align 1 dereferenceable(1) %i.do) #7
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.sroa.043.0.copyload44 = load ptr, ptr %7, align 8 ; 3 uses
  %.sroa.750.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.750.0.copyload52 = load ptr, ptr %.sroa.750.0..sroa_idx51, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.039.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.540.0.copyload = load ptr, ptr %.sroa.540.0..sroa_idx, align 8 ; 2 uses
  %.not1.i = icmp eq i32 %.sroa.4.0.copyload, %.sroa.3.0.copyload
  br i1 %.not1.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.545.0.copyload47 = load i32, ptr %.sroa.545.0..sroa_idx46, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.043.0.copyload44, i64 16392
  %i.dr = ptrtoint ptr %.sroa.750.0.copyload52 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 16392
  %i.dt = ptrtoint ptr %.sroa.540.0.copyload to i64
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %i.dx = phi i32 [ %.sroa.545.0.copyload47, %.lr.ph.i ], [ %i.fh, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.dy = phi i32 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.ff, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.dz = icmp ult i32 %i.dx, 4096
  br i1 %i.dz, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i, label %bb.m, !prof !46

bb.m:                                             ; preds = %bb.l
  %i.ea = add i32 %i.dx, -4096
  %i.eb = lshr i32 %i.ea, 10
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !86, !noalias !340
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add i64 %i.ef, %i.dr
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = and i32 %i.dx, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i: ; preds = %bb.m, %bb.l
  %.sink6.i.i.i = phi ptr [ %i.eh, %bb.m ], [ %.sroa.043.0.copyload44, %bb.l ]
  %.sink5.i.i.i = phi i32 [ %i.ei, %bb.m ], [ %i.dx, %bb.l ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.ek = zext nneg i32 %.sink5.i.i.i to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ek ; 3 uses
  %i.em = icmp ult i32 %i.dy, 4096
  br i1 %i.em, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i, label %bb.n, !prof !46

bb.n:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %i.en = add i32 %i.dy, -4096
  %i.eo = lshr i32 %i.en, 10
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !86, !noalias !340
  %i.es = zext i32 %i.er to i64
  %i.et = add i64 %i.es, %i.dt
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = and i32 %i.dy, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i: ; preds = %bb.n, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.eu, %bb.n ], [ %.sroa.039.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.ev, %bb.n ], [ %i.dy, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.ex = zext nneg i32 %.sink5.i.i to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ex
  %.sroa.0.0.copyload.i = load i32, ptr %i.ey, align 4, !tbaa !9, !noalias !340 ; 2 uses
  %i.ez = load ptr, ptr %i.du, align 8, !tbaa !35, !noalias !340
  %i.fa = ptrtoint ptr %i.el to i64
  %i.fb = and i64 %i.fa, -4194304
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = icmp eq ptr %i.ez, %i.fc
  br i1 %i.fd, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.o, !prof !46

bb.o:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.el, i32 %.sroa.0.0.copyload.i) #7, !noalias !340
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.o, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  store i32 %.sroa.0.0.copyload.i, ptr %i.el, align 4, !tbaa !86, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !340
  %i.fe = add i32 %i.dy, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.039.0.copyload, i32 noundef %i.fe, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.540.0.copyload) #7, !noalias !340
  %i.ff = load i32, ptr %i.dv, align 8, !tbaa !83, !noalias !340 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7, !noalias !340
  %i.fg = add i32 %i.dx, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.043.0.copyload44, i32 noundef %i.fg, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.750.0.copyload52) #7, !noalias !340
  %i.fh = load i32, ptr %i.dw, align 8, !tbaa !83, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7, !noalias !340
  %.not.i35 = icmp eq i32 %i.ff, %.sroa.3.0.copyload
  br i1 %.not.i35, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.l, !llvm.loop !2

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  %i.fi = or i64 %i.ck, -281474976710656
  %i.fj = load ptr, ptr %0, align 8, !tbaa !77
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !48
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit.thread

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit.thread: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj.exit ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i ], [ 0, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10shrinkLeftERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !guid !347 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
  %5 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator", align 8 ; 4 uses
end_hunk_5
