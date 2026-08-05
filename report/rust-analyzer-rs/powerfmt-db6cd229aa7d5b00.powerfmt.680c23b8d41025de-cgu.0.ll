inline.NumInlined: 47
inline.NumDeleted: 30
begin_hunk_0_@_RNvXs8_NtCs8VQcym6bIqo_8powerfmt19smart_display_implshNtNtB7_13smart_display12SmartDisplay8metadata:bb.a
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = add nuw nsw i32 %i.b, 758
  %i.d = add nuw nsw i32 %i.b, 412
  %i.e = and i32 %i.c, %i.d
  %i.f = lshr i32 %i.e, 8
  %narrow = add nuw nsw i32 %i.f, 1
  %i.g = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %.split6
  %phi.call = phi i64 [ %i.g, %.split6 ], [ 1, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = and i8 %i.i, 3
  %or.cond = icmp ne i8 %i.j, 0
  %i.k = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.k
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 7) i64 @_RNvXs9_NtCs8VQcym6bIqo_8powerfmt19smart_display_implstNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 2, !noundef !5   ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = zext i16 %i.a to i32                     ; 4 uses
  %i.c = add nuw nsw i32 %i.b, 393206
  %i.d = add nuw nsw i32 %i.b, 524188
  %i.e = and i32 %i.c, %i.d
  %i.f = add nuw nsw i32 %i.b, 916504
  %i.g = add nuw nsw i32 %i.b, 514288
  %i.h = and i32 %i.f, %i.g
  %i.i = xor i32 %i.e, %i.h                       ; 2 uses
  %i.j = icmp samesign ult i32 %i.i, 655360
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i32 %i.i, 17
  %narrow = add nuw nsw i32 %i.k, 1
  %i.l = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %.split6
  %phi.call = phi i64 [ %i.l, %.split6 ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %i.o = and i8 %i.n, 3
  %or.cond = icmp ne i8 %i.o, 0
  %i.p = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.p
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtB7_3fmt9AlignmentENtBM_5Debug3fmtCs8VQcym6bIqo_8powerfmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs8VQcym6bIqo_8powerfmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 12) i64 @_RNvXsa_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsmNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !5   ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.split14, label %.split

.split:                                           ; preds = %bb.a
  %i.b = icmp ugt i32 %i.a, 99999                 ; 2 uses
  %i.c = udiv i32 %i.a, 100000
  %.sroa.05.0 = select i1 %i.b, i32 %i.c, i32 %i.a ; 4 uses
  %.sroa.011.0 = select i1 %i.b, i32 5, i32 0
  %i.d = add nuw nsw i32 %.sroa.05.0, 393206
  %i.e = add nuw nsw i32 %.sroa.05.0, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.05.0, 916504
  %i.h = add nuw nsw i32 %.sroa.05.0, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %i.l = add nuw nsw i32 %i.k, %.sroa.011.0       ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 10
  tail call void @llvm.assume(i1 %i.m)
  %narrow = add nuw nsw i32 %i.l, 1
  %i.n = zext nneg i32 %narrow to i64
  br label %.split14

