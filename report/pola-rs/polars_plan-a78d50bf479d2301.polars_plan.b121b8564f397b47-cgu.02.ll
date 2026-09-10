Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11828
inline.NumDeleted: 4829
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  store i8 27, ptr %0, align 16, !dbg !175995
  br label %bb.aj, !dbg !175929

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !175996
  unreachable, !dbg !175996

bb.aw:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !175997

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.aw ], [ %i.ao, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsfcROwRM8ZtH_11polars_plan(ptr %i.aj, ptr nonnull %i.ak) #45
          to label %common.resume unwind label %bb.ay, !dbg !175997

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !175998, !noalias !175905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !175999, !noalias !175905
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176000
  store ptr %i.aj, ptr %i.be, align 8, !dbg !176000
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !176000
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !176000
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !176000
  store ptr %i.al, ptr %i.bg, align 8, !dbg !176000
  store i8 29, ptr %0, align 16, !dbg !176000
  br label %bb.aj, !dbg !175929

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !175927
  unreachable, !dbg !175927
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsk_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s6_9___VisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4676 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1298, i64 noundef 36), !dbg !176001
  ret i1 %i.a, !dbg !176002
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsl_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s5_14___FieldVisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4673 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1002, i64 noundef 16), !dbg !176003
  ret i1 %i.a, !dbg !176004
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs2mZqlW55729_12polars_utils7pl_pathNtB5_9PlRefPathNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !176005 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !176007
  store ptr %0, ptr %i.a, align 8, !dbg !176007
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1300, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1301, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1299), !dbg !176008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !176009
  ret i1 %i.b, !dbg !176010
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsn_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s7_9___VisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4678 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1302, i64 noundef 36), !dbg !176011
  ret i1 %i.a, !dbg !176012
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXso_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s6_14___FieldVisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4675 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1002, i64 noundef 16), !dbg !176013
  ret i1 %i.a, !dbg !176014
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #25 personality ptr @rust_eh_personality !dbg !176015 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !176031
  %i.b = load i8, ptr %i.a, align 1, !dbg !176031, !range !5131, !alias.scope !176030, !noundef !4698 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !176032
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !176032

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !176033
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !176034
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !176034
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !176035

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !176036, !alias.scope !176030, !noundef !4698
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176037
  %i.h = load i64, ptr %i.g, align 8, !dbg !176037, !alias.scope !176030, !noundef !4698
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !176038

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !176039
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !176040
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !176041
  ret i1 %i.i, !dbg !176042
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !176043 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176059
  %i.b = load ptr, ptr %i.a, align 8, !dbg !176059, !nonnull !4698, !noundef !4698
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !176060
  %i.d = load i64, ptr %i.c, align 8, !dbg !176060, !noundef !4698
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !176061
  ret i1 %i.e, !dbg !176062
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s8_9___VisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4680 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1303, i64 noundef 33), !dbg !176063
  ret i1 %i.a, !dbg !176064
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsr_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s7_14___FieldVisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4677 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1002, i64 noundef 16), !dbg !176065
  ret i1 %i.a, !dbg !176066
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXst_NtCs721FSB8TeJg_9rmp_serde6decodeINtB5_13VariantAccessINtB5_10ReadReaderQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEENtNtB7_6config13DefaultConfigENtNtCs40veMcpUDl8_10serde_core2de13VariantAccess12unit_variantCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 !dbg !2339 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !176068
  call void @_RINvNtCs9ZYpNh434G8_3rmp6decode8read_nilINtNtCs721FSB8TeJg_9rmp_serde6decode10ReadReaderQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !176068
  %i.b = load i8, ptr %i.a, align 8, !dbg !176070, !range !4863, !noundef !4698 ; 3 uses
  %.not = icmp eq i8 %i.b, 3, !dbg !176070
  br i1 %.not, label %bb.c, label %bb.b, !dbg !176071

bb.b:                                             ; preds = %bb.a
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !176072
  %.sroa.515.0.copyload = load i8, ptr %.sroa.515.0..sroa_idx, align 1, !dbg !176072
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !176072
  %.sroa.616.0.copyload = load i8, ptr %.sroa.616.0..sroa_idx, align 2, !dbg !176072
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !176072
  %.sroa.818.0.copyload = load ptr, ptr %.sroa.818.0..sroa_idx, align 8, !dbg !176072 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !176073
  %i.c = icmp eq i8 %i.b, 2, !dbg !176074
  br i1 %i.c, label %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit, label %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split, !dbg !176074

