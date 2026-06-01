inline.NumInlined: 8589
inline.NumDeleted: 3289
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIjEeqES1_:bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow24MakeUnifiedDiffFormatterERKNS_8DataTypeEPSo(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.11", align 8  ; 13 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  store i64 %i.d, ptr %i.e, align 8, !tbaa !52
  store ptr @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E9_M_invokeERKSt9_Any_dataS4_S4_S4_", ptr %i.g, align 8, !tbaa !54
  store ptr @"_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_EZNS0_24MakeUnifiedDiffFormatterERKNS0_8DataTypeEPSoE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr %i.f, align 8, !tbaa !57
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.h = load ptr, ptr %3, align 8, !tbaa !58
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62, !noalias !64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57, !noalias !64 ; 3 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread, label %bb.e

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, i8 0, i64 32, i1 false)
  br label %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS2_EE.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i8 0, i64 16, i1 false)
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  br label %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS2_EE.exit

_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS2_EE.exit: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.o = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27
          to label %.noexc.i.i.i unwind label %bb.f ; 6 uses

.noexc.i.i.i:                                     ; preds = %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS2_EE.exit
  store ptr %2, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  store ptr %i.k, ptr %i.q, align 8, !tbaa !62
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %.thread, label %_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2INS_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit

bb.f:                                             ; preds = %_ZN5arrow12_GLOBAL__N_120UnifiedDiffFormatterC2EPSoSt8functionIFvRKNS_5ArrayElS2_EE.exit
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2INS_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit: ; preds = %.noexc.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4.24..sroa_idx14 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.24..sroa_idx14, i64 16, i1 false), !tbaa.struct !69
  store ptr %i.m, ptr %i.t, align 8, !tbaa !57
  br label %.thread

.thread:                                          ; preds = %_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2INS_12_GLOBAL__N_120UnifiedDiffFormatterEvEEOT_.exit, %.noexc.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.u, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_12_GLOBAL__N_120UnifiedDiffFormatterEE9_M_invokeERKSt9_Any_dataS4_S4_S4_, ptr %i.v, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusERKNS0_5ArrayES4_S4_ENS0_12_GLOBAL__N_120UnifiedDiffFormatterEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.w, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %.pre = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.x = icmp eq ptr %.pre, null
  br i1 %i.x, label %bb.h, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, !prof !73

bb.h:                                             ; preds = %.thread, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i: ; preds = %bb.i
  %.pr.pre.i = load ptr, ptr %3, align 8, !tbaa !58 ; 2 uses
  %.not.i.i12 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i12, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i, %bb.g
  %i.ae = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i ], [ %.pre, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #26
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit: ; preds = %bb.h, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  %5 = alloca %"class.std::vector.245", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Result.11", align 8  ; 13 uses
  %7 = alloca %"class.std::function", align 8     ; 8 uses
  %8 = alloca %struct.SparseImpl, align 8         ; 7 uses
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
  %20 = alloca %"class.std::vector.245", align 8  ; 9 uses
  %21 = alloca %"class.arrow::Result.11", align 8 ; 13 uses
  %22 = alloca %"class.std::function", align 8    ; 8 uses
  %23 = alloca %struct.StructImpl, align 8        ; 9 uses
  %24 = alloca %"class.std::vector.245", align 8  ; 5 uses
  %25 = alloca %"class.arrow::Result.11", align 8 ; 15 uses
  %26 = alloca %"class.std::function", align 8    ; 11 uses
  %27 = alloca %struct.ListImpl.229, align 8      ; 14 uses
  %28 = alloca %"class.std::function", align 8    ; 11 uses
  %29 = alloca %"class.arrow::Result.11", align 8 ; 15 uses
  %30 = alloca %"class.std::function", align 8    ; 11 uses
  %31 = alloca %struct.ListImpl.228, align 8      ; 14 uses
  %32 = alloca %"class.std::function", align 8    ; 11 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.arrow::Result.11", align 8 ; 15 uses
  %36 = alloca %"class.std::function", align 8    ; 11 uses
  %37 = alloca %struct.ListImpl.221, align 8      ; 14 uses
  %38 = alloca %"class.std::function", align 8    ; 11 uses
  %39 = alloca %"class.arrow::Result.11", align 8 ; 15 uses
  %40 = alloca %"class.std::function", align 8    ; 11 uses
  %41 = alloca %struct.ListImpl, align 8          ; 14 uses
  %42 = alloca %"class.std::function", align 8    ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 31 uses
  %51 = alloca %"class.arrow::(anonymous namespace)::MakeFormatterImpl", align 16 ; 71 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26, !noalias !88
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33, !noalias !91
  switch i32 %i.b, label %bb.gi [
    i32 0, label %bb.b
    i32 1, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE.exit.i
    i32 3, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 2, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 5, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 4, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 7, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 6, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 9, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 8, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 10, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE.exit.i
    i32 11, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 12, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 13, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 39, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 14, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 40, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 34, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 35, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 15, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 33, label %bb.e
    i32 16, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 17, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 18, label %bb.h
    i32 19, label %bb.i
    i32 20, label %bb.j
    i32 37, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_24MonthDayNanoIntervalTypeE.exit.i
    i32 21, label %bb.k
    i32 22, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_19DayTimeIntervalTypeE.exit.i
    i32 43, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 44, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 23, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 24, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
    i32 25, label %.noexc17
    i32 36, label %.noexc19
    i32 41, label %bb.bp
    i32 42, label %bb.bs
    i32 30, label %.noexc23
    i32 32, label %.noexc25
    i32 26, label %bb.dx
    i32 27, label %.invoke
    i32 28, label %.invoke
    i32 29, label %bb.fz
    i32 38, label %bb.gc
    i32 31, label %bb.gf
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26, !noalias !94
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_8NullTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc9 unwind label %bb.gq, !inline_history !101

.noexc9:                                          ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.c unwind label %bb.d, !inline_history !101

bb.c:                                             ; preds = %.noexc9
  %i.c = load ptr, ptr %48, align 8, !tbaa !102, !noalias !94 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_8NullTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !70, !noalias !94
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_8NullTypeE.exit.i

bb.d:                                             ; preds = %.noexc9
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %48, align 8, !tbaa !102, !noalias !94 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !70, !noalias !94
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26, !noalias !94
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_8NullTypeE.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26, !noalias !94
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
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26, !noalias !160
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12DurationTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(76) %1)
          to label %.noexc12 unwind label %bb.gq, !inline_history !101

.noexc12:                                         ; preds = %bb.e
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %47)
          to label %bb.f unwind label %bb.g, !inline_history !101

bb.f:                                             ; preds = %.noexc12
  %i.n = load ptr, ptr %47, align 8, !tbaa !102, !noalias !160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12DurationTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !160
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12DurationTypeE.exit.i

bb.g:                                             ; preds = %.noexc12
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %47, align 8, !tbaa !102, !noalias !160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i109.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !70, !noalias !160
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26, !noalias !160
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12DurationTypeE.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26, !noalias !160
  br label %_ZN5arrow6StatusD2Ev.exit7

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !167
  br label %.thread392

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %51, i8 0, i64 16, i1 false), !noalias !170
  br label %.thread392

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26, !noalias !173
  %i.y = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  store ptr %i.y, ptr %46, align 8, !tbaa !176, !noalias !173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.y, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false), !noalias !173
  %i.z = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 5, ptr %i.z, align 8, !tbaa !177, !noalias !173
  %i.aa = getelementptr inbounds nuw i8, ptr %46, i64 21
  store i8 0, ptr %i.aa, align 1, !tbaa !70, !noalias !173
  %i.ab = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE.exit.i unwind label %bb.gq, !inline_history !101 ; 5 uses

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE.exit.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !176, !noalias !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ac, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false), !noalias !173
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 5, ptr %i.ad, align 8, !tbaa !177, !noalias !178
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  store i8 0, ptr %i.ae, align 1, !tbaa !70, !noalias !178
  store ptr %i.ab, ptr %51, align 16, !noalias !173
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26, !noalias !173
  br label %.thread392

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26, !noalias !181
  %i.af = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  store ptr %i.af, ptr %45, align 8, !tbaa !176, !noalias !181
  store i16 21541, ptr %i.af, align 8, !noalias !181
  %i.ag = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 2, ptr %i.ag, align 8, !tbaa !177, !noalias !181
  %i.ah = getelementptr inbounds nuw i8, ptr %45, i64 18
  store i8 0, ptr %i.ah, align 2, !tbaa !70, !noalias !181
  %i.ai = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i unwind label %bb.gq, !inline_history !101 ; 5 uses

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !176, !noalias !184
  store i16 21541, ptr %i.aj, align 8, !noalias !184
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 2, ptr %i.ak, align 8, !tbaa !177, !noalias !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  store i8 0, ptr %i.al, align 2, !tbaa !70, !noalias !184
  store ptr %i.ai, ptr %51, align 16, !noalias !181
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 0, ptr %.sroa.4302.0..sroa_idx, align 8, !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26, !noalias !181
  br label %.thread392

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26, !noalias !187
  %i.am = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  store ptr %i.am, ptr %44, align 8, !tbaa !176, !noalias !187
  store i16 21541, ptr %i.am, align 8, !noalias !187
  %i.an = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 2, ptr %i.an, align 8, !tbaa !177, !noalias !187
  %i.ao = getelementptr inbounds nuw i8, ptr %44, i64 18
  store i8 0, ptr %i.ao, align 2, !tbaa !70, !noalias !187
  %i.ap = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time64TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i unwind label %bb.gq, !inline_history !101 ; 5 uses

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time64TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !176, !noalias !190
  store i16 21541, ptr %i.aq, align 8, !noalias !190
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26, !noalias !196
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17MonthIntervalTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc16 unwind label %bb.gq, !inline_history !101