.split14:                                         ; preds = %bb.a, %.split
  %phi.call = phi i64 [ %i.n, %.split ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = and i8 %i.p, 3
  %or.cond = icmp ne i8 %i.q, 0
  %i.r = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.r
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsb_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsyNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5   ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.split, label %.split6

.split6:                                          ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 9999999999            ; 2 uses
  %i.c = udiv i64 %i.a, 10000000000
  %.sroa.05.0.i = select i1 %i.b, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i = select i1 %i.b, i64 %i.c, i64 %i.a ; 3 uses
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i, 99999
  br i1 %i.d, label %bb.b, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

bb.b:                                             ; preds = %.split6
  %i.e = udiv i64 %.sroa.0.0.i, 100000
  %i.f = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit: ; preds = %.split6, %bb.b
  %.sroa.05.1.i = phi i32 [ %i.f, %bb.b ], [ %.sroa.05.0.i, %.split6 ]
  %.sroa.0.1.i = phi i64 [ %i.e, %bb.b ], [ %.sroa.0.0.i, %.split6 ]
  %i.g = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.h = add nuw nsw i32 %i.g, 393206
  %i.i = add nuw nsw i32 %i.g, 524188
  %i.j = and i32 %i.h, %i.i
  %i.k = add nuw nsw i32 %i.g, 916504
  %i.l = add nuw nsw i32 %i.g, 514288
  %i.m = and i32 %i.k, %i.l
  %i.n = xor i32 %i.j, %i.m
  %i.o = lshr i32 %i.n, 17
  %i.p = add nuw nsw i32 %i.o, %.sroa.05.1.i      ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 20
  tail call void @llvm.assume(i1 %i.q)
  %narrow = add nuw nsw i32 %i.p, 1
  %i.r = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit
  %phi.call = phi i64 [ %i.r, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.t = load i8, ptr %i.s, align 1, !noundef !5
  %i.u = and i8 %i.t, 3
  %or.cond = icmp ne i8 %i.u, 0
  %i.v = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.v
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 41) i64 @_RNvXsc_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsoNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i128, ptr %0, align 16, !noundef !5 ; 6 uses
  %.not = icmp eq i128 %i.a, 0
  br i1 %.not, label %.split, label %.split6.a

.split6.a:                                        ; preds = %bb.a
  %i.b = icmp ugt i128 %i.a, 99999999999999999999999999999999
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split6.a
  %i.c = icmp samesign ugt i128 %i.a, 9999999999999999 ; 2 uses
  %2 = udiv i128 %i.a, 10000000000000000
  %.sroa.07.0.i.a = select i1 %i.c, i32 16, i32 0
  %.sroa.0.0.off0.v.i = select i1 %i.c, i128 %2, i128 %i.a
  %.sroa.0.0.off0.i = trunc nuw nsw i128 %.sroa.0.0.off0.v.i to i64 ; 3 uses
  %3 = icmp samesign ugt i64 %.sroa.0.0.off0.i, 9999999999 ; 2 uses
  %4 = udiv i64 %.sroa.0.0.off0.i, 10000000000
  %.sroa.05.0.i.i = select i1 %3, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i.i = select i1 %3, i64 %4, i64 %.sroa.0.0.off0.i ; 3 uses
  %5 = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %5, label %bb.c, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a

bb.c:                                             ; preds = %bb.b
  %6 = udiv i64 %.sroa.0.0.i.i, 100000
  %7 = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a: ; preds = %bb.c, %bb.b
  %.sroa.05.1.i.i.a = phi i32 [ %7, %bb.c ], [ %.sroa.05.0.i.i, %bb.b ]
  %.sroa.0.1.i.i.a = phi i64 [ %6, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ]
  %8 = trunc nuw nsw i64 %.sroa.0.1.i.i.a to i32  ; 4 uses
  %9 = add nuw nsw i32 %8, 393206
  %10 = add nuw nsw i32 %8, 524188
  %11 = and i32 %9, %10
  %12 = add nuw nsw i32 %8, 916504
  %13 = add nuw nsw i32 %8, 514288
  %14 = and i32 %12, %13
  %15 = xor i32 %11, %14
  %16 = lshr i32 %15, 17
  %17 = add nuw nsw i32 %.sroa.05.1.i.i.a, %.sroa.07.0.i.a
  %18 = add nuw nsw i32 %17, %16
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

bb.d:                                             ; preds = %.split6.a
  %19 = udiv i128 %i.a, 100000000000000000000000000000000
  %20 = trunc nuw nsw i128 %19 to i32             ; 3 uses
  %21 = icmp samesign ugt i32 %20, 99999          ; 2 uses
  %22 = udiv i32 %20, 100000
  %.sroa.011.0.i = select i1 %21, i32 %22, i32 %20 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.011.0.i, 393206
  %i.e = add nuw nsw i32 %.sroa.011.0.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.011.0.i, 916504
  %i.h = add nuw nsw i32 %.sroa.011.0.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %23 = select i1 %21, i32 37, i32 32
  %i.l = add nuw nsw i32 %i.k, %23
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit: ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a, %bb.d
  %.sroa.06.0.i = phi i32 [ %i.l, %bb.d ], [ %18, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a ] ; 2 uses
  %i.m = icmp samesign ult i32 %.sroa.06.0.i, 39
  tail call void @llvm.assume(i1 %i.m)
  %narrow = add nuw nsw i32 %.sroa.06.0.i, 1
  %i.n = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit
  %phi.call = phi i64 [ %i.n, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = and i8 %i.p, 3
  %or.cond = icmp ne i8 %i.q, 0
  %i.r = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.r
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsd_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsjNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5   ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.split, label %.split8

.split8:                                          ; preds = %bb.a
  %i.b = icmp ugt i64 %i.a, 9999999999            ; 2 uses
  %i.c = udiv i64 %i.a, 10000000000
  %.sroa.05.0.i = select i1 %i.b, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i = select i1 %i.b, i64 %i.c, i64 %i.a ; 3 uses
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i, 99999
  br i1 %i.d, label %bb.b, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

bb.b:                                             ; preds = %.split8
  %i.e = udiv i64 %.sroa.0.0.i, 100000
  %i.f = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit: ; preds = %.split8, %bb.b
  %.sroa.05.1.i = phi i32 [ %i.f, %bb.b ], [ %.sroa.05.0.i, %.split8 ]
  %.sroa.0.1.i = phi i64 [ %i.e, %bb.b ], [ %.sroa.0.0.i, %.split8 ]
  %i.g = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.h = add nuw nsw i32 %i.g, 393206
  %i.i = add nuw nsw i32 %i.g, 524188
  %i.j = and i32 %i.h, %i.i
  %i.k = add nuw nsw i32 %i.g, 916504
  %i.l = add nuw nsw i32 %i.g, 514288
  %i.m = and i32 %i.k, %i.l
  %i.n = xor i32 %i.j, %i.m
  %i.o = lshr i32 %i.n, 17
  %i.p = add nuw nsw i32 %i.o, %.sroa.05.1.i      ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 20
  tail call void @llvm.assume(i1 %i.q)
  %narrow = add nuw nsw i32 %i.p, 1
  %i.r = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit
  %phi.call = phi i64 [ %i.r, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.t = load i8, ptr %i.s, align 1, !noundef !5
  %i.u = and i8 %i.t, 3
  %or.cond = icmp ne i8 %i.u, 0
  %i.v = zext i1 %or.cond to i64
  %.sroa.0.0 = add nuw nsw i64 %phi.call, %i.v
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i64 1, 5) i64 @_RNvXse_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsaNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i8, ptr %0, align 1                 ; 3 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.split, label %.split8

.split8:                                          ; preds = %bb.a
  %.sroa.04.0 = tail call i8 @llvm.abs.i8(i8 %i.c, i1 false)
  %i.d = zext i8 %.sroa.04.0 to i32               ; 2 uses
  %i.e = add nuw nsw i32 %i.d, 758
  %i.f = add nuw nsw i32 %i.d, 412
  %i.g = and i32 %i.e, %i.f
  %i.h = lshr i32 %i.g, 8
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %.split8
  %phi.call = phi i64 [ %i.i, %.split8 ], [ 1, %bb.a ]
  %i.j = icmp slt i8 %i.c, 0
  %i.k = trunc i8 %i.b to i1
  %or.cond = or i1 %i.j, %i.k
  %. = zext i1 %or.cond to i64
  %i.l = add nuw nsw i64 %phi.call, %.
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 7) i64 @_RNvXsf_NtCs8VQcym6bIqo_8powerfmt19smart_display_implssNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i16, ptr %0, align 2                ; 3 uses
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.split, label %.split8

.split8:                                          ; preds = %bb.a
  %.sroa.04.0 = tail call i16 @llvm.abs.i16(i16 %i.c, i1 false)
  %i.d = zext i16 %.sroa.04.0 to i32              ; 4 uses
  %i.e = add nuw nsw i32 %i.d, 393206
  %i.f = add nuw nsw i32 %i.d, 524188
  %i.g = and i32 %i.e, %i.f
  %i.h = add nuw nsw i32 %i.d, 916504
  %i.i = add nuw nsw i32 %i.d, 514288
  %i.j = and i32 %i.h, %i.i
  %i.k = xor i32 %i.g, %i.j                       ; 2 uses
  %i.l = icmp samesign ult i32 %i.k, 655360
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i32 %i.k, 17
  %narrow = add nuw nsw i32 %i.m, 1
  %i.n = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %.split8
  %phi.call = phi i64 [ %i.n, %.split8 ], [ 1, %bb.a ]
  %i.o = icmp slt i16 %i.c, 0
  %i.p = trunc i8 %i.b to i1
  %or.cond = or i1 %i.o, %i.p
  %. = zext i1 %or.cond to i64
  %i.q = add nuw nsw i64 %phi.call, %.
  ret i64 %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCshzWfHUSfYae_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 12) i64 @_RNvXsg_NtCs8VQcym6bIqo_8powerfmt19smart_display_implslNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i32, ptr %0, align 4                ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.split16, label %.split

