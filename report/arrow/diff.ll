inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  %5 = alloca %"class.std::vector.245", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Result.11", align 8  ; 13 uses
  %7 = alloca %"class.std::function", align 8     ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  %9 = alloca %"class.std::vector.245", align 8   ; 4 uses
  %10 = alloca %struct.DenseImpl, align 8         ; 7 uses
  %11 = alloca %"class.std::vector.245", align 8  ; 4 uses
  %12 = alloca %"class.std::function", align 16   ; 10 uses
  %13 = alloca %"class.std::function", align 16   ; 10 uses
  %14 = alloca %"class.std::function", align 16   ; 10 uses
  %15 = alloca %"class.std::function", align 16   ; 10 uses
  %16 = alloca %"class.std::function", align 16   ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 31 uses
  %51 = alloca %"class.arrow::(anonymous namespace)::MakeFormatterImpl", align 16 ; 71 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26, !noalias !88
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit7

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !103
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !106
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !109
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !112
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !115
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !118
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !121
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !124
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !127
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !130
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !133
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !136
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !139
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !142
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !145
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !148
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !151
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !154
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !157
  br label %.thread392

bb.e:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit7

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !167
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !170
  br label %.thread392

bb.h:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  store i64 5, ptr %i.ad, align 8, !tbaa !177, !noalias !178
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  store i8 0, ptr %i.ae, align 1, !tbaa !70, !noalias !178
  store ptr %i.ab, ptr %51, align 16, !noalias !173
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26, !noalias !173
end_hunk_5
begin_hunk_6_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  store i64 2, ptr %i.ak, align 8, !tbaa !177, !noalias !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  store i8 0, ptr %i.al, align 2, !tbaa !70, !noalias !184
  store ptr %i.ai, ptr %51, align 16, !noalias !181
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 0, ptr %.sroa.4302.0..sroa_idx, align 8, !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26, !noalias !181
end_hunk_6
begin_hunk_7_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  store i64 2, ptr %i.ar, align 8, !tbaa !177, !noalias !190
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  store i8 0, ptr %i.as, align 2, !tbaa !70, !noalias !190
  store ptr %i.ap, ptr %51, align 16, !noalias !187
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 0, ptr %.sroa.4305.0..sroa_idx, align 8, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26, !noalias !187
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_24MonthDayNanoIntervalTypeE.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !193
  br label %.thread392

bb.k:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit7

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_19DayTimeIntervalTypeE.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !203
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !206
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !209
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !212
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !215
  br label %.thread392

.noexc17:                                         ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i: ; preds = %bb.s, %.noexc146
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ca, ptr %12, align 16, !tbaa !235, !noalias !218
  %.sroa.0.i.i.i143.sroa.0.0.copyload = load <2 x i64>, ptr %12, align 16, !tbaa !70, !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69, !noalias !218
  store <2 x i64> %.sroa.0.i.i.i143.sroa.0.0.copyload, ptr %51, align 16, !tbaa !70, !noalias !218
  %i.cf = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.ch = load <2 x ptr>, ptr %i.cf, align 16, !tbaa !237, !noalias !218
  %i.ci = load ptr, ptr %i.cf, align 16, !tbaa !237, !noalias !218 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.cf, align 16, !tbaa !237, !noalias !218
  store <2 x ptr> %i.ch, ptr %i.ce, align 16, !tbaa !237, !noalias !218
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.cg, align 8, !tbaa !237, !noalias !218
  %.not.i.i145 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i145, label %.thread, label %bb.t
end_hunk_9
begin_hunk_10_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i: ; preds = %bb.at, %.noexc117
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.eq, ptr %13, align 16, !tbaa !253, !noalias !242
  %.sroa.0.i.i.i114.sroa.0.0.copyload = load <2 x i64>, ptr %13, align 16, !tbaa !70, !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69, !noalias !242
  store <2 x i64> %.sroa.0.i.i.i114.sroa.0.0.copyload, ptr %51, align 16, !tbaa !70, !noalias !242
  %i.ev = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.ex = load <2 x ptr>, ptr %i.ev, align 16, !tbaa !237, !noalias !242
  %i.ey = load ptr, ptr %i.ev, align 16, !tbaa !237, !noalias !242 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.ev, align 16, !tbaa !237, !noalias !242
  store <2 x ptr> %i.ex, ptr %i.eu, align 16, !tbaa !237, !noalias !242
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.ew, align 8, !tbaa !237, !noalias !242
  %.not.i.i116 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i116, label %.thread277, label %bb.au