.noexc16:                                         ; preds = %bb.k
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %bb.l unwind label %bb.m, !inline_history !101

bb.l:                                             ; preds = %.noexc16
  %i.at = load ptr, ptr %43, align 8, !tbaa !102, !noalias !196 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17MonthIntervalTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !70, !noalias !196
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17MonthIntervalTypeE.exit.i

bb.m:                                             ; preds = %.noexc16
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %43, align 8, !tbaa !102, !noalias !196 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i138.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i138.i: ; preds = %bb.m
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !70, !noalias !196
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !196
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17MonthIntervalTypeE.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !196
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
  call void @llvm.lifetime.start.p0(ptr nonnull %42), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26, !noalias !218
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !221
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !222
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !225, !noalias !218
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(72) %i.bi)
          to label %bb.n unwind label %bb.gq, !inline_history !101

bb.n:                                             ; preds = %.noexc17
  %i.bj = load ptr, ptr %39, align 8, !tbaa !58, !noalias !218
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %bb.o, !prof !61

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %50, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26, !noalias !218
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230), !noalias !218
  %i.bm = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %39, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, i8 0, i64 24, i1 false), !alias.scope !233, !noalias !218
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62, !noalias !234 ; 4 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !62, !alias.scope !233, !noalias !218
  %i.bp = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57, !noalias !234 ; 4 uses
  %.not.i.i.not.i.i.i151 = icmp eq ptr %i.bq, null ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  br i1 %.not.i.i.not.i.i.i151, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit150.thread, label %bb.r

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit150.thread: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26, !noalias !218
  %i.bs = getelementptr inbounds nuw i8, ptr %42, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 24, i1 false), !noalias !218
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !62, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, i8 0, i64 24, i1 false), !noalias !218
  %i.bt = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 16, i1 false), !tbaa.struct !69, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26, !noalias !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false), !noalias !218
  %i.bv = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %41, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false)
  store ptr %i.bq, ptr %i.bw, align 8, !tbaa !57, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false), !noalias !218
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit150.thread, %bb.r
  %i.bx = phi ptr [ %i.bt, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit150.thread ], [ %i.bv, %bb.r ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %i.bo, ptr %i.by, align 8, !tbaa !62, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !218
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bz, align 8, !noalias !218
  %i.ca = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc146 unwind label %bb.ac ; 5 uses

.noexc146:                                        ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 24, i1 false), !noalias !218
  store ptr %i.bo, ptr %i.cb, align 8, !tbaa !62, !noalias !218
  %i.cc = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  br i1 %.not.i.i.not.i.i.i151, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i, label %bb.s

bb.s:                                             ; preds = %.noexc146
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 16, i1 false), !tbaa.struct !69, !noalias !218
  store ptr %i.bq, ptr %i.cd, align 8, !tbaa !57, !noalias !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !noalias !218
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i

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

.thread:                                          ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !218
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit142

bb.t:                                             ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  %i.cj = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %bb.v unwind label %bb.u, !noalias !218 ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #28, !noalias !218
  unreachable

bb.v:                                             ; preds = %bb.t
  %.pre171 = load ptr, ptr %i.cc, align 8, !tbaa !57, !noalias !218 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !218
  %.not.i.i141 = icmp eq ptr %.pre171, null
  br i1 %.not.i.i141, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = invoke noundef zeroext i1 %.pre171(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit142 unwind label %bb.x, !noalias !218 ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #28, !noalias !218
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit142: ; preds = %.thread, %bb.v, %bb.w
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !57, !noalias !218 ; 2 uses
  %.not.i139 = icmp eq ptr %i.cp, null
  br i1 %.not.i139, label %_ZNSt14_Function_baseD2Ev.exit140, label %bb.y

bb.y:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit142
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit140 unwind label %bb.z, !noalias !218 ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #28, !noalias !218
  unreachable

_ZNSt14_Function_baseD2Ev.exit140:                ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit142, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26, !noalias !218
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !238
  %i.ct = load ptr, ptr %i.br, align 8, !tbaa !57 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ct, null
  br i1 %.not.i137, label %_ZNSt14_Function_baseD2Ev.exit138, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit140
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %40, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit138 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit138:                ; preds = %_ZNSt14_Function_baseD2Ev.exit140, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26, !noalias !218
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i

bb.ac:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.not.i.i.i151, label %_ZNSt14_Function_baseD2Ev.exit135, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %41, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit unwind label %bb.ae, !noalias !218 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #28, !noalias !218
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit: ; preds = %bb.ad
  %.pre169 = load ptr, ptr %i.bx, align 8, !tbaa !57, !noalias !218 ; 2 uses
  %.not.i134 = icmp eq ptr %.pre169, null
  br i1 %.not.i134, label %_ZNSt14_Function_baseD2Ev.exit135, label %bb.af

bb.af:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit
  %i.db = invoke noundef zeroext i1 %.pre169(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit135 unwind label %bb.ag, !noalias !218 ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #28, !noalias !218
  unreachable

_ZNSt14_Function_baseD2Ev.exit135:                ; preds = %bb.ac, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26, !noalias !218
  %i.de = load ptr, ptr %i.br, align 8, !tbaa !57, !noalias !218 ; 2 uses
  %.not.i132 = icmp eq ptr %i.de, null
  br i1 %.not.i132, label %_ZNSt14_Function_baseD2Ev.exit133, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit135
  %i.df = invoke noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %40, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit133 unwind label %bb.ai, !noalias !218 ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #28, !noalias !218
  unreachable

_ZNSt14_Function_baseD2Ev.exit133:                ; preds = %bb.ah, %_ZNSt14_Function_baseD2Ev.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26, !noalias !218
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit133, %bb.p
  %.pn9.i.i = phi { ptr, i32 } [ %i.bl, %bb.p ], [ %i.cx, %_ZNSt14_Function_baseD2Ev.exit133 ]
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %39) #26, !inline_history !241
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26, !noalias !218
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.o, %_ZNSt14_Function_baseD2Ev.exit138
  %i.di = load ptr, ptr %39, align 8, !tbaa !58   ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ak, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i126, !prof !61

bb.ak:                                            ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i127 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i127, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit131, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.dn = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i128 unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i128: ; preds = %bb.al
  %.pr.pre.i129 = load ptr, ptr %39, align 8, !tbaa !58 ; 2 uses
  %.not.i.i130 = icmp eq ptr %.pr.pre.i129, null
  br i1 %.not.i.i130, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit131, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i126, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i126: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i128, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.dq = phi ptr [ %.pr.pre.i129, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i128 ], [ %i.di, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8ListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !75, !range !86, !noundef !87
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit131, label %bb.an

bb.an:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i126
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %39) #26
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit131

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit131: ; preds = %bb.ak, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i128, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i126, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26, !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %42), !noalias !91
  br label %_ZN5arrow6StatusD2Ev.exit7

.noexc19:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %38), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26, !noalias !242
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !221
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !222
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !225, !noalias !242
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %35, ptr noundef nonnull align 8 dereferenceable(72) %i.dy)
          to label %bb.ao unwind label %bb.gq, !inline_history !101

bb.ao:                                            ; preds = %.noexc19
  %i.dz = load ptr, ptr %35, align 8, !tbaa !58, !noalias !242
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ar, label %bb.ap, !prof !61

bb.ap:                                            ; preds = %bb.ao
  store ptr null, ptr %50, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26, !noalias !242
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !248), !noalias !242
  %i.ec = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %35, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %36, i8 0, i64 24, i1 false), !alias.scope !251, !noalias !242
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62, !noalias !252 ; 4 uses
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !62, !alias.scope !251, !noalias !242
  %i.ef = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !57, !noalias !252 ; 4 uses
  %.not.i.i.not.i.i.i122 = icmp eq ptr %i.eg, null ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  br i1 %.not.i.i.not.i.i.i122, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit121.thread, label %bb.as

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit121.thread: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26, !noalias !242
  %i.ei = getelementptr inbounds nuw i8, ptr %38, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %38, i8 0, i64 24, i1 false), !noalias !242
  store ptr %i.ee, ptr %i.ei, align 8, !tbaa !62, !noalias !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %37, i8 0, i64 24, i1 false), !noalias !242
  %i.ej = getelementptr inbounds nuw i8, ptr %38, i64 16
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