.split:                                           ; preds = %bb.a
  %.sroa.04.0 = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false) ; 3 uses
  %i.d = icmp ugt i32 %.sroa.04.0, 99999          ; 2 uses
  %i.e = udiv i32 %.sroa.04.0, 100000
  %.sroa.07.0 = select i1 %i.d, i32 %i.e, i32 %.sroa.04.0 ; 4 uses
  %.sroa.013.0 = select i1 %i.d, i32 5, i32 0
  %i.f = add nuw nsw i32 %.sroa.07.0, 393206
  %i.g = add nuw nsw i32 %.sroa.07.0, 524188
  %i.h = and i32 %i.f, %i.g
  %i.i = add nuw nsw i32 %.sroa.07.0, 916504
  %i.j = add nuw nsw i32 %.sroa.07.0, 514288
  %i.k = and i32 %i.i, %i.j
  %i.l = xor i32 %i.h, %i.k
  %i.m = lshr i32 %i.l, 17
  %i.n = add nuw nsw i32 %i.m, %.sroa.013.0       ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  tail call void @llvm.assume(i1 %i.o)
  %narrow = add nuw nsw i32 %i.n, 1
  %i.p = zext nneg i32 %narrow to i64
  br label %.split16

.split16:                                         ; preds = %bb.a, %.split
  %phi.call = phi i64 [ %i.p, %.split ], [ 1, %bb.a ]
  %i.q = icmp slt i32 %i.c, 0
  %i.r = trunc i8 %i.b to i1
  %or.cond = or i1 %i.q, %i.r
  %. = zext i1 %or.cond to i64
  %i.s = add nuw nsw i64 %phi.call, %.
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsh_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsxNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.split, label %.split8

