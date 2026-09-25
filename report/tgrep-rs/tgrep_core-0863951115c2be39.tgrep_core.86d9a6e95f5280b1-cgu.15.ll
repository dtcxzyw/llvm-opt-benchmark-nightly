Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.15?download=true
inline.NumInlined: 747
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !12 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !912
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !912
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !912
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_Cs9oNxn7AafV1_7globsetNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @100, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @101, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow5error9ErrorImplNtCs9oNxn7AafV1_7globset5ErrorENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @102, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @103, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @99, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error7provideCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsjYKKaZ3qa7A_6anyhow7wrapper12MessageErrorReENtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @104, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENCINvNtB1I_5query23execute_plan_with_masksNCNvMNtB1I_6hybridNtB3f_11HybridIndex24execute_query_with_masks0Es0_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENCNvMNtB1I_6readerNtB2z_11IndexReader14lookup_trigram0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENCNvMNtB1I_6readerNtB2z_11IndexReader20all_trigram_postings0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1I_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRmRNtNtBX_6string6StringEENCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2d_9LiveIndex17all_paths_ordereds_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB2f_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTmhhEENCINvNtCsbzNSmZPCnTx_10tgrep_core5query23execute_plan_with_masksNCNvMNtB1R_6hybridNtB2R_11HybridIndex24execute_query_with_masks0Es2_0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead9read_lineCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !935, !noundef !12 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !935
  store i64 %i.f, ptr %i.d, align 8, !noalias !935
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %1, ptr %i.h, align 8, !noalias !935
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.outer.i.i.i

.outer.i.i.i:                                     ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %bb.a
  %.sroa.01.0.ph.i.i.i = phi i64 [ %i.br, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.outer.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.s = load i64, ptr %i.i, align 8, !alias.scope !941, !noalias !942, !noundef !12 ; 3 uses
  %i.t = load i64, ptr %i.j, align 8, !alias.scope !941, !noalias !942, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.s, %i.t
  %.pre.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !941, !noalias !942 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !943
  %i.u = load i64, ptr %i.l, align 8, !alias.scope !941, !noalias !942, !noundef !12
  store ptr %.pre.i.i.i.i.i, ptr %i.b, align 8, !noalias !943
  store i64 %i.u, ptr %i.m, align 8, !noalias !943
  store i64 0, ptr %i.n, align 8, !noalias !943
  %i.v = load i8, ptr %i.p, align 8, !range !16, !alias.scope !941, !noalias !942, !noundef !12
  store i8 %i.v, ptr %i.o, align 8, !noalias !943
  %i.w = invoke noundef ptr @_RNvXsa_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull %.pre.i.i.i.i.i, ptr noundef nonnull %i.b)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  store i64 0, ptr %i.i, align 8, !alias.scope !941, !noalias !942
  %i.x = load i64, ptr %i.n, align 8, !noalias !943, !noundef !12 ; 2 uses
  store i64 %i.x, ptr %i.j, align 8, !alias.scope !941, !noalias !942
  %i.y = load i8, ptr %i.o, align 8, !range !16, !noalias !943, !noundef !12
  store i8 %i.y, ptr %i.p, align 8, !alias.scope !941, !noalias !942
  %.not3.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not3.i.i.i.i.i, label %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread68.i.i.i, label %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread.i.i.i

_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.z = ptrtoint ptr %i.w to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !943
  br label %bb.d

_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread68.i.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !943
  br label %.loopexit69.i.i.i

_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.b
  %i.aa = sub nuw i64 %i.t, %i.s                  ; 2 uses
  %i.ab = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.ab, label %bb.d, label %.loopexit69.i.i.i

bb.d:                                             ; preds = %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread.i.i.i
  %.sroa.9.030.i.i.i = phi i64 [ %i.z, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread.i.i.i ], [ %i.aa, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ] ; 5 uses
  %i.ac = inttoptr i64 %.sroa.9.030.i.i.i to ptr  ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = and i64 %.sroa.9.030.i.i.i, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %bb.e
    i64 3, label %.split37.i.i.i
    i64 0, label %.split38.i.i.i
    i64 1, label %.split.i.i.i
  ], !prof !21

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i unwind label %bb.j

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.af = lshr i64 %.sroa.9.030.i.i.i, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !12, !noundef !12
  %i.aj = invoke noundef zeroext i1 %i.ai(i32 noundef %i.ag)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i unwind label %bb.j, !inline_history !7