bb.as:                                            ; preds = %bb.ar
  %i.ek = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i64 16, i1 false), !tbaa.struct !69, !noalias !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false), !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26, !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i8 0, i64 16, i1 false), !noalias !242
  %i.el = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %37, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false)
  store ptr %i.eg, ptr %i.em, align 8, !tbaa !57, !noalias !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false), !noalias !242
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit121.thread, %bb.as
  %i.en = phi ptr [ %i.ej, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit121.thread ], [ %i.el, %bb.as ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %37, i64 24
  store ptr %i.ee, ptr %i.eo, align 8, !tbaa !62, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26, !noalias !242
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ep, align 8, !noalias !242
  %i.eq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc117 unwind label %bb.bd ; 5 uses

.noexc117:                                        ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i8 0, i64 24, i1 false), !noalias !242
  store ptr %i.ee, ptr %i.er, align 8, !tbaa !62, !noalias !242
  %i.es = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  br i1 %.not.i.i.not.i.i.i122, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i, label %bb.at

bb.at:                                            ; preds = %.noexc117
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %37, i64 16, i1 false), !tbaa.struct !69, !noalias !242
  store ptr %i.eg, ptr %i.et, align 8, !tbaa !57, !noalias !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false), !noalias !242
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i

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

.thread277:                                       ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !242
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit113

bb.au:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  %i.ez = invoke noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %bb.aw unwind label %bb.av, !noalias !242 ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #28, !noalias !242
  unreachable

bb.aw:                                            ; preds = %bb.au
  %.pre168 = load ptr, ptr %i.es, align 8, !tbaa !57, !noalias !242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26, !noalias !242
  %.not.i.i112 = icmp eq ptr %.pre168, null
  br i1 %.not.i.i112, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit113, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = invoke noundef zeroext i1 %.pre168(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %37, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit113 unwind label %bb.ay, !noalias !242 ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #28, !noalias !242
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit113: ; preds = %.thread277, %bb.aw, %bb.ax
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !57, !noalias !242 ; 2 uses
  %.not.i110 = icmp eq ptr %i.ff, null
  br i1 %.not.i110, label %_ZNSt14_Function_baseD2Ev.exit111, label %bb.az

bb.az:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit113
  %i.fg = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit111 unwind label %bb.ba, !noalias !242 ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #28, !noalias !242
  unreachable

_ZNSt14_Function_baseD2Ev.exit111:                ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit113, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26, !noalias !242
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !255
  %i.fj = load ptr, ptr %i.eh, align 8, !tbaa !57 ; 2 uses
  %.not.i108 = icmp eq ptr %i.fj, null
  br i1 %.not.i108, label %_ZNSt14_Function_baseD2Ev.exit109, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit111
  %i.fk = invoke noundef zeroext i1 %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit109 unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit109:                ; preds = %_ZNSt14_Function_baseD2Ev.exit111, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26, !noalias !242
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i

bb.bd:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.not.i.i.i122, label %_ZNSt14_Function_baseD2Ev.exit106, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fo = invoke noundef zeroext i1 %i.eg(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %37, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit unwind label %bb.bf, !noalias !242 ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #28, !noalias !242
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit: ; preds = %bb.be
  %.pre166 = load ptr, ptr %i.en, align 8, !tbaa !57, !noalias !242 ; 2 uses
  %.not.i105 = icmp eq ptr %.pre166, null
  br i1 %.not.i105, label %_ZNSt14_Function_baseD2Ev.exit106, label %bb.bg

bb.bg:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit
  %i.fr = invoke noundef zeroext i1 %.pre166(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit106 unwind label %bb.bh, !noalias !242 ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #28, !noalias !242
  unreachable

_ZNSt14_Function_baseD2Ev.exit106:                ; preds = %bb.bd, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26, !noalias !242
  %i.fu = load ptr, ptr %i.eh, align 8, !tbaa !57, !noalias !242 ; 2 uses
  %.not.i103 = icmp eq ptr %i.fu, null
  br i1 %.not.i103, label %_ZNSt14_Function_baseD2Ev.exit104, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit106
  %i.fv = invoke noundef zeroext i1 %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit104 unwind label %bb.bj, !noalias !242 ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #28, !noalias !242
  unreachable

_ZNSt14_Function_baseD2Ev.exit104:                ; preds = %bb.bi, %_ZNSt14_Function_baseD2Ev.exit106
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26, !noalias !242
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit104, %bb.aq
  %.pn9.i148.i = phi { ptr, i32 } [ %i.eb, %bb.aq ], [ %i.fn, %_ZNSt14_Function_baseD2Ev.exit104 ]
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %35) #26, !inline_history !258
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26, !noalias !242
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.ap, %_ZNSt14_Function_baseD2Ev.exit109
  %i.fy = load ptr, ptr %35, align 8, !tbaa !58   ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.bl, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i97, !prof !61

bb.bl:                                            ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i98, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit102, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.gd = invoke noundef zeroext i1 %i.gb(ptr noundef nonnull align 8 dereferenceable(32) %i.gc, ptr noundef nonnull align 8 dereferenceable(32) %i.gc, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i99 unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i99: ; preds = %bb.bm
  %.pr.pre.i100 = load ptr, ptr %35, align 8, !tbaa !58 ; 2 uses
  %.not.i.i101 = icmp eq ptr %.pr.pre.i100, null
  br i1 %.not.i.i101, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit102, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i97, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i97: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i99, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.gg = phi ptr [ %.pr.pre.i100, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i99 ], [ %i.fy, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13LargeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !75, !range !86, !noundef !87
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit102, label %bb.bo

bb.bo:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i97
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %35) #26
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit102

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit102: ; preds = %bb.bl, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i99, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i97, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26, !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %38), !noalias !91
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.bp:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26, !noalias !259
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_12ListViewTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc21 unwind label %bb.gq, !inline_history !101

.noexc21:                                         ; preds = %bb.bp
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.bq unwind label %bb.br, !inline_history !101

bb.bq:                                            ; preds = %.noexc21
  %i.gk = load ptr, ptr %34, align 8, !tbaa !102, !noalias !259 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12ListViewTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i: ; preds = %bb.bq
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !70, !noalias !259
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12ListViewTypeE.exit.i

bb.br:                                            ; preds = %.noexc21
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %34, align 8, !tbaa !102, !noalias !259 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i150.i: ; preds = %bb.br
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !70, !noalias !259
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !259
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12ListViewTypeE.exit.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i153.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !259
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.bs:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26, !noalias !266
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17LargeListViewTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc22 unwind label %bb.gq, !inline_history !101

.noexc22:                                         ; preds = %bb.bs
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.bt unwind label %bb.bu, !inline_history !101

bb.bt:                                            ; preds = %.noexc22
  %i.gv = load ptr, ptr %33, align 8, !tbaa !102, !noalias !266 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17LargeListViewTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i158.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i158.i: ; preds = %bb.bt
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !70, !noalias !266
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17LargeListViewTypeE.exit.i

bb.bu:                                            ; preds = %.noexc22
  %i.ha = landingpad { ptr, i32 }
          cleanup
  %i.hb = load ptr, ptr %33, align 8, !tbaa !102, !noalias !266 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i155.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i155.i: ; preds = %bb.bu
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !70, !noalias !266
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i155.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26, !noalias !266
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17LargeListViewTypeE.exit.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i158.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26, !noalias !266
  br label %_ZN5arrow6StatusD2Ev.exit7

.noexc23:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %32), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26, !noalias !273
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !221
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !222
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !225, !noalias !273
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(72) %i.hk)
          to label %bb.bv unwind label %bb.gq, !inline_history !101

bb.bv:                                            ; preds = %.noexc23
  %i.hl = load ptr, ptr %29, align 8, !tbaa !58, !noalias !273
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.by, label %bb.bw, !prof !61

bb.bw:                                            ; preds = %bb.bv
  store ptr null, ptr %50, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26, !noalias !273
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279), !noalias !273
  %i.ho = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %29, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 24, i1 false), !alias.scope !282, !noalias !273
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !62, !noalias !283 ; 4 uses
  store ptr %i.hq, ptr %i.ho, align 8, !tbaa !62, !alias.scope !282, !noalias !273
  %i.hr = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !57, !noalias !283 ; 4 uses
  %.not.i.i.not.i.i.i93 = icmp eq ptr %i.hs, null ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  br i1 %.not.i.i.not.i.i.i93, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit92.thread, label %bb.bz

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit92.thread: ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26, !noalias !273
  %i.hu = getelementptr inbounds nuw i8, ptr %32, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 24, i1 false), !noalias !273
  store ptr %i.hq, ptr %i.hu, align 8, !tbaa !62, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 24, i1 false), !noalias !273
  %i.hv = getelementptr inbounds nuw i8, ptr %32, i64 16
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

bb.bz:                                            ; preds = %bb.by
  %i.hw = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i64 16, i1 false), !tbaa.struct !69, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i8 0, i64 16, i1 false), !noalias !283
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26, !noalias !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false), !noalias !273
  %i.hx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %31, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false)
  store ptr %i.hs, ptr %i.hy, align 8, !tbaa !57, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i8 0, i64 16, i1 false), !noalias !273
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit92.thread, %bb.bz
  %i.hz = phi ptr [ %i.hv, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit92.thread ], [ %i.hx, %bb.bz ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr %i.hq, ptr %i.ia, align 8, !tbaa !62, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26, !noalias !273
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ib, align 8, !noalias !273
  %i.ic = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc88 unwind label %bb.ck  ; 5 uses

.noexc88:                                         ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i8 0, i64 24, i1 false), !noalias !273
  store ptr %i.hq, ptr %i.id, align 8, !tbaa !62, !noalias !273
  %i.ie = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br i1 %.not.i.i.not.i.i.i93, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc88
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 16, i1 false), !tbaa.struct !69, !noalias !273
  store ptr %i.hs, ptr %i.if, align 8, !tbaa !57, !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false), !noalias !273
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i

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

