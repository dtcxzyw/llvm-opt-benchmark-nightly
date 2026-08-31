Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvXs_NtCsbq3eHDLgq0Z_8la_arena3mapINtB4_8ArenaMapINtB6_3IdxNtNtCsileJQcQObtj_7hir_def3hir5LabelEINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1C_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrINtCs83ee1IJTiSq_6either6EitherNtNtNtNtB2I_3ast9generated5nodes5LabelNtB3L_9BlockExprEEEEINtNtNtCshzWfHUSfYae_4core3ops5index5IndexBM_E5indexB10_:bb.a
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.a ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !range !1550, !noundef !8
  %.not = icmp eq i32 %i.h, 2
  br i1 %.not, label %bb.e, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #43
  unreachable

bb.d:                                             ; preds = %bb.b
  ret ptr %i.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_RNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input11input_fieldINtB4_19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB8_10ingredient10Ingredient10debug_nameB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !8   ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  ret { ptr, i64 } { ptr @174, i64 7 }

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #43
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input11input_fieldINtB4_19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB8_10ingredient10Ingredient14is_persistableB1e_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input11input_fieldINtB4_19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB8_10ingredient10Ingredient16ingredient_indexB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !noundef !8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input11input_fieldINtB4_19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB8_10ingredient10Ingredient16should_serializeB1e_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input11input_fieldINtB4_19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB8_10ingredient10Ingredient8jar_kindB1e_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtNtCsd9Lm8bEdjjY_5salsa5input11input_fieldINtB4_19FieldIngredientImplNtCsileJQcQObtj_7hir_def20ExpandProcAttrMacrosENtNtB8_10ingredient10Ingredient8locationB1e_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #21 {
bb.a:
  ret ptr @178
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !965, !noundef !8
  switch i64 %i.e, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @179, i64 noundef 7)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.b, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @182)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 4, !range !3636, !noundef !8
  switch i8 %i.c, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 5)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @188)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 5)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 3)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !965, !noundef !8 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !965, !noundef !8
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i64 [ %i.i, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr717 = phi ptr [ %i.h, %tailrecurse ], [ %1, %bb.a ] ; 7 uses
  %.tr16 = phi ptr [ %i.f, %tailrecurse ], [ %0, %bb.a ] ; 7 uses
  switch i64 %i.d, label %default.unreachable30 [
    i64 1, label %bb.b
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 4, label %tailrecurse
    i64 0, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  ]

_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.a, %bb.d, %bb.c, %bb.b, %bb.g, %bb.e, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.g ], [ false, %bb.b ], [ %i.x, %bb.f ], [ %spec.select.i, %bb.c ], [ %i.ah, %bb.h ], [ false, %bb.e ], [ %9, %bb.d ], [ false, %bb.a ], [ false, %tailrecurse ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable30:                            ; preds = %.lr.ph
  unreachable

tailrecurse:                                      ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr16, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr717, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !965, !noundef !8 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !range !965, !noundef !8
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.tr16, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.tr717, i64 8
  %.val = load ptr, ptr %i.l, align 8, !noundef !8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.tr16, i64 16
  %.val.a = load ptr, ptr %2, align 8             ; 3 uses
  %.val5 = load ptr, ptr %i.m, align 8, !noundef !8 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.tr717, i64 16
  %.val6 = load ptr, ptr %3, align 8              ; 3 uses
  %4 = icmp ne ptr %.val, null                    ; 2 uses
  %5 = icmp eq ptr %.val5, null                   ; 2 uses
  %i.n = xor i1 %4, %5
  br i1 %i.n, label %6, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

6:                                                ; preds = %bb.b
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %7 = icmp eq ptr %.val, %.val5
  %8 = icmp eq ptr %.val.a, %.val6
  %spec.select.i = select i1 %7, i1 %8, i1 false
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %6
  tail call void @llvm.assume(i1 %5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.a) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %9 = icmp eq ptr %.val.a, %.val6
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr16, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr717, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !8
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.tr717, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %.tr16, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !noundef !8
  %i.x = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, i64 noundef %i.p)
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr16, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr717, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr717, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr16, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !8, !noundef !8
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ae, i64 noundef %i.z)
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs33K2ylI4knu_10hir_expand5attrsNtB5_6AttrIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdE8data_rawCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdE8data_rawCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.f = load i64, ptr %i.e, align 8, !noundef !8
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.01.06.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.06.i
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.01.06.i
  %.val.i = load i32, ptr %i.i, align 4, !noundef !8
  %.val5.i = load i32, ptr %i.j, align 4, !noundef !8
  %.not.i = icmp eq i32 %.val.i, %.val5.i         ; 2 uses
  %i.k = add nuw i64 %.sroa.01.06.i, 1            ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.k, %i.c
  %or.cond.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit

_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def.exit: ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not.i, %.lr.ph.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !3636, !noundef !8 ; 2 uses
  %i.b = load i8, ptr %1, align 4, !range !3636, !noundef !8
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.c [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.c:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.f, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %i.h, %bb.d ], [ %i.r, %bb.f ], [ true, %bb.b ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !noundef !8
  %i.h = icmp eq i8 %i.e, %i.g
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !noundef !8
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !range !1051, !noundef !8
  %i.q = load i32, ptr %i.n, align 4, !range !1051, !noundef !8
  %i.r = icmp eq i32 %i.p, %i.q
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast(ptr noundef nonnull %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !8
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit unwind label %bb.aq

bb.d:                                             ; preds = %bb.a
  switch i16 %i.b, label %bb.e [
    i16 160, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit4
    i16 165, label %bb.g
    i16 177, label %bb.h
    i16 178, label %bb.i
    i16 179, label %bb.j
    i16 180, label %bb.k
    i16 182, label %bb.l
    i16 183, label %bb.m
    i16 184, label %bb.n
    i16 189, label %bb.o
    i16 194, label %bb.p
    i16 202, label %bb.q
    i16 207, label %bb.r
    i16 209, label %bb.s
    i16 214, label %bb.t
    i16 218, label %bb.u
    i16 219, label %bb.v
    i16 225, label %bb.w
    i16 230, label %bb.x
    i16 232, label %bb.y
    i16 235, label %bb.z
    i16 243, label %bb.aa
    i16 245, label %bb.ab
    i16 252, label %bb.ac
    i16 257, label %bb.ad
    i16 261, label %bb.ae
    i16 267, label %bb.af
    i16 269, label %bb.ag
    i16 271, label %bb.ah
    i16 279, label %bb.ai
    i16 284, label %bb.aj
    i16 298, label %bb.ak
    i16 299, label %bb.al
    i16 311, label %bb.am
    i16 324, label %bb.an
    i16 326, label %bb.ao
    i16 327, label %bb.ap
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !8
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit4

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %0) #45
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit4

bb.g:                                             ; preds = %bb.d
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit4

end_hunk_0