_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.818.0.copyload) ]
  br label %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit, !dbg !176075

_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit: ; preds = %bb.b, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split
  %.sroa.420.0 = phi i8 [ %.sroa.515.0.copyload, %bb.b ], [ undef, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split ], !dbg !176076
  %.sroa.521.0 = phi i8 [ %.sroa.616.0.copyload, %bb.b ], [ undef, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split ], !dbg !176076
  %.sroa.623.0 = phi ptr [ undef, %bb.b ], [ %.sroa.818.0.copyload, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split ], !dbg !176076
  store i8 %i.b, ptr %0, align 8, !dbg !176075
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !176075
  store i8 %.sroa.420.0, ptr %.sroa.420.0..sroa_idx, align 1, !dbg !176075
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !176075
  store i8 %.sroa.521.0, ptr %.sroa.521.0..sroa_idx, align 2, !dbg !176075
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !176075
  store ptr %.sroa.623.0, ptr %.sroa.623.0..sroa_idx, align 8, !dbg !176075
  br label %bb.d, !dbg !176077

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !176073
  store i8 9, ptr %0, align 8, !dbg !176078
  br label %bb.d, !dbg !176077

bb.d:                                             ; preds = %bb.c, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit
  ret void, !dbg !176077
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 5) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !176079 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3, !dbg !176293
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.b, !dbg !176293

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.m, %bb.b, %bb.o, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dn, %bb.o ], [ %i.dl, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.m ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ], !dbg !176294
  %i.e = trunc nuw i8 %.sroa.0.0 to i1, !dbg !176295
  ret i1 %i.e, !dbg !176295

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3, !dbg !176296
  br i1 %i.f, label %bb.o, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !176296

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176255), !dbg !176297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176256), !dbg !176297
  %i.g = load i8, ptr %0, align 1, !dbg !176298, !alias.scope !176255, !noalias !176256, !noundef !4698 ; 5 uses
  %i.h = add nsw i64 %1, -1, !dbg !176299         ; 2 uses
  %i.i = add nsw i64 %1, -1, !dbg !176300         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i, !dbg !176301
  %i.k = load i8, ptr %i.j, align 1, !dbg !176301, !alias.scope !176255, !noalias !176262, !noundef !4698 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.k, %i.g, !dbg !176301
  br i1 %.not.i.not.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1, label %bb.d, !dbg !176302

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.l = add nsw i64 %1, -2, !dbg !176300         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l, !dbg !176301
  %i.n = load i8, ptr %i.m, align 1, !dbg !176301, !alias.scope !176255, !noalias !176262, !noundef !4698 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.g, !dbg !176301
  br i1 %.not.i.not.i.i.1, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2, label %bb.d, !dbg !176302

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1
  %i.o = add nsw i64 %1, -3, !dbg !176300         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !176301
  %i.q = load i8, ptr %i.p, align 1, !dbg !176301, !alias.scope !176255, !noalias !176262, !noundef !4698 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.g, !dbg !176301
  br i1 %.not.i.not.i.i.2, label %bb.c, label %bb.d, !dbg !176302

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2
  %.not.i.2 = icmp eq i64 %i.o, 0, !dbg !176303
  br i1 %.not.i.2, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3, !dbg !176304

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3: ; preds = %bb.c
  %i.r = add nsw i64 %1, -4, !dbg !176300         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r, !dbg !176301
  %i.t = load i8, ptr %i.s, align 1, !dbg !176301, !alias.scope !176255, !noalias !176262, !noundef !4698 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.t, %i.g, !dbg !176301
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, label %bb.d, !dbg !176302

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %.lcssa37 = phi i64 [ %i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.l, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1 ], [ %i.o, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2 ], [ %i.r, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3 ], !dbg !176300 ; 6 uses
  %.lcssa35 = phi i8 [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.n, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1 ], [ %i.q, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2 ], [ %i.t, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3 ], !dbg !176301
  %i.u = add nuw nsw i64 %1, 15, !dbg !176305     ; 3 uses
  %i.v = icmp ult i64 %3, %i.u, !dbg !176306
  br i1 %i.v, label %.lr.ph.split.us.i.i, label %bb.e, !dbg !176306