.split37.i.i.i:                                   ; preds = %bb.d
  %2 = lshr i64 %.sroa.9.030.i.i.i, 32
  %i.ak = icmp ult i64 %.sroa.9.030.i.i.i, 188978561024 ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %2 to i8
  %spec.select.i.i.i.i.i.i = select i1 %i.ak, i8 %switch.idx.cast.i.i.i.i.i.i, i8 -1 ; 2 uses
  %3 = icmp ne i8 %spec.select.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %3)
  %i.al = icmp eq i8 %spec.select.i.i.i.i.i.i, 35
  br i1 %i.al, label %4, label %.loopexit14.i

.split38.i.i.i:                                   ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !30, !noundef !12
  %i.ao = icmp eq i8 %i.an, 35
  br i1 %i.ao, label %.thread.i.i.i, label %.loopexit14.i

.split.i.i.i:                                     ; preds = %bb.d
  %i.ap = getelementptr i8, ptr %i.ac, i64 31
  %i.aq = load i8, ptr %i.ap, align 8, !range !30, !noundef !12
  %i.ar = icmp eq i8 %i.aq, 35
  br i1 %i.ar, label %bb.k, label %.loopexit14.i

.loopexit69.i.i.i:                                ; preds = %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread68.i.i.i
  %i.as = phi i64 [ %i.x, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread68.i.i.i ], [ %i.aa, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ] ; 7 uses
  %i.at = phi i64 [ 0, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.thread68.i.i.i ], [ %i.s, %_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 %i.at ; 3 uses
  %i.av = icmp samesign ult i64 %i.as, 16
  br i1 %i.av, label %.preheader.i.i.i.i, label %bb.f

.preheader.i.i.i.i:                               ; preds = %.loopexit69.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

bb.f:                                             ; preds = %.loopexit69.i.i.i
  %i.aw = invoke { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef range(i64 0, -9223372036854775808) %i.as)
          to label %.noexc7.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc7.i:                                        ; preds = %bb.f
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  %i.az = trunc nuw i64 %i.ax to i1
  br i1 %i.az, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.g
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.bd, %bb.g ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.04.011.i.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !944, !noundef !12
  %i.bc = icmp eq i8 %i.bb, 10
  br i1 %i.bc, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bd = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bd, %i.as
  br i1 %exitcond.not.i.i.i.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.noexc7.i
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ay, %.noexc7.i ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.be = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.as
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i: ; preds = %bb.g, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, %.noexc7.i, %.preheader.i.i.i.i
  %i.bg = phi i1 [ true, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ false, %.noexc7.i ], [ false, %.preheader.i.i.i.i ], [ false, %bb.g ]
  %.sroa.6.0.i.i.i = phi i64 [ %i.bf, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i ], [ %i.as, %.noexc7.i ], [ 0, %.preheader.i.i.i.i ], [ %i.as, %bb.g ] ; 6 uses
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.6.0.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.split-lp.i

.noexc8.i:                                        ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i
  %i.bh = load i64, ptr %i.e, align 8, !alias.scope !945, !noalias !937, !noundef !12 ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  call void @llvm.assume(i1 %i.bi)
  %.not.i21.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0 ; 2 uses
  br i1 %.not.i21.i.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.noexc8.i
  %i.bj = load ptr, ptr %i.r, align 8, !alias.scope !945, !noalias !937, !nonnull !12, !noundef !12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %i.au, i64 %.sroa.6.0.i.i.i, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !945, !noalias !937
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.h, %.noexc8.i
  %i.bl = phi i64 [ %.pre.i.i.i.i, %bb.h ], [ %i.bh, %.noexc8.i ]
  %i.bm = add i64 %i.bl, %.sroa.6.0.i.i.i
  store i64 %i.bm, ptr %i.e, align 8, !alias.scope !945, !noalias !937
  %i.bn = load i64, ptr %i.i, align 8, !alias.scope !946, !noalias !947, !noundef !12
  %i.bo = add i64 %i.bn, %.sroa.6.0.i.i.i
  %i.bp = load i64, ptr %i.j, align 8, !alias.scope !946, !noalias !947, !noundef !12
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bp)
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !946, !noalias !947
  %i.br = add i64 %.sroa.6.0.i.i.i, %.sroa.01.0.ph.i.i.i ; 2 uses
  %or.cond.i.i.i = or i1 %i.bg, %.not.i21.i.i.i
  br i1 %or.cond.i.i.i, label %bb.i, label %.outer.i.i.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.bs = inttoptr i64 %i.br to ptr
  br label %.loopexit14.i

bb.j:                                             ; preds = %.noexc.i.i.i, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr null, ptr nonnull %i.ac) #29
          to label %.body.i unwind label %bb.l

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i: ; preds = %.noexc.i.i.i
  br i1 %i.aj, label %.thread.i.i.i, label %.loopexit14.i

.thread.i.i.i:                                    ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split38.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !948
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

4:                                                ; preds = %.split37.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !948
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i

