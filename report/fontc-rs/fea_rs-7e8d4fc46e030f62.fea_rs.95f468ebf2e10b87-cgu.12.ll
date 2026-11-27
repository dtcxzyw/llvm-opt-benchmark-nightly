Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.12?download=true
inline.NumInlined: 1243
inline.NumDeleted: 779
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtB6_8Iterator4folduNCINvNvB2S_8for_each4callB1q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3O_3VecB1q_E14extend_trustedBQ_E0E0EB1U_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 24, i1 false), !noalias !432
  %.sroa.0.0.copyload1.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !433 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  %.not.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i.i.i.i, -3
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB3f_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB2r_8for_each4callBZ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecBZ_E14extend_trustedQB3_E0E0E0B3A_EB1t_.exit.loopexit.split.split.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload.i, i64 %.val2.i4.i ; 4 uses
  store i8 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.r, align 8, !noalias !430
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.47.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i.i.i, i64 23, i1 false), !noalias !421
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.val.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !430
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.val3.i.i.i.i.i, ptr %.sroa.69.0..sroa_idx.i.i, align 8, !noalias !430
  %i.s = add i64 %.val2.i4.i, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  %i.t = add i64 %i.q, -1                         ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not11.i.i.i, label %._crit_edge.sink.split.i, label %.lr.ph.split.i

