inline.NumInlined: 440
inline.NumDeleted: 193
begin_hunk_0_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  %9 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %11 = alloca %"class.std::vector", align 8      ; 14 uses
  %12 = alloca %"class.std::vector", align 8      ; 11 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !7 ; 2 uses
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.a, label %.critedge, label %_ZNK6google8protobuf8compiler4rust12RelativePath11IsDirectoryEv.exit
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a

_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %i.w = load ptr, ptr %12, align 8, !tbaa !29    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = icmp ne ptr %i.w, %i.y
  %.sroa.0.08.i.i.i40 = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  br i1 %i.ac, label %.lr.ph.i.i.i42, label %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit46, !llvm.loop !43

_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit46: ; preds = %.lr.ph.i.i.i42, %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit
  %i.ad = load ptr, ptr %11, align 8, !tbaa !29   ; 6 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %.promoted
  %.pre214 = load ptr, ptr %12, align 8, !tbaa !29 ; 5 uses
  %.pre = load ptr, ptr %i.x, align 8             ; 2 uses
  br i1 %i.ae, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread, label %.lr.ph

end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  br i1 %i.ao, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread, label %.lr.ph, !llvm.loop !45

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, %.lr.ph, %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit46
  %i.ap = phi ptr [ %i.ad, %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit46 ], [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.ag, %bb.h ], [ %i.ag, %.lr.ph ], [ %i.ad, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ] ; 2 uses
  %i.aq = phi ptr [ %.pre, %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit46 ], [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %i.ah, %bb.h ], [ %.pre214, %.lr.ph ], [ %i.ak, %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit ] ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.ad to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 4
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = ptrtoint ptr %.pre214 to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 4
end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.az
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.k
  %.sroa.32.4 = phi ptr [ %i.bd, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.k ] ; 2 uses
  %.sroa.16.3 = phi ptr [ %i.bc, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %bb.k ] ; 4 uses
  %.not148185 = icmp eq ptr %.pre214, %i.aq
  br i1 %.not148185, label %.preheader, label %.lr.ph190

.preheader.loopexit:                              ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit
  %.pre215 = load ptr, ptr %i.h, align 8, !tbaa !31
  %.pre216 = load ptr, ptr %11, align 8, !tbaa !46
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit
  %i.be = phi ptr [ %i.ad, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ], [ %.pre216, %.preheader.loopexit ] ; 2 uses
  %i.bf = phi ptr [ %i.ap, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ], [ %.pre215, %.preheader.loopexit ] ; 2 uses
  %.sroa.32.0.lcssa = phi ptr [ %.sroa.32.4, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ], [ %.sroa.32.5, %.preheader.loopexit ] ; 2 uses
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.16.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ], [ %.sroa.16.4, %.preheader.loopexit ] ; 2 uses
  %.sroa.0109.0.lcssa = phi ptr [ %.sroa.16.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ], [ %.sroa.0109.5, %.preheader.loopexit ] ; 2 uses
  %.not202 = icmp eq ptr %i.bf, %i.be
  br i1 %.not202, label %._crit_edge, label %.lr.ph198

.body.thread143:                                  ; preds = %bb.j, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit.i
end_hunk_4
begin_hunk_5_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  %.sroa.0109.0189 = phi ptr [ %.sroa.0109.5, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.16.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ] ; 8 uses
  %.sroa.16.0188 = phi ptr [ %.sroa.16.4, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.16.3, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ] ; 8 uses
  %.sroa.32.0187 = phi ptr [ %.sroa.32.5, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %.sroa.32.4, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ] ; 2 uses
  %.sroa.0106.0186 = phi ptr [ %i.bw, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_.exit ], [ %.pre214, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE7reserveEm.exit ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.16.0188, %.sroa.32.0187
  br i1 %.not.i, label %bb.m, label %bb.l

end_hunk_5
begin_hunk_6_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  %.sroa.0109.5 = phi ptr [ %i.br, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0109.0189, %bb.l ] ; 2 uses
  %.sroa.16.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0106.0186, i64 16 ; 2 uses
  %.not148 = icmp eq ptr %i.bw, %i.aq
  br i1 %.not148, label %.preheader.loopexit, label %.lr.ph190

.loopexit149:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit151 = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  br label %.body

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit, %.preheader
  %.sroa.32.1.lcssa = phi ptr [ %.sroa.32.0.lcssa, %.preheader ], [ %.sroa.32.6, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0.lcssa, %.preheader ], [ %.sroa.16.5, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 8 uses
  %.sroa.0109.1.lcssa = phi ptr [ %.sroa.0109.0.lcssa, %.preheader ], [ %.sroa.0109.6, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ] ; 12 uses
  %i.bx = icmp ne ptr %.sroa.0109.1.lcssa, %.sroa.16.1.lcssa
  %.sroa.0.08.i.i.i50 = getelementptr inbounds i8, ptr %.sroa.16.1.lcssa, i64 -16 ; 2 uses
  %i.by = icmp ult ptr %.sroa.0109.1.lcssa, %.sroa.0.08.i.i.i50
end_hunk_7
begin_hunk_8_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a
  br i1 %i.ca, label %.lr.ph.i.i.i52, label %_ZN4absl12lts_202505129c_reverseISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEEvRT_.exit56, !llvm.loop !43

.lr.ph198:                                        ; preds = %.preheader, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit
  %13 = phi ptr [ %15, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.be, %.preheader ]
  %14 = phi ptr [ %16, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %i.bf, %.preheader ]
  %.0197 = phi i64 [ %i.cq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ 0, %.preheader ]
  %.sroa.0109.1196 = phi ptr [ %.sroa.0109.6, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0109.0.lcssa, %.preheader ] ; 8 uses
  %.sroa.16.1195 = phi ptr [ %.sroa.16.5, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.16.0.lcssa, %.preheader ] ; 9 uses
  %.sroa.32.1194 = phi ptr [ %.sroa.32.6, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.32.0.lcssa, %.preheader ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16.1195, %.sroa.32.1194
  br i1 %.not.i.i, label %bb.q, label %bb.p

end_hunk_8
begin_hunk_9_@_ZNK6google8protobuf8compiler4rust12RelativePath8RelativeB5cxx11ERKS3_:bb.a

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  %.pre217 = load ptr, ptr %i.h, align 8, !tbaa !31
  %.pre218 = load ptr, ptr %11, align 8, !tbaa !46
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.p
  %15 = phi ptr [ %.pre218, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %13, %bb.p ] ; 2 uses
  %16 = phi ptr [ %.pre217, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %14, %bb.p ] ; 2 uses
  %.sroa.32.6 = phi ptr [ %i.cp, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.32.1194, %bb.p ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.16.1195, %bb.p ]
  %.sroa.0109.6 = phi ptr [ %i.cl, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0109.1196, %bb.p ] ; 2 uses
  %.sroa.16.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.cq = add nuw i64 %.0197, 1                   ; 2 uses
  %i.cr = ptrtoint ptr %16 to i64
  %i.cs = ptrtoint ptr %15 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 4
  %i.cv = icmp ult i64 %i.cq, %i.cu
end_hunk_9
