begin_hunk_0
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull align 8 dereferenceable(56) %22, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %236

.thread:                                          ; preds = %7, %28
  store i64 0, ptr %21, align 8
end_hunk_0
begin_hunk_1
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %48 = load ptr, ptr %47, align 8, !alias.scope !133, !noalias !143, !nonnull !8, !align !144 ; 3 uses
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %50 = load i64, ptr %49, align 8, !alias.scope !133, !noalias !143 ; 4 uses
  %.idx.i = mul nuw nsw i64 %50, 24
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 %.idx.i ; 2 uses
  %52 = icmp eq i64 %50, 0                        ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %54 = load ptr, ptr %53, align 8, !alias.scope !133, !noalias !143, !nonnull !8, !align !144 ; 2 uses
  %.idx19.i = shl nuw nsw i64 %25, 4
end_hunk_1
begin_hunk_2
  br i1 %85, label %.thread15.i, label %.lr.ph.i.i.us

86:                                               ; preds = %_RNCNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB7_19FunctionDescription38find_keyword_parameter_in_keyword_only0Cs7p2uQeJxui2_9deltalake.exit.i.i.us
  %87 = icmp ult i64 %.sroa.02.011.i.i.us, %50
  call void @llvm.assume(i1 %87)
  %88 = icmp samesign ult i64 %.sroa.02.011.i.i.us, %6
  br i1 %88, label %89, label %.invoke.i
end_hunk_2
begin_hunk_3
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit.i unwind label %176, !noalias !143

138:                                              ; preds = %_RNCNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB7_19FunctionDescription38find_keyword_parameter_in_keyword_only0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %139 = icmp ult i64 %.sroa.02.011.i.i, %50
  call void @llvm.assume(i1 %139)
  %140 = add i64 %.sroa.02.011.i.i, %25           ; 3 uses
  %141 = icmp ult i64 %140, %6
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %236

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread26: ; preds = %107, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !127
end_hunk_4
begin_hunk_5
  %194 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %194, ptr noundef nonnull align 8 dereferenceable(56) %20, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %236

.loopexit34:                                      ; preds = %187, %179
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %195 = icmp ugt i64 %25, %6
  br i1 %195, label %216, label %196, !prof !3

196:                                              ; preds = %.loopexit34
  %197 = sub nuw nsw i64 %6, %25
end_hunk_5
begin_hunk_6
_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %196
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %206 = sub nuw i64 %.sroa.8.0.copyload.i, %.sroa.67.0.copyload.i ; 2 uses
  %xtraiter = and i64 %206, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %207 = add i64 %.sroa.67.0.copyload.i, 1        ; 2 uses
  %208 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 16
  %210 = load i8, ptr %209, align 8, !range !197, !noalias !195, !noundef !8
  %211 = trunc nuw i8 %210 to i1
  br i1 %211, label %212, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit

212:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol
  %213 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %214 = load ptr, ptr %213, align 8, !noalias !195, !noundef !8
  %.not5.i.prol = icmp eq ptr %214, null
  br i1 %.not5.i.prol, label %.loopexit253, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, !prof !3

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol, %212, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %.sroa.67.012.i.unr = phi i64 [ %.sroa.67.0.copyload.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %207, %212 ], [ %207, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol ]
  %215 = icmp eq i64 %206, 1
  br i1 %215, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

216:                                              ; preds = %.loopexit34
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %25, i64 noundef range(i64 0, 1152921504606846976) %6, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #53, !noalias !196
  unreachable

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %230
  %.sroa.67.012.i = phi i64 [ %222, %230 ], [ %.sroa.67.012.i.unr, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit ] ; 4 uses
  %217 = add i64 %.sroa.67.012.i, 1               ; 2 uses
  %218 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.012.i
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 16
  %220 = load i8, ptr %219, align 8, !range !197, !noalias !195, !noundef !8
  %221 = trunc nuw i8 %220 to i1
  br i1 %221, label %231, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1: ; preds = %231, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %222 = add i64 %.sroa.67.012.i, 2               ; 2 uses
  %223 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %217
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 16
  %225 = load i8, ptr %224, align 8, !range !197, !noalias !195, !noundef !8
  %226 = trunc nuw i8 %225 to i1
  br i1 %226, label %227, label %230

227:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %228 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %217
  %229 = load ptr, ptr %228, align 8, !noalias !195, !noundef !8
  %.not5.i.1 = icmp eq ptr %229, null
  br i1 %.not5.i.1, label %.loopexit253, label %230, !prof !3

230:                                              ; preds = %227, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %exitcond.not.i.1 = icmp eq i64 %222, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

231:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %232 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.012.i
  %233 = load ptr, ptr %232, align 8, !noalias !195, !noundef !8
  %.not5.i = icmp eq ptr %233, null
  br i1 %.not5.i, label %.loopexit253, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1, !prof !3

.loopexit253:                                     ; preds = %231, %227, %212
  %234 = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription34missing_required_keyword_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %234, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %198, i64 noundef %197)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %235, ptr noundef nonnull align 8 dereferenceable(56) %18, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %236

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %230, %196
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i64 0, ptr %0, align 8
  br label %236

236:                                              ; preds = %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread, %192, %.loopexit253, %30, %.loopexit
  ret void
}

