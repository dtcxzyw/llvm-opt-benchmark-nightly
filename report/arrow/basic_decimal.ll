inline.NumInlined: 502
inline.NumDeleted: 136
begin_hunk_0_@_ZNK5arrow14BasicDecimal3215FitsInPrecisionEi:bb.a
  ret i1 %.0
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
  %i.a = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.a, i1 true)
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp slt i64 %spec.select.i, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
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
define i32 @_ZN5arrowngERKNS_14BasicDecimal32E(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = sub i32 0, %i.a
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
define i64 @_ZN5arrowngERKNS_14BasicDecimal64E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = sub i64 0, %i.a
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
  %1 = load <2 x i64>, ptr %0, align 8, !tbaa !9
  %i.a = load i64, ptr %0, align 8, !tbaa !9
  %2 = icmp ne i64 %i.a, 0
  %3 = sext i1 %2 to i64
  %4 = insertelement <2 x i64> <i64 0, i64 poison>, i64 %3, i64 1
  %5 = sub <2 x i64> %4, %1
  store <2 x i64> %5, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal1283AbsEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.thread

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %1 = icmp ne i64 %i.d, 0
  %i.e = sub i64 0, %i.d
  %2 = sext i1 %1 to i64
  %.sroa.6.0.i = sub i64 %2, %i.b
  store i64 %i.e, ptr %0, align 8
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
_ZN5arrow15BasicDecimal1283AbsEv.exit.a:
  %.sroa.0.0.copyload1 = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp slt i64 %.sroa.6.0.copyload, 0      ; 2 uses
  %1 = icmp ne i64 %.sroa.0.0.copyload1, 0
  %2 = sub i64 0, %.sroa.0.0.copyload1
  %3 = sext i1 %1 to i64
  %.sroa.6.0.i.i = sub i64 %3, %.sroa.6.0.copyload
  %.sroa.6.0 = select i1 %i.a, i64 %.sroa.6.0.i.i, i64 %.sroa.6.0.copyload
  %.sroa.0.0 = select i1 %i.a, i64 %2, i64 %.sroa.0.0.copyload1
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow15BasicDecimal12815FitsInPrecisionEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 3 uses
  %2 = icmp slt i64 %.sroa.6.0.copyload.i, 0      ; 2 uses
  %3 = icmp ne i64 %.sroa.0.0.copyload1.i, 0
  %4 = sub i64 0, %.sroa.0.0.copyload1.i
  %5 = sext i1 %3 to i64
  %.sroa.6.0.i.i.i = sub i64 %5, %.sroa.6.0.copyload.i
  %.sroa.6.0.i = select i1 %2, i64 %.sroa.6.0.i.i.i, i64 %.sroa.6.0.copyload.i ; 2 uses
  %.sroa.0.0.i = select i1 %2, i64 %4, i64 %.sroa.0.0.copyload1.i
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = icmp slt i64 %.sroa.6.0.i, %i.d
  br i1 %i.e, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sroa.6.0.i, %i.d
  br i1 %i.f, label %bb.c, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 16, !tbaa !9
  %i.h = icmp ult i64 %.sroa.0.0.i, %i.g
  br label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
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
  %i.h = icmp slt i64 %.val101.i, 0               ; 4 uses
  %4 = icmp ne i64 %.val100.i, 0
  %5 = sub i64 0, %.val100.i
  %6 = sext i1 %4 to i64
  %.sroa.6.0.i.i.i.i.i = sub i64 %6, %.val101.i
  %.sroa.6.0.i.i.i = select i1 %i.h, i64 %.sroa.6.0.i.i.i.i.i, i64 %.val101.i ; 5 uses
  %.sroa.0.0.i.i.i = select i1 %i.h, i64 %5, i64 %.val100.i ; 9 uses
  %.not.i.i.not = icmp eq i64 %.sroa.6.0.i.i.i, 0 ; 2 uses
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
  %.0.i.i.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.0.i.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.i.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.i.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.i.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %.not.i.i.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %.sroa.6.0.i.i.i, 4294967295
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = lshr i64 %.sroa.6.0.i.i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  store i32 %i.k, ptr %i.f, align 4, !tbaa !3
  %i.l = trunc i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.l, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  %i.m = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.n = trunc nuw i64 %i.m to i32
  store i32 %i.n, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !3
  %i.o = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.o, ptr %.0.i.sroa.gep.i, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = trunc nuw i64 %.sroa.6.0.i.i.i to i32
  store i32 %i.p, ptr %i.f, align 4, !tbaa !3
  %i.q = lshr i64 %.sroa.0.0.i.i.i, 32
  %i.r = trunc nuw i64 %i.q to i32
  store i32 %i.r, ptr %.0.i.sroa.gep5.i, align 8, !tbaa !3
  %i.s = trunc i64 %.sroa.0.0.i.i.i to i32        ; 2 uses
  store i32 %i.s, ptr %.0.i.sroa.gep4.i, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i

bb.e:                                             ; preds = %bb.a
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
  %i.z = phi i32 [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.w, %bb.f ], [ %i.y, %bb.h ], [ 0, %bb.g ]
  %.0.i.sroa.phi.i = phi ptr [ %.0.i.sroa.gep.i, %bb.c ], [ %.0.i.sroa.gep4.i, %bb.d ], [ %.0.i.sroa.gep5.i, %bb.f ], [ %i.f, %bb.h ], [ %i.b, %bb.g ] ; 5 uses
  %.0.i.sroa.phi14.i = phi ptr [ %.0.i.sroa.gep15.i, %bb.c ], [ %.0.i.sroa.gep16.i, %bb.d ], [ %.0.i.sroa.gep17.i, %bb.f ], [ %.0.i.sroa.gep18.i, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.aa = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ab = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.g ] ; 3 uses
  %.not.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.ac = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ] ; 2 uses
  %min.iters.check25 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.h ], [ true, %bb.g ]
  %.0.i.i.sroa.phi = phi ptr [ %.0.i.i.sroa.gep, %bb.c ], [ %.0.i.i.sroa.gep43, %bb.d ], [ %.0.i.i.sroa.gep44, %bb.f ], [ %.0.i.i.sroa.gep45, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %.0.i.i.sroa.phi47 = phi ptr [ %.0.i.i.sroa.gep48, %bb.c ], [ %.0.i.i.sroa.gep49, %bb.d ], [ %.0.i.i.sroa.gep50, %bb.f ], [ %.0.i.i.sroa.gep51, %bb.h ], [ %i.b, %bb.g ]
  %exitcond.not.i.i.2 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %exitcond.not.i.i.3 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %i.ad = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.h ], [ false, %bb.g ]
  %.0.i.i = phi i64 [ 4, %bb.c ], [ 3, %bb.d ], [ 2, %bb.f ], [ 1, %bb.h ], [ 0, %bb.g ] ; 10 uses
  %i.ae = add nuw nsw i64 %.0.i.i, 1              ; 3 uses
  %i.af = icmp slt i64 %.val4, 0                  ; 2 uses
  %7 = icmp ne i64 %.val, 0
  %8 = sub i64 0, %.val
  %9 = sext i1 %7 to i64
  %.sroa.6.0.i.i.i.i102.i = sub i64 %9, %.val4
  %.sroa.6.0.i.i103.i = select i1 %i.af, i64 %.sroa.6.0.i.i.i.i102.i, i64 %.val4 ; 5 uses
  %.sroa.0.0.i.i104.i = select i1 %i.af, i64 %8, i64 %.val ; 9 uses
  %.not.i106.i.not.not = icmp eq i64 %.sroa.6.0.i.i103.i, 0 ; 3 uses
  br i1 %.not.i106.i.not.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.ag = icmp ugt i64 %.sroa.6.0.i.i103.i, 4294967295
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr i64 %.sroa.6.0.i.i103.i, 32
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  store i32 %i.aj, ptr %i.c, align 16, !tbaa !3
  %i.ak = trunc i64 %.sroa.6.0.i.i103.i to i32    ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3
  %i.al = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !3
  %i.ao = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.k:                                             ; preds = %bb.i
  %i.aq = trunc nuw i64 %.sroa.6.0.i.i103.i to i32 ; 2 uses
  store i32 %i.aq, ptr %i.c, align 16, !tbaa !3
  %i.ar = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.as = trunc nuw i64 %i.ar to i32              ; 2 uses
  store i32 %i.as, ptr %i.ah, align 4, !tbaa !3
  %i.at = trunc i64 %.sroa.0.0.i.i104.i to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.at, ptr %i.au, align 8, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.l:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit.i
  %i.av = icmp ugt i64 %.sroa.0.0.i.i104.i, 4294967295
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = lshr i64 %.sroa.0.0.i.i104.i, 32
  %i.ax = trunc nuw i64 %i.aw to i32              ; 2 uses
  store i32 %i.ax, ptr %i.c, align 16, !tbaa !3
  %i.ay = trunc i64 %.sroa.0.0.i.i104.i to i32    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