.thread282:                                       ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !273
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit84

bb.cb:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  %i.il = invoke noundef zeroext i1 %i.ik(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %bb.cd unwind label %bb.cc, !noalias !273 ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #28, !noalias !273
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %.pre165 = load ptr, ptr %i.ie, align 8, !tbaa !57, !noalias !273 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !273
  %.not.i.i83 = icmp eq ptr %.pre165, null
  br i1 %.not.i.i83, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit84, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.io = invoke noundef zeroext i1 %.pre165(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit84 unwind label %bb.cf, !noalias !273 ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #28, !noalias !273
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit84: ; preds = %.thread282, %bb.cd, %bb.ce
  %i.ir = load ptr, ptr %i.hz, align 8, !tbaa !57, !noalias !273 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ir, null
  br i1 %.not.i81, label %_ZNSt14_Function_baseD2Ev.exit82, label %bb.cg

bb.cg:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit84
  %i.is = invoke noundef zeroext i1 %i.ir(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit82 unwind label %bb.ch, !noalias !273 ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #28, !noalias !273
  unreachable

_ZNSt14_Function_baseD2Ev.exit82:                 ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit84, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26, !noalias !273
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !286
  %i.iv = load ptr, ptr %i.ht, align 8, !tbaa !57 ; 2 uses
  %.not.i79 = icmp eq ptr %i.iv, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit82
  %i.iw = invoke noundef zeroext i1 %i.iv(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.cj ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit82, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26, !noalias !273
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i

bb.ck:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.not.i.i.i93, label %_ZNSt14_Function_baseD2Ev.exit77, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ja = invoke noundef zeroext i1 %i.hs(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit unwind label %bb.cm, !noalias !273 ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #28, !noalias !273
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit: ; preds = %bb.cl
  %.pre163 = load ptr, ptr %i.hz, align 8, !tbaa !57, !noalias !273 ; 2 uses
  %.not.i76 = icmp eq ptr %.pre163, null
  br i1 %.not.i76, label %_ZNSt14_Function_baseD2Ev.exit77, label %bb.cn

bb.cn:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit
  %i.jd = invoke noundef zeroext i1 %.pre163(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit77 unwind label %bb.co, !noalias !273 ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #28, !noalias !273
  unreachable

_ZNSt14_Function_baseD2Ev.exit77:                 ; preds = %bb.ck, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26, !noalias !273
  %i.jg = load ptr, ptr %i.ht, align 8, !tbaa !57, !noalias !273 ; 2 uses
  %.not.i74 = icmp eq ptr %i.jg, null
  br i1 %.not.i74, label %_ZNSt14_Function_baseD2Ev.exit75, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit77
  %i.jh = invoke noundef zeroext i1 %i.jg(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit75 unwind label %bb.cq, !noalias !273 ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #28, !noalias !273
  unreachable

_ZNSt14_Function_baseD2Ev.exit75:                 ; preds = %bb.cp, %_ZNSt14_Function_baseD2Ev.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26, !noalias !273
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit75, %bb.bx
  %.pn9.i160.i = phi { ptr, i32 } [ %i.hn, %bb.bx ], [ %i.iz, %_ZNSt14_Function_baseD2Ev.exit75 ]
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %29) #26, !inline_history !289
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26, !noalias !273
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.bw, %_ZNSt14_Function_baseD2Ev.exit80
  %i.jk = load ptr, ptr %29, align 8, !tbaa !58   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.cs, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i68, !prof !61

bb.cs:                                            ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i69, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit73, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jo = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.jp = invoke noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i70 unwind label %bb.cu ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i70: ; preds = %bb.ct
  %.pr.pre.i71 = load ptr, ptr %29, align 8, !tbaa !58 ; 2 uses
  %.not.i.i72 = icmp eq ptr %.pr.pre.i71, null
  br i1 %.not.i.i72, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit73, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i68, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i68: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i70, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.js = phi ptr [ %.pr.pre.i71, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i70 ], [ %i.jk, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !75, !range !86, !noundef !87
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit73, label %bb.cv

bb.cv:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i68
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %29) #26
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit73

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit73: ; preds = %bb.cs, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i70, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i68, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %32), !noalias !91
  br label %_ZN5arrow6StatusD2Ev.exit7

.noexc25:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26, !noalias !290
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !221
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !222
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !225, !noalias !290
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef nonnull align 8 dereferenceable(72) %i.ka)
          to label %bb.cw unwind label %bb.gq, !inline_history !101

bb.cw:                                            ; preds = %.noexc25
  %i.kb = load ptr, ptr %25, align 8, !tbaa !58, !noalias !290
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.cz, label %bb.cx, !prof !61

bb.cx:                                            ; preds = %bb.cw
  store ptr null, ptr %50, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !296), !noalias !290
  %i.ke = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %25, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 24, i1 false), !alias.scope !299, !noalias !290
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !62, !noalias !300 ; 4 uses
  store ptr %i.kg, ptr %i.ke, align 8, !tbaa !62, !alias.scope !299, !noalias !290
  %i.kh = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !57, !noalias !300 ; 4 uses
  %.not.i.i.not.i.i.i64 = icmp eq ptr %i.ki, null ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  br i1 %.not.i.i.not.i.i.i64, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread, label %bb.da

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !290
  %i.kk = getelementptr inbounds nuw i8, ptr %28, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 24, i1 false), !noalias !290
  store ptr %i.kg, ptr %i.kk, align 8, !tbaa !62, !noalias !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 24, i1 false), !noalias !290
  %i.kl = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

bb.da:                                            ; preds = %bb.cz
  %i.km = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %i.km, i64 16, i1 false), !tbaa.struct !69, !noalias !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, i8 0, i64 16, i1 false), !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %i.km, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, i8 0, i64 16, i1 false), !noalias !290
  %i.kn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %i.km, i64 16, i1 false)
  store ptr %i.ki, ptr %i.ko, align 8, !tbaa !57, !noalias !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i8 0, i64 16, i1 false), !noalias !290
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread, %bb.da
  %i.kp = phi ptr [ %i.kl, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.thread ], [ %i.kn, %bb.da ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.kg, ptr %i.kq, align 8, !tbaa !62, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !290
  %i.kr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.kr, align 8, !noalias !290
  %i.ks = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc61 unwind label %bb.dl  ; 5 uses

.noexc61:                                         ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ks, i8 0, i64 24, i1 false), !noalias !290
  store ptr %i.kg, ptr %i.kt, align 8, !tbaa !62, !noalias !290
  %i.ku = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  br i1 %.not.i.i.not.i.i.i64, label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i, label %bb.db

bb.db:                                            ; preds = %.noexc61
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %27, i64 16, i1 false), !tbaa.struct !69, !noalias !290
  store ptr %i.ki, ptr %i.kv, align 8, !tbaa !57, !noalias !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, i8 0, i64 16, i1 false), !noalias !290
  br label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i

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

.thread287:                                       ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !290
  br label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit58