bb.k:                                             ; preds = %.split.i.i.i
  %i.bu = getelementptr i8, ptr %i.ac, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bu) ]
  store ptr %i.bu, ptr %i.q, align 8, !alias.scope !949, !noalias !948
  store i8 3, ptr %i.a, align 8, !alias.scope !949, !noalias !948
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i unwind label %.loopexit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i: ; preds = %bb.k, %4, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !948
  br label %bb.b

bb.l:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

.body.i:                                          ; preds = %bb.m, %.loopexit.split-lp.i, %.loopexit.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ce, %bb.m ], [ %i.bt, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtNtCsf3Ta7LF998c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvYINtNtNtB1I_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB1I_8buf_read7BufRead9read_line0E0ENtNtNtB9_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCNvYINtNtNtB1V_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB1V_8buf_read7BufRead9read_line0E0EECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.q

.loopexit.i:                                      ; preds = %bb.k, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread.i.i.i, %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit14.i:                                    ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i, %.split.i.i.i, %.split38.i.i.i, %.split37.i.i.i, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.bs, %bb.i ], [ %i.ac, %.split37.i.i.i ], [ %i.ac, %.split38.i.i.i ], [ %i.ac, %.split.i.i.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.i ], [ 1, %.split37.i.i.i ], [ 1, %.split38.i.i.i ], [ 1, %.split.i.i.i ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i ] ; 3 uses
  %i.bw = load ptr, ptr %i.h, align 8, !noalias !935, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !12, !noundef !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !12
  %i.cb = load i64, ptr %i.d, align 8, !noalias !935, !noundef !12 ; 2 uses
  %i.cc = sub nuw i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !935
  invoke void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cc)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.loopexit14.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(i64 %.sroa.0.0.i.i.i, ptr %.sroa.3.0.i.i.i) #29
          to label %.body.i unwind label %bb.q

bb.n:                                             ; preds = %.loopexit14.i
  %i.cf = load i64, ptr %i.c, align 8, !range !18, !noalias !935, !noundef !12
  %.not.i = icmp eq i64 %i.cf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !935
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.h, align 8, !noalias !935, !nonnull !12, !align !22, !noundef !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !12 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  call void @llvm.assume(i1 %i.cj)
  store i64 %i.ci, ptr %i.d, align 8, !noalias !935
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECsbzNSmZPCnTx_10tgrep_core.exit

bb.p:                                             ; preds = %bb.n
  %i.ck = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %spec.select.i = select i1 %i.ck, ptr %.sroa.3.0.i.i.i, ptr @18
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECsbzNSmZPCnTx_10tgrep_core.exit

bb.q:                                             ; preds = %bb.m, %.body.i
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_3mem10drop_guard9DropGuardTjQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENCINvNtNtB1j_2io4read16append_to_stringNCNvYINtNtNtB1V_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB1V_8buf_read7BufRead9read_line0E0EECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCNvYINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB4_8buf_read7BufRead9read_line0ECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.o, %bb.p
  %.sroa.5.0.i = phi ptr [ %spec.select.i, %bb.p ], [ %.sroa.3.0.i.i.i, %bb.o ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.p ], [ %.sroa.0.0.i.i.i, %bb.o ]
  call void @_RNvXs1_NtNtCsf3Ta7LF998c_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsgCecv3eZDcN_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvYINtNtNtB1I_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB1I_8buf_read7BufRead9read_line0E0ENtNtNtB9_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !935
  %i.cm = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.cn = insertvalue { i64, ptr } %i.cm, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.cn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !16, !noalias !954, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) ; 0 uses
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsbzNSmZPCnTx_10tgrep_core.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs9oNxn7AafV1_7globset5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs9oNxn7AafV1_7globset5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs9oNxn7AafV1_7globset5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCs5Xr050g3D4S_3std3sys5stdio4unix6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXs3_NtNtNtCs5Xr050g3D4S_3std3sys5stdio4unixNtB5_6StderrNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 13 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 8 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.i = and i64 %i.g, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !21

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.k = lshr i64 %i.g, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = invoke noundef zeroext i1 %i.n(i32 noundef %i.l)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !7

.split26:                                         ; preds = %bb.c
  %i.p = lshr i64 %i.g, 32
  %i.q = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.p to i8
  %spec.select.i.i.i = select i1 %i.q, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.r = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.s, label %bb.i, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !30, !noundef !12
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %.thread.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 31
  %i.x = load i8, ptr %i.w, align 8, !range !30, !noundef !12
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.j, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.z = icmp eq ptr %i.f, null
  br i1 %i.z, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %.sroa.6.039, %i.g
  br i1 %i.aa, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #33
  unreachable

end_hunk_0