bb.n:                                             ; preds = %bb.l
  %i.ba = icmp eq i64 %.sroa.0.0.i.i104.i, 0
  br i1 %i.ba, label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = trunc nuw i64 %.sroa.0.0.i.i104.i to i32 ; 2 uses
  store i32 %i.bb, ptr %i.c, align 16, !tbaa !3
  br label %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j
  %i.bc = phi i32 [ %i.ak, %bb.j ], [ %i.as, %bb.k ], [ %i.ay, %bb.m ], [ undef, %bb.o ], [ undef, %bb.n ]
  %i.bd = phi i32 [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.m ], [ %i.bb, %bb.o ], [ undef, %bb.n ] ; 7 uses
  %i.be = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ true, %bb.o ], [ false, %bb.n ]
  %i.bf = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %i.bg = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.n ] ; 2 uses
  %.0.i107.i = phi i64 [ 4, %bb.j ], [ 3, %bb.k ], [ 2, %bb.m ], [ 1, %bb.o ], [ 0, %bb.n ] ; 10 uses
  %.not.not.i = icmp samesign ult i64 %.0.i.i, %.0.i107.i
  br i1 %.not.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.q:                                             ; preds = %_ZN5arrowL11FillInArrayERKNS_15BasicDecimal128EPjRb.exit108.i
  switch i64 %.0.i107.i, label %bb.ac [
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
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %.lcssa42, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %10 = xor i64 %.val101.i, %.val4
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %12 = load <2 x i64>, ptr %2, align 8, !tbaa !9
  %i.dy = load i64, ptr %2, align 8, !tbaa !9
  %13 = icmp ne i64 %i.dy, 0
  %14 = sext i1 %13 to i64
  %15 = insertelement <2 x i64> <i64 0, i64 poison>, i64 %14, i64 1
  %16 = sub <2 x i64> %15, %12
  store <2 x i64> %16, ptr %2, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %i.h, label %bb.ab, label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %17 = load <2 x i64>, ptr %3, align 8, !tbaa !9
  %i.dz = load i64, ptr %3, align 8, !tbaa !9
  %18 = icmp ne i64 %i.dz, 0
  %19 = sext i1 %18 to i64
  %20 = insertelement <2 x i64> <i64 0, i64 poison>, i64 %19, i64 1
  %21 = sub <2 x i64> %20, %17
  store <2 x i64> %21, ptr %3, align 8
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.preheader.i.i.i.i
  %.0.i109.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.ea = sub nsw i64 %i.ae, %.0.i107.i           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.eb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bd, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.eb, 0                  ; 2 uses
  %.pre12 = add nsw i64 %.0.i107.i, -1            ; 9 uses
  br i1 %.not.i, label %.lr.ph34.i.a, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac
  %i.ec = sub nuw nsw i32 32, %i.eb               ; 4 uses
  %min.iters.check = icmp ult i64 %.pre12, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %.pre12, -8                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert21 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat22 = shufflevector <4 x i32> %broadcast.splatinsert21, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bd, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load23, %vector.body ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %wide.load = load <4 x i32>, ptr %i.ef, align 4, !tbaa !3 ; 3 uses
  %wide.load23 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !3 ; 4 uses
  %i.eh = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ei = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load23, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ej = shl <4 x i32> %i.eh, %broadcast.splat22
  %i.ek = shl <4 x i32> %i.ei, %broadcast.splat22
  %i.el = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.em = lshr <4 x i32> %wide.load23, %broadcast.splat
  %i.en = or disjoint <4 x i32> %i.el, %i.ej
  %i.eo = or disjoint <4 x i32> %i.em, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <4 x i32> %i.en, ptr %i.ed, align 16, !tbaa !3
  store <4 x i32> %i.eo, ptr %i.ep, align 16, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load23, i64 3
  %cmp.n = icmp eq i64 %.pre12, %n.vec
  br i1 %cmp.n, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.ph41 = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph, %middle.block
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = shl i32 %i.es, %i.eb
  store i32 %i.et, ptr %i.er, align 4, !tbaa !3
  br i1 %i.ac, label %.lr.ph.i114.i.preheader, label %._crit_edge.i113.i

.lr.ph.i114.i.preheader:                          ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  br i1 %min.iters.check25, label %.lr.ph.i114.i.preheader40, label %vector.ph26

vector.ph26:                                      ; preds = %.lr.ph.i114.i.preheader
  %n.vec28 = and i64 %.0.i.i, 4                   ; 2 uses
  %broadcast.splatinsert31 = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat32 = shufflevector <4 x i32> %broadcast.splatinsert31, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load34 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !3 ; 3 uses
  %i.ev = shufflevector <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>, <4 x i32> %wide.load34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ew = shl <4 x i32> %i.ev, %broadcast.splat30
  %i.ex = lshr <4 x i32> %wide.load34, %broadcast.splat32
  %i.ey = or disjoint <4 x i32> %i.ex, %i.ew
  store <4 x i32> %i.ey, ptr %i.b, align 16, !tbaa !3
  %vector.recur.extract36 = extractelement <4 x i32> %wide.load34, i64 3
  %cmp.n37 = icmp eq i64 %.0.i.i, %n.vec28
  br i1 %cmp.n37, label %._crit_edge.i113.loopexit.i, label %.lr.ph.i114.i.preheader40

.lr.ph.i114.i.preheader40:                        ; preds = %.lr.ph.i114.i.preheader, %vector.ph26
  %.ph = phi i32 [ 0, %.lr.ph.i114.i.preheader ], [ %vector.recur.extract36, %vector.ph26 ]
  %.019.i116.i.ph = phi i64 [ 0, %.lr.ph.i114.i.preheader ], [ %n.vec28, %vector.ph26 ]
  br label %.lr.ph.i114.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ez = phi i32 [ %i.fe, %scalar.ph ], [ %.ph41, %scalar.ph.preheader ]
  %.019.i.i = phi i64 [ %i.fc, %scalar.ph ], [ %.019.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.fb = shl i32 %i.ez, %i.eb
  %i.fc = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 2 uses
  %i.ff = lshr i32 %i.fe, %i.ec
  %i.fg = or disjoint i32 %i.ff, %i.fb
  store i32 %i.fg, ptr %i.fa, align 4, !tbaa !3
  %exitcond.not.i110.i = icmp eq i64 %i.fc, %.pre12
  br i1 %exitcond.not.i110.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph, !llvm.loop !20

._crit_edge.i113.loopexit.i:                      ; preds = %.lr.ph.i114.i, %vector.ph26
  %.pre.i = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  br label %._crit_edge.i113.i

._crit_edge.i113.i:                               ; preds = %._crit_edge.i113.loopexit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.fh = phi i32 [ %.pre.i, %._crit_edge.i113.loopexit.i ], [ %i.z, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i ]
  %i.fi = shl i32 %i.fh, %i.eb
  store i32 %i.fi, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  %.pre = load i32, ptr %i.c, align 16, !tbaa !3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre11 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %.lr.ph34.i.a

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.preheader40, %.lr.ph.i114.i
  %i.fj = phi i32 [ %i.fo, %.lr.ph.i114.i ], [ %.ph, %.lr.ph.i114.i.preheader40 ]
  %.019.i116.i = phi i64 [ %i.fm, %.lr.ph.i114.i ], [ %.019.i116.i.ph, %.lr.ph.i114.i.preheader40 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i116.i
  %i.fl = shl i32 %i.fj, %i.eb
  %i.fm = add nuw nsw i64 %.019.i116.i, 1         ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3  ; 2 uses
  %i.fp = lshr i32 %i.fo, %i.ec
  %i.fq = or disjoint i32 %i.fp, %i.fl
  store i32 %i.fq, ptr %i.fk, align 4, !tbaa !3
  %exitcond.not.i117.i = icmp eq i64 %i.fm, %.0.i.i
  br i1 %exitcond.not.i117.i, label %._crit_edge.i113.loopexit.i, label %.lr.ph.i114.i, !llvm.loop !21

.lr.ph34.i.a:                                     ; preds = %bb.ac, %._crit_edge.i113.i
  %i.fr = phi i32 [ %.pre11, %._crit_edge.i113.i ], [ %i.bc, %bb.ac ]
  %i.fs = phi i32 [ %.pre, %._crit_edge.i113.i ], [ %i.bd, %bb.ac ] ; 5 uses
  %i.ft = zext i32 %i.fs to i64
  %i.fu = zext i32 %i.fr to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12
  %i.fw = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw
  %i.fy = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fy
  %i.ga = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre12
  %i.gd = add nsw i64 %.0.i107.i, -2              ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gd
  %i.gf = add nsw i64 %.0.i107.i, -3              ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = add nsw i64 %.0.i107.i, -4              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh
  br label %bb.ah

._crit_edge35.i.a:                                ; preds = %._crit_edge.thread.i
  br i1 %.not.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, label %.preheader.i120.i

.preheader.i120.i:                                ; preds = %._crit_edge35.i.a
  br i1 %i.ac, label %.lr.ph.i122.i, label %._crit_edge.i121.i

.lr.ph.i122.i:                                    ; preds = %.preheader.i120.i
  %i.gj = sub nuw nsw i32 32, %i.eb               ; 4 uses
  %i.gk = load i32, ptr %.0.i.i.sroa.phi, align 4, !tbaa !3
  %i.gl = lshr i32 %i.gk, %i.eb
  %i.gm = getelementptr [4 x i8], ptr %i.b, i64 %i.ae
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3
  %i.gp = shl i32 %i.go, %i.gj
  %i.gq = or disjoint i32 %i.gp, %i.gl
  store i32 %i.gq, ptr %.0.i.i.sroa.phi, align 4, !tbaa !3
  br i1 %i.ad, label %bb.ad, label %._crit_edge.i121.i

._crit_edge.i121.i:                               ; preds = %.lr.ph.i122.i, %bb.ad, %bb.ae, %bb.af, %.preheader.i120.i
  %i.gr = load i32, ptr %i.b, align 16, !tbaa !3
  %i.gs = lshr i32 %i.gr, %i.eb
  store i32 %i.gs, ptr %i.b, align 16, !tbaa !3
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

bb.ad:                                            ; preds = %.lr.ph.i122.i
  %.0.i123.i.1 = add nsw i64 %.0.i.i, -1          ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i123.i.1 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = lshr i32 %i.gu, %i.eb
  %i.gw = getelementptr i8, ptr %.0.i.i.sroa.phi47, i64 -8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3
  %i.gy = shl i32 %i.gx, %i.gj
  %i.gz = or disjoint i32 %i.gy, %i.gv
  store i32 %i.gz, ptr %i.gt, align 4, !tbaa !3
  br i1 %.not.i.i.not, label %._crit_edge.i121.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.i123.i.2 = add nsw i64 %.0.i.i, -2          ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i123.i.2 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3
  %i.hc = lshr i32 %i.hb, %i.eb
  %i.hd = getelementptr [4 x i8], ptr %i.b, i64 %.0.i123.i.1
  %i.he = getelementptr i8, ptr %i.hd, i64 -8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = shl i32 %i.hf, %i.gj
  %i.hh = or disjoint i32 %i.hg, %i.hc
  store i32 %i.hh, ptr %i.ha, align 4, !tbaa !3
  br i1 %i.aa, label %bb.af, label %._crit_edge.i121.i

bb.af:                                            ; preds = %bb.ae
  %i.hi = getelementptr [4 x i8], ptr %i.b, i64 %.0.i.i
  %i.hj = getelementptr i8, ptr %i.hi, i64 -12    ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hl = lshr i32 %i.hk, %i.eb
  %i.hm = getelementptr [4 x i8], ptr %i.b, i64 %.0.i123.i.2
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = shl i32 %i.ho, %i.gj
  %i.hq = or disjoint i32 %i.hp, %i.hl
  store i32 %i.hq, ptr %i.hj, align 4, !tbaa !3
  br label %._crit_edge.i121.i

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i121.i, %._crit_edge35.i.a
  %i.hr = icmp sgt i64 %i.ea, 4
  br i1 %i.hr, label %.lr.ph.preheader.i.i.i, label %.lr.ph36.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.hs = load i32, ptr %i.d, align 16, !tbaa !3
  %.not.i.i128.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i128.i, label %.lr.ph36.i.i.thread.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

.lr.ph36.i.i.thread.i:                            ; preds = %.lr.ph.preheader.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hu = load i32, ptr %i.ht, align 16, !tbaa !3
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  %i.hy = zext i32 %i.hx to i64
  %i.hz = shl nuw i64 %i.hy, 32
  %i.ia = or disjoint i64 %i.hz, %i.hv
  %.phi.trans.insert.i48.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.pre.i12549.i = load i32, ptr %.phi.trans.insert.i48.i, align 8, !tbaa !3
  %i.ib = zext i32 %.pre.i12549.i to i64
  br label %.preheader.i.thread28.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.ic = add nsw i64 %i.ea, -1                   ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = zext i32 %i.ie to i64                   ; 2 uses
  %i.ig = icmp eq i64 %i.ic, 0
  br i1 %i.ig, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph36.preheader.i.i.i
  %i.ih = getelementptr i8, ptr %i.id, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw i64 %i.ij, 32
  %i.il = or disjoint i64 %i.ik, %i.if            ; 3 uses
  %.not.i124.i = icmp eq i64 %i.ic, 1
  br i1 %.not.i124.i, label %bb.aq, label %.lr.ph36.i.i.i

.preheader.i.thread28.i.i:                        ; preds = %.lr.ph36.i.i.i, %.lr.ph36.i.i.thread.i
  %i.im = phi i64 [ %i.ib, %.lr.ph36.i.i.thread.i ], [ %i.iu, %.lr.ph36.i.i.i ]
  %.phi.trans.insert.i50.i = phi ptr [ %.phi.trans.insert.i48.i, %.lr.ph36.i.i.thread.i ], [ %.phi.trans.insert.i.i, %.lr.ph36.i.i.i ]
  %i.in = phi i64 [ %i.ia, %.lr.ph36.i.i.thread.i ], [ %i.il, %.lr.ph36.i.i.i ]
  %i.io = getelementptr i8, ptr %.phi.trans.insert.i50.i, i64 -4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = zext i32 %i.ip to i64
  %i.ir = shl nuw i64 %i.iq, 32
  %i.is = or disjoint i64 %i.ir, %i.im
  br label %bb.aq

.lr.ph36.i.i.i:                                   ; preds = %bb.ag
  %i.it = add nsw i64 %i.ea, -3                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.it ; 2 uses
  %.pre.i125.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  %i.iu = zext i32 %.pre.i125.i to i64            ; 2 uses
  %i.iv = icmp eq i64 %i.it, 0
  br i1 %i.iv, label %bb.aq, label %.preheader.i.thread28.i.i

bb.ah:                                            ; preds = %._crit_edge.thread.i, %.lr.ph34.i.a
  %.08433.i = phi i64 [ 0, %.lr.ph34.i.a ], [ %i.iy, %._crit_edge.thread.i ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.08433.i ; 12 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3  ; 4 uses
  %i.iy = add nuw nsw i64 %.08433.i, 1            ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !3  ; 2 uses
  %.not98.i = icmp eq i32 %i.ix, %i.fs
  br i1 %.not98.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jb = zext i32 %i.ja to i64
  %i.jc = zext i32 %i.ix to i64
  %i.jd = shl nuw i64 %i.jc, 32
  %i.je = or disjoint i64 %i.jd, %i.jb
  %i.jf = udiv i64 %i.je, %i.ft
  %i.jg = trunc i64 %i.jf to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.089.i = phi i32 [ %i.jg, %bb.ai ], [ -1, %bb.ah ] ; 2 uses
  %i.jh = mul i32 %.089.i, %i.fs
  %i.ji = sub i32 %i.ja, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = zext i32 %i.jk to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.190.i = phi i32 [ %.089.i, %bb.aj ], [ %i.js, %bb.al ] ; 3 uses
  %.088.i = phi i32 [ %i.ji, %bb.aj ], [ %i.jt, %bb.al ] ; 2 uses
  %i.jm = zext i32 %.190.i to i64
  %i.jn = mul nuw i64 %i.jm, %i.fu
  %i.jo = zext i32 %.088.i to i64
  %i.jp = shl nuw i64 %i.jo, 32
  %i.jq = or disjoint i64 %i.jp, %i.jl
  %i.jr = icmp ugt i64 %i.jn, %i.jq
  br i1 %i.jr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.js = add i32 %.190.i, -1                     ; 2 uses
  %i.jt = add i32 %.088.i, %i.fs                  ; 2 uses
  %i.ju = icmp ult i32 %i.jt, %i.fs
  br i1 %i.ju, label %bb.am, label %bb.ak, !llvm.loop !22

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.i = phi i32 [ %i.js, %bb.al ], [ %.190.i, %bb.ak ] ; 4 uses
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.am
  %i.jv = zext i32 %.2.i to i64                   ; 4 uses
  %i.jw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.jx = zext i32 %i.jw to i64
  %i.jy = mul nuw i64 %i.jx, %i.jv                ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.pre12
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !3  ; 2 uses
  %i.kc = trunc i64 %i.jy to i32                  ; 2 uses
  %i.kd = sub i32 %i.kb, %i.kc
  store i32 %i.kd, ptr %i.ka, align 4, !tbaa !3
  %i.ke = lshr i64 %i.jy, 32
  %i.kf = icmp ult i32 %i.kb, %i.kc
  %i.kg = zext i1 %i.kf to i64
  %spec.select.i = add nuw nsw i64 %i.ke, %i.kg   ; 2 uses
  br i1 %i.bf, label %bb.an, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ap, %bb.ao, %bb.an, %.lr.ph.i
  %spec.select.i.lcssa = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %spec.select.i.1, %bb.an ], [ %spec.select.i.2, %bb.ao ], [ %spec.select.i.3, %bb.ap ]
  %i.kh = trunc i64 %spec.select.i.lcssa to i32   ; 2 uses
  %i.ki = sub i32 %i.ix, %i.kh                    ; 2 uses
  store i32 %i.ki, ptr %i.iw, align 4, !tbaa !3
  %i.kj = icmp ult i32 %i.ix, %i.kh
  br i1 %i.kj, label %.lr.ph30.i, label %._crit_edge.thread.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.kk = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul nuw i64 %i.kl, %i.jv
  %i.kn = add nuw i64 %i.km, %spec.select.i       ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.fw
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !3  ; 2 uses
  %i.kr = trunc i64 %i.kn to i32                  ; 2 uses
  %i.ks = sub i32 %i.kq, %i.kr
  store i32 %i.ks, ptr %i.kp, align 4, !tbaa !3
  %i.kt = lshr i64 %i.kn, 32
  %i.ku = icmp ult i32 %i.kq, %i.kr
  %i.kv = zext i1 %i.ku to i64
  %spec.select.i.1 = add nuw nsw i64 %i.kt, %i.kv ; 2 uses
  br i1 %.not.i106.i.not.not, label %._crit_edge.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kw = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul nuw i64 %i.kx, %i.jv
  %i.kz = add nuw i64 %i.ky, %spec.select.i.1     ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.fy
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !3  ; 2 uses
  %i.ld = trunc i64 %i.kz to i32                  ; 2 uses
  %i.le = sub i32 %i.lc, %i.ld
  store i32 %i.le, ptr %i.lb, align 4, !tbaa !3
  %i.lf = lshr i64 %i.kz, 32
  %i.lg = icmp ult i32 %i.lc, %i.ld
  %i.lh = zext i1 %i.lg to i64
  %spec.select.i.2 = add nuw nsw i64 %i.lf, %i.lh ; 2 uses
  br i1 %i.bg, label %bb.ap, label %._crit_edge.i

bb.ap:                                            ; preds = %bb.ao
  %i.li = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.lj = zext i32 %i.li to i64
  %i.lk = mul nuw i64 %i.lj, %i.jv
  %i.ll = add nuw i64 %i.lk, %spec.select.i.2     ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ga
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4 ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !3  ; 2 uses
  %i.lp = trunc i64 %i.ll to i32                  ; 2 uses
  %i.lq = sub i32 %i.lo, %i.lp
  store i32 %i.lq, ptr %i.ln, align 4, !tbaa !3
  %i.lr = lshr i64 %i.ll, 32
  %i.ls = icmp ult i32 %i.lo, %i.lp
  %i.lt = zext i1 %i.ls to i64
  %spec.select.i.3 = add nuw nsw i64 %i.lr, %i.lt
  br label %._crit_edge.i

._crit_edge31.i:                                  ; preds = %.lr.ph30.i.3, %.lr.ph30.i.2, %.lr.ph30.i.1, %.lr.ph30.i
  %.lcssa = phi i64 [ %i.mb, %.lr.ph30.i ], [ %i.ml, %.lr.ph30.i.1 ], [ %i.mv, %.lr.ph30.i.2 ], [ %i.nf, %.lr.ph30.i.3 ]
  %i.lu = add i32 %.2.i, -1
  %i.lv = trunc nuw nsw i64 %.lcssa to i32
  %i.lw = add i32 %i.ki, %i.lv
  store i32 %i.lw, ptr %i.iw, align 4, !tbaa !3
  br label %._crit_edge.thread.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i
  %i.lx = load i32, ptr %i.gc, align 4, !tbaa !3  ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.pre12
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !3
  %add.narrowed = add i32 %i.lx, %i.ma            ; 2 uses
  %add.narrowed.overflow = icmp ult i32 %add.narrowed, %i.lx
  store i32 %add.narrowed, ptr %i.lz, align 4, !tbaa !3
  %i.mb = zext i1 %add.narrowed.overflow to i64   ; 2 uses
  br i1 %i.bf, label %.lr.ph30.i.1, label %._crit_edge31.i

.lr.ph30.i.1:                                     ; preds = %.lr.ph30.i
  %i.mc = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.gd
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !3
  %i.mh = zext i32 %i.mg to i64
  %i.mi = add nuw nsw i64 %i.mb, %i.md
  %i.mj = add nuw nsw i64 %i.mi, %i.mh            ; 2 uses
  %i.mk = trunc i64 %i.mj to i32
  store i32 %i.mk, ptr %i.mf, align 4, !tbaa !3
  %i.ml = lshr i64 %i.mj, 32                      ; 2 uses
  br i1 %.not.i106.i.not.not, label %._crit_edge31.i, label %.lr.ph30.i.2

.lr.ph30.i.2:                                     ; preds = %.lr.ph30.i.1
  %i.mm = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.gf
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = zext i32 %i.mq to i64
  %i.ms = add nuw nsw i64 %i.ml, %i.mn
  %i.mt = add nuw nsw i64 %i.ms, %i.mr            ; 2 uses
  %i.mu = trunc i64 %i.mt to i32
  store i32 %i.mu, ptr %i.mp, align 4, !tbaa !3
  %i.mv = lshr i64 %i.mt, 32                      ; 2 uses
  br i1 %i.bg, label %.lr.ph30.i.3, label %._crit_edge31.i

.lr.ph30.i.3:                                     ; preds = %.lr.ph30.i.2
  %i.mw = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.gh
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = zext i32 %i.na to i64
  %i.nc = add nuw nsw i64 %i.mv, %i.mx
  %i.nd = add nuw nsw i64 %i.nc, %i.nb            ; 2 uses
  %i.ne = trunc i64 %i.nd to i32
  store i32 %i.ne, ptr %i.mz, align 4, !tbaa !3
  %i.nf = lshr i64 %i.nd, 32
  br label %._crit_edge31.i

._crit_edge.thread.i:                             ; preds = %._crit_edge31.i, %._crit_edge.i, %bb.am
  %.3.i = phi i32 [ %i.lu, %._crit_edge31.i ], [ %.2.i, %._crit_edge.i ], [ %.2.i, %bb.am ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.08433.i
  store i32 %.3.i, ptr %i.ng, align 4, !tbaa !3
  %exitcond.not.i = icmp eq i64 %i.iy, %i.ea
  br i1 %exitcond.not.i, label %._crit_edge35.i.a, label %bb.ah, !llvm.loop !23

bb.aq:                                            ; preds = %.lr.ph36.i.i.i, %.preheader.i.thread28.i.i, %bb.ag, %.lr.ph36.preheader.i.i.i
  %.sroa.0.i.0.i = phi i64 [ %i.if, %.lr.ph36.preheader.i.i.i ], [ %i.in, %.preheader.i.thread28.i.i ], [ %i.il, %bb.ag ], [ %i.il, %.lr.ph36.i.i.i ]
  %.sink.i.i = phi i64 [ 0, %.lr.ph36.preheader.i.i.i ], [ %i.is, %.preheader.i.thread28.i.i ], [ 0, %bb.ag ], [ %i.iu, %.lr.ph36.i.i.i ]
  store i64 %.sroa.0.i.0.i, ptr %2, align 8
  %.sroa.4.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i126.i, align 8
  br i1 %i.aa, label %.lr.ph.preheader.i.i144.i, label %._crit_edge.i.i130.i

.lr.ph.preheader.i.i144.i:                        ; preds = %bb.aq
  %i.nh = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -16
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3
  %.not.i.i147.i = icmp eq i32 %i.ni, 0
  br i1 %.not.i.i147.i, label %._crit_edge.i.i130.i, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

._crit_edge.i.i130.i:                             ; preds = %.lr.ph.preheader.i.i144.i, %bb.aq
  %i.nj = load i32, ptr %.0.i.sroa.phi.i, align 4, !tbaa !3
  %i.nk = zext i32 %i.nj to i64                   ; 2 uses
  br i1 %i.ab, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i.i130.i
  %i.nl = getelementptr i8, ptr %.0.i.sroa.phi.i, i64 -4
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = zext i32 %i.nm to i64
  %i.no = shl nuw i64 %i.nn, 32
  %i.np = or disjoint i64 %i.no, %i.nk            ; 3 uses
  br i1 %.not.i.i.i, label %bb.as, label %.lr.ph36.i.i133.i

.preheader.i.thread28.i136.i:                     ; preds = %.lr.ph36.i.i133.i
  %i.nq = getelementptr i8, ptr %.phi.trans.insert.i134.i, i64 -4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !3
  %i.ns = zext i32 %i.nr to i64
  %i.nt = shl nuw i64 %i.ns, 32
  %i.nu = or disjoint i64 %i.nt, %i.nw
  br label %bb.as

.lr.ph36.i.i133.i:                                ; preds = %bb.ar
  %i.nv = add nsw i64 %.0.i.i, -2                 ; 2 uses
  %.phi.trans.insert.i134.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nv ; 2 uses
  %.pre.i135.i = load i32, ptr %.phi.trans.insert.i134.i, align 4, !tbaa !3
  %i.nw = zext i32 %.pre.i135.i to i64            ; 2 uses
  %i.nx = icmp eq i64 %i.nv, 0
  br i1 %i.nx, label %bb.as, label %.preheader.i.thread28.i136.i

bb.as:                                            ; preds = %.lr.ph36.i.i133.i, %.preheader.i.thread28.i136.i, %bb.ar, %._crit_edge.i.i130.i
  %.sroa.0.i129.0.i = phi i64 [ %i.np, %.preheader.i.thread28.i136.i ], [ %i.np, %bb.ar ], [ %i.np, %.lr.ph36.i.i133.i ], [ %i.nk, %._crit_edge.i.i130.i ]
  %.sink.i138.i = phi i64 [ %i.nu, %.preheader.i.thread28.i136.i ], [ 0, %bb.ar ], [ %i.nw, %.lr.ph36.i.i133.i ], [ 0, %._crit_edge.i.i130.i ]
  store i64 %.sroa.0.i129.0.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink.i138.i, ptr %.sroa.4.0..sroa_idx.i140.i, align 8
  %22 = xor i64 %.val101.i, %.val4
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %24 = load <2 x i64>, ptr %2, align 8, !tbaa !9
  %i.ny = load i64, ptr %2, align 8, !tbaa !9
  %25 = icmp ne i64 %i.ny, 0
  %26 = sext i1 %25 to i64
  %27 = insertelement <2 x i64> <i64 0, i64 poison>, i64 %26, i64 1
  %28 = sub <2 x i64> %27, %24
  store <2 x i64> %28, ptr %2, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %i.h, label %bb.av, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

bb.av:                                            ; preds = %bb.au
  %29 = load <2 x i64>, ptr %3, align 8, !tbaa !9
  %i.nz = load i64, ptr %3, align 8, !tbaa !9
  %30 = icmp ne i64 %i.nz, 0
  %31 = sext i1 %30 to i64
  %32 = insertelement <2 x i64> <i64 0, i64 poison>, i64 %31, i64 1
  %33 = sub <2 x i64> %32, %29
  store <2 x i64> %33, ptr %3, align 8
  br label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i: ; preds = %bb.av, %bb.au, %.lr.ph.preheader.i.i144.i, %.lr.ph.preheader.i.i.i
  %.0.i = phi i32 [ 0, %bb.av ], [ 2, %.lr.ph.preheader.i.i144.i ], [ 0, %bb.au ], [ 2, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.p, %bb.q, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i
  %.1.i = phi i32 [ 0, %bb.p ], [ %.0.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i ], [ %.0.i109.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.q ]
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
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %3 = load i64, ptr %2, align 8, !tbaa !9        ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !9        ; 4 uses
  %6 = xor i64 %5, %3
  %isneg = icmp sgt i64 %6, -1
  %.sroa.0.0.copyload1.i = load i64, ptr %0, align 8 ; 3 uses
  %7 = icmp slt i64 %3, 0                         ; 2 uses
  %8 = icmp ne i64 %.sroa.0.0.copyload1.i, 0
  %9 = sub i64 0, %.sroa.0.0.copyload1.i
  %10 = sext i1 %8 to i64
  %.sroa.6.0.i.i.i = sub i64 %10, %3
  %.sroa.6.0.i = select i1 %7, i64 %.sroa.6.0.i.i.i, i64 %3
  %.sroa.0.0.i = select i1 %7, i64 %9, i64 %.sroa.0.0.copyload1.i
  %.sroa.0.0.copyload1.i9 = load i64, ptr %1, align 8 ; 3 uses
  %11 = icmp slt i64 %5, 0                        ; 2 uses
  %12 = icmp ne i64 %.sroa.0.0.copyload1.i9, 0
  %13 = sub i64 0, %.sroa.0.0.copyload1.i9
  %14 = sext i1 %12 to i64
  %.sroa.6.0.i.i.i12 = sub i64 %14, %5
  %.sroa.6.0.i13 = select i1 %11, i64 %.sroa.6.0.i.i.i12, i64 %5
  %.sroa.0.0.i14 = select i1 %11, i64 %13, i64 %.sroa.0.0.copyload1.i9
  %i.a = sext i64 %.sroa.6.0.i to i128
  %i.b = shl nsw i128 %i.a, 64
  %i.c = zext i64 %.sroa.0.0.i to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = sext i64 %.sroa.6.0.i13 to i128
  %i.f = shl nsw i128 %i.e, 64
  %i.g = zext i64 %.sroa.0.0.i14 to i128
  %i.h = or disjoint i128 %i.f, %i.g
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 2 uses
  %i.l = trunc i128 %i.i to i64                   ; 3 uses
  store i64 %i.l, ptr %0, align 8
  store i64 %i.k, ptr %2, align 8
  br i1 %isneg, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %15 = icmp ne i64 %i.l, 0
  %i.m = sub i64 0, %i.l
  %16 = sext i1 %15 to i64
  %.sroa.6.0.i17 = sub i64 %16, %i.k
  store i64 %i.m, ptr %0, align 8
  store i64 %.sroa.6.0.i17, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = load i64, ptr %0, align 8, !tbaa !9      ; 2 uses
  %1 = icmp ne i64 %i.c, 0
  %i.d = sub i64 0, %i.c
  %2 = sext i1 %1 to i64
  %.sroa.6.0.i = sub i64 %2, %i.b
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.d, 0
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
_ZN5arrow15BasicDecimal128mLERKS0_.exit.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i64, ptr %2, align 8, !tbaa !9        ; 4 uses
  %4 = load i64, ptr %0, align 8, !tbaa !9        ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load i64, ptr %5, align 8, !tbaa !9        ; 4 uses
  %7 = xor i64 %6, %3
  %isneg.i = icmp sgt i64 %7, -1                  ; 2 uses
  %8 = icmp slt i64 %3, 0                         ; 2 uses
  %9 = icmp ne i64 %4, 0
  %10 = sub i64 0, %4
  %11 = sext i1 %9 to i64
  %.sroa.6.0.i.i.i.i = sub i64 %11, %3
  %.sroa.6.0.i.i = select i1 %8, i64 %.sroa.6.0.i.i.i.i, i64 %3
  %.sroa.0.0.i.i = select i1 %8, i64 %10, i64 %4
  %.sroa.0.0.copyload1.i9.i = load i64, ptr %1, align 8 ; 3 uses
  %12 = icmp slt i64 %6, 0                        ; 2 uses
  %13 = icmp ne i64 %.sroa.0.0.copyload1.i9.i, 0
  %14 = sub i64 0, %.sroa.0.0.copyload1.i9.i
  %15 = sext i1 %13 to i64
  %.sroa.6.0.i.i.i12.i = sub i64 %15, %6
  %.sroa.6.0.i13.i = select i1 %12, i64 %.sroa.6.0.i.i.i12.i, i64 %6
  %.sroa.0.0.i14.i = select i1 %12, i64 %14, i64 %.sroa.0.0.copyload1.i9.i
  %i.a = sext i64 %.sroa.6.0.i.i to i128
  %i.b = shl nsw i128 %i.a, 64
  %i.c = zext i64 %.sroa.0.0.i.i to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = sext i64 %.sroa.6.0.i13.i to i128
  %i.f = shl nsw i128 %i.e, 64
  %i.g = zext i64 %.sroa.0.0.i14.i to i128
  %i.h = or disjoint i128 %i.f, %i.g
  %i.i = mul i128 %i.h, %i.d                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 2 uses
  %i.l = trunc i128 %i.i to i64                   ; 3 uses
  %16 = icmp ne i64 %i.l, 0
  %17 = sub i64 0, %i.l
  %18 = sext i1 %16 to i64
  %.sroa.6.0.i17.i = sub i64 %18, %i.k
  %.sroa.5.0 = select i1 %isneg.i, i64 %i.k, i64 %.sroa.6.0.i17.i
  %.sroa.0.0 = select i1 %isneg.i, i64 %i.l, i64 %17
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
  %i.f = icmp slt i32 %i.b, 0
  br i1 %i.f, label %bb.d, label %bb.e

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
  %bcmp.i.i.i.i.i.i.i.fr = freeze i32 %i.k
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.not9.i.i.i.i.i.i.i.not, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, !prof !26

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 16
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %7 = load i64, ptr %6, align 8, !tbaa !9        ; 4 uses
  %8 = load i64, ptr %0, align 8, !tbaa !9        ; 3 uses
  %9 = xor i64 %.sroa.4.0.copyload, %7
  %isneg.i.i.i = icmp sgt i64 %9, -1              ; 2 uses
  %10 = icmp slt i64 %7, 0                        ; 2 uses
  %11 = icmp ne i64 %8, 0
  %12 = sub i64 0, %8
  %13 = sext i1 %11 to i64
  %.sroa.6.0.i.i.i.i.i.i = sub i64 %13, %7
  %.sroa.6.0.i.i.i.i = select i1 %10, i64 %.sroa.6.0.i.i.i.i.i.i, i64 %7
  %.sroa.0.0.i.i.i.i = select i1 %10, i64 %12, i64 %8
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
  %i.v = trunc nuw i128 %i.u to i64               ; 2 uses
  %i.w = trunc i128 %i.t to i64                   ; 3 uses
  %14 = icmp ne i64 %i.w, 0
  %15 = sub i64 0, %i.w
  %16 = sext i1 %14 to i64
  %.sroa.6.0.i17.i.i.i = sub i64 %16, %i.v
  %.sroa.5.0.i.i = select i1 %isneg.i.i.i, i64 %i.v, i64 %.sroa.6.0.i17.i.i.i ; 5 uses
  %.sroa.0.0.i.i = select i1 %isneg.i.i.i, i64 %i.w, i64 %15 ; 3 uses
  store i64 %.sroa.0.0.i.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %17 = load i64, ptr %6, align 8, !tbaa !9       ; 5 uses
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp slt i64 %.sroa.5.0.i.i, %17
  br i1 %i.x, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.h

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.e
  %i.y = icmp slt i64 %17, %.sroa.5.0.i.i
  br i1 %i.y, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i
  %i.z = icmp eq i64 %17, %.sroa.5.0.i.i
  br i1 %i.z, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %.sroa.5.0.i.i, %17
  br i1 %i.aa, label %bb.i, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %0, align 8, !tbaa !9
  %i.ac = icmp ult i64 %.sroa.0.0.i.i, %i.ab
  %cond.fr21 = freeze i1 %i.ac
  br i1 %cond.fr21, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit: ; preds = %bb.g
  %i.ad = load i64, ptr %0, align 8, !tbaa !9
  %i.ae = icmp ult i64 %i.ad, %.sroa.0.0.i.i
  %cond.fr = freeze i1 %i.ae
  br i1 %cond.fr, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, !prof !27

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread: ; preds = %bb.f, %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, %bb.i, %bb.d, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17

_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17: ; preds = %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit, %bb.d, %bb.i, %bb.h, %bb.g, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 3, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread ], [ 0, %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit ], [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.g ]
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
bb.a:
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %2 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !9        ; 4 uses
  %6 = load i64, ptr %0, align 8, !tbaa !9        ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !9        ; 2 uses
  %9 = xor i64 %8, %5
  %isneg.i.i = icmp sgt i64 %9, -1                ; 2 uses
  %10 = icmp slt i64 %5, 0                        ; 2 uses
  %11 = icmp ne i64 %6, 0
  %12 = sub i64 0, %6
  %13 = sext i1 %11 to i64
  %.sroa.6.0.i.i.i.i.i = sub i64 %13, %5
  %.sroa.6.0.i.i.i = select i1 %10, i64 %.sroa.6.0.i.i.i.i.i, i64 %5
  %.sroa.0.0.i.i.i = select i1 %10, i64 %12, i64 %6
  %.sroa.0.0.copyload1.i9.i.i = load i64, ptr %3, align 16
  %i.a = sext i64 %.sroa.6.0.i.i.i to i128
  %i.b = shl nsw i128 %i.a, 64
  %i.c = zext i64 %.sroa.0.0.i.i.i to i128
  %i.d = or disjoint i128 %i.b, %i.c
  %i.e = sext i64 %8 to i128
  %i.f = shl nsw i128 %i.e, 64
  %i.g = zext i64 %.sroa.0.0.copyload1.i9.i.i to i128
  %i.h = or disjoint i128 %i.f, %i.g
  %i.i = mul i128 %i.d, %i.h                      ; 2 uses
  %i.j = lshr i128 %i.i, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 2 uses
  %i.l = trunc i128 %i.i to i64                   ; 3 uses
  %14 = icmp ne i64 %i.l, 0
  %15 = sub i64 0, %i.l
  %16 = sext i1 %14 to i64
  %.sroa.6.0.i17.i.i = sub i64 %16, %i.k
  %.sroa.5.0.i = select i1 %isneg.i.i, i64 %i.k, i64 %.sroa.6.0.i17.i.i
  %.sroa.0.0.i = select i1 %isneg.i.i, i64 %i.l, i64 %15
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i, label %_ZN5arrow15BasicDecimal1283AbsEv.exit

_ZN5arrowltERKNS_15BasicDecimal128ES2_.exit.i:    ; preds = %bb.d
  %i.i = load i64, ptr %4, align 8, !tbaa !9      ; 2 uses
  %5 = icmp ne i64 %i.i, 0
  %i.j = sub i64 0, %i.i
  %6 = sext i1 %5 to i64
  %.sroa.6.0.i.i = sub i64 %6, %i.g
  store i64 %i.j, ptr %4, align 8
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
