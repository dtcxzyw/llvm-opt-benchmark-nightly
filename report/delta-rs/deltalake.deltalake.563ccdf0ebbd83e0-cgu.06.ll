begin_hunk_0
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(56) %22, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %237

.thread:                                          ; preds = %7, %28
  store i64 0, ptr %21, align 8
end_hunk_0
begin_hunk_1
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %48 = load ptr, ptr %47, align 8, !alias.scope !133, !noalias !143, !nonnull !8, !align !144 ; 3 uses
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %50 = load i64, ptr %49, align 8, !alias.scope !133, !noalias !143
  %.fr82 = freeze i64 %50                         ; 4 uses
  %.idx.i = mul nuw nsw i64 %.fr82, 24
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 %.idx.i ; 2 uses
  %52 = icmp eq i64 %.fr82, 0                     ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %54 = load ptr, ptr %53, align 8, !alias.scope !133, !noalias !143, !nonnull !8, !align !144 ; 2 uses
  %.idx19.i = shl nuw nsw i64 %25, 4
end_hunk_1
begin_hunk_2
  br i1 %85, label %.thread15.i, label %.lr.ph.i.i.us

86:                                               ; preds = %_RNCNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB7_19FunctionDescription38find_keyword_parameter_in_keyword_only0Cs7p2uQeJxui2_9deltalake.exit.i.i.us
  %87 = icmp ult i64 %.sroa.02.011.i.i.us, %.fr82
  call void @llvm.assume(i1 %87)
  %88 = icmp samesign ult i64 %.sroa.02.011.i.i.us, %6
  br i1 %88, label %89, label %.invoke.i
end_hunk_2
begin_hunk_3
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit.i unwind label %176, !noalias !143

138:                                              ; preds = %_RNCNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB7_19FunctionDescription38find_keyword_parameter_in_keyword_only0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %139 = icmp ult i64 %.sroa.02.011.i.i, %.fr82
  call void @llvm.assume(i1 %139)
  %140 = add i64 %.sroa.02.011.i.i, %25           ; 3 uses
  %141 = icmp ult i64 %140, %6
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %237

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread26: ; preds = %107, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !127
end_hunk_4
begin_hunk_5
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %194, ptr noundef nonnull align 8 dereferenceable(56) %20, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %237

.loopexit34:                                      ; preds = %187, %179
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %195 = icmp ugt i64 %25, %6
  br i1 %195, label %217, label %196, !prof !3

196:                                              ; preds = %.loopexit34
  %197 = sub nuw nsw i64 %6, %25
end_hunk_5
begin_hunk_6
_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %196
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %206 = sub nuw i64 %.sroa.8.0.copyload.i, %.sroa.67.0.copyload.i
  %207 = freeze i64 %206                          ; 2 uses
  %xtraiter = and i64 %207, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %208 = add i64 %.sroa.67.0.copyload.i, 1        ; 2 uses
  %209 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 16
  %211 = load i8, ptr %210, align 8, !range !197, !noalias !195, !noundef !8
  %212 = trunc nuw i8 %211 to i1
  br i1 %212, label %213, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit

213:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol
  %214 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %215 = load ptr, ptr %214, align 8, !noalias !195, !noundef !8
  %.not5.i.prol = icmp eq ptr %215, null
  br i1 %.not5.i.prol, label %.loopexit252, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, !prof !3

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol, %213, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %.sroa.67.012.i.unr = phi i64 [ %.sroa.67.0.copyload.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %208, %213 ], [ %208, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol ]
  %216 = icmp eq i64 %207, 1
  br i1 %216, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