.lr.ph.split.us.i.i:                              ; preds = %bb.d
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 5) %1), !dbg !176307, !alias.scope !176263, !noalias !176264
  %i.w = icmp eq i32 %bcmp.i.i.us23.i.i, 0, !dbg !176307
  br i1 %i.w, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader, !dbg !176308

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.x = add nsw i64 %3, -1, !dbg !176309         ; 2 uses
  %.not28.i.i31 = icmp ugt i64 %1, %i.x, !dbg !176310
  br i1 %.not28.i.i31, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !176310

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i
  %i.y = phi i64 [ %i.ab, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i ], [ %i.x, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader ]
  %.pn.i32 = phi ptr [ %i.z, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i32, i64 1, !dbg !176311 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.z, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 5) %1), !dbg !176307, !alias.scope !176263, !noalias !176264
  %i.aa = icmp eq i32 %bcmp.i.i.us.i.i, 0, !dbg !176307
  br i1 %i.aa, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i, !dbg !176308

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ab = add nsw i64 %i.y, -1, !dbg !176309      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ab, !dbg !176310
  br i1 %.not28.i.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !176310

bb.e:                                             ; preds = %bb.d
  %i.ac = insertelement <16 x i8> poison, i8 %i.g, i64 0, !dbg !176312
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !176312 ; 6 uses
  %i.ae = insertelement <16 x i8> poison, i8 %.lcssa35, i64 0, !dbg !176313
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !176313 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !176314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !176315, !noalias !176263
  store ptr %2, ptr %i.a, align 8, !dbg !176316, !noalias !176263
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !176316
  store i64 %3, ptr %i.ah, align 8, !dbg !176316, !noalias !176263
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !176316
  store ptr %i.ag, ptr %i.ai, align 8, !dbg !176316, !noalias !176263
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !176316
  store i64 %i.h, ptr %i.aj, align 8, !dbg !176316, !noalias !176263
  %i.ak = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not105.i = icmp ult i64 %i.ak, %3, !dbg !176317
  br i1 %.not105.i, label %.lr.ph.i, label %.preheader.i, !dbg !176317

.preheader.i:                                     ; preds = %bb.i, %bb.e
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.e ], [ %.sroa.014.2.3.i, %bb.i ], !dbg !176318 ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.i ], !dbg !176319 ; 2 uses
  %i.al = add i64 %.sroa.06.0.lcssa.i, %i.u, !dbg !176320
  %i.am = icmp uge i64 %i.al, %3, !dbg !176320
  %i.an = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.am, i1 true, i1 %i.an, !dbg !176320
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !176320

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.sroa.06.098.i = phi i64 [ %i.cf, %bb.i ], [ 0, %bb.e ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ao, align 1, !dbg !176321, !alias.scope !176256, !noalias !176273
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.lcssa37, !dbg !176322
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ap, align 1, !dbg !176323, !alias.scope !176256, !noalias !176273
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ad, !dbg !176324
  %i.ar = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.af, !dbg !176325
  %i.as = and <16 x i1> %i.aq, %i.ar, !dbg !176326
  %i.at = bitcast <16 x i1> %i.as to i16, !dbg !176327 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !176328 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.au, align 1, !dbg !176321, !alias.scope !176256, !noalias !176273
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.lcssa37, !dbg !176322
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.av, align 1, !dbg !176323, !alias.scope !176256, !noalias !176273
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ad, !dbg !176324
  %i.ax = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.af, !dbg !176325
  %i.ay = and <16 x i1> %i.aw, %i.ax, !dbg !176326
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !176327 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !176328 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.ba, align 1, !dbg !176321, !alias.scope !176256, !noalias !176273
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.lcssa37, !dbg !176322
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bb, align 1, !dbg !176323, !alias.scope !176256, !noalias !176273
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ad, !dbg !176324
  %i.bd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.af, !dbg !176325
  %i.be = and <16 x i1> %i.bc, %i.bd, !dbg !176326
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !176327 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 48, !dbg !176328 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bg, align 1, !dbg !176321, !alias.scope !176256, !noalias !176273
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.lcssa37, !dbg !176322
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bh, align 1, !dbg !176323, !alias.scope !176256, !noalias !176273
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ad, !dbg !176324
  %i.bj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.af, !dbg !176325
  %i.bk = and <16 x i1> %i.bi, %i.bj, !dbg !176326
  %i.bl = bitcast <16 x i1> %i.bk to i16, !dbg !176327 ; 2 uses
  %i.bm = icmp eq i16 %i.at, 0, !dbg !176329
  br i1 %i.bm, label %.preheader91.1.i, label %bb.j, !dbg !176329

.preheader91.1.i:                                 ; preds = %bb.j, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ck, %bb.j ], !dbg !176330 ; 3 uses
  %i.bn = icmp eq i16 %i.az, 0, !dbg !176329
  br i1 %i.bn, label %.preheader91.2.i, label %bb.f, !dbg !176329