end_hunk_10
begin_hunk_11_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i: ; preds = %bb.ca, %.noexc88
  %i.ig = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ic, ptr %14, align 16, !tbaa !284, !noalias !273
  %.sroa.0.i.i.i85.sroa.0.0.copyload = load <2 x i64>, ptr %14, align 16, !tbaa !70, !noalias !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69, !noalias !273
  store <2 x i64> %.sroa.0.i.i.i85.sroa.0.0.copyload, ptr %51, align 16, !tbaa !70, !noalias !273
  %i.ih = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.ij = load <2 x ptr>, ptr %i.ih, align 16, !tbaa !237, !noalias !273
  %i.ik = load ptr, ptr %i.ih, align 16, !tbaa !237, !noalias !273 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.ih, align 16, !tbaa !237, !noalias !273
  store <2 x ptr> %i.ij, ptr %i.ig, align 16, !tbaa !237, !noalias !273
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.ii, align 8, !tbaa !237, !noalias !273
  %.not.i.i87 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i87, label %.thread282, label %bb.cb
end_hunk_11
begin_hunk_12_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i: ; preds = %bb.db, %.noexc61
  %i.kw = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ks, ptr %15, align 16, !tbaa !301, !noalias !290
  %.sroa.0.i.i.i59.sroa.0.0.copyload = load <2 x i64>, ptr %15, align 16, !tbaa !70, !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %15, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69, !noalias !290
  store <2 x i64> %.sroa.0.i.i.i59.sroa.0.0.copyload, ptr %51, align 16, !tbaa !70, !noalias !290
  %i.kx = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.kz = load <2 x ptr>, ptr %i.kx, align 16, !tbaa !237, !noalias !290
  %i.la = load ptr, ptr %i.kx, align 16, !tbaa !237, !noalias !290 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, ptr %i.kx, align 16, !tbaa !237, !noalias !290
  store <2 x ptr> %i.kz, ptr %i.kw, align 16, !tbaa !237, !noalias !290
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.ky, align 8, !tbaa !237, !noalias !290
  %.not.i.i60 = icmp eq ptr %i.la, null
  br i1 %.not.i.i60, label %.thread287, label %bb.dc
end_hunk_12
begin_hunk_13_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a

_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv.exit.thread: ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %16, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.nh, i64 16, i1 false), !tbaa.struct !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ng, i8 0, i64 16, i1 false), !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %i.nh, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i: ; preds = %_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv.exit.thread, %bb.eh
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %.pr.i, i64 %indvars.iv ; 4 uses
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %16, align 16, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.oc, i64 16, i1 false), !tbaa.struct !69
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.oc, align 8, !tbaa !70
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.of = load <2 x ptr>, ptr %i.od, align 8, !tbaa !237
  %i.og = load ptr, ptr %i.od, align 8, !tbaa !237 ; 2 uses
  store ptr %i.ob, ptr %i.od, align 8, !tbaa !237
  store <2 x ptr> %i.of, ptr %i.nj, align 16, !tbaa !237
  store ptr %i.oa, ptr %i.oe, align 8, !tbaa !237
  %.not.i.i37 = icmp eq ptr %i.og, null
  br i1 %.not.i.i37, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.thread, label %bb.ei
end_hunk_13
begin_hunk_14_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a

_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv.exit.thread.i: ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 24, i1 false), !noalias !330
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i.i

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.qf, i64 16, i1 false), !tbaa.struct !69, !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qe, i8 0, i64 16, i1 false), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.qf, i64 16, i1 false), !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false), !noalias !330
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i.i

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i.i: ; preds = %bb.fd, %_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv.exit.thread.i
  %.pn.i = sext i8 %i.qr to i64
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.po, i64 %.pn.i ; 4 uses
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !70, !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.rc, i64 16, i1 false), !tbaa.struct !69
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.rc, align 8, !tbaa !70
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.rf = load <2 x ptr>, ptr %i.rd, align 8, !tbaa !237
  %i.rg = load ptr, ptr %i.rd, align 8, !tbaa !237 ; 2 uses
  store ptr %i.rb, ptr %i.rd, align 8, !tbaa !237
  store <2 x ptr> %i.rf, ptr %i.qh, align 16, !tbaa !237, !noalias !330
  store ptr %i.ra, ptr %i.re, align 8, !tbaa !237
  %.not.i.i.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.thread.i, label %bb.fe
