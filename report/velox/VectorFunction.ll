inline.NumInlined: 1645
inline.NumDeleted: 941
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !360  ; 26 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.t = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 4                   ; 3 uses
  %i.w = icmp ugt i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.y

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RKT0_.exit, label %bb.n, !llvm.loop !366

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE16_Temporary_valueC2IJRKS5_EEEPS7_DpOT_.exit
  %i.cv = sub nuw i64 %2, %i.v                    ; 14 uses
  %.not7.i.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIKN8facebook5velox4TypeEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.neg349 = add nsw i64 %i.v, 1
  %xtraiter = and i64 %i.cv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a
  %.lcssa348.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.split.preheader ], [ %i.do, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.i.i.split.preheader ], [ %i.do, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dn, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %i.dp = icmp eq i64 %2, %.neg349
  br i1 %i.dp, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIKN8facebook5velox4TypeEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split.preheader.new

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.us
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a
  br label %.lr.ph.i.i.i.i.i72

_ZSt22__uninitialized_move_aIPSt10shared_ptrIKN8facebook5velox4TypeEES6_SaIS5_EET0_T_S9_S8_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIKN8facebook5velox4TypeEEmS5_S5_ET_S7_T0_RKT1_RSaIT2_E.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.u
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !148
  br label %_ZSt4fillIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RKT0_.exit

end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_:bb.a
  br i1 %i.fh, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i72, !llvm.loop !379

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i72, %middle.block227
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.u
  store ptr %i.fi, ptr %i.d, align 8, !tbaa !148
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.af
end_hunk_5
begin_hunk_6_@_ZNSt19_Sp_counted_deleterIPN8facebook5velox4exec14VectorFunctionESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook5velox4exec14VectorFunctionEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS3_17VectorFunctionArgESaISF_EERKNS2_4core11QueryConfigEEZNS3_22registerVectorFunctionESD_SE_IS0_INS3_17FunctionSignatureEESaISQ_EESt10unique_ptrIS4_St14default_deleteIS4_EENS3_22VectorFunctionMetadataEbE3$_0E9_M_invokeERKSt9_Any_dataSD_SJ_SN_"(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.38") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nonnull readnone align 8 captures(none) %2, ptr nonnull readnone align 8 captures(none) %3, ptr nonnull readnone align 8 captures(none) %4) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !82    ; 2 uses
end_hunk_6
begin_hunk_7_@llvm.umax.i64
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_7