bb.f:                                             ; preds = %.preheader91.1.i
  %i.bo = or disjoint i64 %.sroa.06.098.i, 16, !dbg !176331
  %i.bp = trunc nuw i8 %.sroa.014.2.i to i1, !dbg !176332
  %i.bq = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bo, i16 noundef %i.az, i1 noundef zeroext %i.bp) #49, !dbg !176333
  %i.br = zext i1 %i.bq to i8, !dbg !176334
  %i.bs = or i8 %.sroa.014.2.i, %i.br, !dbg !176334
  br label %.preheader91.2.i, !dbg !176335

.preheader91.2.i:                                 ; preds = %bb.f, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bs, %bb.f ], !dbg !176330 ; 3 uses
  %i.bt = icmp eq i16 %i.bf, 0, !dbg !176329
  br i1 %i.bt, label %.preheader91.3.i, label %bb.g, !dbg !176329

bb.g:                                             ; preds = %.preheader91.2.i
  %i.bu = or disjoint i64 %.sroa.06.098.i, 32, !dbg !176331
  %i.bv = trunc nuw i8 %.sroa.014.2.1.i to i1, !dbg !176332
  %i.bw = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bu, i16 noundef %i.bf, i1 noundef zeroext %i.bv) #49, !dbg !176333
  %i.bx = zext i1 %i.bw to i8, !dbg !176334
  %i.by = or i8 %.sroa.014.2.1.i, %i.bx, !dbg !176334
  br label %.preheader91.3.i, !dbg !176335

.preheader91.3.i:                                 ; preds = %bb.g, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.by, %bb.g ], !dbg !176330 ; 3 uses
  %i.bz = icmp eq i16 %i.bl, 0, !dbg !176329
  br i1 %i.bz, label %bb.i, label %bb.h, !dbg !176329

bb.h:                                             ; preds = %.preheader91.3.i
  %i.ca = or disjoint i64 %.sroa.06.098.i, 48, !dbg !176331
  %i.cb = trunc nuw i8 %.sroa.014.2.2.i to i1, !dbg !176332
  %i.cc = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ca, i16 noundef %i.bl, i1 noundef zeroext %i.cb) #49, !dbg !176333
  %i.cd = zext i1 %i.cc to i8, !dbg !176334
  %i.ce = or i8 %.sroa.014.2.2.i, %i.cd, !dbg !176334
  br label %bb.i, !dbg !176335

bb.i:                                             ; preds = %bb.h, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.ce, %bb.h ], !dbg !176330 ; 2 uses
  %i.cf = add i64 %.sroa.06.098.i, 64, !dbg !176336 ; 3 uses
  %i.cg = add i64 %i.cf, %i.ak, !dbg !176317
  %i.ch = icmp uge i64 %i.cg, %3, !dbg !176317
  %i.ci = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.ci, !dbg !176317
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i, !dbg !176317

bb.j:                                             ; preds = %.lr.ph.i
  %i.cj = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.at, i1 noundef zeroext false) #49, !dbg !176333
  %i.ck = zext i1 %i.cj to i8, !dbg !176334
  br label %.preheader91.1.i, !dbg !176335