.split8:                                          ; preds = %bb.a
  %.sroa.04.0 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 3 uses
  %i.d = icmp ugt i64 %.sroa.04.0, 9999999999     ; 2 uses
  %i.e = udiv i64 %.sroa.04.0, 10000000000
  %.sroa.05.0.i = select i1 %i.d, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i = select i1 %i.d, i64 %i.e, i64 %.sroa.04.0 ; 3 uses
  %i.f = icmp samesign ugt i64 %.sroa.0.0.i, 99999
  br i1 %i.f, label %bb.b, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

bb.b:                                             ; preds = %.split8
  %i.g = udiv i64 %.sroa.0.0.i, 100000
  %i.h = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit: ; preds = %.split8, %bb.b
  %.sroa.05.1.i = phi i32 [ %i.h, %bb.b ], [ %.sroa.05.0.i, %.split8 ]
  %.sroa.0.1.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.0.i, %.split8 ]
  %i.i = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.j = add nuw nsw i32 %i.i, 393206
  %i.k = add nuw nsw i32 %i.i, 524188
  %i.l = and i32 %i.j, %i.k
  %i.m = add nuw nsw i32 %i.i, 916504
  %i.n = add nuw nsw i32 %i.i, 514288
  %i.o = and i32 %i.m, %i.n
  %i.p = xor i32 %i.l, %i.o
  %i.q = lshr i32 %i.p, 17
  %i.r = add nuw nsw i32 %i.q, %.sroa.05.1.i      ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 20
  tail call void @llvm.assume(i1 %i.s)
  %narrow = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit
  %phi.call = phi i64 [ %i.t, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ]
  %i.u = icmp slt i64 %i.c, 0
  %i.v = trunc i8 %i.b to i1
  %or.cond = or i1 %i.u, %i.v
  %. = zext i1 %or.cond to i64
  %i.w = add nuw nsw i64 %phi.call, %.
  ret i64 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 41) i64 @_RNvXsi_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsnNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i128, ptr %0, align 16              ; 3 uses
  %.sroa.04.0 = tail call i128 @llvm.abs.i128(i128 %i.c, i1 false) ; 5 uses
  %.not = icmp eq i128 %i.c, 0
  br i1 %.not, label %.split, label %.split8.a