bb.dc:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2IZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSD_E8ListImplvEEOSD_.exit.i
  %i.lb = invoke noundef zeroext i1 %i.la(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %bb.de unwind label %bb.dd, !noalias !290 ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.lc = landingpad { ptr, i32 }
          catch ptr null
  %i.ld = extractvalue { ptr, i32 } %i.lc, 0
  call void @__clang_call_terminate(ptr %i.ld) #28, !noalias !290
  unreachable

bb.de:                                            ; preds = %bb.dc
  %.pre162 = load ptr, ptr %i.ku, align 8, !tbaa !57, !noalias !290 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !290
  %.not.i.i57 = icmp eq ptr %.pre162, null
  br i1 %.not.i.i57, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit58, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.le = invoke noundef zeroext i1 %.pre162(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit58 unwind label %bb.dg, !noalias !290 ; 0 uses

bb.dg:                                            ; preds = %bb.df
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #28, !noalias !290
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit58: ; preds = %.thread287, %bb.de, %bb.df
  %i.lh = load ptr, ptr %i.kp, align 8, !tbaa !57, !noalias !290 ; 2 uses
  %.not.i55 = icmp eq ptr %i.lh, null
  br i1 %.not.i55, label %_ZNSt14_Function_baseD2Ev.exit56, label %bb.dh

bb.dh:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit58
  %i.li = invoke noundef zeroext i1 %i.lh(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit56 unwind label %bb.di, !noalias !290 ; 0 uses

bb.di:                                            ; preds = %bb.dh
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #28, !noalias !290
  unreachable

_ZNSt14_Function_baseD2Ev.exit56:                 ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit58, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !290
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !303
  %i.ll = load ptr, ptr %i.kj, align 8, !tbaa !57 ; 2 uses
  %.not.i53 = icmp eq ptr %i.ll, null
  br i1 %.not.i53, label %_ZNSt14_Function_baseD2Ev.exit54, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit56
  %i.lm = invoke noundef zeroext i1 %i.ll(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit54 unwind label %bb.dk ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit54:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit56, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !290
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i

bb.dl:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplC2ESt8functionIFvRKNS_5ArrayElPSoEE.exit
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.not.i.i.i64, label %_ZNSt14_Function_baseD2Ev.exit51, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lq = invoke noundef zeroext i1 %i.ki(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit unwind label %bb.dn, !noalias !290 ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #28, !noalias !290
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit: ; preds = %bb.dm
  %.pre161 = load ptr, ptr %i.kp, align 8, !tbaa !57, !noalias !290 ; 2 uses
  %.not.i50 = icmp eq ptr %.pre161, null
  br i1 %.not.i50, label %_ZNSt14_Function_baseD2Ev.exit51, label %bb.do

bb.do:                                            ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit
  %i.lt = invoke noundef zeroext i1 %.pre161(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit51 unwind label %bb.dp, !noalias !290 ; 0 uses

bb.dp:                                            ; preds = %bb.do
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #28, !noalias !290
  unreachable

_ZNSt14_Function_baseD2Ev.exit51:                 ; preds = %bb.dl, %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !290
  %i.lw = load ptr, ptr %i.kj, align 8, !tbaa !57, !noalias !290 ; 2 uses
  %.not.i48 = icmp eq ptr %i.lw, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit49, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit51
  %i.lx = invoke noundef zeroext i1 %i.lw(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit49 unwind label %bb.dr, !noalias !290 ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  %i.lz = extractvalue { ptr, i32 } %i.ly, 0
  call void @__clang_call_terminate(ptr %i.lz) #28, !noalias !290
  unreachable

_ZNSt14_Function_baseD2Ev.exit49:                 ; preds = %bb.dq, %_ZNSt14_Function_baseD2Ev.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !290
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %bb.cy
  %.pn9.i162.i = phi { ptr, i32 } [ %i.kd, %bb.cy ], [ %i.lp, %_ZNSt14_Function_baseD2Ev.exit49 ]
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %25) #26, !inline_history !306
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !290
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i: ; preds = %bb.cx, %_ZNSt14_Function_baseD2Ev.exit54
  %i.ma = load ptr, ptr %25, align 8, !tbaa !58   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %bb.dt, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i42, !prof !61

bb.dt:                                            ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.mc = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i43, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit47, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.me = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.mf = invoke noundef zeroext i1 %i.md(ptr noundef nonnull align 8 dereferenceable(32) %i.me, ptr noundef nonnull align 8 dereferenceable(32) %i.me, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i44 unwind label %bb.dv ; 0 uses

bb.dv:                                            ; preds = %bb.du
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i44: ; preds = %bb.du
  %.pr.pre.i45 = load ptr, ptr %25, align 8, !tbaa !58 ; 2 uses
  %.not.i.i46 = icmp eq ptr %.pr.pre.i45, null
  br i1 %.not.i.i46, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit47, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i42, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i42: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i44, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.mi = phi ptr [ %.pr.pre.i45, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i44 ], [ %i.ma, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit47, label %bb.dw

bb.dw:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i42
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %25) #26
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit47

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit47: ; preds = %bb.dt, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i44, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i42, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !91
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.dx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26, !noalias !307
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !310, !noalias !307
  %i.mp = load ptr, ptr %i.mm, align 8, !tbaa !221, !noalias !307 ; 2 uses
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr                    ; 2 uses
  %sext = shl i64 %i.ms, 28
  %i.mt = ashr i64 %sext, 32                      ; 4 uses
  %i.mu = icmp ugt i64 %i.mt, 288230376151711743
  br i1 %i.mu, label %bb.dy, label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
          to label %.noexc40 unwind label %bb.ea

.noexc40:                                         ; preds = %bb.dy
  unreachable

_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %bb.dx
  store i64 0, ptr %20, align 8
  %.not.i.i.i.i39 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i39, label %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EEC2EmRKS8_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  %i.mv = shl nuw nsw i64 %i.mt, 5                ; 3 uses
  %i.mw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mv) #27
          to label %.noexc41 unwind label %bb.ea  ; 5 uses

.noexc41:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.mw, ptr %20, align 8, !tbaa !311, !noalias !307
  %i.mx = getelementptr inbounds nuw [32 x i8], ptr %i.mw, i64 %i.mt
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mw, i8 0, i64 %i.mv, i1 false), !noalias !307
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.mw, i64 %i.mv
  br label %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EEC2EmRKS8_.exit.thread.i

_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EEC2EmRKS8_.exit.thread.i: ; preds = %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i, %.noexc41
  %.pr.i = phi ptr [ %i.mw, %.noexc41 ], [ null, %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ] ; 7 uses
  %i.my = phi ptr [ %i.mx, %.noexc41 ], [ null, %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ] ; 3 uses
  %i.mz = phi ptr [ %scevgep.i.i.i.i.i, %.noexc41 ], [ null, %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.my, ptr %i.nb, align 8, !tbaa !314, !noalias !307
  store ptr %i.mz, ptr %i.na, align 8, !tbaa !315, !noalias !307
  %i.nc = lshr exact i64 %i.ms, 4
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i8158 = icmp sgt i32 %i.nd, 0
  br i1 %.not.i.i8158, label %.lr.ph, label %.critedge.i.i

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EEC2EmRKS8_.exit.thread.i
  %i.ne = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.eb

bb.dz:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nk = load ptr, ptr %i.mn, align 8, !tbaa !310
  %i.nl = load ptr, ptr %i.mm, align 8, !tbaa !221 ; 2 uses
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn
  %sext270 = shl i64 %i.no, 28
  %i.np = ashr i64 %sext270, 32
  %.not.i.i8 = icmp slt i64 %indvars.iv.next, %i.np
  br i1 %.not.i.i8, label %bb.eb, label %.critedge.i.i, !llvm.loop !316

bb.ea:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.dy
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eb:                                            ; preds = %.lr.ph, %bb.dz
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.dz ] ; 3 uses
  %i.nr = phi ptr [ %i.mp, %.lr.ph ], [ %i.nl, %bb.dz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26, !noalias !307
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %indvars.iv
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !222
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 56
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !225
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(72) %i.nv)
          to label %bb.ec unwind label %bb.ee, !inline_history !318

bb.ec:                                            ; preds = %bb.eb
  %i.nw = load ptr, ptr %21, align 8, !tbaa !58
  %i.nx = icmp eq ptr %i.nw, null                 ; 2 uses
  br i1 %i.nx, label %bb.eg, label %bb.ed, !prof !61

bb.ed:                                            ; preds = %bb.ec
  store ptr null, ptr %50, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.ef

bb.ee:                                            ; preds = %bb.eb
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ef:                                            ; preds = %bb.ed
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %21) #26, !inline_history !318
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !307
  br label %bb.er

bb.eg:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26, !noalias !307
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 0, i64 24, i1 false), !alias.scope !325
  %i.oa = load ptr, ptr %i.nf, align 8, !tbaa !62, !noalias !325 ; 2 uses
  store ptr %i.oa, ptr %i.ne, align 8, !tbaa !62, !alias.scope !325
  %i.ob = load ptr, ptr %i.ng, align 8, !tbaa !57, !noalias !325 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv.exit.thread, label %bb.eh

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

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.thread: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.ei:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i
  %i.oh = invoke noundef zeroext i1 %i.og(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 3)
          to label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit unwind label %bb.ej ; 0 uses

bb.ej:                                            ; preds = %bb.ei
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #28
  unreachable

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit: ; preds = %bb.ei
  %.pre = load ptr, ptr %i.ni, align 8, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %.not.i36 = icmp eq ptr %.pre, null
  br i1 %.not.i36, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit
  %i.ok = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.el ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  %i.om = extractvalue { ptr, i32 } %i.ol, 0
  call void @__clang_call_terminate(ptr %i.om) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.thread, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26, !noalias !307
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.ed, %_ZNSt14_Function_baseD2Ev.exit
  %i.on = load ptr, ptr %21, align 8, !tbaa !58   ; 2 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.em, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, !prof !61

bb.em:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.op = load ptr, ptr %i.ng, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i34, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.oq = invoke noundef zeroext i1 %i.op(ptr noundef nonnull align 8 dereferenceable(32) %i.nh, ptr noundef nonnull align 8 dereferenceable(32) %i.nh, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i unwind label %bb.eo ; 0 uses

bb.eo:                                            ; preds = %bb.en
  %i.or = landingpad { ptr, i32 }
          catch ptr null
  %i.os = extractvalue { ptr, i32 } %i.or, 0
  call void @__clang_call_terminate(ptr %i.os) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i: ; preds = %bb.en
  %.pr.pre.i = load ptr, ptr %21, align 8, !tbaa !58 ; 2 uses
  %.not.i.i35 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i35, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ot = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i ], [ %i.on, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit, label %bb.ep

bb.ep:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %21) #26
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit: ; preds = %bb.em, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26, !noalias !307
  br i1 %i.nx, label %bb.dz, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeE.exit.i

.critedge.i.i:                                    ; preds = %bb.dz, %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EEC2EmRKS8_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26, !noalias !307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  store ptr %.pr.i, ptr %23, align 8, !tbaa !311, !noalias !307
  %i.ox = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.mz, ptr %i.ox, align 8, !tbaa !315, !noalias !307
  %i.oy = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.my, ptr %i.oy, align 8, !tbaa !314, !noalias !307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !noalias !307
  %i.oz = invoke fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSIZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplEENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i.thread unwind label %bb.eq, !inline_history !318 ; 0 uses

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i.thread: ; preds = %.critedge.i.i
  call fastcc void @_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeEEN10StructImplD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #26, !inline_history !318
  call void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #26, !inline_history !318
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26, !noalias !307
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !326
  br label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit

bb.eq:                                            ; preds = %.critedge.i.i
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeEEN10StructImplD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #26, !inline_history !318
  call void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #26, !inline_history !318
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26, !noalias !307
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ef, %bb.ee
  %.pn24.i.i = phi { ptr, i32 } [ %i.pa, %bb.eq ], [ %i.nz, %bb.ef ], [ %i.ny, %bb.ee ]
  call void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %20) #26, !inline_history !318
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ea
  %.pn24.pn.i.i = phi { ptr, i32 } [ %.pn24.i.i, %bb.er ], [ %i.nq, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !307
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeE.exit.i: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.mz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeE.exit.i, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pg, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeE.exit.i ] ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i.i.i
  %i.pd = invoke noundef zeroext i1 %i.pc(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i unwind label %bb.eu ; 0 uses

bb.eu:                                            ; preds = %bb.et
  %i.pe = landingpad { ptr, i32 }
          catch ptr null
  %i.pf = extractvalue { ptr, i32 } %i.pe, 0
  call void @__clang_call_terminate(ptr %i.pf) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i: ; preds = %bb.et, %.lr.ph.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.pg, %i.mz
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeE.exit.i
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i
  %i.ph = ptrtoint ptr %i.my to i64
  %i.pi = ptrtoint ptr %.pr.i to i64
  %i.pj = sub i64 %i.ph, %i.pi
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.pj) #29
  br label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit

_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26, !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !91
  br label %_ZN5arrow6StatusD2Ev.exit7

.invoke:                                          ; preds = %bb.a, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !330
  %i.pk = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %.noexc unwind label %bb.gq, !inline_history !333

.noexc:                                           ; preds = %.invoke
  %i.pl = zext i8 %i.pk to i64
  %i.pm = add nuw nsw i64 %i.pl, 1                ; 2 uses
  %i.pn = shl nuw nsw i64 %i.pm, 5                ; 4 uses
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #27
          to label %.noexc298 unwind label %bb.gq, !inline_history !333 ; 11 uses

.noexc298:                                        ; preds = %.noexc
  store ptr %i.po, ptr %5, align 8, !tbaa !311, !noalias !330
  %i.pp = getelementptr inbounds nuw [32 x i8], ptr %i.po, i64 %i.pm ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.po, i8 0, i64 %i.pn, i1 false), !noalias !330
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.po, i64 %i.pn ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.pp, ptr %i.pr, align 8, !tbaa !314, !noalias !330
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.pq, align 8, !tbaa !315, !noalias !330
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !310, !noalias !330
  %i.pv = load ptr, ptr %i.ps, align 8, !tbaa !221, !noalias !330 ; 2 uses
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = lshr exact i64 %i.py, 4
  %i.qa = trunc i64 %i.pz to i32
  %.not75.i = icmp sgt i32 %i.qa, 0
  br i1 %.not75.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.noexc298
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.qe = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ex

bb.ew:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qi = load ptr, ptr %i.pt, align 8, !tbaa !310, !noalias !330
  %i.qj = load ptr, ptr %i.ps, align 8, !tbaa !221, !noalias !330 ; 2 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %sext.i = shl i64 %i.qm, 28
  %i.qn = ashr i64 %sext.i, 32
  %.not.i295 = icmp slt i64 %indvars.iv.next.i, %i.qn
  br i1 %.not.i295, label %bb.ex, label %.critedge.i, !llvm.loop !334

bb.ex:                                            ; preds = %bb.ew, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ew ] ; 3 uses
  %i.qo = phi ptr [ %i.pv, %.lr.ph.i ], [ %i.qj, %bb.ew ]
  %i.qp = load ptr, ptr %i.qb, align 8, !tbaa !335, !noalias !330
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv.i
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !330
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qo, i64 %indvars.iv.i
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !222
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 56
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !225
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_113MakeFormatterERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %i.qv)
          to label %bb.ey unwind label %bb.fa, !inline_history !333

