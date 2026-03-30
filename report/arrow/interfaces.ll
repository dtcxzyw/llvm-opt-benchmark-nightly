begin_hunk_0
%"class.arrow::internal::AlignedStorage.106" = type { [16 x i8] }
%"class.arrow::Result.88" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.91" }
%"class.arrow::internal::AlignedStorage.91" = type { [24 x i8] }
%"class.std::vector.64" = type { %"struct.std::_Vector_base.65" }
%"struct.std::_Vector_base.65" = type { %"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.arrow::io::ReadRange" = type { i64, i64 }
%"class.arrow::Result.159" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.162", [7 x i8] }>
%"class.arrow::internal::AlignedStorage.162" = type { [1 x i8] }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.169", ptr }
end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.88") align 8 captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.64", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !297    ; 27 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !297
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 11 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !299
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !300  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !300
end_hunk_1
begin_hunk_2
  br i1 %i.bc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i.i.i32.i
  %.sroa.0.0.copyload.i.i.i.i.i = load <2 x i64>, ptr %.sroa.0.018.i.ptr.i.i.i.i, align 8, !noalias !301
  %i.bd = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i.i, 16
  br i1 %i.bd, label %bb.q, label %bb.r, !prof !81

end_hunk_2
begin_hunk_3
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.a, align 8, !noalias !301
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i.i32.i
end_hunk_3
begin_hunk_4
  br i1 %i.bp, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.sroa.0.0.copyload.i43.i.i.i.i = load <2 x i64>, ptr %.sroa.0.018.i27.i.i.i.i, align 8, !noalias !301
  %i.bq = ptrtoint ptr %.sroa.0.018.i27.i.i.i.i to i64
  %i.br = sub i64 %i.bq, %i.m                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 4                 ; 2 uses
end_hunk_4
begin_hunk_5
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  store <2 x i64> %.sroa.0.0.copyload.i43.i.i.i.i, ptr %i.a, align 8, !noalias !301
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i26.i.i.i.i
end_hunk_5
begin_hunk_6

bb.ae:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.dc = sub nuw nsw i64 %i.cz, %i.da
  invoke void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.dc)
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %bb.ae
  %.pre78.i = load ptr, ptr %4, align 8, !tbaa !201, !noalias !301
  %.pre79.i = load ptr, ptr %i.b, align 8, !tbaa !201, !noalias !301
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

end_hunk_6
begin_hunk_7
  store ptr %.sroa.12.4.i, ptr %i.fn, align 8, !tbaa !299, !alias.scope !301
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.21.4.i, ptr %i.fo, align 8, !tbaa !300, !alias.scope !301
  %.pr = load ptr, ptr %4, align 8, !tbaa !297    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit, label %bb.ay

end_hunk_7
begin_hunk_8

.body:                                            ; preds = %bb.aw, %bb.ax, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.ft, %bb.az ], [ %.pn.i, %bb.ax ], [ %.pn.i, %bb.aw ]
  %i.fu = load ptr, ptr %4, align 8, !tbaa !297   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6, label %bb.ba

end_hunk_8
begin_hunk_9
  %6 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %7 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %8 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %.fr33 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
end_hunk_9
begin_hunk_10
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
end_hunk_10
begin_hunk_11
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !307
end_hunk_11
begin_hunk_12
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.by = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bz = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
end_hunk_12
begin_hunk_13
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %.sroa.014.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !307
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i, !llvm.loop !334

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit: ; preds = %bb.u
end_hunk_13