217:                                              ; preds = %.loopexit34
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %25, i64 noundef range(i64 0, 1152921504606846976) %6, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #53, !noalias !196
  unreachable

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %231
  %.sroa.67.012.i = phi i64 [ %223, %231 ], [ %.sroa.67.012.i.unr, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit ] ; 4 uses
  %218 = add i64 %.sroa.67.012.i, 1               ; 2 uses
  %219 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.012.i
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 16
  %221 = load i8, ptr %220, align 8, !range !197, !noalias !195, !noundef !8
  %222 = trunc nuw i8 %221 to i1
  br i1 %222, label %232, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1: ; preds = %232, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %223 = add i64 %.sroa.67.012.i, 2               ; 2 uses
  %224 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %218
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 16
  %226 = load i8, ptr %225, align 8, !range !197, !noalias !195, !noundef !8
  %227 = trunc nuw i8 %226 to i1
  br i1 %227, label %228, label %231

228:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %229 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %218
  %230 = load ptr, ptr %229, align 8, !noalias !195, !noundef !8
  %.not5.i.1 = icmp eq ptr %230, null
  br i1 %.not5.i.1, label %.loopexit252, label %231, !prof !3

231:                                              ; preds = %228, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %exitcond.not.i.1 = icmp eq i64 %223, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

232:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %233 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.012.i
  %234 = load ptr, ptr %233, align 8, !noalias !195, !noundef !8
  %.not5.i = icmp eq ptr %234, null
  br i1 %.not5.i, label %.loopexit252, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1, !prof !3

.loopexit252:                                     ; preds = %232, %228, %213
  %235 = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription34missing_required_keyword_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %235, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %198, i64 noundef %197)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %236 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %236, ptr noundef nonnull align 8 dereferenceable(56) %18, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %237

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %231, %196
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i64 0, ptr %0, align 8
  br label %237

237:                                              ; preds = %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread, %192, %.loopexit252, %30, %.loopexit
  ret void
}

end_hunk_6
begin_hunk_7
  %33 = icmp eq i64 %32, 0                        ; 2 uses
  br i1 %33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %29, %217
  %.sroa.4.075 = phi i64 [ %219, %217 ], [ %.sroa.04.sroa.4.0.copyload, %29 ] ; 3 uses
  %.sroa.10.074 = phi i64 [ %218, %217 ], [ 0, %29 ] ; 3 uses
  %.sroa.7.073 = phi i64 [ %34, %217 ], [ %32, %29 ]
  %34 = add i64 %.sroa.7.073, -1                  ; 2 uses
  %35 = icmp ult i64 %.sroa.4.075, %.sroa.04.sroa.5.0.copyload
  br i1 %35, label %36, label %._crit_edge
end_hunk_7
begin_hunk_8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.sroa.0.0.copyload) ]
  %37 = call noundef nonnull ptr @_RNvMs8_NtNtCsgbCypRs12E4_4pyo35types5tupleNtB5_21BorrowedTupleIterator8get_item(ptr noundef nonnull %.sroa.04.sroa.0.0.copyload, i64 noundef %.sroa.4.075), !noalias !198
  %exitcond.not = icmp eq i64 %.sroa.10.074, %5
  br i1 %exitcond.not, label %222, label %217

._crit_edge:                                      ; preds = %.lr.ph, %217, %29
  %38 = call noundef i64 @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %26), !noalias !205 ; 2 uses
  %.not.i = icmp ugt i64 %38, %32
  br i1 %.not.i, label %39, label %42, !prof !3
end_hunk_8
begin_hunk_9
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription29too_many_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %38)
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %41, ptr noundef nonnull align 8 dereferenceable(56) %23, i64 56, i1 false)
  br label %216

42:                                               ; preds = %._crit_edge
  store i64 0, ptr %22, align 8
end_hunk_9
begin_hunk_10
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %170, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %216

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread33: ; preds = %82, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !214
end_hunk_10
begin_hunk_11
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription37missing_required_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %172, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 1152921504606846976) %5)
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %173, ptr noundef nonnull align 8 dereferenceable(56) %21, i64 56, i1 false)
  br label %216

.loopexit41:                                      ; preds = %166, %157
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %174 = icmp ugt i64 %32, %5
  br i1 %174, label %196, label %175, !prof !3