bb.ey:                                            ; preds = %bb.ex
  %i.qw = load ptr, ptr %6, align 8, !tbaa !58, !noalias !330
  %i.qx = icmp eq ptr %i.qw, null                 ; 2 uses
  br i1 %i.qx, label %bb.fc, label %bb.ez, !prof !61

bb.ez:                                            ; preds = %bb.ey
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !330
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.fb, !inline_history !333

bb.fa:                                            ; preds = %bb.ex
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fb:                                            ; preds = %bb.ez
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #26, !inline_history !333
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !330
  br label %bb.fy

bb.fc:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !330
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false), !alias.scope !343, !noalias !330
  %i.ra = load ptr, ptr %i.qd, align 8, !tbaa !62, !noalias !344 ; 2 uses
  store ptr %i.ra, ptr %i.qc, align 8, !tbaa !62, !alias.scope !343, !noalias !330
  %i.rb = load ptr, ptr %i.qe, align 8, !tbaa !57, !noalias !344 ; 2 uses
  %.not.i.i.not.i.i.i.i296 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.not.i.i.i.i296, label %_ZNO5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE11ValueUnsafeEv.exit.thread.i, label %bb.fd

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

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.thread.i: ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !330
  br label %_ZNSt14_Function_baseD2Ev.exit.i

