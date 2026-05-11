inline.NumInlined: 4059
inline.NumDeleted: 2113
begin_hunk_0_@_ZN4node12_GLOBAL__N_125IdempotentDataQueueReader4PullESt8functionIFviPKNS_9DataQueue3VecEmS2_IFvmEEEEiPS4_mm:bb.a
  %8 = alloca %"class.std::function.581", align 8 ; 6 uses
  %9 = alloca %"class.std::function.581", align 8 ; 6 uses
  %10 = alloca %"class.std::function.564", align 8 ; 7 uses
  %.sroa.3 = alloca %"class.std::function.564", align 8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !316 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
end_hunk_0
begin_hunk_1_@_ZN4node12_GLOBAL__N_125IdempotentDataQueueReader4PullESt8functionIFviPKNS_9DataQueue3VecEmS2_IFvmEEEEiPS4_mm:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  store ptr %i.dh, ptr %i.dm, align 8
  %.sroa.3.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.16..sroa_idx, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2IZNS0_12_GLOBAL__N_125IdempotentDataQueueReader4PullES8_iPS2_mmEUliS4_mS6_E_vEEOT_.exit

_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2IZNS0_12_GLOBAL__N_125IdempotentDataQueueReader4PullES8_iPS2_mmEUliS4_mS6_E_vEEOT_.exit: ; preds = %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit, %bb.af
end_hunk_1
begin_hunk_2_@_ZN4node12_GLOBAL__N_128NonIdempotentDataQueueReader4PullESt8functionIFviPKNS_9DataQueue3VecEmS2_IFvmEEEEiPS4_mm:bb.a
  %10 = alloca %"class.std::function.581", align 8 ; 6 uses
  %11 = alloca %"class.std::function.581", align 8 ; 6 uses
  %12 = alloca %"class.std::function.564", align 8 ; 7 uses
  %.sroa.3 = alloca %"class.std::function.564", align 8 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !noalias !330 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
end_hunk_2
begin_hunk_3_@_ZN4node12_GLOBAL__N_128NonIdempotentDataQueueReader4PullESt8functionIFviPKNS_9DataQueue3VecEmS2_IFvmEEEEiPS4_mm:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  store ptr %i.et, ptr %i.ey, align 8
  %.sroa.3.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.16..sroa_idx, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2IZNS0_12_GLOBAL__N_128NonIdempotentDataQueueReader4PullES8_iPS2_mmEUliS4_mS6_E_vEEOT_.exit

_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2IZNS0_12_GLOBAL__N_128NonIdempotentDataQueueReader4PullES8_iPS2_mmEUliS4_mS6_E_vEEOT_.exit: ; preds = %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit, %bb.at
end_hunk_3