._crit_edge.i:                                    ; preds = %bb.k, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.k ], !dbg !176318 ; 2 uses
  %.lcssa.i = phi i1 [ %i.an, %.preheader.i ], [ %i.de, %bb.k ]
  %i.cl = sub nuw i64 %3, %i.h, !dbg !176337
  %i.cm = add i64 %i.cl, -16, !dbg !176337        ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm, !dbg !176338 ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cn, align 1, !dbg !176339, !alias.scope !176256, !noalias !176284
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.lcssa37, !dbg !176340
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.co, align 1, !dbg !176341, !alias.scope !176256, !noalias !176284
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ad, !dbg !176342
  %i.cq = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.af, !dbg !176343
  %i.cr = and <16 x i1> %i.cp, %i.cq, !dbg !176344
  %i.cs = bitcast <16 x i1> %i.cr to i16, !dbg !176345 ; 2 uses
  %i.ct = icmp eq i16 %i.cs, 0, !dbg !176346
  br i1 %i.ct, label %bb.m, label %bb.n, !dbg !176346

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.k
  %.sroa.06.1101.i = phi i64 [ %i.db, %bb.k ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i, !dbg !176347 ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cu, align 1, !dbg !176348, !alias.scope !176256, !noalias !176288
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.lcssa37, !dbg !176349
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.cv, align 1, !dbg !176350, !alias.scope !176256, !noalias !176288
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ad, !dbg !176351
  %i.cx = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.af, !dbg !176352
  %i.cy = and <16 x i1> %i.cw, %i.cx, !dbg !176353
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !176354 ; 2 uses
  %i.da = icmp eq i16 %i.cz, 0, !dbg !176355
  br i1 %i.da, label %bb.k, label %bb.l, !dbg !176355

bb.k:                                             ; preds = %bb.l, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.dg, %bb.l ], !dbg !176330 ; 2 uses
  %i.db = add i64 %.sroa.06.1101.i, 16, !dbg !176356 ; 2 uses
  %i.dc = add i64 %i.db, %i.u, !dbg !176320
  %i.dd = icmp uge i64 %i.dc, %3, !dbg !176320
  %i.de = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dd, %i.de, !dbg !176320
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !176320

bb.l:                                             ; preds = %.lr.ph102.i
  %i.df = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.cz, i1 noundef zeroext false) #49, !dbg !176357
  %i.dg = zext i1 %i.df to i8, !dbg !176358
  br label %bb.k, !dbg !176359

bb.m:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dj, %bb.n ], !dbg !176330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !176360, !noalias !176263
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !176361

bb.n:                                             ; preds = %._crit_edge.i
  %i.dh = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cm, i16 noundef %i.cs, i1 noundef zeroext %.lcssa.i) #49, !dbg !176362
  %i.di = zext i1 %i.dh to i8, !dbg !176363
  %i.dj = or i8 %.sroa.014.3.lcssa.i, %i.di, !dbg !176363
  br label %bb.m, !dbg !176364

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !176365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !176365
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1), !dbg !176366
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #49, !dbg !176367
  %i.dk = load i64, ptr %i.c, align 8, !dbg !176368, !range !4740, !noundef !4698
  %i.dl = trunc nuw nsw i64 %i.dk to i8, !dbg !176369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !176370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !176370
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !176370

