begin_hunk_0
%"class.arrow::internal::AlignedStorage.106" = type { [16 x i8] }
%"class.arrow::Result.88" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.91" }
%"class.arrow::internal::AlignedStorage.91" = type { [24 x i8] }
%"struct.arrow::io::ReadRange" = type { i64, i64 }
%"class.std::vector.64" = type { %"struct.std::_Vector_base.65" }
%"struct.std::_Vector_base.65" = type { %"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::io::ReadRange, std::allocator<arrow::io::ReadRange>>::_Vector_impl_data" }
end_hunk_0
begin_hunk_1
  store ptr %i.as, ptr %i.cb, align 8, !tbaa !168, !alias.scope !189, !noalias !181
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.au, ptr %i.cc, align 8, !tbaa !26, !alias.scope !189, !noalias !181
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %3, ptr %i.cd, align 8, !noalias !181
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %4, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !181
end_hunk_1
begin_hunk_2
  store ptr null, ptr %i.cc, align 8, !tbaa !26, !noalias !181
  store ptr %i.au, ptr %i.cw, align 8, !tbaa !26, !noalias !181
  store ptr null, ptr %i.cb, align 8, !tbaa !168, !noalias !181
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !noalias !181
  %i.cy = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  store ptr %i.ca, ptr %i.cy, align 8, !tbaa !63, !noalias !181
end_hunk_2
begin_hunk_3

bb.ab:                                            ; preds = %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false), !noalias !181
  %22 = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !noalias !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false), !noalias !181
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEEE", i64 16), ptr %i.da, align 8, !tbaa !30, !noalias !181
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.as, ptr %i.db, align 8, !tbaa !168, !noalias !181
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %i.au, ptr %i.dc, align 8, !tbaa !26, !noalias !181
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store ptr %i.ca, ptr %i.dd, align 8, !tbaa !63, !noalias !181
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 56
end_hunk_3
begin_hunk_4
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.88") align 8 captures(none) %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %5 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %6 = alloca %"class.std::vector.64", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !297    ; 27 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !297
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299  ; 11 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !299
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !300  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !300
end_hunk_4
begin_hunk_5
  br i1 %i.bc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i.i.i32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i.ptr.i.i.i.i, i64 16, i1 false), !tbaa.struct !307, !noalias !301
  %i.bd = icmp samesign ugt i64 %.sroa.0.018.i.idx.i.i.i.i, 16
  br i1 %i.bd, label %bb.q, label %bb.r, !prof !81

end_hunk_5
begin_hunk_6
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !307, !noalias !301
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i.i32.i
end_hunk_6
begin_hunk_7
  br i1 %i.bp, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.i26.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018.i27.i.i.i.i, i64 16, i1 false), !tbaa.struct !307, !noalias !301
  %i.bq = ptrtoint ptr %.sroa.0.018.i27.i.i.i.i to i64
  %i.br = sub i64 %i.bq, %i.m                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 4                 ; 2 uses
end_hunk_7
begin_hunk_8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !307, !noalias !301
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i26.i.i.i.i
end_hunk_8
begin_hunk_9

bb.ae:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.dc = sub nuw nsw i64 %i.cz, %i.da
  invoke void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.dc)
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %bb.ae
  %.pre78.i = load ptr, ptr %6, align 8, !tbaa !201, !noalias !301
  %.pre79.i = load ptr, ptr %i.b, align 8, !tbaa !201, !noalias !301
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

end_hunk_9
begin_hunk_10
  store ptr %.sroa.12.4.i, ptr %i.fn, align 8, !tbaa !299, !alias.scope !301
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.21.4.i, ptr %i.fo, align 8, !tbaa !300, !alias.scope !301
  %.pr = load ptr, ptr %6, align 8, !tbaa !297    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit, label %bb.ay

end_hunk_10
begin_hunk_11

.body:                                            ; preds = %bb.aw, %bb.ax, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.ft, %bb.az ], [ %.pn.i, %bb.ax ], [ %.pn.i, %bb.aw ]
  %i.fu = load ptr, ptr %6, align 8, !tbaa !297   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6, label %bb.ba

end_hunk_11
begin_hunk_12
; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %3 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %4 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %5 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %6 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %7 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %8 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %9 = alloca %"struct.arrow::io::ReadRange", align 8 ; 4 uses
  %.fr33 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr33 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_12
begin_hunk_13
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bx = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
end_hunk_13
begin_hunk_14
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.bz = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
end_hunk_14
begin_hunk_15
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, i64 16, i1 false), !tbaa.struct !307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i, !llvm.loop !334

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit: ; preds = %bb.u
end_hunk_15