bb.fe:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEC2EOS6_.exit.i.i
  %i.rh = invoke noundef zeroext i1 %i.rg(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.i unwind label %bb.ff, !inline_history !333 ; 0 uses

bb.ff:                                            ; preds = %bb.fe
  %i.ri = landingpad { ptr, i32 }
          catch ptr null
  %i.rj = extractvalue { ptr, i32 } %i.ri, 0
  call void @__clang_call_terminate(ptr %i.rj) #28, !inline_history !333
  unreachable

_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.i: ; preds = %bb.fe
  %.pre.i = load ptr, ptr %i.qg, align 8, !tbaa !57, !noalias !330 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !330
  %.not.i.i297 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i297, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.i
  %i.rk = invoke noundef zeroext i1 %.pre.i(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.fh, !inline_history !333 ; 0 uses

bb.fh:                                            ; preds = %bb.fg
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  %i.rm = extractvalue { ptr, i32 } %i.rl, 0
  call void @__clang_call_terminate(ptr %i.rm) #28, !inline_history !333
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.fg, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.i, %_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSEOS6_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !330
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.ez
  %i.rn = load ptr, ptr %6, align 8, !tbaa !58, !noalias !330 ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.fi, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i.i, !prof !61

bb.fi:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.rp = load ptr, ptr %i.qe, align 8, !tbaa !57, !noalias !330 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.rq = invoke noundef zeroext i1 %i.rp(ptr noundef nonnull align 8 dereferenceable(32) %i.qf, ptr noundef nonnull align 8 dereferenceable(32) %i.qf, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i.i unwind label %bb.fk, !inline_history !333 ; 0 uses

bb.fk:                                            ; preds = %bb.fj
  %i.rr = landingpad { ptr, i32 }
          catch ptr null
  %i.rs = extractvalue { ptr, i32 } %i.rr, 0
  call void @__clang_call_terminate(ptr %i.rs) #28, !inline_history !333
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i.i: ; preds = %bb.fj
  %.pr.pre.i.i = load ptr, ptr %6, align 8, !tbaa !58, !noalias !330 ; 2 uses
  %.not.i.i34.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i34.i, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i.i, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.rt = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i.i ], [ %i.rn, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !75, !range !86, !noundef !87
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i, label %bb.fl

bb.fl:                                            ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #26, !inline_history !333
  br label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i: ; preds = %bb.fl, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.i.i, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !330
  br i1 %i.qx, label %bb.ew, label %.lr.ph.i.i.i65.i

.critedge.i:                                      ; preds = %bb.ew, %.noexc298
  %i.rx = invoke noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.fm unwind label %bb.fq, !inline_history !333

bb.fm:                                            ; preds = %.critedge.i
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.fn, label %bb.fs

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !330
  store ptr %i.po, ptr %8, align 8, !tbaa !311, !noalias !330
  %i.rz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.rz, align 8, !tbaa !315, !noalias !330
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.pp, ptr %i.sa, align 8, !tbaa !314, !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !330
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.sb, align 8, !noalias !330
  %i.sc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc37.i unwind label %bb.fr, !inline_history !333 ; 4 uses

.noexc37.i:                                       ; preds = %bb.fn
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.po, ptr %i.sc, align 8, !tbaa !311
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
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

bb.fo:                                            ; preds = %.noexc37.i
  %i.sk = invoke noundef zeroext i1 %i.sj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit.i unwind label %bb.fp, !inline_history !333 ; 0 uses

bb.fp:                                            ; preds = %bb.fo
  %i.sl = landingpad { ptr, i32 }
          catch ptr null
  %i.sm = extractvalue { ptr, i32 } %i.sl, 0
  call void @__clang_call_terminate(ptr %i.sm) #28, !inline_history !333
  unreachable

_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit.i: ; preds = %bb.fo, %.noexc37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !330
  br label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i72.i

bb.fq:                                            ; preds = %.critedge.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fr:                                            ; preds = %bb.fn
  %i.so = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_9UnionTypeEEN9UnionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26, !inline_history !333
  call void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #26, !inline_history !333
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !330
  br label %bb.fy

bb.fs:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !330
  store ptr %i.po, ptr %10, align 8, !tbaa !311, !noalias !330
  %i.sp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.sp, align 8, !tbaa !315, !noalias !330
  %i.sq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.pp, ptr %i.sq, align 8, !tbaa !314, !noalias !330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !330
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.sr, align 8, !noalias !330
  %i.ss = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc41.i unwind label %bb.fv, !inline_history !333 ; 4 uses

.noexc41.i:                                       ; preds = %bb.fs
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.po, ptr %i.ss, align 8, !tbaa !311
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
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

bb.ft:                                            ; preds = %.noexc41.i
  %i.ta = invoke noundef zeroext i1 %i.sz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit63.i unwind label %bb.fu, !inline_history !333 ; 0 uses

bb.fu:                                            ; preds = %bb.ft
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #28, !inline_history !333
  unreachable

_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit63.i: ; preds = %bb.ft, %.noexc41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !330
  br label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i72.i

bb.fv:                                            ; preds = %bb.fs
  %i.td = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_9UnionTypeEEN9UnionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #26, !inline_history !333
  call void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #26, !inline_history !333
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !330
  br label %bb.fy

.lr.ph.i.i.i65.i:                                 ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i68.i
  %.05.i.i.i66.i = phi ptr [ %i.tj, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i68.i ], [ %i.po, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit.i ] ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.05.i.i.i66.i, i64 16
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i.i.i.i67.i = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.i.i.i.i67.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i68.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i.i65.i
  %i.tg = invoke noundef zeroext i1 %i.tf(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i66.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i66.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i68.i unwind label %bb.fx, !inline_history !333 ; 0 uses

bb.fx:                                            ; preds = %bb.fw
  %i.th = landingpad { ptr, i32 }
          catch ptr null
  %i.ti = extractvalue { ptr, i32 } %i.th, 0
  call void @__clang_call_terminate(ptr %i.ti) #28, !inline_history !333
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i68.i: ; preds = %bb.fw, %.lr.ph.i.i.i65.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.05.i.i.i66.i, i64 32 ; 2 uses
  %.not.i.i.i69.i = icmp eq ptr %i.tj, %scevgep.i.i.i.i.i.i
  br i1 %.not.i.i.i69.i, label %.loopexit104.i, label %.lr.ph.i.i.i65.i, !llvm.loop !329

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i72.i: ; preds = %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit63.i, %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit.i
  store ptr null, ptr %50, align 8, !tbaa !58, !alias.scope !349
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_9UnionTypeE.exit

.loopexit104.i:                                   ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i68.i
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.pn) #29, !inline_history !333
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_9UnionTypeE.exit

bb.fy:                                            ; preds = %bb.fv, %bb.fr, %bb.fq, %bb.fb, %bb.fa
  %.pn28.pn.i = phi { ptr, i32 } [ %i.so, %bb.fr ], [ %i.td, %bb.fv ], [ %i.sn, %bb.fq ], [ %i.qz, %bb.fb ], [ %i.qy, %bb.fa ]
  call void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26, !inline_history !333
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !330
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_9UnionTypeE.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i72.i, %.loopexit104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.fz:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26, !noalias !352
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_14DictionaryTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(105) %1)
          to label %.noexc29 unwind label %bb.gq, !inline_history !101

.noexc29:                                         ; preds = %bb.fz
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ga unwind label %bb.gb, !inline_history !101

bb.ga:                                            ; preds = %.noexc29
  %i.tk = load ptr, ptr %19, align 8, !tbaa !102, !noalias !352 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_14DictionaryTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168.i: ; preds = %bb.ga
  %i.tn = load i64, ptr %i.tl, align 8, !tbaa !70, !noalias !352
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.to) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_14DictionaryTypeE.exit.i

bb.gb:                                            ; preds = %.noexc29
  %i.tp = landingpad { ptr, i32 }
          cleanup
  %i.tq = load ptr, ptr %19, align 8, !tbaa !102, !noalias !352 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ts = icmp eq ptr %i.tq, %i.tr
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i165.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i165.i: ; preds = %bb.gb
  %i.tt = load i64, ptr %i.tr, align 8, !tbaa !70, !noalias !352
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tq, i64 noundef %i.tu) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i: ; preds = %bb.gb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !352
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_14DictionaryTypeE.exit.i: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !352
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.gc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !359
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_17RunEndEncodedTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc30 unwind label %bb.gq, !inline_history !101

.noexc30:                                         ; preds = %bb.gc
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.gd unwind label %bb.ge, !inline_history !101

bb.gd:                                            ; preds = %.noexc30
  %i.tv = load ptr, ptr %18, align 8, !tbaa !102, !noalias !359 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.tx = icmp eq ptr %i.tv, %i.tw
  br i1 %i.tx, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17RunEndEncodedTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173.i: ; preds = %bb.gd
  %i.ty = load i64, ptr %i.tw, align 8, !tbaa !70, !noalias !359
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tv, i64 noundef %i.tz) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17RunEndEncodedTypeE.exit.i

bb.ge:                                            ; preds = %.noexc30
  %i.ua = landingpad { ptr, i32 }
          cleanup
  %i.ub = load ptr, ptr %18, align 8, !tbaa !102, !noalias !359 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i170.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i170.i: ; preds = %bb.ge
  %i.ue = load i64, ptr %i.uc, align 8, !tbaa !70, !noalias !359
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.uf) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i170.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !359
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17RunEndEncodedTypeE.exit.i: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !359
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.gf:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !366
  invoke void @_ZN5arrow8internal12JoinToStringIJRA41_KcRKNS_13ExtensionTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 1 dereferenceable(41) @.str.5, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc31 unwind label %bb.gq, !inline_history !101

.noexc31:                                         ; preds = %bb.gf
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.gg unwind label %bb.gh, !inline_history !101

bb.gg:                                            ; preds = %.noexc31
  %i.ug = load ptr, ptr %17, align 8, !tbaa !102, !noalias !366 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13ExtensionTypeE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178.i: ; preds = %bb.gg
  %i.uj = load i64, ptr %i.uh, align 8, !tbaa !70, !noalias !366
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uk) #29, !inline_history !101
  br label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13ExtensionTypeE.exit.i

bb.gh:                                            ; preds = %.noexc31
  %i.ul = landingpad { ptr, i32 }
          cleanup
  %i.um = load ptr, ptr %17, align 8, !tbaa !102, !noalias !366 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.uo = icmp eq ptr %i.um, %i.un
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i175.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i175.i: ; preds = %bb.gh
  %i.up = load i64, ptr %i.un, align 8, !tbaa !70, !noalias !366
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.uq) #29, !inline_history !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i: ; preds = %bb.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !366
  br label %.body

_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13ExtensionTypeE.exit.i: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !366
  br label %_ZN5arrow6StatusD2Ev.exit7

bb.gi:                                            ; preds = %bb.a
  invoke void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %50, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.4)
          to label %_ZN5arrow6StatusD2Ev.exit7 unwind label %bb.gq, !inline_history !101

.thread392:                                       ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time64TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_24MonthDayNanoIntervalTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_19DayTimeIntervalTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i
  %i.ur = phi ptr [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_19DayTimeIntervalTypeEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_19DayTimeIntervalTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_24MonthDayNanoIntervalTypeEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_24MonthDayNanoIntervalTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time64TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time32TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_13HalfFloatTypeEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_11BooleanTypeEEUlS3_lS4_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE.exit.i ]
  %i.us = phi ptr [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal256TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14Decimal128TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_19DayTimeIntervalTypeEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_19DayTimeIntervalTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_24MonthDayNanoIntervalTypeEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_24MonthDayNanoIntervalTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time64TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time64TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_10Time32TypeELb0EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Time32TypeEEENSt9enable_ifIXsr12is_time_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl17MakeTimeFormatterINS0_13TimestampTypeELb1EEESt8functionIS5_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13TimestampTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date64TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10Date32TypeEEENSt9enable_ifIXsr12is_date_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_19FixedSizeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeBinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_15LargeStringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14BinaryViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10BinaryTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_14StringViewTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10StringTypeEEENSt9enable_ifIXsr15has_string_viewIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10DoubleTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9FloatTypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_13HalfFloatTypeEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13HalfFloatTypeE.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int64TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int32TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9Int16TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS0_6StatusEE4typeERKSB_EUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_8Int8TypeEEENSt9enable_ifIXsr14is_number_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_11BooleanTypeEEUlS3_lS4_E_E9_M_invokeERKSt9_Any_dataS3_OlOS4_, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_11BooleanTypeE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26, !noalias !88
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %0, align 8
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !62
  br label %bb.gn

_ZN5arrow6StatusD2Ev.exit7:                       ; preds = %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_9UnionTypeE.exit, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_13ExtensionTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17RunEndEncodedTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_14DictionaryTypeE.exit.i, %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit47, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit73, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17LargeListViewTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12ListViewTypeE.exit.i, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit102, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev.exit131, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_17MonthIntervalTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_12DurationTypeE.exit.i, %_ZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_8NullTypeE.exit.i, %bb.gi
  %.pr = load ptr, ptr %50, align 8, !tbaa !58, !noalias !88 ; 2 uses
  store ptr %.pr, ptr %49, align 8, !tbaa !58, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26, !noalias !88
  %i.uu = icmp eq ptr %.pr, null
  br i1 %i.uu, label %bb.gm, label %bb.gj, !prof !373

bb.gj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit7
  call void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %49) #26, !inline_history !374
  %.pr155 = load ptr, ptr %49, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %.pr155, null
  br i1 %.not.i, label %_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE.exit, label %bb.gk, !prof !375