.split8.a:                                        ; preds = %bb.a
  %i.d = icmp ugt i128 %.sroa.04.0, 99999999999999999999999999999999
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split8.a
  %i.e = icmp samesign ugt i128 %.sroa.04.0, 9999999999999999 ; 2 uses
  %2 = udiv i128 %.sroa.04.0, 10000000000000000
  %.sroa.07.0.i.a = select i1 %i.e, i32 16, i32 0
  %.sroa.0.0.off0.v.i = select i1 %i.e, i128 %2, i128 %.sroa.04.0
  %.sroa.0.0.off0.i = trunc nuw nsw i128 %.sroa.0.0.off0.v.i to i64 ; 3 uses
  %3 = icmp samesign ugt i64 %.sroa.0.0.off0.i, 9999999999 ; 2 uses
  %4 = udiv i64 %.sroa.0.0.off0.i, 10000000000
  %.sroa.05.0.i.i = select i1 %3, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i.i = select i1 %3, i64 %4, i64 %.sroa.0.0.off0.i ; 3 uses
  %5 = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %5, label %bb.c, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a

bb.c:                                             ; preds = %bb.b
  %6 = udiv i64 %.sroa.0.0.i.i, 100000
  %7 = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a: ; preds = %bb.c, %bb.b
  %.sroa.05.1.i.i.a = phi i32 [ %7, %bb.c ], [ %.sroa.05.0.i.i, %bb.b ]
  %.sroa.0.1.i.i.a = phi i64 [ %6, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ]
  %8 = trunc nuw nsw i64 %.sroa.0.1.i.i.a to i32  ; 4 uses
  %9 = add nuw nsw i32 %8, 393206
  %10 = add nuw nsw i32 %8, 524188
  %11 = and i32 %9, %10
  %12 = add nuw nsw i32 %8, 916504
  %13 = add nuw nsw i32 %8, 514288
  %14 = and i32 %12, %13
  %15 = xor i32 %11, %14
  %16 = lshr i32 %15, 17
  %17 = add nuw nsw i32 %.sroa.05.1.i.i.a, %.sroa.07.0.i.a
  %18 = add nuw nsw i32 %17, %16
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

bb.d:                                             ; preds = %.split8.a
  %19 = udiv i128 %.sroa.04.0, 100000000000000000000000000000000
  %20 = trunc nuw nsw i128 %19 to i32             ; 3 uses
  %21 = icmp samesign ugt i32 %20, 99999          ; 2 uses
  %22 = udiv i32 %20, 100000
  %.sroa.011.0.i = select i1 %21, i32 %22, i32 %20 ; 4 uses
  %i.f = add nuw nsw i32 %.sroa.011.0.i, 393206
  %i.g = add nuw nsw i32 %.sroa.011.0.i, 524188
  %i.h = and i32 %i.f, %i.g
  %i.i = add nuw nsw i32 %.sroa.011.0.i, 916504
  %i.j = add nuw nsw i32 %.sroa.011.0.i, 514288
  %i.k = and i32 %i.i, %i.j
  %i.l = xor i32 %i.h, %i.k
  %i.m = lshr i32 %i.l, 17
  %23 = select i1 %21, i32 37, i32 32
  %i.n = add nuw nsw i32 %i.m, %23
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit: ; preds = %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a, %bb.d
  %.sroa.06.0.i = phi i32 [ %i.n, %bb.d ], [ %18, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit.i.a ] ; 2 uses
  %i.o = icmp samesign ult i32 %.sroa.06.0.i, 39
  tail call void @llvm.assume(i1 %i.o)
  %narrow = add nuw nsw i32 %.sroa.06.0.i, 1
  %i.p = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit
  %phi.call = phi i64 [ %i.p, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log109u128_impl.exit ], [ 1, %bb.a ]
  %i.q = icmp slt i128 %i.c, 0
  %i.r = trunc i8 %i.b to i1
  %or.cond = or i1 %i.q, %i.r
  %. = zext i1 %or.cond to i64
  %i.s = add nuw nsw i64 %phi.call, %.
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i64 1, 22) i64 @_RNvXsj_NtCs8VQcym6bIqo_8powerfmt19smart_display_implsiNtNtB7_13smart_display12SmartDisplay8metadata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.b = load i8, ptr %i.a, align 1, !noundef !5
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.split, label %.split10

