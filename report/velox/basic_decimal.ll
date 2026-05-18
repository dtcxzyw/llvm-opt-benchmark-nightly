inline.NumInlined: 502
inline.NumDeleted: 138
begin_hunk_0_@_ZNK5arrow14BasicDecimal3215FitsInPrecisionEi:bb.a
  %i.a = load i32, ptr %0, align 4
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr @_ZN5arrowL21kDecimal32PowersOfTenE, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = icmp slt i32 %spec.select.i, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = icmp slt i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow14BasicDecimal6415FitsInPrecisionEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true)
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp slt i64 %spec.select.i, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = icmp slt i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowleERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = icmp sle i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = icmp sgt i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -2147483647, -2147483648) i32 @_ZN5arrowngERKNS_14BasicDecimal32E(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = sub nsw i32 0, %i.a
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZN5arrowcoERKNS_14BasicDecimal32E(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = xor i32 %i.a, -1
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZN5arrowplERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = add nsw i32 %i.b, %i.a
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZN5arrowmiERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = sub nsw i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @_ZN5arrowdvERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = sdiv i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -2147483647, -2147483648) i32 @_ZN5arrowrmERKNS_14BasicDecimal32ES2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !12     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZNK5arrow14BasicDecimal326DivideERKS0_PS0_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !12
  %i.d = srem i32 %i.c, %i.a
  br label %_ZNK5arrow14BasicDecimal326DivideERKS0_PS0_S3_.exit

_ZNK5arrow14BasicDecimal326DivideERKS0_PS0_S3_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %.sroa.02.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowleERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = icmp sle i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgtERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = icmp sgt i64 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN5arrowngERKNS_14BasicDecimal64E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = sub nsw i64 0, %i.a
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowcoERKNS_14BasicDecimal64E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = xor i64 %i.a, -1
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowplERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = add nsw i64 %i.b, %i.a
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowmiERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = sub nsw i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @_ZN5arrowdvERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %i.c = sdiv i64 %i.a, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i64 -9223372036854775807, -9223372036854775808) i64 @_ZN5arrowrmERKNS_14BasicDecimal64ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !14
  %i.d = srem i64 %i.c, %i.a
  br label %_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit

