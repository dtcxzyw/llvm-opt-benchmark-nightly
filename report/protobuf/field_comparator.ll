inline.NumInlined: 558
inline.NumDeleted: 303
begin_hunk_0_@_ZN6google8protobuf4util21SimpleFieldComparator20SetFractionAndMarginEPKNS0_15FieldDescriptorEdd
define void @_ZN6google8protobuf4util21SimpleFieldComparator20SetFractionAndMarginEPKNS0_15FieldDescriptorEdd(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.58", align 8     ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util21SimpleFieldComparator20SetFractionAndMarginEPKNS0_15FieldDescriptorEdd:bb.a
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %6 = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.i, align 1
end_hunk_1
