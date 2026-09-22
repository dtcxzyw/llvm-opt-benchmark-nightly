Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.4?download=true
inline.NumInlined: 133
inline.NumDeleted: 10
begin_hunk_0_@_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsaR3IayqLkK5_9jiff_core:bb.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsR_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvXsD_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_8LowerHex3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call zeroext i1 @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @_RNvXsF_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_8UpperHex3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i56 @_RNvXsS_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8ArrayStrKj6_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr nofree readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload = load i56, ptr %0, align 1
  ret i56 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr align 8 %0, ptr nonnull align 8 %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsaR3IayqLkK5_9jiff_core.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_RNvXsL_NtNtCs3oUPovFnLWP_4core4iter5rangejNtB5_4Step18backward_uncheckedCsaR3IayqLkK5_9jiff_core(i64 %i.c, i64 1) #16 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8
  br label %_RNvXs5_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsaR3IayqLkK5_9jiff_core.exit

_RNvXs5_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.f = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0.i.i, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((8, 16)) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter4IterhEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr align 8 %1) #16 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  store i64 %i.e, ptr %0, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %.sroa.36.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1D_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  br label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit.thread: ; preds = %bb.a, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit, %bb.b
  %.sroa.2.0 = phi ptr [ %i.a, %bb.b ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.g, %bb.b ], [ undef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBV_.exit ], [ undef, %bb.a ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.2.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  br label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit.thread: ; preds = %bb.a, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit, %bb.b
  %.sroa.2.0 = phi ptr [ %i.a, %bb.b ], [ null, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit ], [ null, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.g, %bb.b ], [ undef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core.exit ], [ undef, %bb.a ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.2.0, 1
  ret { i64, ptr } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_RNvXsc_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB9_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3cmp9PartialEq2eqCsaR3IayqLkK5_9jiff_core(ptr %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %1, align 1
  %2 = trunc i8 %i.d to i1                        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %3 = xor i1 %2, true
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  %.sroa.0.0 = phi i1 [ %i.f, %bb.e ], [ %3, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = tail call zeroext i1 @_RNvXsk_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_9PartialEq2eqCsaR3IayqLkK5_9jiff_core(ptr nonnull %i.c, ptr nonnull %i.e) #16
  br label %bb.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXsh_NtCsaR3IayqLkK5_9jiff_core2tzNtB5_3DstNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqB7_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %2 = xor i8 %i.b, %i.a
  %3 = and i8 %2, 1
  %i.c = icmp eq i8 %3, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvXsh_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eqB9_(ptr nofree readonly align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp eq i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFrommE8try_fromCsaR3IayqLkK5_9jiff_core(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 1), (8, 16)) %0, i32 %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.b, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYINtNtCs3oUPovFnLWP_4core6option6OptionhENtNtB7_3cmp9PartialEq2neCsaR3IayqLkK5_9jiff_core(ptr %0, ptr %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %2 = trunc nuw i8 %i.a to i1                    ; 2 uses
  %3 = load i8, ptr %1, align 1
  %i.b = trunc i8 %3 to i1                        ; 2 uses
  %4 = select i1 %2, i1 %i.b, i1 false
  %.mux = select i1 %2, i1 true, i1 %i.b
  br i1 %4, label %bb.b, label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3cmp9PartialEq2eqCsaR3IayqLkK5_9jiff_core.exit

bb.b:                                             ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = tail call zeroext i1 @_RNvXsk_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_9PartialEq2eqCsaR3IayqLkK5_9jiff_core(ptr nonnull %5, ptr nonnull %i.c) #16
  %6 = xor i1 %i.d, true
  br label %_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3cmp9PartialEq2eqCsaR3IayqLkK5_9jiff_core.exit

_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3cmp9PartialEq2eqCsaR3IayqLkK5_9jiff_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %6, %bb.b ], [ %.mux, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsaR3IayqLkK5_9jiff_core(i64 %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i64 } %i.a, i64 %1, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2) unnamed_addr #3 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtB9_4iter6traits8iterator8Iterator9enumerateCsaR3IayqLkK5_9jiff_core(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr %1, ptr %2) unnamed_addr #3 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsaR3IayqLkK5_9jiff_core(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  ret i64 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix10MonthError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix10MonthError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11MinuteError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11MinuteError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11SecondError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11SecondError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix12WeekdayError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix12WeekdayError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14HourPosixError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14HourPosixError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind15AbbreviationDst0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_17AbbreviationErrorEE9call_onceBc_(i1 zeroext %0, i8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind15AbbreviationDst0B9_(i1 zeroext %0, i8 %1) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind15AbbreviationStd0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_17AbbreviationErrorEE9call_onceBc_(i1 zeroext %0, i8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind15AbbreviationStd0B9_(i1 zeroext %0, i8 %1) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind4Rule0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_9RuleErrorEE9call_onceBc_(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind4Rule0B9_(i32 %0) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetDst0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11OffsetErrorEE9call_onceBc_(i8 %0, i8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetDst0B9_(i8 %0, i8 %1) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetStd0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11OffsetErrorEE9call_onceBc_(i8 %0, i8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix14ParseErrorKind9OffsetStd0B9_(i8 %0, i8 %1) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix16WeekOfMonthError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix16WeekOfMonthError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i1, i8 } @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError6Quoted0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_23QuotedAbbreviationErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i1, i8 } @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError6Quoted0B9_(i8 %0) #16
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i1, i8 } @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError8Unquoted0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_25UnquotedAbbreviationErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i1, i8 } @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17AbbreviationError8Unquoted0B9_(i8 %0) #16
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapError5Parse0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11NumberErrorEE9call_onceBc_(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapError5Parse0B9_(i8 %0) #16
  ret i8 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError11DateTimeEnd0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_13DateTimeErrorEE9call_onceBc_(i24 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError11DateTimeEnd0B9_(i24 %0) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError13DateTimeStart0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_13DateTimeErrorEE9call_onceBc_(i24 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix9RuleError13DateTimeStart0B9_(i24 %0) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvYNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11FooterError14InvalidPosixTz0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtNtBc_5posix10ParseErrorEE9call_onceBe_(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser11FooterError14InvalidPosixTz0Bb_(i32 %0) #16
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNvYNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header320INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11HeaderErrorEE9call_onceBe_(i8 %0, i8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header320Bb_(i8 %0, i8 %1) #16
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNvYNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header640INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTNtB8_11HeaderErrorEE9call_onceBe_(i8 %0, i8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @_RNcNtNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser14ParseErrorKind8Header640Bb_(i8 %0, i8 %1) #16
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvYNtNtCsaR3IayqLkK5_9jiff_core2tz3DstNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB6_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %2 = xor i8 %i.b, %i.a
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltB8_(ptr align 4 %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i8 @_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr align 4 %0, ptr align 4 %1) #16 ; 2 uses
  %.not = icmp ne i8 %i.a, -2
  %i.b = icmp slt i8 %i.a, 0
  %.sroa.0.0 = and i1 %.not, %i.b
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvYNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neB8_(ptr nofree readonly align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp ne i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @_RNvYeNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2neCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsaR3IayqLkK5_9jiff_core(ptr %0, i64 %1, ptr %2, i64 %3) #16
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCsaR3IayqLkK5_9jiff_core(i64 %0, i64 %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcherCsaR3IayqLkK5_9jiff_core(ptr sret([48 x i8]) align 8, i32, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsaR3IayqLkK5_9jiff_core(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_8TimeZone14to_offset_infos0_0Bb_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_8TimeZone14to_offset_infos_0Bb_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_8TimeZone9to_offsets_0Bb_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_8TimeZone14to_offset_info0Bb_(ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_8TimeZone9to_offset0Bb_(ptr align 4, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNCNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_8TimeZone9to_offsets0_0Bb_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_len0Bd_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens0_0Bd_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens1_0Bd_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens2_0Bd_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNCNvMs1_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB7_6Header14data_block_lens_0Bd_(ptr align 8, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser31parse_number_with_upto_n_digits0Bb_(ptr align 4, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_RNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_6Parser34parse_number_with_exactly_n_digits0Bb_(ptr align 4, i32) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser13U32UsizeErrorNtB6_7Display3fmtBE_(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parser9CountKindNtB6_7Display3fmtBE_(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impaNtB8_7Display3fmt(ptr, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXNtNtNtCs3oUPovFnLWP_4core3fmt3num3imphNtB6_7Display3fmt(ptr, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt(ptr align 4, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3fmt3numnNtB6_7Display3fmt(ptr align 16, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs4_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impsNtB9_7Display3fmt(ptr align 2, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs3_NtNtNtCs3oUPovFnLWP_4core3fmt3num3imptNtB9_7Display3fmt(ptr align 2, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXse_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impxNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB4_4DateNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 2, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB4_4TimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 4, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif13LocalTimeTypeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif14TransitionInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif8DateTimeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB8_3BoxppE21try_clone_from_ref_inINtB2_16DeallocDropGuardNtNtBa_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs3oUPovFnLWP_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_18OffsetTotalSecondsE3newB4_() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_16UnixEpochSecondsE3newB4_() unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_(ptr align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNCNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone16parse_indicators0Bc_(ptr, ptr) unnamed_addr #1
end_hunk_0