._crit_edge.sink.split.i:                         ; preds = %.thread22.i.us.i, %bb.d
  %.val2.i.lcssa.ph.i = phi i64 [ %i.s, %bb.d ], [ %i.j, %.thread22.i.us.i ]
  store i64 1, ptr %i.d, align 8, !alias.scope !425
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %._crit_edge.sink.split.i, %.lr.ph.i.i
  %.val2.i.lcssa.i = phi i64 [ %.sroa.5.0.copyload.i, %.lr.ph.i.i ], [ %.val2.i.lcssa.ph.i, %._crit_edge.sink.split.i ], [ %i.n, %bb.c ] ; 2 uses
  store i8 -3, ptr %0, align 8, !alias.scope !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %.sroa.7.0.copyload.i, i64 %.val2.i.lcssa.i ; 4 uses
  store i8 %i.c, ptr %i.u, align 8, !noalias !436
  %.sroa.47.0..sroa_idx.jt253.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.47.0..sroa_idx.jt253.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i.i.i, i64 23, i1 false), !noalias !435
  %.sroa.58.0..sroa_idx.jt253.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %.val.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.jt253.i.i, align 8, !noalias !436
  %.sroa.69.0..sroa_idx.jt253.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 %.val3.i.i.i.i.i, ptr %.sroa.69.0..sroa_idx.jt253.i.i, align 8, !noalias !436
  %i.v = add i64 %.val2.i.lcssa.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  br label %.thread.i.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB3f_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB2r_8for_each4callBZ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecBZ_E14extend_trustedQB3_E0E0E0B3A_EB1t_.exit.loopexit.split.split.i: ; preds = %.lr.ph.split.i
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !425
  br label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4b_3VecB1q_E14extend_trustedBQ_E0E0EB1U_.exit

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1q_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4b_3VecB1q_E14extend_trustedBQ_E0E0EB1U_.exit: ; preds = %bb.b, %.thread.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB3f_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB2r_8for_each4callBZ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecBZ_E14extend_trustedQB3_E0E0E0B3A_EB1t_.exit.loopexit.split.split.i
  %.val4.i.i = phi i64 [ %.val4.pre.i.i, %.thread.i.i ], [ %.val2.i4.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB3f_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB2r_8for_each4callBZ_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecBZ_E14extend_trustedQB3_E0E0E0B3A_EB1t_.exit.loopexit.split.split.i ], [ %.val2.i4.us7.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val4.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !435
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtNtCscScJTt9VrQp_6fea_rs5parse4treeNtB2_9ParseTree10get_source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = call noundef align 8 ptr @_RNvMs6_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_10SourceList3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCscScJTt9VrQp_6fea_rs5parse4treeNtB2_9ParseTree10typed_root(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i16, ptr %i.a, align 8, !range !441, !alias.scope !440, !noundef !4
  %i.c = icmp eq i16 %i.b, 120
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load <2 x i32>, ptr %i.e, align 8, !alias.scope !440
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.h = load i8, ptr %i.g, align 2, !range !15, !alias.scope !440, !noundef !4
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !440, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !442
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RNvMs2e_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_4Root13try_from_node.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvMs2e_NtNtCscScJTt9VrQp_6fea_rs10token_tree5typedNtB6_4Root13try_from_node.exit: ; preds = %bb.b
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 120, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.h, ptr %.sroa.9.0..sroa_idx, align 2
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCscScJTt9VrQp_6fea_rs5parse4treeNtB2_9ParseTree17format_diagnostic(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMs6_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_10SourceList17format_diagnostic(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsf3Ta7LF998c_4core4iter7sources8repeat_nINtB2_12RepeatNInnerINtNtB8_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEE3newB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit

bb.c:                                             ; preds = %bb.a
  store i8 -3, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.a = load i8, ptr %1, align 8, !range !7, !alias.scope !457, !noundef !4 ; 3 uses
  %i.b = icmp eq i8 %i.a, -2
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.c = icmp eq i8 %i.a, -1
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !464, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !464
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4debg15LookupDebugInfoEEB15_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder11contains_id(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i16 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not.not2.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not2.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_B1C_NtB1C_11NameBuilder11contains_id0EB1I_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.val2.i = load i16, ptr %i.f, align 8, !noalias !467, !noundef !4
  %i.g = icmp eq i16 %.val2.i, %1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.e
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_B1C_NtB1C_11NameBuilder11contains_id0EB1I_.exit, label %.lr.ph

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_B1C_NtB1C_11NameBuilder11contains_id0EB1I_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder14add_anon_group(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 288230376151711744) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %3 = icmp ult i16 %i.d, 32767
  %4 = zext i1 %3 to i16
  %spec.select = add nuw nsw i16 %i.d, %4         ; 3 uses
  %.idx = shl nuw nsw i64 %2, 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs0_BS_NtBS_11NameBuilder14add_anon_group0EBY_.exit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.sroa.0.114 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.j, %.lr.ph.backedge ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.114, i64 32 ; 3 uses
  %i.k = load i8, ptr %.sroa.0.114, align 8, !range !12, !noalias !488, !noundef !4 ; 4 uses
  %i.l = icmp samesign ugt i8 %i.k, 23
  %i.m = zext nneg i8 %i.k to i64
  %i.n = add nsw i64 %i.m, -23
  %i.o = select i1 %i.l, i64 %i.n, i64 0
  switch i64 %i.o, label %bb.b [
    i64 0, label %.split.i
    i64 1, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtBW_11NameBuilder14add_anon_group0INtB7_5FnMutTRRNtBW_8NameSpecEE8call_mutB12_.exit.i
    i64 2, label %.split3.i
  ]

bb.b:                                             ; preds = %.lr.ph
  unreachable

.split.i:                                         ; preds = %.lr.ph
  %i.p = icmp eq i8 %i.k, 0
  br i1 %i.p, label %.backedge.i, label %bb.c

.split3.i:                                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.114, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !488, !noundef !4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.backedge.i, label %bb.c

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtBW_11NameBuilder14add_anon_group0INtB7_5FnMutTRRNtBW_8NameSpecEE8call_mutB12_.exit.i: ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.114, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noalias !488, !noundef !4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.backedge.i, label %bb.c

.backedge.i:                                      ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtBW_11NameBuilder14add_anon_group0INtB7_5FnMutTRRNtBW_8NameSpecEE8call_mutB12_.exit.i, %.split3.i, %.split.i
  %i.w = icmp eq ptr %i.j, %i.e
  br i1 %i.w, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs0_BS_NtBS_11NameBuilder14add_anon_group0EBY_.exit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.backedge.i, %_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder3add.exit
  br label %.lr.ph

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtBW_11NameBuilder14add_anon_group0INtB7_5FnMutTRRNtBW_8NameSpecEE8call_mutB12_.exit.i, %.split.i, %.split3.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.114, i64 24
  %i.y = load <2 x i16>, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.114, i64 28
  %i.aa = load i16, ptr %i.z, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = icmp eq i8 %i.k, 25
  br i1 %i.ab, label %bb.e, label %bb.d, !prof !16

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs0_BS_NtBS_11NameBuilder14add_anon_group0EBY_.exit: ; preds = %_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder3add.exit, %.backedge.i, %bb.a
  ret i16 %spec.select

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.114, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.114) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.ac = load i16, ptr %i.c, align 8, !alias.scope !490, !noundef !4
  %..i.i = tail call noundef i16 @llvm.umax.i16(i16 %spec.select, i16 %i.ac)
  store i16 %..i.i, ptr %i.c, align 8, !alias.scope !490
  store <2 x i16> %i.y, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !490
  store i16 %i.aa, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !490
  store i16 %spec.select, ptr %i.a, align 8, !noalias !489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  %i.ad = load i64, ptr %i.h, align 8, !alias.scope !493, !noundef !4 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !17, !alias.scope !493, !noundef !4
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder3add.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecEE8grow_oneB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder3add.exit unwind label %bb.h, !noalias !494

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.ah = load i8, ptr %i.g, align 8, !range !12, !alias.scope !499, !noalias !489, !noundef !4
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %i.ah, 25
  br i1 %switch.i.i.i.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !502, !noalias !489, !nonnull !4, !noundef !4
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !503
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.j, label %.body.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai) #26
          to label %.body.i unwind label %bb.k, !noalias !504

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27, !noalias !504
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %i.ag

_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder3add.exit: ; preds = %bb.f, %bb.g
  %i.an = load ptr, ptr %i.i, align 8, !alias.scope !493, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !504
  %i.ap = add i64 %i.ad, 1
  store i64 %i.ap, ptr %i.h, align 8, !alias.scope !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !489
  %i.aq = icmp eq ptr %i.j, %i.e
  br i1 %i.aq, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs0_BS_NtBS_11NameBuilder14add_anon_group0EBY_.exit, label %.lr.ph.backedge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4nameNtB5_11NameBuilder3add(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !noundef !4
  %..i = tail call noundef i16 @llvm.umax.i16(i16 %1, i16 %i.c)
  store i16 %..i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  store i16 %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !520, !noundef !4 ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !17, !alias.scope !520, !noundef !4
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types7name_id6NameIdNtNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4name8NameSpecEE8grow_oneB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.g unwind label %bb.c, !noalias !521

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.j = load i8, ptr %i.d, align 8, !range !12, !alias.scope !526, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.j, 25
  br i1 %switch.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !529, !nonnull !4, !noundef !4
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !529
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #26
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !520, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
end_hunk_0