end_hunk_14
begin_hunk_15_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.se, align 8, !tbaa !315
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store ptr %i.pp, ptr %i.sf, align 8, !tbaa !314
  store ptr %i.sc, ptr %3, align 16, !tbaa !345, !noalias !330
  %.sroa.0.i.i.i35.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !70, !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69, !noalias !330
  store <2 x i64> %.sroa.0.i.i.i35.i.sroa.0.0.copyload, ptr %51, align 16, !tbaa !70, !noalias !330
  %i.sg = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.si = load <2 x ptr>, ptr %i.sg, align 16, !tbaa !237, !noalias !330
  %i.sj = load ptr, ptr %i.sg, align 16, !tbaa !237, !noalias !330 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_9UnionTypeEE10SparseImplE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.sg, align 16, !tbaa !237, !noalias !330
  store <2 x ptr> %i.si, ptr %i.sd, align 16, !tbaa !237, !noalias !330
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_9UnionTypeEE10SparseImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.sh, align 8, !tbaa !237, !noalias !330
  %.not.i.i36.i = icmp eq ptr %i.sj, null
  br i1 %.not.i.i36.i, label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit.i, label %bb.fo
end_hunk_15
begin_hunk_16_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.su, align 8, !tbaa !315
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  store ptr %i.pp, ptr %i.sv, align 8, !tbaa !314
  store ptr %i.ss, ptr %2, align 16, !tbaa !347, !noalias !330
  %.sroa.0.i.i.i39.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !70, !noalias !330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69, !noalias !330
  store <2 x i64> %.sroa.0.i.i.i39.i.sroa.0.0.copyload, ptr %51, align 16, !tbaa !70, !noalias !330
  %i.sw = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.sy = load <2 x ptr>, ptr %i.sw, align 16, !tbaa !237, !noalias !330
  %i.sz = load ptr, ptr %i.sw, align 16, !tbaa !237, !noalias !330 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_9UnionTypeEE9DenseImplE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.sw, align 16, !tbaa !237, !noalias !330
  store <2 x ptr> %i.sy, ptr %i.st, align 16, !tbaa !237, !noalias !330
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_9UnionTypeEE9DenseImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.sx, align 8, !tbaa !237, !noalias !330
  %.not.i.i40.i = icmp eq ptr %i.sz, null
  br i1 %.not.i.i40.i, label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit63.i, label %bb.ft
end_hunk_16
begin_hunk_17_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  %.phi.trans.insert307 = getelementptr inbounds nuw i8, ptr %51, i64 24
  %.pre308 = load ptr, ptr %.phi.trans.insert307, align 8, !tbaa !62
  %.phi.trans.insert309 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %.pre310 = load ptr, ptr %.phi.trans.insert309, align 16, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26, !noalias !88
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
end_hunk_17
begin_hunk_18_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
  %i.uz = phi ptr [ %i.ur, %.thread392 ], [ %.pre310, %bb.gm ]
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.va, ptr noundef nonnull align 16 dereferenceable(32) %51, i64 16, i1 false), !tbaa.struct !69
  store ptr %i.uz, ptr %i.vb, align 8, !tbaa !57
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit

_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE.exit: ; preds = %bb.gl, %bb.gk, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26, !noalias !88
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %51, i64 16
  %.pre172 = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre172, null
  br i1 %.not.i.i, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit, label %bb.go

end_hunk_18
begin_hunk_19_@_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE:bb.a
.body:                                            ; preds = %bb.gq, %bb.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i, %bb.aj, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i, %bb.cr, %bb.ds, %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i ], [ %i.ua, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i ], [ %.pn9.i.i, %bb.aj ], [ %.pn9.i148.i, %bb.bk ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i ], [ %.pn9.i160.i, %bb.cr ], [ %.pn9.i162.i, %bb.ds ], [ %.pn24.pn.i.i, %bb.es ], [ %i.tp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i ], [ %i.vf, %bb.gq ], [ %.pn28.pn.i, %bb.fy ]
  %i.vg = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.vh = load ptr, ptr %i.vg, align 16, !tbaa !57 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i2, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit3, label %bb.gr

end_hunk_19
begin_hunk_20_@_ZNK5arrow18FixedSizeListArray6valuesEv
; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSIZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplEENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSF_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_20
begin_hunk_21_@_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSIZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplEENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSF_:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !314
  store ptr %i.g, ptr %i.e, align 8, !tbaa !314
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %2, align 16, !tbaa !869
  %.sroa.0.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !69
  store <2 x i64> %.sroa.0.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !237
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !237  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.h, align 8, !tbaa !237
  store <2 x ptr> %i.j, ptr %i.a, align 16, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_, ptr %i.i, align 8, !tbaa !237
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b
end_hunk_21