.split10:                                         ; preds = %bb.a
  %.sroa.04.0 = tail call i64 @llvm.abs.i64(i64 %i.c, i1 false) ; 3 uses
  %i.d = icmp ugt i64 %.sroa.04.0, 9999999999     ; 2 uses
  %i.e = udiv i64 %.sroa.04.0, 10000000000
  %.sroa.05.0.i = select i1 %i.d, i32 10, i32 0   ; 2 uses
  %.sroa.0.0.i = select i1 %i.d, i64 %i.e, i64 %.sroa.04.0 ; 3 uses
  %i.f = icmp samesign ugt i64 %.sroa.0.0.i, 99999
  br i1 %i.f, label %bb.b, label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

bb.b:                                             ; preds = %.split10
  %i.g = udiv i64 %.sroa.0.0.i, 100000
  %i.h = or disjoint i32 %.sroa.05.0.i, 5
  br label %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit

_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit: ; preds = %.split10, %bb.b
  %.sroa.05.1.i = phi i32 [ %i.h, %bb.b ], [ %.sroa.05.0.i, %.split10 ]
  %.sroa.0.1.i = phi i64 [ %i.g, %bb.b ], [ %.sroa.0.0.i, %.split10 ]
  %i.i = trunc nuw nsw i64 %.sroa.0.1.i to i32    ; 4 uses
  %i.j = add nuw nsw i32 %i.i, 393206
  %i.k = add nuw nsw i32 %i.i, 524188
  %i.l = and i32 %i.j, %i.k
  %i.m = add nuw nsw i32 %i.i, 916504
  %i.n = add nuw nsw i32 %i.i, 514288
  %i.o = and i32 %i.m, %i.n
  %i.p = xor i32 %i.l, %i.o
  %i.q = lshr i32 %i.p, 17
  %i.r = add nuw nsw i32 %i.q, %.sroa.05.1.i      ; 2 uses
  %i.s = icmp samesign ult i32 %i.r, 20
  tail call void @llvm.assume(i1 %i.s)
  %narrow = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %narrow to i64
  br label %.split

.split:                                           ; preds = %bb.a, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit
  %phi.call = phi i64 [ %i.t, %_RNvNtNtNtCshzWfHUSfYae_4core3num3imp9int_log108u64_impl.exit ], [ 1, %bb.a ]
  %i.u = icmp slt i64 %i.c, 0
  %i.v = trunc i8 %i.b to i1
  %or.cond = or i1 %i.u, %i.v
  %. = zext i1 %or.cond to i64
  %i.w = add nuw nsw i64 %phi.call, %.
  ret i64 %i.w
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCshzWfHUSfYae_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCshzWfHUSfYae_4core3fmtcNtB5_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter4fill(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nonlazybind "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i8 -1, i8 3}
!5 = !{}
!6 = !{i64 8}
!7 = !{i8 0, i8 3}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt: argument 1"}
!10 = distinct !{!10, !"_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"_RNvXsZ_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_5Debug3fmt: argument 0"}
!13 = !{i32 0, i32 1114112}
!14 = !{i64 0, i64 2}
end_hunk_0