end_hunk_6
begin_hunk_7
  %33 = icmp eq i64 %32, 0                        ; 2 uses
  br i1 %33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %29, %216
  %.sroa.4.075 = phi i64 [ %218, %216 ], [ %.sroa.04.sroa.4.0.copyload, %29 ] ; 3 uses
  %.sroa.10.074 = phi i64 [ %217, %216 ], [ 0, %29 ] ; 3 uses
  %.sroa.7.073 = phi i64 [ %34, %216 ], [ %32, %29 ]
  %34 = add i64 %.sroa.7.073, -1                  ; 2 uses
  %35 = icmp ult i64 %.sroa.4.075, %.sroa.04.sroa.5.0.copyload
  br i1 %35, label %36, label %._crit_edge
end_hunk_7
begin_hunk_8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.sroa.0.0.copyload) ]
  %37 = call noundef nonnull ptr @_RNvMs8_NtNtCsgbCypRs12E4_4pyo35types5tupleNtB5_21BorrowedTupleIterator8get_item(ptr noundef nonnull %.sroa.04.sroa.0.0.copyload, i64 noundef %.sroa.4.075), !noalias !198
  %exitcond.not = icmp eq i64 %.sroa.10.074, %5
  br i1 %exitcond.not, label %221, label %216

._crit_edge:                                      ; preds = %.lr.ph, %216, %29
  %38 = call noundef i64 @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %26), !noalias !205 ; 2 uses
  %.not.i = icmp ugt i64 %38, %32
  br i1 %.not.i, label %39, label %42, !prof !3
end_hunk_8
begin_hunk_9
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription29too_many_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %40, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %38)
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %41, ptr noundef nonnull align 8 dereferenceable(56) %23, i64 56, i1 false)
  br label %215

42:                                               ; preds = %._crit_edge
  store i64 0, ptr %22, align 8
end_hunk_9
begin_hunk_10
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %170, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %215

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread33: ; preds = %82, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !214
end_hunk_10
begin_hunk_11
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription37missing_required_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %172, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 1152921504606846976) %5)
  %173 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %173, ptr noundef nonnull align 8 dereferenceable(56) %21, i64 56, i1 false)
  br label %215

.loopexit41:                                      ; preds = %166, %157
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %174 = icmp ugt i64 %32, %5
  br i1 %174, label %195, label %175, !prof !3

175:                                              ; preds = %.loopexit41
  %176 = sub nuw nsw i64 %5, %32
end_hunk_11
begin_hunk_12
_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %185 = sub nuw i64 %.sroa.8.0.copyload.i, %.sroa.67.0.copyload.i ; 2 uses
  %xtraiter = and i64 %185, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %186 = add i64 %.sroa.67.0.copyload.i, 1        ; 2 uses
  %187 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 16
  %189 = load i8, ptr %188, align 8, !range !197, !noalias !276, !noundef !8
  %190 = trunc nuw i8 %189 to i1
  br i1 %190, label %191, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit

191:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol
  %192 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %193 = load ptr, ptr %192, align 8, !noalias !276, !noundef !8
  %.not5.i.prol = icmp eq ptr %193, null
  br i1 %.not5.i.prol, label %.loopexit212, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, !prof !3

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol, %191, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %.sroa.67.012.i.unr = phi i64 [ %.sroa.67.0.copyload.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %186, %191 ], [ %186, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol ]
  %194 = icmp eq i64 %185, 1
  br i1 %194, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

195:                                              ; preds = %.loopexit41
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %32, i64 noundef range(i64 0, 1152921504606846976) %5, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #53, !noalias !277
  unreachable

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %209
  %.sroa.67.012.i = phi i64 [ %201, %209 ], [ %.sroa.67.012.i.unr, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit ] ; 4 uses
  %196 = add i64 %.sroa.67.012.i, 1               ; 2 uses
  %197 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.012.i
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 16
  %199 = load i8, ptr %198, align 8, !range !197, !noalias !276, !noundef !8
  %200 = trunc nuw i8 %199 to i1
  br i1 %200, label %210, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1: ; preds = %210, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %201 = add i64 %.sroa.67.012.i, 2               ; 2 uses
  %202 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %196
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %204 = load i8, ptr %203, align 8, !range !197, !noalias !276, !noundef !8
  %205 = trunc nuw i8 %204 to i1
  br i1 %205, label %206, label %209

206:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %207 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %196
  %208 = load ptr, ptr %207, align 8, !noalias !276, !noundef !8
  %.not5.i.1 = icmp eq ptr %208, null
  br i1 %.not5.i.1, label %.loopexit212, label %209, !prof !3

209:                                              ; preds = %206, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %exitcond.not.i.1 = icmp eq i64 %201, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

210:                                              ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %211 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.012.i
  %212 = load ptr, ptr %211, align 8, !noalias !276, !noundef !8
  %.not5.i = icmp eq ptr %212, null
  br i1 %.not5.i, label %.loopexit212, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1, !prof !3

.loopexit212:                                     ; preds = %210, %206, %191
  %213 = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription34missing_required_keyword_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %213, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %177, i64 noundef %176)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %214 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %214, ptr noundef nonnull align 8 dereferenceable(56) %19, i64 56, i1 false)
  br label %215

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %209, %175
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %215

215:                                              ; preds = %39, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread, %171, %.loopexit212, %.loopexit
  %.sink = phi i64 [ 1, %39 ], [ 1, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread ], [ 1, %171 ], [ 1, %.loopexit212 ], [ 0, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  ret void

216:                                              ; preds = %36
  %217 = add nuw nsw i64 %.sroa.10.074, 1
  %218 = add nuw i64 %.sroa.4.075, 1
  %219 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.10.074
  store ptr %37, ptr %219, align 8
  %220 = icmp eq i64 %34, 0
  br i1 %220, label %._crit_edge, label %.lr.ph

221:                                              ; preds = %36
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #53
  unreachable
}
end_hunk_12