bb.o:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1), !dbg !176371
  %i.dm = icmp eq i32 %bcmp, 0, !dbg !176371
  %i.dn = zext i1 %i.dm to i8, !dbg !176371
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !176372
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXst_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s9_9___VisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4682 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1304, i64 noundef 33), !dbg !176373
  ret i1 %i.a, !dbg !176374
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsu_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s8_14___FieldVisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4679 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1002, i64 noundef 16), !dbg !176375
  ret i1 %i.a, !dbg !176376
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !176377 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !176464, !range !4740, !noundef !4698
  %i.b = trunc nuw i64 %i.a to i1, !dbg !176465
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader, !dbg !176465

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !5104, !alias.scope !176448, !noalias !176449, !noundef !4698
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph, !dbg !176466

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !176448, !noalias !176449, !nonnull !4698, !noundef !4698 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !176448, !noalias !176449, !noundef !4698 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !176448, !noalias !176449 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176450), !dbg !176467
  %i.l = trunc nuw i8 %.promoted26 to i1, !dbg !176468 ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0, !dbg !176469
  br i1 %i.m, label %bb.d, label %bb.b, !dbg !176469

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k, !dbg !176470
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel, !dbg !176470

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k, !dbg !176471
  br i1 %i.n, label %bb.d, label %.loopexit74, !dbg !176472

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted, !dbg !176473
  %i.p = load i8, ptr %i.o, align 1, !dbg !176473, !alias.scope !176451, !noalias !176452, !noundef !4698
  %i.q = icmp sgt i8 %i.p, -65, !dbg !176474
  br i1 %i.q, label %bb.d, label %.loopexit74, !dbg !176472

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted, !dbg !176475 ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k, !dbg !176476
  br i1 %i.s, label %.loopexit75, label %bb.e, !dbg !176477

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !dbg !176478, !noalias !176456, !noundef !4698 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1, !dbg !176479
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel, !dbg !176479

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !176480
  %i.w = and i8 %i.t, 31, !dbg !176481
  %i.x = zext nneg i8 %i.w to i32, !dbg !176481   ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1, !dbg !176482
  %i.z = icmp samesign ne i64 %i.y, %i.k, !dbg !176482
  tail call void @llvm.assume(i1 %i.z), !dbg !176483
  %i.aa = load i8, ptr %i.v, align 1, !dbg !176484, !noalias !176456, !noundef !4698
  %i.ab = shl nuw nsw i32 %i.x, 6, !dbg !176485
  %i.ac = and i8 %i.aa, 63, !dbg !176486
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !176486 ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad, !dbg !176485
  %i.af = icmp samesign ugt i8 %i.t, -33, !dbg !176487
  br i1 %i.af, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel, label %bb.g, !dbg !176487

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2, !dbg !176488
  %i.ah = add nuw nsw i64 %.promoted, 2, !dbg !176489
  %i.ai = icmp samesign ne i64 %i.ah, %i.k, !dbg !176489
  tail call void @llvm.assume(i1 %i.ai), !dbg !176490
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !176491, !noalias !176456, !noundef !4698
  %i.ak = shl nuw nsw i32 %i.ad, 6, !dbg !176492
  %i.al = and i8 %i.aj, 63, !dbg !176493
  %i.am = zext nneg i8 %i.al to i32, !dbg !176493
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !176492 ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12, !dbg !176494
  %i.ap = or disjoint i32 %i.an, %i.ao, !dbg !176495
  %i.aq = icmp samesign ugt i8 %i.t, -17, !dbg !176496
  br i1 %i.aq, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel, label %bb.g, !dbg !176496

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3, !dbg !176497
  %i.as = add nuw nsw i64 %.promoted, 3, !dbg !176498
  %i.at = icmp samesign ne i64 %i.as, %i.k, !dbg !176498
  tail call void @llvm.assume(i1 %i.at), !dbg !176499
  %i.au = load i8, ptr %i.ar, align 1, !dbg !176500, !noalias !176456, !noundef !4698
  %i.av = shl nuw nsw i32 %i.x, 18, !dbg !176501
  %i.aw = and i32 %i.av, 1835008, !dbg !176501
  %i.ax = shl nuw nsw i32 %i.an, 6, !dbg !176502
  %i.ay = and i8 %i.au, 63, !dbg !176503
  %i.az = zext nneg i8 %i.ay to i32, !dbg !176503
  %i.ba = or disjoint i32 %i.ax, %i.az, !dbg !176502
  %i.bb = or disjoint i32 %i.ba, %i.aw, !dbg !176504
  br label %bb.g, !dbg !176505

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32, !dbg !176506
  br label %bb.g, !dbg !176507

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112, !dbg !176508
  tail call void @llvm.assume(i1 %i.bd), !dbg !176508
  br i1 %i.l, label %.loopexit, label %bb.h, !dbg !176509

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128, !dbg !176510
  br i1 %i.be, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i, !dbg !176510

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048, !dbg !176511
  br i1 %i.bf, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j, !dbg !176511

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536, !dbg !176512
  %..i.peel = select i1 %i.bg, i64 3, i64 4, !dbg !176513
  br label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, !dbg !176513

_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ], !dbg !176513
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted, !dbg !176514 ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !dbg !176514, !alias.scope !176450, !noalias !176449
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176448), !dbg !176467
  br i1 %i.bi, label %bb.n, label %bb.l, !dbg !176469

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !176515
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !176515, !noundef !4698
  %i.by = icmp eq i64 %i.bx, -1, !dbg !176516
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !176517
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !176517, !nonnull !4698, !noundef !4698 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !176517
  %i.cc = load i64, ptr %i.cb, align 8, !dbg !176517, !noundef !4698 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !176517
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !176517, !nonnull !4698, !noundef !4698 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !176517
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !176517, !noundef !4698 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u, !dbg !176516

bb.l:                                             ; preds = %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i, !dbg !176470

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74, !dbg !176472

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !dbg !176473, !alias.scope !176451, !noalias !176461, !noundef !4698
  %i.ci = icmp sgt i8 %i.ch, -65, !dbg !176474
  br i1 %i.ci, label %bb.n, label %.loopexit74, !dbg !176472

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o, !dbg !176477

end_hunk_0
