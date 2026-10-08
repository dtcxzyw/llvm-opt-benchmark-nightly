Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/logos-rs/original/logos_codegen-53f617d7f319d318.logos_codegen.2195ed4355d2b8ba-cgu.01?download=true
inline.NumInlined: 126
begin_hunk_0_@_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentNtNtNtCs2SM5xCHwwDm_13logos_codegen6parser10definition7LiteralEE8push_mutB1l_:bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecANtCsgSMwPvzVUxY_11proc_macro25Identj2_E7reserveCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 48)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdEE7reserveB1k_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 16)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateEE7reserveB1k_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 16)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEE3lenCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEE5clearCs2SM5xCHwwDm_13logos_codegen(ptr nofree writeonly align 8 captures(none) initializes((16, 24)) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivehEE7reserveCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 1, i64 3)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamE7reserveCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 32)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCsgSMwPvzVUxY_11proc_macro211TokenStreamE8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafE3lenBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafE8is_emptyBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen4leaf6LeafIdE3lenBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5error12SpannedErrorE3lenBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE10insert_mutBI_(ptr align 8 %0, i64 %1, i64 %2, ptr align 8 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 %1, i64 %i.b, ptr align 8 %3) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE8grow_oneBQ_(ptr nonnull align 8 %0) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1 ; 4 uses
  %i.i = icmp ult i64 %1, %i.b
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %2, ptr %i.h, align 8
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret ptr %i.h

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = sub nuw i64 %i.b, %1
  %i.m = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.h, i64 %i.m, i1 false)
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE3popBI_(ptr nofree align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.b
  %1 = getelementptr i8, ptr %i.g, i64 -8
  %i.h = load i64, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE5clearBI_(ptr nofree writeonly align 8 captures(none) initializes((16, 24)) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE6insertBI_(ptr align 8 %0, i64 %1, i64 %2, ptr align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 %1, i64 %i.b, ptr align 8 %3) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE8grow_oneBQ_(ptr nonnull align 8 %0) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %1 ; 3 uses
  %i.i = icmp ult i64 %1, %i.b
  br i1 %i.i, label %bb.f, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE10insert_mutBI_.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = sub nuw i64 %i.b, %1
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.h, i64 %i.l, i1 false)
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE10insert_mutBI_.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE10insert_mutBI_.exit: ; preds = %bb.e, %bb.f
  store i64 %2, ptr %i.h, align 8
  %i.m = add i64 %i.b, 1
  store i64 %i.m, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph5StateE7reserveBI_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 8)
  br label %bb.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataE3lenBI_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs2SM5xCHwwDm_13logos_codegen5graph9StateDataE7reserveBI_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 96)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCshx33xqnyVJN_3syn8generics12GenericParamE7reserveCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 464)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtCsgSMwPvzVUxY_11proc_macro25IdentE7reserveCs2SM5xCHwwDm_13logos_codegen(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 8)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafE7reserveBJ_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 8)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtCs2SM5xCHwwDm_13logos_codegen4leaf4LeafE8is_emptyBJ_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBI_5StateEE3lenBK_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRTNtNtCs2SM5xCHwwDm_13logos_codegen5graph9ByteClassNtBI_5StateEE7reserveBK_(ptr align 8 %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs73YwgZoc6jV_9addr2line(ptr nonnull align 8 %0, i64 %i.b, i64 %1, i64 8, i64 8)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtCsgSMwPvzVUxY_11proc_macro25IdentINtNtCskKLDkoKarTP_4core6option6OptionNtNtCshx33xqnyVJN_3syn2ty4TypeEEE8is_emptyCs2SM5xCHwwDm_13logos_codegen(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
end_hunk_0