175:                                              ; preds = %.loopexit41
  %176 = sub nuw nsw i64 %5, %32
end_hunk_11
begin_hunk_12
_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %185 = sub nuw i64 %.sroa.8.0.copyload.i, %.sroa.67.0.copyload.i
  %186 = freeze i64 %185                          ; 2 uses
  %xtraiter = and i64 %186, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %187 = add i64 %.sroa.67.0.copyload.i, 1        ; 2 uses
  %188 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %189 = getelementptr inbounds nuw i8, ptr %188, i64 16
  %190 = load i8, ptr %189, align 8, !range !197, !noalias !276, !noundef !8
  %191 = trunc nuw i8 %190 to i1
  br i1 %191, label %192, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit

192:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol
  %193 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %194 = load ptr, ptr %193, align 8, !noalias !276, !noundef !8
  %.not5.i.prol = icmp eq ptr %194, null
  br i1 %.not5.i.prol, label %.loopexit212, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, !prof !3

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol, %192, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %.sroa.67.012.i.unr = phi i64 [ %.sroa.67.0.copyload.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %187, %192 ], [ %187, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol ]
  %195 = icmp eq i64 %186, 1
  br i1 %195, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

196:                                              ; preds = %.loopexit41
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %32, i64 noundef range(i64 0, 1152921504606846976) %5, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #53, !noalias !277
  unreachable

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %210
  %.sroa.67.012.i = phi i64 [ %202, %210 ], [ %.sroa.67.012.i.unr, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit ] ; 4 uses
  %197 = add i64 %.sroa.67.012.i, 1               ; 2 uses
  %198 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.012.i
  %199 = getelementptr inbounds nuw i8, ptr %198, i64 16
  %200 = load i8, ptr %199, align 8, !range !197, !noalias !276, !noundef !8
  %201 = trunc nuw i8 %200 to i1
  br i1 %201, label %211, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1: ; preds = %211, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %202 = add i64 %.sroa.67.012.i, 2               ; 2 uses
  %203 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %197
  %204 = getelementptr inbounds nuw i8, ptr %203, i64 16
  %205 = load i8, ptr %204, align 8, !range !197, !noalias !276, !noundef !8
  %206 = trunc nuw i8 %205 to i1
  br i1 %206, label %207, label %210

207:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %208 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %197
  %209 = load ptr, ptr %208, align 8, !noalias !276, !noundef !8
  %.not5.i.1 = icmp eq ptr %209, null
  br i1 %.not5.i.1, label %.loopexit212, label %210, !prof !3

210:                                              ; preds = %207, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %exitcond.not.i.1 = icmp eq i64 %202, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

211:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %212 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.012.i
  %213 = load ptr, ptr %212, align 8, !noalias !276, !noundef !8
  %.not5.i = icmp eq ptr %213, null
  br i1 %.not5.i, label %.loopexit212, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1, !prof !3

.loopexit212:                                     ; preds = %211, %207, %192
  %214 = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription34missing_required_keyword_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %214, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %177, i64 noundef %176)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %215, ptr noundef nonnull align 8 dereferenceable(56) %19, i64 56, i1 false)
  br label %216

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %210, %175
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %216

216:                                              ; preds = %39, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread, %171, %.loopexit212, %.loopexit
  %.sink = phi i64 [ 1, %39 ], [ 1, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread ], [ 1, %171 ], [ 1, %.loopexit212 ], [ 0, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  ret void

217:                                              ; preds = %36
  %218 = add nuw nsw i64 %.sroa.10.074, 1
  %219 = add nuw i64 %.sroa.4.075, 1
  %220 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.10.074
  store ptr %37, ptr %220, align 8
  %221 = icmp eq i64 %34, 0
  br i1 %221, label %._crit_edge, label %.lr.ph

222:                                              ; preds = %36
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #53
  unreachable
}
end_hunk_12