bb.gk:                                            ; preds = %bb.gj
  %i.uv = getelementptr inbounds nuw i8, ptr %.pr155, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !75, !range !86, !noundef !87
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %49) #26
  br label %_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE.exit

bb.gm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit7
  %.phi.trans.insert307 = getelementptr inbounds nuw i8, ptr %51, i64 24
  %.pre308 = load ptr, ptr %.phi.trans.insert307, align 8, !tbaa !62
  %.phi.trans.insert309 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %.pre310 = load ptr, ptr %.phi.trans.insert309, align 16, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26, !noalias !88
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  store ptr %.pre308, ptr %i.uy, align 8, !tbaa !62
  %.not.i.i.not.i.i.i.i = icmp eq ptr %.pre310, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit, label %bb.gn

bb.gn:                                            ; preds = %.thread392, %bb.gm
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

bb.go:                                            ; preds = %_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE.exit
  %i.vc = invoke noundef zeroext i1 %.pre172(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %51, i32 noundef 3)
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit unwind label %bb.gp ; 0 uses

bb.gp:                                            ; preds = %bb.go
  %i.vd = landingpad { ptr, i32 }
          catch ptr null
  %i.ve = extractvalue { ptr, i32 } %i.vd, 0
  call void @__clang_call_terminate(ptr %i.ve) #28
  unreachable

_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit: ; preds = %bb.gn, %bb.gm, %_ZNO5arrow12_GLOBAL__N_117MakeFormatterImpl4MakeERKNS_8DataTypeE.exit, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  ret void

bb.gq:                                            ; preds = %.noexc, %.invoke, %bb.gi, %bb.gf, %bb.gc, %bb.fz, %.noexc25, %.noexc23, %bb.bs, %bb.bp, %.noexc19, %.noexc17, %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.b
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.gq, %bb.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i, %bb.aj, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i, %bb.cr, %bb.ds, %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i176.i ], [ %i.ua, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i171.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i110.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i139.i ], [ %.pn9.i.i, %bb.aj ], [ %.pn9.i148.i, %bb.bk ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i151.i ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i156.i ], [ %.pn9.i160.i, %bb.cr ], [ %.pn9.i162.i, %bb.ds ], [ %.pn24.pn.i.i, %bb.es ], [ %i.tp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i166.i ], [ %i.vf, %bb.gq ], [ %.pn28.pn.i, %bb.fy ]
  %i.vg = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.vh = load ptr, ptr %i.vg, align 16, !tbaa !57 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i2, label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit3, label %bb.gr

bb.gr:                                            ; preds = %.body
  %i.vi = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %51, i32 noundef 3)
          to label %_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit3 unwind label %bb.gs ; 0 uses

bb.gs:                                            ; preds = %bb.gr
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #28
  unreachable

_ZN5arrow12_GLOBAL__N_117MakeFormatterImplD2Ev.exit3: ; preds = %.body, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  resume { ptr, i32 } %eh.lpad-body
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt8functionIFNS_6StatusERKNS_5ArrayES5_S5_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.18", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !58
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !376

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !102    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !70
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !70
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !102    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !70
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit: ; preds = %bb.c
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread, !prof !74

_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !75, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit, %_ZN5arrow6ResultISt8functionIFvRKNS_5ArrayElPSoEEE7DestroyEv.exit.thread, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow15VisitEditScriptERKNS_5ArrayERKSt8functionIFNS_6StatusEllllEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %4 = alloca [2 x %"class.std::shared_ptr.15"], align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.18", align 1 ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %8 = alloca %"class.std::shared_ptr.21", align 8 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.18", align 1 ; 4 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.21", align 8 ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::shared_ptr.27", align 16 ; 6 uses
  %15 = alloca %"class.std::shared_ptr.30", align 16 ; 5 uses
  %16 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %17 = alloca %"class.std::shared_ptr.30", align 8 ; 4 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.i = load atomic i8, ptr @_ZGVZN5arrow15VisitEditScriptERKNS_5ArrayERKSt8functionIFNS_6StatusEllllEEE10edits_type acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !377

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow15VisitEditScriptERKNS_5ArrayERKSt8functionIFNS_6StatusEllllEEE10edits_type) #26
  %.not73 = icmp eq i32 %i.k, 0
  br i1 %.not73, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.thread

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation:bb.a
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, %bb.k, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_7MapTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !301   ; 4 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !408  ; 2 uses
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52   ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !864
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow18FixedSizeListArray6valuesEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !386
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !409
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !429
  %i.o = add nsw i64 %i.n, %.val4
  %i.p = load i32, ptr %i.d, align 8, !tbaa !864
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.o, %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %i.a, align 8, !tbaa !408
  store ptr %.val5, ptr %i.b, align 8, !tbaa !52
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !57
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.peel.i.i.i, label %.loopexit.i.i.i, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i: ; preds = %bb.b
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !62
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load i32, ptr %i.d, align 8, !tbaa !864
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.peel.next.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit

.peel.next.i.i.i:                                 ; preds = %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i ], [ 1, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i ] ; 2 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.30, i64 noundef 2) ; 0 uses
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow18FixedSizeListArray6valuesEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !386
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !409
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !429
  %i.ac = add nsw i64 %i.ab, %.val4
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !864
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ac, %i.ae
  %i.ag = add nsw i64 %i.af, %indvars.iv.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !408
  store ptr %.val5, ptr %i.b, align 8, !tbaa !52
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !57
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i, %bb.b
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i: ; preds = %.peel.next.i.i.i
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !62
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !864
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next.i.i.i, %i.ak
  br i1 %i.al, label %.peel.next.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit, !llvm.loop !867

_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKS6_E8ListImplJRKNS0_5ArrayElPSoEENS5_IX16is_invocable_r_vIS6_T0_DpT1_EES6_E4typeEOSI_DpOSJ_.exit: ; preds = %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.i.i.i, %bb.a, %_ZNKSt8functionIFvRKN5arrow5ArrayElPSoEEclES3_lS4_.exit.peel.i.i.i
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.31, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitINS0_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS0_6StatusEE4typeERKSB_E8ListImplE10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_E8ListImpl, ptr %0, align 8, !tbaa !777
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !301
  store ptr %.val, ptr %0, align 8, !tbaa !301
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 3, label %bb.k
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.val6, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  resume { ptr, i32 } %i.g

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i: ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !301
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !301 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS_6StatusEE4typeERKS5_EN8ListImplD2Ev.exit.i.i, %bb.k, %_ZNSt14_Function_base13_Base_managerIZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitINS1_17FixedSizeListTypeEEENSt9enable_ifIXsr17is_list_like_typeIT_EE5valueENS1_6StatusEE4typeERKS7_E8ListImplE15_M_init_functorIRKSD_EEvRSt9_Any_dataOS7_.exit.i, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow18FixedSizeListArray6valuesEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8functionIFvRKN5arrow5ArrayElPSoEEaSIZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplEENSt9enable_ifIXsr9_CallableIT_EE5valueERS6_E4typeEOSF_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27 ; 3 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !868
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !868
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
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

bb.b:                                             ; preds = %bb.a
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS_10StructTypeEEN10StructImplD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !311    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !314
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit

_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !311    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !329

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !311
  br label %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !314
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt8functionIFvRKN5arrow5ArrayElPSoEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEES7_EvT_S9_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %.05.i, ptr noundef nonnull align 8 dereferenceable(32) %.05.i, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !329

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt8functionIFvRKN5arrow5ArrayElPSoEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt8functionIFvRKN5arrow5ArrayElPSoEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvRKN5arrow5ArrayElPSoEZNS0_12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplE9_M_invokeERKSt9_Any_dataS3_OlOS4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !869
  %.val4 = load i64, ptr %2, align 8, !tbaa !408  ; 5 uses
  %.val5 = load ptr, ptr %3, align 8, !tbaa !52   ; 5 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.val5, ptr noundef nonnull @.str.33, i64 noundef 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !409  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !871
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN5arrow12_GLOBAL__N_117MakeFormatterImpl5VisitERKNS0_10StructTypeEE10StructImplJRKNS0_5ArrayElPSoEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ac ] ; 4 uses
  %.02338.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.ac ] ; 3 uses
  %.not.i.i.i = icmp eq i32 %.02338.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c
end_hunk_1