_ZNK5arrow14BasicDecimal646DivideERKS0_PS0_S3_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i64 %.sroa.02.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1286NegateEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %1 = xor i64 %i.c, -1
  %2 = icmp eq i64 %i.a, 0
  %i.d = sub i64 0, %i.c
  %3 = sub i64 0, %i.a
  %.sroa.6.0 = select i1 %2, i64 %i.d, i64 %1
  store i64 %3, ptr %0, align 8
  store i64 %.sroa.6.0, ptr %i.b, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1283AbsEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %1 = xor i64 %i.b, -1
  %2 = icmp eq i64 %i.d, 0
  %i.e = sub i64 0, %i.b
  %3 = sub i64 0, %i.d
  %.sroa.6.0.i = select i1 %2, i64 %i.e, i64 %1
  store i64 %3, ptr %0, align 8
  store i64 %.sroa.6.0.i, ptr %i.a, align 8
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread: ; preds = %bb.a, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = icmp ult i64 %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrow15BasicDecimal1283AbsERKS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload1 = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %i.a = icmp slt i64 %.sroa.6.0.copyload, 0
  br i1 %i.a, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.a
  %1 = xor i64 %.sroa.6.0.copyload, -1
  %2 = icmp eq i64 %.sroa.0.0.copyload1, 0
  %3 = sub i64 0, %.sroa.6.0.copyload
  %4 = sub i64 0, %.sroa.0.0.copyload1
  %.sroa.6.0.i.i = select i1 %2, i64 %3, i64 %1
  br label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrow15BasicDecimal1283AbsEv.exit:            ; preds = %bb.a, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i ], [ %.sroa.6.0.copyload, %bb.a ]
  %.sroa.0.0 = phi i64 [ %4, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i ], [ %.sroa.0.0.copyload1, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow15BasicDecimal12815FitsInPrecisionEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 4 uses
  %3 = icmp slt i64 %.sroa.6.0.copyload.i, 0
  br i1 %3, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i:  ; preds = %2
  %4 = xor i64 %.sroa.6.0.copyload.i, -1
  %5 = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  %6 = sub i64 0, %.sroa.6.0.copyload.i
  %7 = sub i64 0, %.sroa.0.0.copyload1.i
  %.sroa.6.0.i.i.i = select i1 %5, i64 %6, i64 %4
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit:        ; preds = %2, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i ], [ %.sroa.6.0.copyload.i, %2 ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %7, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i ], [ %.sroa.0.0.copyload1.i, %2 ]
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %.sroa.6.0.i, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit
  %i.f = icmp eq i64 %.sroa.6.0.i, %i.d
  br i1 %i.f, label %bb.b, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 16, !tbaa !9
  %i.h = icmp ult i64 %.sroa.0.0.i, %i.g
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit, %bb.a, %bb.b
  %i.i = phi i1 [ true, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit ], [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128pLERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.e, %i.j
  store i64 %i.h, ptr %0, align 8
  store i64 %i.k, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mIERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = sub i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.g, %i.f
  %.neg = sext i1 %i.i to i64
  %i.j = add i64 %i.e, %.neg
  store i64 %i.h, ptr %0, align 8
  store i64 %i.j, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128dVERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 3) i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [33 x i32], align 16              ; 15 uses
  %i.b = alloca [33 x i32], align 16              ; 38 uses
  %i.c = alloca [32 x i32], align 16              ; 26 uses
  %i.d = alloca [32 x i32], align 16              ; 9 uses
  %.val = load i64, ptr %1, align 8               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.e, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.b, align 16, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %.val100.i = load i64, ptr %0, align 8          ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val101.i = load i64, ptr %i.g, align 8        ; 5 uses
  %i.h = icmp slt i64 %.val101.i, 0
  %.0.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.0.i.sroa.gep4.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %.0.i.sroa.gep5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.0.i.sroa.gep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.0.i.sroa.gep16.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.0.i.sroa.gep17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.i.sroa.gep18.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.i.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %i.h, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i: ; preds = %bb.a
  %4 = xor i64 %.val101.i, -1
  %5 = icmp eq i64 %.val100.i, 0
  %6 = sub i64 0, %.val100.i
  br i1 %5, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i.i: ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i
  %7 = sub i64 0, %.val101.i
  br label %bb.b

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i:    ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i, %bb.a
  %.sroa.6.0.i.i.i = phi i64 [ %4, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i ], [ %.val101.i, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ %6, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i ], [ %.val100.i, %bb.a ] ; 6 uses
  %.lobit.i.i = lshr i64 %.val101.i, 63
  %8 = trunc nuw nsw i64 %.lobit.i.i to i8        ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i.i
  %.022.i = phi i8 [ 1, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i.i ], [ %8, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ] ; 2 uses
  %.sroa.0.0.i8.i.i = phi i64 [ 0, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i.i ], [ %.sroa.0.0.i.i.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ] ; 4 uses
  %.sroa.6.0.i7.i.i = phi i64 [ %7, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i.i ], [ %.sroa.6.0.i.i.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ] ; 4 uses
  %i.i = icmp ugt i64 %.sroa.6.0.i7.i.i, 4294967295
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %.sroa.6.0.i7.i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  store i32 %i.k, ptr %i.f, align 4, !tbaa !3
  %i.l = trunc i64 %.sroa.6.0.i7.i.i to i32
  store i32 %i.l, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  %i.m = lshr i64 %.sroa.0.0.i8.i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  store i32 %i.n, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !3
  %i.o = trunc i64 %.sroa.0.0.i8.i.i to i32       ; 2 uses
  store i32 %i.o, ptr %.0.i.sroa.gep.i, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = trunc nuw i64 %.sroa.6.0.i7.i.i to i32
  store i32 %i.p, ptr %i.f, align 4, !tbaa !3
  %i.q = lshr i64 %.sroa.0.0.i8.i.i, 32
  %i.r = trunc nuw i64 %i.q to i32
  store i32 %i.r, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  %i.s = trunc i64 %.sroa.0.0.i8.i.i to i32       ; 2 uses
  store i32 %i.s, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.e:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i
  %i.t = icmp ugt i64 %.sroa.0.0.i.i.i, 4294967295
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.v = trunc nuw i64 %i.u to i32
  store i32 %i.v, ptr %i.f, align 4, !tbaa !3
  %i.w = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.w, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.x, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = trunc nuw i64 %.sroa.0.0.i.i.i to i32    ; 2 uses
  store i32 %i.y, ptr %i.f, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %i.z = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ 0, %bb.g ], [ %i.y, %bb.h ]
  %.123.i = phi i8 [ %.022.i, %bb.c ], [ %.022.i, %bb.d ], [ %8, %bb.f ], [ %8, %bb.g ], [ %8, %bb.h ] ; 4 uses
  %.0.i.sroa.phi.i = phi ptr [ %.0.i.sroa.gep.i, %bb.c ], [ %.0.i.sroa.gep4.i, %bb.d ], [ %.0.i.sroa.gep5.i, %bb.f ], [ %i.b, %bb.g ], [ %i.f, %bb.h ] ; 5 uses
  %.0.i.sroa.phi14.i = phi ptr [ %.0.i.sroa.gep15.i, %bb.c ], [ %.0.i.sroa.gep16.i, %bb.d ], [ %.0.i.sroa.gep17.i, %bb.f ], [ %i.a, %bb.g ], [ %.0.i.sroa.gep18.i, %bb.h ] ; 2 uses
  %i.aa = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ] ; 3 uses
  %i.ab = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.g ], [ false, %bb.h ] ; 3 uses
  %.not.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.h ] ; 3 uses
  %i.ac = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ] ; 2 uses
  %min.iters.check25 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ]
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.c ], [ %.0.i.i.sroa.gep43, %bb.d ], [ %.0.i.i.sroa.gep44, %bb.f ], [ %i.b, %bb.g ], [ %.0.i.i.sroa.gep46, %bb.h ] ; 2 uses
  %.0.i.i.sroa.phi47 = phi ptr [ %.0.i.i.sroa.gep48, %bb.c ], [ %.0.i.i.sroa.gep49, %bb.d ], [ %.0.i.i.sroa.gep50, %bb.f ], [ %i.b, %bb.g ], [ %.0.i.i.sroa.gep52, %bb.h ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %exitcond.not.i.i.3 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %i.ad = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %9 = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %.0.i.i = phi i64 [ 4, %bb.c ], [ 3, %bb.d ], [ 2, %bb.f ], [ 0, %bb.g ], [ 1, %bb.h ] ; 10 uses
  %i.ae = add nuw nsw i64 %.0.i.i, 1              ; 3 uses
  %i.af = icmp slt i64 %.val4, 0
  br i1 %i.af, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i110.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i110.i: ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %10 = xor i64 %.val4, -1
  %11 = icmp eq i64 %.val, 0
  %12 = sub i64 0, %.val
  br i1 %11, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i111.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i111.i: ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i110.i
  %13 = sub i64 0, %.val4
  br label %bb.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i: ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i110.i, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %.sroa.6.0.i.i103.i = phi i64 [ %10, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i110.i ], [ %.val4, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i ] ; 2 uses
  %.sroa.0.0.i.i104.i = phi i64 [ %12, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i110.i ], [ %.val, %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i ] ; 6 uses
  %.lobit.i105.i = lshr i64 %.val4, 63
  %14 = trunc nuw nsw i64 %.lobit.i105.i to i8    ; 4 uses
  %.not.i106.i = icmp eq i64 %.sroa.6.0.i.i103.i, 0
  br i1 %.not.i106.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i111.i
  %.020.i = phi i8 [ 1, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i111.i ], [ %14, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i ] ; 2 uses
  %.sroa.0.0.i8.i107.i = phi i64 [ 0, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i111.i ], [ %.sroa.0.0.i.i104.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i ] ; 4 uses
  %.sroa.6.0.i7.i108.i = phi i64 [ %13, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.thread.i111.i ], [ %.sroa.6.0.i.i103.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i ] ; 4 uses
  %i.ag = icmp ugt i64 %.sroa.6.0.i7.i108.i, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr i64 %.sroa.6.0.i7.i108.i, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  store i32 %i.aj, ptr %i.c, align 16, !tbaa !3
  %i.ak = trunc i64 %.sroa.6.0.i7.i108.i to i32   ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3
  %i.al = lshr i64 %.sroa.0.0.i8.i107.i, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !3
  %i.ao = trunc i64 %.sroa.0.0.i8.i107.i to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i

bb.k:                                             ; preds = %bb.i
  %i.aq = trunc nuw i64 %.sroa.6.0.i7.i108.i to i32 ; 2 uses
  store i32 %i.aq, ptr %i.c, align 16, !tbaa !3
  %i.ar = lshr i64 %.sroa.0.0.i8.i107.i, 32
  %i.as = trunc nuw i64 %i.ar to i32              ; 2 uses
  store i32 %i.as, ptr %i.ah, align 4, !tbaa !3
  %i.at = trunc i64 %.sroa.0.0.i8.i107.i to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.at, ptr %i.au, align 8, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i

bb.l:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i102.i
  %i.av = icmp ugt i64 %.sroa.0.0.i.i104.i, 4294967295
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ax = trunc nuw i64 %i.aw to i32              ; 2 uses
  store i32 %i.ax, ptr %i.c, align 16, !tbaa !3
  %i.ay = trunc i64 %.sroa.0.0.i.i104.i to i32    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i

bb.n:                                             ; preds = %bb.l
  %i.ba = icmp eq i64 %.sroa.0.0.i.i104.i, 0
  br i1 %i.ba, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = trunc nuw i64 %.sroa.0.0.i.i104.i to i32 ; 2 uses
  store i32 %i.bb, ptr %i.c, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.bc = phi i32 [ %i.ak, %bb.j ], [ %i.as, %bb.k ], [ %i.ay, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ]
  %i.bd = phi i32 [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.m ], [ undef, %bb.n ], [ %i.bb, %bb.o ] ; 7 uses
  %.121.i = phi i8 [ %.020.i, %bb.j ], [ %.020.i, %bb.k ], [ %14, %bb.m ], [ %14, %bb.n ], [ %14, %bb.o ] ; 2 uses
  %i.be = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.n ], [ true, %bb.o ]
  %i.bf = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.n ], [ false, %bb.o ] ; 2 uses
  %15 = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ] ; 2 uses
  %i.bg = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ] ; 2 uses
  %.0.i109.i.a = phi i64 [ 4, %bb.j ], [ 3, %bb.k ], [ 2, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ] ; 10 uses
  %.not.not.i = icmp samesign ult i64 %.0.i.i, %.0.i109.i.a
  br i1 %.not.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.q:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit112.i
  switch i64 %.0.i109.i.a, label %bb.ac [
    i64 0, label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bh = zext i32 %i.bd to i64                   ; 8 uses
  %i.bi = load i32, ptr %i.b, align 16, !tbaa !3  ; 2 uses
  %i.bj = udiv i32 %i.bi, %i.bd
  store i32 %i.bj, ptr %i.a, align 16, !tbaa !3
  %i.bk = urem i32 %i.bi, %i.bd
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  br i1 %i.ab, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.r
  %.lcssa42 = phi i64 [ %i.bl, %bb.r ], [ %i.cw, %bb.u ], [ %i.df, %bb.v ], [ %i.do, %bb.w ], [ %i.dx, %bb.x ]
  %16 = trunc nuw i8 %.123.i to i1
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.s
  %i.bm = load i32, ptr %i.a, align 16, !tbaa !3
  %.not.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i, label %.lr.ph36.i.i.thread.i.i, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

.lr.ph36.i.i.thread.i.i:                          ; preds = %.lr.ph.preheader.i.i.i.i
  %i.bn = getelementptr [4 x i8], ptr %i.a, i64 %i.ae ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.bn, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 32
  %i.bv = or disjoint i64 %i.bu, %i.bq
  %.phi.trans.insert.i33.i.i = getelementptr i8, ptr %i.bn, i64 -12 ; 2 uses
  %.pre.i34.i.i = load i32, ptr %.phi.trans.insert.i33.i.i, align 4, !tbaa !3
  %i.bw = zext i32 %.pre.i34.i.i to i64
  br label %.preheader.i.thread28.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s
  %i.bx = load i32, ptr %.0.i.sroa.phi14.i, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  br i1 %i.ab, label %bb.y, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bz = getelementptr i8, ptr %.0.i.sroa.phi14.i, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw i64 %i.cb, 32
  %i.cd = or disjoint i64 %i.cc, %i.by            ; 3 uses
  br i1 %.not.i.i.i, label %bb.y, label %.lr.ph36.i.i.i.i

.preheader.i.thread28.i.i.i:                      ; preds = %.lr.ph36.i.i.i.i, %.lr.ph36.i.i.thread.i.i
  %i.ce = phi i64 [ %i.bw, %.lr.ph36.i.i.thread.i.i ], [ %i.cm, %.lr.ph36.i.i.i.i ]
  %.phi.trans.insert.i35.i.i = phi ptr [ %.phi.trans.insert.i33.i.i, %.lr.ph36.i.i.thread.i.i ], [ %.phi.trans.insert.i.i.i, %.lr.ph36.i.i.i.i ]
  %i.cf = phi i64 [ %i.bv, %.lr.ph36.i.i.thread.i.i ], [ %i.cd, %.lr.ph36.i.i.i.i ]
  %i.cg = getelementptr i8, ptr %.phi.trans.insert.i35.i.i, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  br label %bb.y

.lr.ph36.i.i.i.i:                                 ; preds = %bb.t
  %i.cl = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cl ; 2 uses
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !3
  %i.cm = zext i32 %.pre.i.i.i to i64             ; 2 uses
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %bb.y, label %.preheader.i.thread28.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.co = shl nuw i64 %i.bl, 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64
  %i.cs = or disjoint i64 %i.co, %i.cr            ; 2 uses
  %i.ct = udiv i64 %i.cs, %i.bh
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  %i.cw = urem i64 %i.cs, %i.bh                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.s, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = shl nuw i64 %i.cw, 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  %i.db = or disjoint i64 %i.cx, %i.da            ; 2 uses
  %i.dc = udiv i64 %i.db, %i.bh
  %i.dd = trunc i64 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !3
  %i.df = urem i64 %i.db, %i.bh                   ; 2 uses
  br i1 %exitcond.not.i.i.2, label %bb.s, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = shl nuw i64 %i.df, 32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = zext i32 %i.di to i64
  %i.dk = or disjoint i64 %i.dg, %i.dj            ; 2 uses
  %i.dl = udiv i64 %i.dk, %i.bh
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !3
  %i.do = urem i64 %i.dk, %i.bh                   ; 2 uses
  br i1 %exitcond.not.i.i.3, label %bb.s, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = shl nuw i64 %i.do, 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dr = load i32, ptr %i.dq, align 16, !tbaa !3
  %i.ds = zext i32 %i.dr to i64
  %i.dt = or disjoint i64 %i.dp, %i.ds            ; 2 uses
  %i.du = udiv i64 %i.dt, %i.bh
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.dv, ptr %i.dw, align 16, !tbaa !3
  %i.dx = urem i64 %i.dt, %i.bh
  br label %bb.s

bb.y:                                             ; preds = %.lr.ph36.i.i.i.i, %.preheader.i.thread28.i.i.i, %bb.t, %._crit_edge.i.i.i.i
  %.sroa.0.i.0.i.i = phi i64 [ %i.cf, %.preheader.i.thread28.i.i.i ], [ %i.cd, %bb.t ], [ %i.cd, %.lr.ph36.i.i.i.i ], [ %i.by, %._crit_edge.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.ck, %.preheader.i.thread28.i.i.i ], [ 0, %bb.t ], [ %i.cm, %.lr.ph36.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i ]
  store i64 %.sroa.0.i.0.i.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %.lcssa42, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.not51.i = icmp eq i8 %.121.i, %.123.i
  br i1 %.not51.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.dz = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !9 ; 2 uses
  %17 = xor i64 %i.dz, -1
  %18 = icmp eq i64 %i.dy, 0
  %i.ea = sub i64 0, %i.dz
  %19 = sub i64 0, %i.dy
  %.sroa.6.0.i.i.i.i = select i1 %18, i64 %i.ea, i64 %17
  store i64 %19, ptr %2, align 8
  store i64 %.sroa.6.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %16, label %bb.ab, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ec = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !9 ; 2 uses
  %20 = xor i64 %i.ec, -1
  %21 = icmp eq i64 %i.eb, 0
  %i.ed = sub i64 0, %i.ec
  %22 = sub i64 0, %i.eb
  %.sroa.6.0.i4.i.i.i = select i1 %21, i64 %i.ed, i64 %20
  store i64 %22, ptr %3, align 8
  store i64 %.sroa.6.0.i4.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.preheader.i.i.i.i
  %.0.i113.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.ee = sub nsw i64 %i.ae, %.0.i109.i.a         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ef = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bd, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.ef, 0                  ; 2 uses
  %.pre12 = add nsw i64 %.0.i109.i.a, -1          ; 9 uses
  br i1 %.not.i, label %.lr.ph38.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.eg = sub nuw nsw i32 32, %i.ef               ; 4 uses
  %min.iters.check = icmp ult i64 %.pre12, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.pre12, -8                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert21 = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat22 = shufflevector <4 x i32> %broadcast.splatinsert21, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bd, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load23, %vector.body ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %wide.load = load <4 x i32>, ptr %i.ej, align 4, !tbaa !3 ; 3 uses
  %wide.load23 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !3 ; 4 uses
  %i.el = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.em = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load23, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.en = shl <4 x i32> %i.el, %broadcast.splat22
  %i.eo = shl <4 x i32> %i.em, %broadcast.splat22
  %i.ep = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.eq = lshr <4 x i32> %wide.load23, %broadcast.splat
  %i.er = or disjoint <4 x i32> %i.ep, %i.en
  %i.es = or disjoint <4 x i32> %i.eq, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <4 x i32> %i.er, ptr %i.eh, align 16, !tbaa !3
  store <4 x i32> %i.es, ptr %i.et, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load23, i64 3
  %cmp.n = icmp eq i64 %.pre12, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.ph41 = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph, %middle.block
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = shl i32 %i.ew, %i.ef
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !3
  br i1 %i.ac, label %.lr.ph.i118.i.preheader, label %._crit_edge.i117.i

.lr.ph.i118.i.preheader:                          ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  br i1 %min.iters.check25, label %.lr.ph.i118.i.preheader40, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.i118.i.preheader
  %n.vec28 = and i64 %.0.i.i, 4                   ; 2 uses
  %broadcast.splatinsert31 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat32 = shufflevector <4 x i32> %broadcast.splatinsert31, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load34 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !3 ; 3 uses
  %i.ez = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %wide.load34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fa = shl <4 x i32> %i.ez, %broadcast.splat30
  %i.fb = lshr <4 x i32> %wide.load34, %broadcast.splat32
  %i.fc = or disjoint <4 x i32> %i.fb, %i.fa
  store <4 x i32> %i.fc, ptr %i.b, align 16, !tbaa !3
  %vector.recur.extract36 = extractelement <4 x i32> %wide.load34, i64 3
  %cmp.n37 = icmp eq i64 %.0.i.i, %n.vec28
  br i1 %cmp.n37, label %._crit_edge.i117.loopexit.i, label %.lr.ph.i118.i.preheader40

.lr.ph.i118.i.preheader40:                        ; preds = %.lr.ph.i118.i.preheader, %vector.ph26
  %.ph = phi i32 [ 0, %.lr.ph.i118.i.preheader ], [ %vector.recur.extract36, %vector.ph26 ]
  %.019.i120.i.ph = phi i64 [ 0, %.lr.ph.i118.i.preheader ], [ %n.vec28, %vector.ph26 ]
  br label %.lr.ph.i118.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.fd = phi i32 [ %i.fi, %scalar.ph ], [ %.ph41, %scalar.ph.preheader ]
  %.019.i.i = phi i64 [ %i.fg, %scalar.ph ], [ %.019.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.ff = shl i32 %i.fd, %i.ef
  %i.fg = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3  ; 2 uses
  %i.fj = lshr i32 %i.fi, %i.eg
  %i.fk = or disjoint i32 %i.fj, %i.ff
  store i32 %i.fk, ptr %i.fe, align 4, !tbaa !3
  %exitcond.not.i114.i = icmp eq i64 %i.fg, %.pre12
  br i1 %exitcond.not.i114.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph, !llvm.loop !20

._crit_edge.i117.loopexit.i:                      ; preds = %.lr.ph.i118.i, %vector.ph26
  %.pre.i = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  br label %._crit_edge.i117.i

._crit_edge.i117.i:                               ; preds = %._crit_edge.i117.loopexit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.fl = phi i32 [ %.pre.i, %._crit_edge.i117.loopexit.i ], [ %i.z, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i ]
  %i.fm = shl i32 %i.fl, %i.ef
  store i32 %i.fm, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  %.pre = load i32, ptr %i.c, align 16, !tbaa !3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre11 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %.lr.ph38.i

.lr.ph.i118.i:                                    ; preds = %.lr.ph.i118.i.preheader40, %.lr.ph.i118.i
  %i.fn = phi i32 [ %i.fs, %.lr.ph.i118.i ], [ %.ph, %.lr.ph.i118.i.preheader40 ]
  %.019.i120.i = phi i64 [ %i.fq, %.lr.ph.i118.i ], [ %.019.i120.i.ph, %.lr.ph.i118.i.preheader40 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i120.i
  %i.fp = shl i32 %i.fn, %i.ef
  %i.fq = add nuw nsw i64 %.019.i120.i, 1         ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 2 uses
  %i.ft = lshr i32 %i.fs, %i.eg
  %i.fu = or disjoint i32 %i.ft, %i.fp
  store i32 %i.fu, ptr %i.fo, align 4, !tbaa !3
  %exitcond.not.i121.i = icmp eq i64 %i.fq, %.0.i.i
  br i1 %exitcond.not.i121.i, label %._crit_edge.i117.loopexit.i, label %.lr.ph.i118.i, !llvm.loop !21

.lr.ph38.i:                                       ; preds = %bb.ac, %._crit_edge.i117.i
  %i.fv = phi i32 [ %.pre11, %._crit_edge.i117.i ], [ %i.bc, %bb.ac ]
  %i.fw = phi i32 [ %.pre, %._crit_edge.i117.i ], [ %i.bd, %bb.ac ] ; 5 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = zext i32 %i.fv to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12
  %i.ga = add nsw i64 %.0.i109.i.a, -2            ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ga
  %i.gc = add nsw i64 %.0.i109.i.a, -3            ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc
  %i.ge = add nsw i64 %.0.i109.i.a, -4            ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12
  %i.gh = add nsw i64 %.0.i109.i.a, -2            ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh
  %i.gj = add nsw i64 %.0.i109.i.a, -3            ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gj
  %i.gl = add nsw i64 %.0.i109.i.a, -4            ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gl
  br label %bb.ah

._crit_edge39.i:                                  ; preds = %._crit_edge.thread.i
  br i1 %.not.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, label %.preheader.i124.i

.preheader.i124.i:                                ; preds = %._crit_edge39.i
  br i1 %i.ac, label %.lr.ph.i126.i, label %._crit_edge.i125.i

.lr.ph.i126.i:                                    ; preds = %.preheader.i124.i
  %i.gn = sub nuw nsw i32 32, %i.ef               ; 4 uses
  %i.go = load i32, ptr %.0.i.i.sroa.phi, align 4, !tbaa !3
  %i.gp = lshr i32 %i.go, %i.ef
  %i.gq = getelementptr [4 x i8], ptr %i.b, i64 %i.ae
  %i.gr = getelementptr i8, ptr %i.gq, i64 -8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = shl i32 %i.gs, %i.gn
  %i.gu = or disjoint i32 %i.gt, %i.gp
  store i32 %i.gu, ptr %.0.i.i.sroa.phi, align 4, !tbaa !3
  br i1 %i.ad, label %bb.ad, label %._crit_edge.i125.i

._crit_edge.i125.i:                               ; preds = %.lr.ph.i126.i, %bb.ad, %bb.ae, %bb.af, %.preheader.i124.i
  %i.gv = load i32, ptr %i.b, align 16, !tbaa !3
  %i.gw = lshr i32 %i.gv, %i.ef
  store i32 %i.gw, ptr %i.b, align 16, !tbaa !3
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

bb.ad:                                            ; preds = %.lr.ph.i126.i
  %.0.i127.i.1 = add nsw i64 %.0.i.i, -1          ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i127.i.1 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = lshr i32 %i.gy, %i.ef
  %i.ha = getelementptr i8, ptr %.0.i.i.sroa.phi47, i64 -8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hc = shl i32 %i.hb, %i.gn
  %i.hd = or disjoint i32 %i.hc, %i.gz
  store i32 %i.hd, ptr %i.gx, align 4, !tbaa !3
  br i1 %9, label %bb.ae, label %._crit_edge.i125.i

bb.ae:                                            ; preds = %bb.ad
  %.0.i127.i.2 = add nsw i64 %.0.i.i, -2          ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i127.i.2 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = lshr i32 %i.hf, %i.ef
  %i.hh = getelementptr [4 x i8], ptr %i.b, i64 %.0.i127.i.1
  %i.hi = getelementptr i8, ptr %i.hh, i64 -8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = shl i32 %i.hj, %i.gn
  %i.hl = or disjoint i32 %i.hk, %i.hg
  store i32 %i.hl, ptr %i.he, align 4, !tbaa !3
  br i1 %i.aa, label %bb.af, label %._crit_edge.i125.i

bb.af:                                            ; preds = %bb.ae
  %i.hm = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 -12    ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = lshr i32 %i.ho, %i.ef
  %i.hq = getelementptr [4 x i8], ptr %i.b, i64 %.0.i127.i.2
  %i.hr = getelementptr i8, ptr %i.hq, i64 -8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = shl i32 %i.hs, %i.gn
  %i.hu = or disjoint i32 %i.ht, %i.hp
  store i32 %i.hu, ptr %i.hn, align 4, !tbaa !3
  br label %._crit_edge.i125.i

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i125.i, %._crit_edge39.i
  %i.hv = icmp sgt i64 %i.ee, 4
  br i1 %i.hv, label %.lr.ph.preheader.i.i.i, label %.lr.ph36.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.hw = load i32, ptr %i.d, align 16, !tbaa !3
  %.not.i.i132.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i132.i, label %.lr.ph36.i.i.thread.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

.lr.ph36.i.i.thread.i:                            ; preds = %.lr.ph.preheader.i.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hy = load i32, ptr %i.hx, align 16, !tbaa !3
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %i.ic = zext i32 %i.ib to i64
  %i.id = shl nuw i64 %i.ic, 32
  %i.ie = or disjoint i64 %i.id, %i.hz
  %.phi.trans.insert.i54.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.pre.i12955.i = load i32, ptr %.phi.trans.insert.i54.i, align 8, !tbaa !3
  %i.if = zext i32 %.pre.i12955.i to i64
  br label %.preheader.i.thread28.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.ig = add nsw i64 %i.ee, -1                   ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = zext i32 %i.ii to i64                   ; 2 uses
  %i.ik = icmp eq i64 %i.ig, 0
  br i1 %i.ik, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph36.preheader.i.i.i
  %i.il = getelementptr i8, ptr %i.ih, i64 -4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = zext i32 %i.im to i64
  %i.io = shl nuw i64 %i.in, 32
  %i.ip = or disjoint i64 %i.io, %i.ij            ; 3 uses
  %.not.i128.i = icmp eq i64 %i.ig, 1
  br i1 %.not.i128.i, label %bb.aq, label %.lr.ph36.i.i.i

.preheader.i.thread28.i.i:                        ; preds = %.lr.ph36.i.i.i, %.lr.ph36.i.i.thread.i
  %i.iq = phi i64 [ %i.if, %.lr.ph36.i.i.thread.i ], [ %i.iy, %.lr.ph36.i.i.i ]
  %.phi.trans.insert.i56.i = phi ptr [ %.phi.trans.insert.i54.i, %.lr.ph36.i.i.thread.i ], [ %.phi.trans.insert.i.i, %.lr.ph36.i.i.i ]
  %i.ir = phi i64 [ %i.ie, %.lr.ph36.i.i.thread.i ], [ %i.ip, %.lr.ph36.i.i.i ]
  %i.is = getelementptr i8, ptr %.phi.trans.insert.i56.i, i64 -4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %i.iu = zext i32 %i.it to i64
  %i.iv = shl nuw i64 %i.iu, 32
  %i.iw = or disjoint i64 %i.iv, %i.iq
  br label %bb.aq

.lr.ph36.i.i.i:                                   ; preds = %bb.ag
  %i.ix = add nsw i64 %i.ee, -3                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ix ; 2 uses
  %.pre.i129.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  %i.iy = zext i32 %.pre.i129.i to i64            ; 2 uses
  %i.iz = icmp eq i64 %i.ix, 0
  br i1 %i.iz, label %bb.aq, label %.preheader.i.thread28.i.i

bb.ah:                                            ; preds = %._crit_edge.thread.i, %.lr.ph38.i
  %.08437.i = phi i64 [ 0, %.lr.ph38.i ], [ %i.jc, %._crit_edge.thread.i ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.08437.i ; 12 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3  ; 4 uses
  %i.jc = add nuw nsw i64 %.08437.i, 1            ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3  ; 2 uses
  %.not98.i = icmp eq i32 %i.jb, %i.fw
  br i1 %.not98.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jf = zext i32 %i.je to i64
  %i.jg = zext i32 %i.jb to i64
  %i.jh = shl nuw i64 %i.jg, 32
  %i.ji = or disjoint i64 %i.jh, %i.jf
  %i.jj = udiv i64 %i.ji, %i.fx
  %i.jk = trunc i64 %i.jj to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.089.i = phi i32 [ %i.jk, %bb.ai ], [ -1, %bb.ah ] ; 2 uses
  %i.jl = mul i32 %.089.i, %i.fw
  %i.jm = sub i32 %i.je, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3
  %i.jp = zext i32 %i.jo to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.190.i = phi i32 [ %.089.i, %bb.aj ], [ %i.jw, %bb.al ] ; 3 uses
  %.088.i = phi i32 [ %i.jm, %bb.aj ], [ %i.jx, %bb.al ] ; 2 uses
  %i.jq = zext i32 %.190.i to i64
  %i.jr = mul nuw i64 %i.jq, %i.fy
  %i.js = zext i32 %.088.i to i64
  %i.jt = shl nuw i64 %i.js, 32
  %i.ju = or disjoint i64 %i.jt, %i.jp
  %i.jv = icmp ugt i64 %i.jr, %i.ju
  br i1 %i.jv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jw = add i32 %.190.i, -1                     ; 2 uses
  %i.jx = add i32 %.088.i, %i.fw                  ; 2 uses
  %i.jy = icmp ult i32 %i.jx, %i.fw
  br i1 %i.jy, label %bb.am, label %bb.ak, !llvm.loop !22

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.i = phi i32 [ %i.jw, %bb.al ], [ %.190.i, %bb.ak ] ; 4 uses
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.jz = zext i32 %.2.i to i64                   ; 4 uses
  %i.ka = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.kb = zext i32 %i.ka to i64
  %i.kc = mul nuw i64 %i.kb, %i.jz                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %.pre12
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3  ; 2 uses
  %i.kg = trunc i64 %i.kc to i32                  ; 2 uses
  %i.kh = sub i32 %i.kf, %i.kg
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !3
  %i.ki = lshr i64 %i.kc, 32
  %i.kj = icmp ult i32 %i.kf, %i.kg
  %i.kk = zext i1 %i.kj to i64
  %spec.select.i = add nuw nsw i64 %i.ki, %i.kk   ; 2 uses
  br i1 %i.bf, label %bb.an, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ap, %bb.ao, %bb.an, %.lr.ph.i
  %spec.select.i.lcssa = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %spec.select.i.1, %bb.an ], [ %spec.select.i.2, %bb.ao ], [ %spec.select.i.3, %bb.ap ]
  %i.kl = trunc i64 %spec.select.i.lcssa to i32   ; 2 uses
  %i.km = sub i32 %i.jb, %i.kl                    ; 2 uses
  store i32 %i.km, ptr %i.ja, align 4, !tbaa !3
  %i.kn = icmp ult i32 %i.jb, %i.kl
  br i1 %i.kn, label %.lr.ph34.i, label %._crit_edge.thread.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.ko = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.kp = zext i32 %i.ko to i64
  %i.kq = mul nuw i64 %i.kp, %i.jz
  %i.kr = add nuw i64 %i.kq, %spec.select.i       ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ga
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !3  ; 2 uses
  %i.kv = trunc i64 %i.kr to i32                  ; 2 uses
  %i.kw = sub i32 %i.ku, %i.kv
  store i32 %i.kw, ptr %i.kt, align 4, !tbaa !3
  %i.kx = lshr i64 %i.kr, 32
  %i.ky = icmp ult i32 %i.ku, %i.kv
  %i.kz = zext i1 %i.ky to i64
  %spec.select.i.1 = add nuw nsw i64 %i.kx, %i.kz ; 2 uses
  br i1 %15, label %bb.ao, label %._crit_edge.i

bb.ao:                                            ; preds = %bb.an
  %i.la = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.lb = zext i32 %i.la to i64
  %i.lc = mul nuw i64 %i.lb, %i.jz
  %i.ld = add nuw i64 %i.lc, %spec.select.i.1     ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.gc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3  ; 2 uses
  %i.lh = trunc i64 %i.ld to i32                  ; 2 uses
  %i.li = sub i32 %i.lg, %i.lh
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !3
  %i.lj = lshr i64 %i.ld, 32
  %i.lk = icmp ult i32 %i.lg, %i.lh
  %i.ll = zext i1 %i.lk to i64
  %spec.select.i.2 = add nuw nsw i64 %i.lj, %i.ll ; 2 uses
  br i1 %i.bg, label %bb.ap, label %._crit_edge.i

bb.ap:                                            ; preds = %bb.ao
  %i.lm = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.ln = zext i32 %i.lm to i64
  %i.lo = mul nuw i64 %i.ln, %i.jz
  %i.lp = add nuw i64 %i.lo, %spec.select.i.2     ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ge
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !3  ; 2 uses
  %i.lt = trunc i64 %i.lp to i32                  ; 2 uses
  %i.lu = sub i32 %i.ls, %i.lt
  store i32 %i.lu, ptr %i.lr, align 4, !tbaa !3
  %i.lv = lshr i64 %i.lp, 32
  %i.lw = icmp ult i32 %i.ls, %i.lt
  %i.lx = zext i1 %i.lw to i64
  %spec.select.i.3 = add nuw nsw i64 %i.lv, %i.lx
  br label %._crit_edge.i

._crit_edge35.i:                                  ; preds = %.lr.ph34.i.3, %.lr.ph34.i.2, %.lr.ph34.i.1, %.lr.ph34.i
  %.lcssa = phi i64 [ %i.mf, %.lr.ph34.i ], [ %i.mp, %.lr.ph34.i.1 ], [ %i.mz, %.lr.ph34.i.2 ], [ %i.nj, %.lr.ph34.i.3 ]
  %i.ly = add i32 %.2.i, -1
  %i.lz = trunc nuw nsw i64 %.lcssa to i32
  %i.ma = add i32 %i.km, %i.lz
  store i32 %i.ma, ptr %i.ja, align 4, !tbaa !3
  br label %._crit_edge.thread.i

.lr.ph34.i:                                       ; preds = %._crit_edge.i
  %i.mb = load i32, ptr %i.gg, align 4, !tbaa !3  ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %.pre12
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3
  %add.narrowed = add i32 %i.mb, %i.me            ; 2 uses
  %add.narrowed.overflow = icmp ult i32 %add.narrowed, %i.mb
  store i32 %add.narrowed, ptr %i.md, align 4, !tbaa !3
  %i.mf = zext i1 %add.narrowed.overflow to i64   ; 2 uses
  br i1 %i.bf, label %.lr.ph34.i.1, label %._crit_edge35.i

.lr.ph34.i.1:                                     ; preds = %.lr.ph34.i
  %i.mg = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.gh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !3
  %i.ml = zext i32 %i.mk to i64
  %i.mm = add nuw nsw i64 %i.mf, %i.mh
  %i.mn = add nuw nsw i64 %i.mm, %i.ml            ; 2 uses
  %i.mo = trunc i64 %i.mn to i32
  store i32 %i.mo, ptr %i.mj, align 4, !tbaa !3
  %i.mp = lshr i64 %i.mn, 32                      ; 2 uses
  br i1 %15, label %.lr.ph34.i.2, label %._crit_edge35.i

.lr.ph34.i.2:                                     ; preds = %.lr.ph34.i.1
  %i.mq = load i32, ptr %i.gk, align 4, !tbaa !3
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.gj
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = zext i32 %i.mu to i64
  %i.mw = add nuw nsw i64 %i.mp, %i.mr
  %i.mx = add nuw nsw i64 %i.mw, %i.mv            ; 2 uses
  %i.my = trunc i64 %i.mx to i32
  store i32 %i.my, ptr %i.mt, align 4, !tbaa !3
  %i.mz = lshr i64 %i.mx, 32                      ; 2 uses
  br i1 %i.bg, label %.lr.ph34.i.3, label %._crit_edge35.i

.lr.ph34.i.3:                                     ; preds = %.lr.ph34.i.2
  %i.na = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.gl
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !3
  %i.nf = zext i32 %i.ne to i64
  %i.ng = add nuw nsw i64 %i.mz, %i.nb
  %i.nh = add nuw nsw i64 %i.ng, %i.nf            ; 2 uses
  %i.ni = trunc i64 %i.nh to i32
  store i32 %i.ni, ptr %i.nd, align 4, !tbaa !3
  %i.nj = lshr i64 %i.nh, 32
  br label %._crit_edge35.i

._crit_edge.thread.i:                             ; preds = %._crit_edge35.i, %._crit_edge.i, %bb.am
  %.3.i = phi i32 [ %i.ly, %._crit_edge35.i ], [ %.2.i, %._crit_edge.i ], [ %.2.i, %bb.am ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08437.i
  store i32 %.3.i, ptr %i.nk, align 4, !tbaa !3
  %exitcond.not.i = icmp eq i64 %i.jc, %i.ee
  br i1 %exitcond.not.i, label %._crit_edge39.i, label %bb.ah, !llvm.loop !23

bb.aq:                                            ; preds = %.lr.ph36.i.i.i, %.preheader.i.thread28.i.i, %bb.ag, %.lr.ph36.preheader.i.i.i
  %.sroa.0.i.0.i = phi i64 [ %i.ij, %.lr.ph36.preheader.i.i.i ], [ %i.ir, %.preheader.i.thread28.i.i ], [ %i.ip, %bb.ag ], [ %i.ip, %.lr.ph36.i.i.i ]
  %.sink.i.i = phi i64 [ 0, %.lr.ph36.preheader.i.i.i ], [ %i.iw, %.preheader.i.thread28.i.i ], [ 0, %bb.ag ], [ %i.iy, %.lr.ph36.i.i.i ]
  store i64 %.sroa.0.i.0.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i130.i, align 8
  br i1 %i.aa, label %.lr.ph.preheader.i.i148.i, label %._crit_edge.i.i134.i

.lr.ph.preheader.i.i148.i:                        ; preds = %bb.aq
  %i.nl = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -16
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %.not.i.i151.i = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i151.i, label %._crit_edge.i.i134.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

._crit_edge.i.i134.i:                             ; preds = %.lr.ph.preheader.i.i148.i, %bb.aq
  %i.nn = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  br i1 %i.ab, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i134.i
  %i.np = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3
  %i.nr = zext i32 %i.nq to i64
  %i.ns = shl nuw i64 %i.nr, 32
  %i.nt = or disjoint i64 %i.ns, %i.no            ; 3 uses
  br i1 %.not.i.i.i, label %bb.as, label %.lr.ph36.i.i137.i

.preheader.i.thread28.i140.i:                     ; preds = %.lr.ph36.i.i137.i
  %i.nu = getelementptr i8, ptr %.phi.trans.insert.i138.i, i64 -4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3
  %i.nw = zext i32 %i.nv to i64
  %i.nx = shl nuw i64 %i.nw, 32
  %i.ny = or disjoint i64 %i.nx, %i.oa
  br label %bb.as

.lr.ph36.i.i137.i:                                ; preds = %bb.ar
  %i.nz = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i138.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nz ; 2 uses
  %.pre.i139.i = load i32, ptr %.phi.trans.insert.i138.i, align 4, !tbaa !3
  %i.oa = zext i32 %.pre.i139.i to i64            ; 2 uses
  %i.ob = icmp eq i64 %i.nz, 0
  br i1 %i.ob, label %bb.as, label %.preheader.i.thread28.i140.i

bb.as:                                            ; preds = %.lr.ph36.i.i137.i, %.preheader.i.thread28.i140.i, %bb.ar, %._crit_edge.i.i134.i
  %.sroa.0.i133.0.i = phi i64 [ %i.nt, %.preheader.i.thread28.i140.i ], [ %i.nt, %bb.ar ], [ %i.nt, %.lr.ph36.i.i137.i ], [ %i.no, %._crit_edge.i.i134.i ]
  %.sink.i142.i = phi i64 [ %i.ny, %.preheader.i.thread28.i140.i ], [ 0, %bb.ar ], [ %i.oa, %.lr.ph36.i.i137.i ], [ 0, %._crit_edge.i.i134.i ]
  store i64 %.sroa.0.i133.0.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i144.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.sink.i142.i, ptr %.sroa.4.0..sroa_idx.i144.i, align 8
  %23 = trunc nuw i8 %.123.i to i1
  %.not52.i = icmp eq i8 %.121.i, %.123.i
  br i1 %.not52.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.oc = load i64, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.od = load i64, ptr %.sroa.4.0..sroa_idx.i130.i, align 8, !tbaa !9 ; 2 uses
  %24 = xor i64 %i.od, -1
  %25 = icmp eq i64 %i.oc, 0
  %i.oe = sub i64 0, %i.od
  %26 = sub i64 0, %i.oc
  %.sroa.6.0.i.i153.i = select i1 %25, i64 %i.oe, i64 %24
  store i64 %26, ptr %2, align 8
  store i64 %.sroa.6.0.i.i153.i, ptr %.sroa.4.0..sroa_idx.i130.i, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %23, label %bb.av, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

bb.av:                                            ; preds = %bb.au
  %i.of = load i64, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.og = load i64, ptr %.sroa.4.0..sroa_idx.i144.i, align 8, !tbaa !9 ; 2 uses
  %27 = xor i64 %i.og, -1
  %28 = icmp eq i64 %i.of, 0
  %i.oh = sub i64 0, %i.og
  %29 = sub i64 0, %i.of
  %.sroa.6.0.i4.i.i = select i1 %28, i64 %i.oh, i64 %27
  store i64 %29, ptr %3, align 8
  store i64 %.sroa.6.0.i4.i.i, ptr %.sroa.4.0..sroa_idx.i144.i, align 8
  br label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i: ; preds = %bb.av, %bb.au, %.lr.ph.preheader.i.i148.i, %.lr.ph.preheader.i.i.i
  %.0.i = phi i32 [ 0, %bb.av ], [ 2, %.lr.ph.preheader.i.i148.i ], [ 0, %bb.au ], [ 2, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.p, %bb.q, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i
  %.1.i = phi i32 [ 0, %bb.p ], [ %.0.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i ], [ %.0.i113.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128oRERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = or i64 %i.b, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = or i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128aNERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = and i64 %i.b, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = and i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128lSEj(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 64
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %i.e = shl i64 %i.c, %i.d
  %i.f = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = sub nuw nsw i32 64, %1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.e
  %i.k = shl i64 %i.f, %i.d
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 128
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %0, align 8, !tbaa !9
  %i.n = add nsw i32 %1, -64
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.010 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.p, %bb.e ], [ 0, %bb.d ]
  store i64 %.010, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128rSEj(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 64
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i64, ptr %0, align 8, !tbaa !9
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = lshr i64 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = sub nuw nsw i32 64, %1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  %i.j = or i64 %i.i, %i.d
  %i.k = ashr i64 %i.f, %i.c
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %1, 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 3 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %1, -64
  %i.p = zext nneg i32 %i.o to i64
  %i.q = ashr i64 %i.n, %i.p
  %i.r = ashr i64 %i.n, 63
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = ashr i64 %i.n, 63                        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.011 = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.0 = phi i64 [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  store i64 %.011, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128mLERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = load i64, ptr %3, align 8, !tbaa !9        ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !9        ; 5 uses
  %7 = xor i64 %6, %4
  %isneg = icmp sgt i64 %7, -1
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %8 = icmp slt i64 %4, 0
  br i1 %8, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i:  ; preds = %2
  %9 = xor i64 %4, -1
  %10 = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  %11 = sub i64 0, %4
  %12 = sub i64 0, %.sroa.0.0.copyload1.i
  %.sroa.6.0.i.i.i = select i1 %10, i64 %11, i64 %9
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit:        ; preds = %2, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i ], [ %4, %2 ]
  %.sroa.0.0.i = phi i64 [ %12, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i ], [ %.sroa.0.0.copyload1.i, %2 ]
  %.sroa.0.0.copyload1.i9 = load i64, ptr %1, align 8 ; 3 uses
  %13 = icmp slt i64 %6, 0
  br i1 %13, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16: ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit
  %14 = xor i64 %6, -1
  %15 = icmp eq i64 %.sroa.0.0.copyload1.i9, 0
  %16 = sub i64 0, %6
  %17 = sub i64 0, %.sroa.0.0.copyload1.i9
  %.sroa.6.0.i.i.i17 = select i1 %15, i64 %16, i64 %14
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18:      ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16
  %.sroa.6.0.i12 = phi i64 [ %.sroa.6.0.i.i.i17, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16 ], [ %6, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit ]
  %.sroa.0.0.i13 = phi i64 [ %17, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16 ], [ %.sroa.0.0.copyload1.i9, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit ]
  %i.a = sext i64 %.sroa.6.0.i to i128
  %i.b = shl nsw i128 %i.a, 64
  %i.c = zext i64 %.sroa.0.0.i to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = sext i64 %.sroa.6.0.i12 to i128
  %i.f = shl nsw i128 %i.e, 64
  %i.g = zext i64 %.sroa.0.0.i13 to i128
  %i.h = or disjoint i128 %i.f, %i.g
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 3 uses
  %i.l = trunc i128 %i.i to i64                   ; 3 uses
  store i64 %i.l, ptr %0, align 8
  store i64 %i.k, ptr %3, align 8
  br i1 %isneg, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18
  %18 = xor i64 %i.k, -1
  %19 = icmp eq i64 %i.l, 0
  %i.m = sub i64 0, %i.k
  %20 = sub i64 0, %i.l
  %.sroa.6.0.i19 = select i1 %19, i64 %i.m, i64 %18
  store i64 %20, ptr %0, align 8
  store i64 %.sroa.6.0.i19, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowleERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = load i64, ptr %0, align 8, !tbaa !9
  %i.i = icmp uge i64 %i.g, %i.h
  br label %_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowgtERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgtERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = load i64, ptr %0, align 8, !tbaa !9
  %i.i = icmp ult i64 %i.g, %i.h
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowgeERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !9
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = icmp uge i64 %i.g, %i.h
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowngERKNS_15BasicDecimal128E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %1 = xor i64 %i.b, -1
  %2 = icmp eq i64 %i.c, 0
  %i.d = sub i64 0, %i.b
  %3 = sub i64 0, %i.c
  %.sroa.6.0.i = select i1 %2, i64 %i.d, i64 %1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %3, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0.i, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowcoERKNS_15BasicDecimal128E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = xor i64 %i.b, -1
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = xor i64 %i.d, -1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.e, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.c, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowplERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = add i64 %i.e, %i.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = add i64 %i.g, %i.c                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  %i.j = zext i1 %i.i to i64
  %i.k = add i64 %i.f, %i.j
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.k, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowmiERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = sub i64 %i.b, %i.e
  %i.g = load i64, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.h = sub i64 %i.c, %i.g
  %i.i = icmp ugt i64 %i.g, %i.c
  %.neg.i = sext i1 %i.i to i64
  %i.j = add i64 %i.f, %.neg.i
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.h, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.j, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN5arrowmlERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !9        ; 5 uses
  %5 = load i64, ptr %0, align 8, !tbaa !9        ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !9        ; 5 uses
  %8 = xor i64 %7, %4
  %isneg.i = icmp sgt i64 %8, -1
  %9 = icmp slt i64 %4, 0
  br i1 %9, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i: ; preds = %2
  %10 = xor i64 %4, -1
  %11 = icmp eq i64 %5, 0
  %12 = sub i64 0, %4
  %13 = sub i64 0, %5
  %.sroa.6.0.i.i.i.i = select i1 %11, i64 %12, i64 %10
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i:      ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i, %2
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.i.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i ], [ %4, %2 ]
  %.sroa.0.0.i.i = phi i64 [ %13, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i ], [ %5, %2 ]
  %.sroa.0.0.copyload1.i9.i = load i64, ptr %1, align 8 ; 3 uses
  %14 = icmp slt i64 %7, 0
  br i1 %14, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i: ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i
  %15 = xor i64 %7, -1
  %16 = icmp eq i64 %.sroa.0.0.copyload1.i9.i, 0
  %17 = sub i64 0, %7
  %18 = sub i64 0, %.sroa.0.0.copyload1.i9.i
  %.sroa.6.0.i.i.i17.i = select i1 %16, i64 %17, i64 %15
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i:    ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i
  %.sroa.6.0.i12.i = phi i64 [ %.sroa.6.0.i.i.i17.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i ], [ %7, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i ]
  %.sroa.0.0.i13.i = phi i64 [ %18, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i16.i ], [ %.sroa.0.0.copyload1.i9.i, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i ]
  %i.a = sext i64 %.sroa.6.0.i.i to i128
  %i.b = shl nsw i128 %i.a, 64
  %i.c = zext i64 %.sroa.0.0.i.i to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = sext i64 %.sroa.6.0.i12.i to i128
  %i.f = shl nsw i128 %i.e, 64
  %i.g = zext i64 %.sroa.0.0.i13.i to i128
  %i.h = or disjoint i128 %i.f, %i.g
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 3 uses
  %i.l = trunc i128 %i.i to i64                   ; 3 uses
  br i1 %isneg.i, label %_ZN5arrow15BasicDecimal128mLERKS0_.exit, label %19

19:                                               ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i
  %20 = xor i64 %i.k, -1
  %21 = icmp eq i64 %i.l, 0
  %22 = sub i64 0, %i.k
  %23 = sub i64 0, %i.l
  %.sroa.6.0.i19.i = select i1 %21, i64 %22, i64 %20
  br label %_ZN5arrow15BasicDecimal128mLERKS0_.exit

_ZN5arrow15BasicDecimal128mLERKS0_.exit:          ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i, %19
  %.sroa.5.0 = phi i64 [ %i.k, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i ], [ %.sroa.6.0.i19.i, %19 ]
  %.sroa.0.0 = phi i64 [ %i.l, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i ], [ %23, %19 ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZN5arrowdvERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZN5arrowrmERKNS_15BasicDecimal128ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 4) i32 @_ZNK5arrow14BasicDecimal327RescaleEiiPS0_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4
  store i32 %i.b, ptr %3, align 4
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %2, %1                       ; 2 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL21kDecimal32PowersOfTenE, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  %i.i = load i32, ptr %0, align 4                ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sdiv i32 %i.i, %i.g
  store i32 %i.j, ptr %3, align 4
  %i.k = load i32, ptr %0, align 4, !tbaa !12
  %i.l = srem i32 %i.k, %i.g
  %.fr.i = freeze i32 %i.l
  %.not.i = icmp eq i32 %.fr.i, 0
  br i1 %.not.i, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, label %bb.g, !prof !24

bb.e:                                             ; preds = %bb.c
  %i.m = mul i32 %i.i, %i.g                       ; 3 uses
  store i32 %i.m, ptr %3, align 4
  %i.n = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %i.m, %i.n
  %cond.fr16.i = freeze i1 %i.p
  br i1 %cond.fr16.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i: ; preds = %bb.e
  %i.q = icmp sgt i32 %i.m, %i.n
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

bb.g:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, %bb.f, %bb.d
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit

_ZN5arrow14DecimalRescaleINS_14BasicDecimal32EEENS_13DecimalStatusERKT_iiPS3_.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i, %bb.g
  %.1.i = phi i32 [ 0, %bb.b ], [ 3, %bb.g ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal32EEEbRKT_iS4_PS2_.exit.i ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i32 0, 4) i32 @_ZNK5arrow14BasicDecimal647RescaleEiiPS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8
  store i64 %i.b, ptr %3, align 8
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %2, %1                       ; 2 uses
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp slt i32 %i.c, 0
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = sdiv i64 %i.i, %i.g
  store i64 %i.j, ptr %3, align 8
  %i.k = load i64, ptr %0, align 8, !tbaa !14
  %i.l = srem i64 %i.k, %i.g
  %.fr.i = freeze i64 %i.l
  %.not.i = icmp eq i64 %.fr.i, 0
  br i1 %.not.i, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, label %bb.g, !prof !24

bb.e:                                             ; preds = %bb.c
  %i.m = mul i64 %i.i, %i.g                       ; 3 uses
  store i64 %i.m, ptr %3, align 8
  %i.n = load i64, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i64 %i.m, %i.n
  %cond.fr16.i = freeze i1 %i.p
  br i1 %cond.fr16.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i: ; preds = %bb.e
  %i.q = icmp sgt i64 %i.m, %i.n
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %bb.g, label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit, !prof !25

bb.g:                                             ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, %bb.f, %bb.d
  br label %_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit

_ZN5arrow14DecimalRescaleINS_14BasicDecimal64EEENS_13DecimalStatusERKT_iiPS3_.exit: ; preds = %bb.b, %bb.d, %bb.f, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i, %bb.g
  %.1.i = phi i32 [ 0, %bb.b ], [ 3, %bb.g ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_14BasicDecimal64EEEbRKT_iS4_PS2_.exit.i ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5arrow15BasicDecimal1287RescaleEiiPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal128EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal128EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 5 uses
  %5 = alloca %"class.arrow::GenericBasicDecimal", align 8 ; 4 uses
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.c:                                             ; preds = %bb.a
  %i.b = sub nsw i32 %2, %1                       ; 2 uses
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.d ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %bb.d, label %6

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.h = load i128, ptr %4, align 8
  %i.i = load i128, ptr %5, align 8
  %i.j = icmp ne i128 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  %bcmp.i.i.i.i.i.i.i.i.fr = freeze i32 %i.k
  %.not9.i.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not9.i.i.i.i.i.i.i.i.not, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, !prof !26

6:                                                ; preds = %bb.c
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %8 = load i64, ptr %7, align 8, !tbaa !9        ; 5 uses
  %9 = load i64, ptr %0, align 8, !tbaa !9        ; 3 uses
  %10 = xor i64 %.sroa.4.0.copyload, %8
  %isneg.i.i.i = icmp sgt i64 %10, -1
  %11 = icmp slt i64 %8, 0
  br i1 %11, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i: ; preds = %6
  %12 = xor i64 %8, -1
  %13 = icmp eq i64 %9, 0
  %14 = sub i64 0, %8
  %15 = sub i64 0, %9
  %.sroa.6.0.i.i.i.i.i.i = select i1 %13, i64 %14, i64 %12
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i: ; preds = %6, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i
  %.sroa.6.0.i.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i ], [ %8, %6 ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %15, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i.i ], [ %9, %6 ]
  %i.l = sext i64 %.sroa.6.0.i.i.i.i to i128
  %i.m = shl nsw i128 %i.l, 64
  %i.n = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.o = or disjoint i128 %i.m, %i.n
  %i.p = sext i64 %.sroa.4.0.copyload to i128
  %i.q = shl nsw i128 %i.p, 64
  %i.r = zext i64 %.sroa.0.0.copyload to i128
  %i.s = or disjoint i128 %i.q, %i.r
  %i.t = mul i128 %i.s, %i.o                      ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = trunc nuw i128 %i.u to i64               ; 3 uses
  %i.w = trunc i128 %i.t to i64                   ; 3 uses
  br i1 %isneg.i.i.i, label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i, label %16

16:                                               ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i
  %17 = xor i64 %i.v, -1
  %18 = icmp eq i64 %i.w, 0
  %19 = sub i64 0, %i.v
  %20 = sub i64 0, %i.w
  %.sroa.6.0.i19.i.i.i = select i1 %18, i64 %19, i64 %17
  br label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i

_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %16, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.v, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i ], [ %.sroa.6.0.i19.i.i.i, %16 ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.w, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit18.i.i.i ], [ %20, %16 ] ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %21 = load i64, ptr %7, align 8, !tbaa !9       ; 5 uses
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i
  %i.x = icmp slt i64 %.sroa.5.0.i.i, %21
  br i1 %i.x, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.g

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit.i
  %i.y = icmp slt i64 %21, %.sroa.5.0.i.i
  br i1 %i.y, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.z = icmp eq i64 %21, %.sroa.5.0.i.i
  br i1 %i.z, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %.sroa.5.0.i.i, %21
  br i1 %i.aa, label %bb.h, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %0, align 8, !tbaa !9
  %i.ac = icmp ult i64 %.sroa.0.0.i.i, %i.ab
  %cond.fr21 = freeze i1 %i.ac
  br i1 %cond.fr21, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit: ; preds = %bb.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !9
  %i.ae = icmp ult i64 %i.ad, %.sroa.0.0.i.i
  %cond.fr = freeze i1 %i.ae
  br i1 %cond.fr, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread: ; preds = %bb.e, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, %bb.h, %bb.d, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17: ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, %bb.d, %bb.h, %bb.g, %bb.f, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 3, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5arrow15BasicDecimal12819GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a
  %i.c = tail call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %2, ptr noundef %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12818GetScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12822GetHalfScaleMultiplierEi(i32 noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL26kDecimal128HalfPowersOfTenE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal12811GetMaxValueEv() local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZN5arrowL19kMaxDecimal128ValueE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN5arrow15BasicDecimal12811GetMaxValueEi(i32 noundef %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = load i64, ptr %i.b, align 16, !tbaa !9
  %i.f = add i64 %i.e, -1
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.f, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %i.d, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK5arrow15BasicDecimal12815IncreaseScaleByEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %3 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !9        ; 5 uses
  %7 = load i64, ptr %0, align 8, !tbaa !9        ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8, !tbaa !9        ; 2 uses
  %10 = xor i64 %9, %6
  %isneg.i.i = icmp sgt i64 %10, -1
  %11 = icmp slt i64 %6, 0
  br i1 %11, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i, label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i: ; preds = %2
  %12 = xor i64 %6, -1
  %13 = icmp eq i64 %7, 0
  %14 = sub i64 0, %6
  %15 = sub i64 0, %7
  %.sroa.6.0.i.i.i.i.i = select i1 %13, i64 %14, i64 %12
  br label %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i

_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i:    ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i, %2
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.6.0.i.i.i.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i ], [ %6, %2 ]
  %.sroa.0.0.i.i.i = phi i64 [ %15, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i.i.i.i ], [ %7, %2 ]
  %.sroa.0.0.copyload1.i9.i.i = load i64, ptr %4, align 16
  %i.a = sext i64 %.sroa.6.0.i.i.i to i128
  %i.b = shl nsw i128 %i.a, 64
  %i.c = zext i64 %.sroa.0.0.i.i.i to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = sext i64 %9 to i128
  %i.f = shl nsw i128 %i.e, 64
  %i.g = zext i64 %.sroa.0.0.copyload1.i9.i.i to i128
  %i.h = or disjoint i128 %i.f, %i.g
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 3 uses
  %i.l = trunc i128 %i.i to i64                   ; 3 uses
  br i1 %isneg.i.i, label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit, label %16

16:                                               ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i
  %17 = xor i64 %i.k, -1
  %18 = icmp eq i64 %i.l, 0
  %19 = sub i64 0, %i.k
  %20 = sub i64 0, %i.l
  %.sroa.6.0.i19.i.i = select i1 %18, i64 %19, i64 %17
  br label %_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowmlERKNS_15BasicDecimal128ES2_.exit:      ; preds = %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i, %16
  %.sroa.5.0.i = phi i64 [ %i.k, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ], [ %.sroa.6.0.i19.i.i, %16 ]
  %.sroa.0.0.i = phi i64 [ %i.l, %_ZN5arrow15BasicDecimal1283AbsERKS0_.exit.i.i ], [ %20, %16 ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.5.0.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define { i64, i64 } @_ZNK5arrow15BasicDecimal12813ReduceScaleByEib(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 8 uses
  %4 = alloca %"class.arrow::BasicDecimal128", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br i1 %2, label %bb.d, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL26kDecimal128HalfPowersOfTenE, i64 %i.b ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.e, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.d
  %i.i = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %5 = xor i64 %i.g, -1
  %6 = icmp eq i64 %i.i, 0
  %i.j = sub i64 0, %i.g
  %7 = sub i64 0, %i.i
  %.sroa.6.0.i.i = select i1 %6, i64 %i.j, i64 %5
  store i64 %7, ptr %4, align 8
  br label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrow15BasicDecimal1283AbsEv.exit:            ; preds = %bb.d, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.k = phi i64 [ %i.g, %bb.d ], [ %.sroa.6.0.i.i, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i ] ; 2 uses
  %i.l = icmp slt i64 %i.k, %.sroa.46.0.copyload
  br i1 %i.l, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow15BasicDecimal1283AbsEv.exit
  %i.m = icmp ne i64 %i.k, %.sroa.46.0.copyload
  %i.n = load i64, ptr %4, align 8
  %i.o = icmp uge i64 %i.n, %.sroa.05.0.copyload
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = ashr i64 %i.q, 63                        ; 2 uses
  %i.s = or i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9
  %i.v = add i64 %i.r, %i.u
  %i.w = load i64, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.x = add i64 %i.s, %i.w                       ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = zext i1 %i.y to i64
  %i.aa = add i64 %i.v, %i.z
  store i64 %i.x, ptr %3, align 8
  store i64 %i.aa, ptr %i.t, align 8
  br label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7: ; preds = %bb.e, %_ZN5arrow15BasicDecimal1283AbsEv.exit, %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, %bb.b
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 129) i32 @_ZNK5arrow15BasicDecimal12823CountLeadingBinaryZerosEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.b = sub i64 0, %i.a
  store i64 %i.b, ptr %0, align 8, !tbaa !9
  %i.c = icmp eq i64 %i.a, 0
  %i.d = zext i1 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = xor i64 %i.f, -1
  %i.h = add i64 %i.d, %i.g                       ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !9
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 %i.d, i64 0          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  %i.m = xor i64 %i.l, -1
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !tbaa !9
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 %i.j, i64 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %i.s = xor i64 %i.r, -1
  %i.t = add i64 %i.p, %i.s
  store i64 %i.t, ptr %i.q, align 8, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2563AbsEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.e = sub i64 0, %i.d
  store i64 %i.e, ptr %0, align 8, !tbaa !9
  %i.f = icmp eq i64 %i.d, 0
  %i.g = zext i1 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = xor i64 %i.i, -1
  %i.k = add i64 %i.g, %i.j                       ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !9
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 %i.g, i64 0          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9
  %i.p = xor i64 %i.o, -1
  %i.q = add i64 %i.m, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !tbaa !9
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 %i.m, i64 0
  %i.t = xor i64 %i.b, -1
  %i.u = add nuw i64 %i.s, %i.t
  store i64 %i.u, ptr %i.a, align 8, !tbaa !9
  br label %_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal256ES2_.exit.thread: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5arrowltERKNS_15BasicDecimal256ES2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.b, %i.d
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9    ; 2 uses
  %.not2 = icmp eq i64 %i.g, %i.i
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %i.g, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %.not3 = icmp eq i64 %i.l, %i.n
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i64 %i.l, %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !9
  %i.q = load i64, ptr %1, align 8, !tbaa !9
  %i.r = icmp ult i64 %i.p, %i.q
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.s = phi i1 [ %i.e, %bb.b ], [ %i.j, %bb.d ], [ %i.o, %bb.f ], [ %i.r, %bb.g ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow15BasicDecimal2563AbsERKS0_(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.10.0.copyload, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow15BasicDecimal2563AbsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 0, %.sroa.0.0.copyload
end_hunk_0
