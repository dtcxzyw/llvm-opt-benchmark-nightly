Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PassBuilder?download=true
inline.NumInlined: 50905
inline.NumDeleted: 18556
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementE:bb.a
  %bcmp.i2928 = tail call i32 @bcmp(ptr nonnull %.sroa.01048.0.copyload, ptr nonnull @.str.175, i64 %.sroa.21049.0.copyload)
  %i.zs = icmp eq i32 %bcmp.i2928, 0
  br i1 %i.zs, label %_ZN4llvm5ErrorD2Ev.exit2930, label %_ZN4llvmeqENS_9StringRefES0_.exit2934

_ZN4llvm5ErrorD2Ev.exit2930:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2929
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_22StripDeadDebugInfoPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %223)
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2934:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2929
  %i.zt = load i128, ptr %.sroa.01048.0.copyload, align 1
  %i.zu = xor i128 %i.zt, 148148874381909430653945447654926480499
  %i.zv = getelementptr i8, ptr %.sroa.01048.0.copyload, i64 5
  %i.zw = load i128, ptr %i.zv, align 1
  %i.zx = xor i128 %i.zw, 153387922750495617943091720670394278957
  %i.zy = or i128 %i.zu, %i.zx
  %i.zz = icmp ne i128 %i.zy, 0
  %i.aaa = zext i1 %i.zz to i32
  %i.aab = icmp eq i32 %i.aaa, 0
  br i1 %i.aab, label %_ZN4llvm5ErrorD2Ev.exit2935, label %_ZN4llvmeqENS_9StringRefES0_.exit2954

_ZN4llvm5ErrorD2Ev.exit2935:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2934
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_23StripDeadPrototypesPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %224)
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2939:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2851
  %bcmp.i2938 = tail call i32 @bcmp(ptr nonnull %.sroa.01048.0.copyload, ptr nonnull @.str.177, i64 %.sroa.21049.0.copyload)
  %i.aac = icmp eq i32 %bcmp.i2938, 0
  br i1 %i.aac, label %_ZN4llvm5ErrorD2Ev.exit2940, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2940:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2939
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_21StripDebugDeclarePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %225)
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2944:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2881
  %bcmp.i2943 = tail call i32 @bcmp(ptr nonnull %.sroa.01048.0.copyload, ptr nonnull @.str.178, i64 %.sroa.21049.0.copyload)
  %i.aad = icmp eq i32 %bcmp.i2943, 0
  br i1 %i.aad, label %_ZN4llvm5ErrorD2Ev.exit2945, label %_ZN4llvmeqENS_9StringRefES0_.exit2984

_ZN4llvm5ErrorD2Ev.exit2945:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2944
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_24StripNonDebugSymbolsPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %226)
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2949:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2442
  %bcmp.i2948 = tail call i32 @bcmp(ptr %.sroa.01048.0.copyload, ptr nonnull @.str.179, i64 %.sroa.21049.0.copyload)
  %i.aae = icmp eq i32 %bcmp.i2948, 0
  br i1 %i.aae, label %_ZN4llvm5ErrorD2Ev.exit2950, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2950:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2949
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_30StripNonLineTableDebugInfoPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %227)
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2954:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2934
  %bcmp.i2953 = tail call i32 @bcmp(ptr nonnull %.sroa.01048.0.copyload, ptr nonnull @.str.180, i64 %.sroa.21049.0.copyload)
  %i.aaf = icmp eq i32 %bcmp.i2953, 0
  br i1 %i.aaf, label %_ZN4llvm5ErrorD2Ev.exit2955, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2955:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2954
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_22StripDeadCGProfilePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %228)
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2959:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2801
  %bcmp.i2958 = tail call i32 @bcmp(ptr %.sroa.01048.0.copyload, ptr nonnull @.str.181, i64 %.sroa.21049.0.copyload)
  %i.aag = icmp eq i32 %bcmp.i2958, 0
  br i1 %i.aag, label %_ZN4llvm5ErrorD2Ev.exit2960, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2960:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2959
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_22TriggerCrashModulePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %229)
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2964:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2447
  %bcmp.i2963 = tail call i32 @bcmp(ptr %.sroa.01048.0.copyload, ptr nonnull @.str.182, i64 %.sroa.21049.0.copyload)
  %i.aah = icmp eq i32 %bcmp.i2963, 0
  br i1 %i.aah, label %_ZN4llvm5ErrorD2Ev.exit2965, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2965:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2964
  tail call fastcc void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassIN12_GLOBAL__N_124TriggerVerifierErrorPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2969:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2836
  %bcmp.i2968 = tail call i32 @bcmp(ptr %.sroa.01048.0.copyload, ptr nonnull @.str.183, i64 %.sroa.21049.0.copyload)
  %i.aai = icmp eq i32 %bcmp.i2968, 0
  br i1 %i.aai, label %_ZN4llvm5ErrorD2Ev.exit2970, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2970:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2969
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_25ModuleThreadSanitizerPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %230)
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2974:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2924
  %bcmp.i2973 = tail call i32 @bcmp(ptr %.sroa.01048.0.copyload, ptr nonnull @.str.184, i64 %.sroa.21049.0.copyload)
  %i.aaj = icmp eq i32 %bcmp.i2973, 0
  br i1 %i.aaj, label %_ZN4llvm5ErrorD2Ev.exit2975, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2975:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2974
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_17TypeSanitizerPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %231)
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2979:            ; preds = %bb.u
  %bcmp.i2978 = tail call i32 @bcmp(ptr %.sroa.01048.0.copyload, ptr nonnull @.str.185, i64 %.sroa.21049.0.copyload)
  %i.aak = icmp eq i32 %bcmp.i2978, 0
  br i1 %i.aak, label %_ZN4llvm5ErrorD2Ev.exit2980, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2980:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2979
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #27
  store i8 1, ptr %232, align 1, !tbaa !449
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_12VerifierPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %232)
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2984:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2944
  %bcmp.i2983 = tail call i32 @bcmp(ptr nonnull %.sroa.01048.0.copyload, ptr nonnull @.str.186, i64 %.sroa.21049.0.copyload)
  %i.aal = icmp eq i32 %bcmp.i2983, 0
  br i1 %i.aal, label %_ZN4llvm5ErrorD2Ev.exit2985, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2985:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2984
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_19CallGraphViewerPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %233)
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2989:            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2871
  %bcmp.i2988 = tail call i32 @bcmp(ptr nonnull %.sroa.01048.0.copyload, ptr nonnull @.str.187, i64 %.sroa.21049.0.copyload)
  %i.aam = icmp eq i32 %bcmp.i2988, 0
  br i1 %i.aam, label %_ZN4llvm5ErrorD2Ev.exit2990, label %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626

_ZN4llvm5ErrorD2Ev.exit2990:                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2989
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #27
  %i.aan = getelementptr inbounds nuw i8, ptr %234, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %234, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.aan, align 8, !tbaa !2330
  %i.aao = getelementptr inbounds nuw i8, ptr %234, i64 17
  store i8 0, ptr %i.aao, align 1, !tbaa !2331
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_22WholeProgramDevirtPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(18) %234)
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #27
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2984, %_ZN4llvmeqENS_9StringRefES0_.exit2979, %_ZN4llvmeqENS_9StringRefES0_.exit2974, %_ZN4llvmeqENS_9StringRefES0_.exit2969, %_ZN4llvmeqENS_9StringRefES0_.exit2964, %_ZN4llvmeqENS_9StringRefES0_.exit2959, %_ZN4llvmeqENS_9StringRefES0_.exit2954, %_ZN4llvmeqENS_9StringRefES0_.exit2949, %_ZN4llvmeqENS_9StringRefES0_.exit2939, %_ZN4llvmeqENS_9StringRefES0_.exit2914, %_ZN4llvmeqENS_9StringRefES0_.exit2901, %_ZN4llvmeqENS_9StringRefES0_.exit2894, %_ZN4llvmeqENS_9StringRefES0_.exit2866, %_ZN4llvmeqENS_9StringRefES0_.exit2861, %_ZN4llvmeqENS_9StringRefES0_.exit2831, %_ZN4llvmeqENS_9StringRefES0_.exit2826, %_ZN4llvmeqENS_9StringRefES0_.exit2786, %_ZN4llvmeqENS_9StringRefES0_.exit2776, %_ZN4llvmeqENS_9StringRefES0_.exit2748, %_ZN4llvmeqENS_9StringRefES0_.exit2710, %_ZN4llvmeqENS_9StringRefES0_.exit2705, %_ZN4llvmeqENS_9StringRefES0_.exit2690, %_ZN4llvmeqENS_9StringRefES0_.exit2648, %_ZN4llvmeqENS_9StringRefES0_.exit2643, %_ZN4llvmeqENS_9StringRefES0_.exit2559, %_ZN4llvmeqENS_9StringRefES0_.exit2534, %_ZN4llvmeqENS_9StringRefES0_.exit2457, %_ZN4llvmeqENS_9StringRefES0_.exit2342, %_ZN4llvmeqENS_9StringRefES0_.exit2322, %_ZN4llvmeqENS_9StringRefES0_.exit2317, %bb.u, %_ZN4llvmeqENS_9StringRefES0_.exit2989
  %i.aap = tail call noundef zeroext i1 @_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_(ptr %.sroa.01048.0.copyload, i64 %.sroa.21049.0.copyload, ptr nonnull @.str.188, i64 11)
  %.sroa.0702.0.copyload = load ptr, ptr %3, align 8, !tbaa !186 ; 3 uses
  %.sroa.2703.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187 ; 5 uses
  br i1 %i.aap, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i, label %bb.ay

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626
  %.not.i.i.i2991 = icmp ugt i64 %.sroa.2703.0.copyload, 10
  tail call void @llvm.assume(i1 %.not.i.i.i2991)
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0702.0.copyload, i64 11
  %i.aar = icmp eq i64 %.sroa.2703.0.copyload, 11
  br i1 %i.aar, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_17AllocTokenOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i:  ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0702.0.copyload, i64 12
  %.not.i.i14.i = icmp ne i64 %.sroa.2703.0.copyload, 12
  tail call void @llvm.assume(i1 %.not.i.i14.i)
  %i.aat = add i64 %.sroa.2703.0.copyload, -13
  br label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_17AllocTokenOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_17AllocTokenOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i
  %.sroa.018.0.i = phi ptr [ %i.aaq, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.aas, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i ]
  %.sroa.9.0.i = phi i64 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i ], [ %i.aat, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i ]
  call fastcc void @_ZN12_GLOBAL__N_126parseAllocTokenPassOptionsEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1212") align 8 %29, ptr nonnull %.sroa.018.0.i, i64 %.sroa.9.0.i) #27, !inline_history !1607
  %i.aau = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.aav = load i8, ptr %i.aau, align 8
  %i.aaw = trunc i8 %i.aav to i1
  br i1 %i.aaw, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_17AllocTokenOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #27
  call void @_ZN4llvm14AllocTokenPassC1ENS_17AllocTokenOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %235, ptr noundef nonnull byval(%"struct.llvm::AllocTokenOptions") align 8 %29) #27
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_14AllocTokenPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %235)
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit.sink.split

bb.ax:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_17AllocTokenOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  %i.aax = load i64, ptr %29, align 8
  %i.aay = inttoptr i64 %i.aax to ptr
  store ptr null, ptr %29, align 8
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit.sink.split

bb.ay:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit2989.thread8626
  %i.aaz = tail call noundef zeroext i1 @_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_(ptr %.sroa.0702.0.copyload, i64 %.sroa.2703.0.copyload, ptr nonnull @.str.189, i64 4)
  br i1 %i.aaz, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2997, label %bb.bb

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2997: ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %236) #27
  %.sroa.0698.0.copyload = load ptr, ptr %3, align 8, !tbaa !186 ; 2 uses
  %.sroa.2699.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187 ; 4 uses
  %.not.i.i.i2996 = icmp ugt i64 %.sroa.2699.0.copyload, 3
  tail call void @llvm.assume(i1 %.not.i.i.i2996)
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.0698.0.copyload, i64 4
  %i.abb = icmp eq i64 %.sroa.2699.0.copyload, 4
  br i1 %i.abb, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_23AddressSanitizerOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3000

_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3000: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2997
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.0698.0.copyload, i64 5
  %.not.i.i14.i3002 = icmp ne i64 %.sroa.2699.0.copyload, 5
  tail call void @llvm.assume(i1 %.not.i.i14.i3002)
  %i.abd = add i64 %.sroa.2699.0.copyload, -6
  br label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_23AddressSanitizerOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_23AddressSanitizerOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2997, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3000
  %.sroa.018.0.i3004 = phi ptr [ %i.aba, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2997 ], [ %i.abc, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3000 ]
  %.sroa.9.0.i3005 = phi i64 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i2997 ], [ %i.abd, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3000 ]
  call fastcc void @_ZN12_GLOBAL__N_120parseASanPassOptionsEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1220") align 8 %236, ptr nonnull %.sroa.018.0.i3004, i64 %.sroa.9.0.i3005) #27, !inline_history !1608
  %i.abe = getelementptr inbounds nuw i8, ptr %236, i64 24
  %i.abf = load i8, ptr %i.abe, align 8
  %i.abg = trunc i8 %i.abf to i1
  br i1 %i.abg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_23AddressSanitizerOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %237) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %28, ptr noundef nonnull align 8 dereferenceable(20) %236, i64 20, i1 false)
  call void @_ZN4llvm20AddressSanitizerPassC1ERKNS_23AddressSanitizerOptionsEbbNS_12AsanDtorKindENS_12AsanCtorKindE(ptr noundef nonnull align 4 dereferenceable(32) %237, ptr noundef nonnull align 8 dereferenceable(17) %28, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_20AddressSanitizerPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(32) %237)
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #27
  br label %_ZN4llvm8ExpectedINS_23AddressSanitizerOptionsEED2Ev.exit

bb.ba:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_23AddressSanitizerOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  %i.abh = load i64, ptr %236, align 8, !tbaa !364, !noalias !2332
  %i.abi = inttoptr i64 %i.abh to ptr
  store ptr null, ptr %236, align 8, !tbaa !364, !noalias !2332
  br label %_ZN4llvm8ExpectedINS_23AddressSanitizerOptionsEED2Ev.exit

_ZN4llvm8ExpectedINS_23AddressSanitizerOptionsEED2Ev.exit: ; preds = %bb.ba, %bb.az
  %storemerge9993 = phi ptr [ null, %bb.az ], [ %i.abi, %bb.ba ]
  store ptr %storemerge9993, ptr %0, align 8, !tbaa !369
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

bb.bb:                                            ; preds = %bb.ay
  %.sroa.0696.0.copyload = load ptr, ptr %3, align 8, !tbaa !186
  %.sroa.2697.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187
  %i.abj = tail call noundef zeroext i1 @_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_(ptr %.sroa.0696.0.copyload, i64 %.sroa.2697.0.copyload, ptr nonnull @.str.190, i64 10)
  br i1 %i.abj, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3014, label %bb.be

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3014: ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #27
  %.sroa.0694.0.copyload = load ptr, ptr %3, align 8, !tbaa !186 ; 2 uses
  %.sroa.2695.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187 ; 4 uses
  %.not.i.i.i3013 = icmp ugt i64 %.sroa.2695.0.copyload, 9
  tail call void @llvm.assume(i1 %.not.i.i.i3013)
  %i.abk = getelementptr inbounds nuw i8, ptr %.sroa.0694.0.copyload, i64 10
  %i.abl = icmp eq i64 %.sroa.2695.0.copyload, 10
  br i1 %i.abl, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3017

_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3017: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3014
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.0694.0.copyload, i64 11
  %.not.i.i14.i3019 = icmp ne i64 %.sroa.2695.0.copyload, 11
  tail call void @llvm.assume(i1 %.not.i.i14.i3019)
  %i.abn = add i64 %.sroa.2695.0.copyload, -12
  br label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3014, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3017
  %.sroa.018.0.i3021 = phi ptr [ %i.abk, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3014 ], [ %i.abm, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3017 ]
  %.sroa.9.0.i3022 = phi i64 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3014 ], [ %i.abn, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3017 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr @.str.709, ptr %22, align 8, !tbaa !353, !noalias !2333
  %i.abo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 9, ptr %i.abo, align 8, !tbaa !352, !noalias !2333
  call void @_ZN4llvm11PassBuilder21parseSinglePassOptionENS_9StringRefES1_S1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %238, ptr nonnull %.sroa.018.0.i3021, i64 %.sroa.9.0.i3022, ptr nonnull @.str.708, i64 16, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.abp = getelementptr inbounds nuw i8, ptr %238, i64 8
  %i.abq = load i8, ptr %i.abp, align 8
  %i.abr = trunc i8 %i.abq to i1
  br i1 %i.abr, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #27
  %i.abs = load i8, ptr %238, align 8, !tbaa !308, !range !182, !noundef !183
  store i8 %i.abs, ptr %239, align 1
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_13CGProfilePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %239)
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #27
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

bb.bd:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedIbEENS_9StringRefEEEEDTclfp_tlS4_EEEOT_S4_S4_.exit
  %i.abt = load i64, ptr %238, align 8, !tbaa !364, !noalias !2334
  %i.abu = inttoptr i64 %i.abt to ptr
  store ptr null, ptr %238, align 8, !tbaa !364, !noalias !2334
  br label %_ZN4llvm8ExpectedIbED2Ev.exit

_ZN4llvm8ExpectedIbED2Ev.exit:                    ; preds = %bb.bd, %bb.bc
  %storemerge9992 = phi ptr [ null, %bb.bc ], [ %i.abu, %bb.bd ]
  store ptr %storemerge9992, ptr %0, align 8, !tbaa !369
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

bb.be:                                            ; preds = %bb.bb
  %.sroa.0692.0.copyload = load ptr, ptr %3, align 8, !tbaa !186
  %.sroa.2693.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187
  %i.abv = tail call noundef zeroext i1 @_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_(ptr %.sroa.0692.0.copyload, i64 %.sroa.2693.0.copyload, ptr nonnull @.str.191, i64 12)
  br i1 %i.abv, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3031, label %bb.bh

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3031: ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #27
  %.sroa.0690.0.copyload = load ptr, ptr %3, align 8, !tbaa !186 ; 2 uses
  %.sroa.2691.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187 ; 4 uses
  %.not.i.i.i3030 = icmp ugt i64 %.sroa.2691.0.copyload, 11
  tail call void @llvm.assume(i1 %.not.i.i.i3030)
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.0690.0.copyload, i64 12
  %i.abx = icmp eq i64 %.sroa.2691.0.copyload, 12
  br i1 %i.abx, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_18GlobalMergeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3034

_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3034: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3031
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.0690.0.copyload, i64 13
  %.not.i.i14.i3036 = icmp ne i64 %.sroa.2691.0.copyload, 13
  tail call void @llvm.assume(i1 %.not.i.i14.i3036)
  %i.abz = add i64 %.sroa.2691.0.copyload, -14
  br label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_18GlobalMergeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_18GlobalMergeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3031, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3034
  %.sroa.018.0.i3038 = phi ptr [ %i.abw, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3031 ], [ %i.aby, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3034 ]
  %.sroa.9.0.i3039 = phi i64 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3031 ], [ %i.abz, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3034 ]
  call fastcc void @_ZN12_GLOBAL__N_123parseGlobalMergeOptionsEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1233") align 8 %240, ptr nonnull %.sroa.018.0.i3038, i64 %.sroa.9.0.i3039) #27, !inline_history !1615
  %i.aca = getelementptr inbounds nuw i8, ptr %240, i64 16
  %i.acb = load i8, ptr %i.aca, align 16
  %i.acc = trunc i8 %i.acb to i1
  br i1 %i.acc, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_18GlobalMergeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %241) #27
  %i.acd = load ptr, ptr %1, align 8, !tbaa !307
  store ptr %i.acd, ptr %241, align 8, !tbaa !2337, !alias.scope !2338
  %i.ace = getelementptr inbounds nuw i8, ptr %241, i64 8
  %i.acf = load <2 x i64>, ptr %240, align 16
  store <2 x i64> %i.acf, ptr %i.ace, align 8, !alias.scope !2338
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_15GlobalMergePassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %241)
  call void @llvm.lifetime.end.p0(ptr nonnull %241) #27
  br label %_ZN4llvm8ExpectedINS_18GlobalMergeOptionsEED2Ev.exit

bb.bg:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_18GlobalMergeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  %i.acg = load i64, ptr %240, align 16, !tbaa !364, !noalias !2339
  %i.ach = inttoptr i64 %i.acg to ptr
  br label %_ZN4llvm8ExpectedINS_18GlobalMergeOptionsEED2Ev.exit

_ZN4llvm8ExpectedINS_18GlobalMergeOptionsEED2Ev.exit: ; preds = %bb.bg, %bb.bf
  %.sink = phi ptr [ %i.ach, %bb.bg ], [ null, %bb.bf ]
  store ptr %.sink, ptr %0, align 8, !tbaa !369
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

bb.bh:                                            ; preds = %bb.be
  %.sroa.0686.0.copyload = load ptr, ptr %3, align 8, !tbaa !186
  %.sroa.2687.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187
  %i.aci = tail call noundef zeroext i1 @_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_(ptr %.sroa.0686.0.copyload, i64 %.sroa.2687.0.copyload, ptr nonnull @.str.192, i64 13)
  br i1 %i.aci, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3048, label %bb.bk

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3048: ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %242) #27
  %.sroa.0684.0.copyload = load ptr, ptr %3, align 8, !tbaa !186 ; 2 uses
  %.sroa.2685.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187 ; 4 uses
  %.not.i.i.i3047 = icmp ugt i64 %.sroa.2685.0.copyload, 12
  tail call void @llvm.assume(i1 %.not.i.i.i3047)
  %i.acj = getelementptr inbounds nuw i8, ptr %.sroa.0684.0.copyload, i64 13
  %i.ack = icmp eq i64 %.sroa.2685.0.copyload, 13
  br i1 %i.ack, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_19EmbedBitcodeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3051

_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3051: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3048
  %i.acl = getelementptr inbounds nuw i8, ptr %.sroa.0684.0.copyload, i64 14
  %.not.i.i14.i3053 = icmp ne i64 %.sroa.2685.0.copyload, 14
  tail call void @llvm.assume(i1 %.not.i.i14.i3053)
  %i.acm = add i64 %.sroa.2685.0.copyload, -15
  br label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_19EmbedBitcodeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_19EmbedBitcodeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3048, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3051
  %.sroa.018.0.i3055 = phi ptr [ %i.acj, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3048 ], [ %i.acl, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3051 ]
  %.sroa.9.0.i3056 = phi i64 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i3048 ], [ %i.acm, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i3051 ]
  call fastcc void @_ZN12_GLOBAL__N_128parseEmbedBitcodePassOptionsEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1240") align 8 %242, ptr nonnull %.sroa.018.0.i3055, i64 %.sroa.9.0.i3056) #27, !inline_history !1620
  %i.acn = getelementptr inbounds nuw i8, ptr %242, i64 8
  %i.aco = load i8, ptr %i.acn, align 8
  %i.acp = trunc i8 %i.aco to i1
  br i1 %i.acp, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedINS_19EmbedBitcodeOptionsEEENS_9StringRefEEEEDTclfp_tlS5_EEEOT_S5_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %243) #27
  %.sroa.0683.0.copyload = load i16, ptr %242, align 8, !tbaa !308
  %.sroa.0.0.insert.insert.i = and i16 %.sroa.0683.0.copyload, 257
end_hunk_0
begin_hunk_1_@_ZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementE:bb.a
  store i8 0, ptr %i.exj, align 8, !tbaa !414, !alias.scope !2645
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_27ModuleToFunctionPassAdaptorEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(9) %672)
  %i.exk = load ptr, ptr %672, align 8, !tbaa !406 ; 3 uses
  %.not.i.i5891 = icmp eq ptr %i.exk, null
  br i1 %.not.i.i5891, label %_ZN4llvm5ErrorD2Ev.exit5894, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i5892

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i5892: ; preds = %bb.jk
  %i.exl = load ptr, ptr %i.exk, align 8, !tbaa !175
  %i.exm = getelementptr inbounds nuw i8, ptr %i.exl, i64 8
  %i.exn = load ptr, ptr %i.exm, align 8
  call void %i.exn(ptr noundef nonnull align 8 dereferenceable(8) %i.exk) #27, !inline_history !8
  br label %_ZN4llvm5ErrorD2Ev.exit5894

_ZN4llvm5ErrorD2Ev.exit5894:                      ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i5892, %bb.jk
  call void @_ZN4llvm25FunctionToLoopPassAdaptorD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %673) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %674) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %673) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %672) #27
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_117LoopRotateOptionsEED2Ev.exit

_ZN4llvm8ExpectedIN12_GLOBAL__N_117LoopRotateOptionsEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i5890, %_ZN4llvm5ErrorD2Ev.exit5894
  %storemerge9229 = phi ptr [ %i.ewu, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i5890 ], [ null, %_ZN4llvm5ErrorD2Ev.exit5894 ]
  store ptr %storemerge9229, ptr %0, align 8, !tbaa !369
  call void @llvm.lifetime.end.p0(ptr nonnull %671) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

bb.jl:                                            ; preds = %bb.jj
  %.sroa.018.0.copyload = load ptr, ptr %3, align 8, !tbaa !186
  %.sroa.219.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187
  %i.exo = tail call noundef zeroext i1 @_ZN4llvm11PassBuilder25checkParametrizedPassNameENS_9StringRefES1_(ptr %.sroa.018.0.copyload, i64 %.sroa.219.0.copyload, ptr nonnull @.str.433, i64 20)
  br i1 %i.exo, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i5900, label %bb.jp

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i5900: ; preds = %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %675) #27
  %.sroa.016.0.copyload = load ptr, ptr %3, align 8, !tbaa !186 ; 2 uses
  %.sroa.217.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187 ; 4 uses
  %.not.i.i.i5899 = icmp ugt i64 %.sroa.217.0.copyload, 19
  tail call void @llvm.assume(i1 %.not.i.i.i5899)
  %i.exp = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 20
  %i.exq = icmp eq i64 %.sroa.217.0.copyload, 20
  br i1 %i.exq, label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedISt4pairIbbEEENS_9StringRefEEEEDTclfp_tlS6_EEEOT_S6_S6_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i5903

_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i5903: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i5900
  %i.exr = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 21
  %.not.i.i14.i5905 = icmp ne i64 %.sroa.217.0.copyload, 21
  tail call void @llvm.assume(i1 %.not.i.i14.i5905)
  %i.exs = add i64 %.sroa.217.0.copyload, -22
  br label %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedISt4pairIbbEEENS_9StringRefEEEEDTclfp_tlS6_EEEOT_S6_S6_.exit

_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedISt4pairIbbEEENS_9StringRefEEEEDTclfp_tlS6_EEEOT_S6_S6_.exit: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i5900, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i5903
  %.sroa.018.0.i5907 = phi ptr [ %i.exp, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i5900 ], [ %i.exr, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i5903 ]
  %.sroa.9.0.i5908 = phi i64 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i5900 ], [ %i.exs, %_ZNK4llvm9StringRef11starts_withES0_.exit.i10.i5903 ]
  call fastcc void @_ZN12_GLOBAL__N_124parseLoopUnswitchOptionsEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.2421") align 8 %675, ptr nonnull %.sroa.018.0.i5907, i64 %.sroa.9.0.i5908) #27, !inline_history !32
  %i.ext = getelementptr inbounds nuw i8, ptr %675, i64 8
  %i.exu = load i8, ptr %i.ext, align 8
  %i.exv = trunc i8 %i.exu to i1
  br i1 %i.exv, label %bb.jo, label %bb.jm

bb.jm:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedISt4pairIbbEEENS_9StringRefEEEEDTclfp_tlS6_EEEOT_S6_S6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %676) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %677) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %678) #27
  %.sroa.015.0.copyload = load i16, ptr %675, align 8
  %.sroa.0.0.insert.insert.i5912 = and i16 %.sroa.015.0.copyload, 257
  store i16 %.sroa.0.0.insert.insert.i5912, ptr %678, align 2
  call void @_ZN4llvm31createFunctionToLoopPassAdaptorINS_22SimpleLoopUnswitchPassEEENS_25FunctionToLoopPassAdaptorEOT_b(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FunctionToLoopPassAdaptor") align 8 %677, ptr noundef nonnull align 1 dereferenceable(2) %678, i1 noundef zeroext false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  %i.exw = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2646 ; 6 uses
  %i.exx = load i64, ptr %677, align 8, !tbaa !495, !noalias !2646
  store ptr null, ptr %677, align 8, !tbaa !495, !noalias !2646
  %i.exy = getelementptr inbounds nuw i8, ptr %677, i64 8 ; 2 uses
  %i.exz = getelementptr inbounds nuw i8, ptr %677, i64 24
  %i.eya = load ptr, ptr %i.exz, align 8, !tbaa !403, !noalias !2646
  %i.eyb = getelementptr inbounds nuw i8, ptr %677, i64 32
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.exw, i64 8
  %i.eyd = getelementptr inbounds nuw i8, ptr %i.exw, i64 16
  %i.eye = load <2 x ptr>, ptr %i.exy, align 8, !tbaa !404, !noalias !2646
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.exy, i8 0, i64 24, i1 false), !noalias !2646
  %i.eyf = load i16, ptr %i.eyb, align 8, !noalias !2646
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_8FunctionENS_25FunctionToLoopPassAdaptorENS_15AnalysisManagerIS2_JEEEJEEE, i64 16), ptr %i.exw, align 8, !tbaa !175, !noalias !2646
  store i64 %i.exx, ptr %i.eyc, align 8, !tbaa !495, !noalias !2646
  store <2 x ptr> %i.eye, ptr %i.eyd, align 8, !tbaa !404, !noalias !2646
  %i.eyg = getelementptr inbounds nuw i8, ptr %i.exw, i64 32
  store ptr %i.eya, ptr %i.eyg, align 8, !tbaa !403, !noalias !2646
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.exw, i64 40
  store i16 %i.eyf, ptr %i.eyh, align 8, !noalias !2646
  %i.eyi = ptrtoint ptr %i.exw to i64
  store i64 %i.eyi, ptr %676, align 8, !tbaa !406, !alias.scope !2646
  %i.eyj = getelementptr inbounds nuw i8, ptr %676, i64 8
  store i8 0, ptr %i.eyj, align 8, !tbaa !414, !alias.scope !2646
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_27ModuleToFunctionPassAdaptorEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(9) %676)
  %i.eyk = load ptr, ptr %676, align 8, !tbaa !406 ; 3 uses
  %.not.i.i5913 = icmp eq ptr %i.eyk, null
  br i1 %.not.i.i5913, label %bb.jn, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i5914

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i5914: ; preds = %bb.jm
  %i.eyl = load ptr, ptr %i.eyk, align 8, !tbaa !175
  %i.eym = getelementptr inbounds nuw i8, ptr %i.eyl, i64 8
  %i.eyn = load ptr, ptr %i.eym, align 8
  call void %i.eyn(ptr noundef nonnull align 8 dereferenceable(8) %i.eyk) #27, !inline_history !8
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i5914
  call void @_ZN4llvm25FunctionToLoopPassAdaptorD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %677) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %678) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %677) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %676) #27
  br label %_ZN4llvm8ExpectedISt4pairIbbEED2Ev.exit

bb.jo:                                            ; preds = %_ZN4llvm11PassBuilder19parsePassParametersIRFNS_8ExpectedISt4pairIbbEEENS_9StringRefEEEEDTclfp_tlS6_EEEOT_S6_S6_.exit
  %i.eyo = load i64, ptr %675, align 8, !tbaa !364, !noalias !2647
  %i.eyp = inttoptr i64 %i.eyo to ptr
  store ptr null, ptr %675, align 8, !tbaa !364, !noalias !2647
  br label %_ZN4llvm8ExpectedISt4pairIbbEED2Ev.exit

_ZN4llvm8ExpectedISt4pairIbbEED2Ev.exit:          ; preds = %bb.jo, %bb.jn
  %storemerge = phi ptr [ null, %bb.jn ], [ %i.eyp, %bb.jo ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !369
  call void @llvm.lifetime.end.p0(ptr nonnull %675) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

bb.jp:                                            ; preds = %bb.jl
  %i.eyq = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.eyr = load ptr, ptr %i.eyq, align 8, !tbaa !173 ; 2 uses
  %i.eys = getelementptr inbounds nuw i8, ptr %1, i64 1336
  %i.eyt = load i32, ptr %i.eys, align 8, !tbaa !313 ; 2 uses
  %i.eyu = zext i32 %i.eyt to i64
  %.idx9310 = shl nuw nsw i64 %i.eyu, 5
  %i.eyv = getelementptr inbounds nuw i8, ptr %i.eyr, i64 %.idx9310
  %.not20229290 = icmp eq i32 %i.eyt, 0
  br i1 %.not20229290, label %.critedge2050, label %.critedge2048

bb.jq:                                            ; preds = %.critedge2048
  %i.eyw = getelementptr inbounds nuw i8, ptr %.09291, i64 32 ; 2 uses
  %.not2022 = icmp eq ptr %i.eyw, %i.eyv
  br i1 %.not2022, label %.critedge2050, label %.critedge2048

.critedge2048:                                    ; preds = %bb.jp, %bb.jq
  %.09291 = phi ptr [ %i.eyw, %bb.jq ], [ %i.eyr, %bb.jp ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !186
  %.sroa.2.0.copyload = load i64, ptr %.sroa.21049.0..sroa_idx, align 8, !tbaa !187
  %i.eyx = load ptr, ptr %i.a, align 8, !tbaa !376 ; 2 uses
  %i.eyy = load ptr, ptr %i.c, align 8, !tbaa !372
  %i.eyz = ptrtoint ptr %i.eyy to i64
  %i.eza = ptrtoint ptr %i.eyx to i64
  %i.ezb = sub i64 %i.eyz, %i.eza
  %i.ezc = sdiv exact i64 %i.ezb, 40
  %i.ezd = tail call noundef zeroext i1 @_ZNKSt8functionIFbN4llvm9StringRefERNS0_11PassManagerINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEENS0_8ArrayRefINS0_11PassBuilder15PipelineElementEEEEEclES1_S7_SB_(ptr noundef nonnull align 8 dereferenceable(32) %.09291, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.eyx, i64 %i.ezc)
  br i1 %i.ezd, label %_ZN4llvm5ErrorD2Ev.exit5920, label %bb.jq

_ZN4llvm5ErrorD2Ev.exit5920:                      ; preds = %.critedge2048
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

.critedge2050:                                    ; preds = %bb.jq, %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %679) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %680) #27
  %i.eze = ptrtoint ptr %3 to i64
  %i.ezf = getelementptr inbounds nuw i8, ptr %680, i64 48 ; 2 uses
  store ptr @.str.434, ptr %680, align 8, !tbaa !186, !alias.scope !2648
  %.sroa.22.0..sroa_idx.i.i.i.i5921 = getelementptr inbounds nuw i8, ptr %680, i64 8
  store i64 24, ptr %.sroa.22.0..sroa_idx.i.i.i.i5921, align 8, !tbaa !187, !alias.scope !2648
  %i.ezg = getelementptr inbounds nuw i8, ptr %680, i64 16
  store ptr %i.ezf, ptr %i.ezg, align 8, !tbaa !189, !alias.scope !2648
  %.sroa.2.0..sroa_idx.i.i.i.i5922 = getelementptr inbounds nuw i8, ptr %680, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i5922, align 8, !tbaa !187, !alias.scope !2648
  %i.ezh = getelementptr inbounds nuw i8, ptr %680, i64 32
  store i8 1, ptr %i.ezh, align 8, !tbaa !193, !alias.scope !2648
  %i.ezi = getelementptr inbounds nuw i8, ptr %680, i64 40 ; 2 uses
  store i64 %i.eze, ptr %i.ezi, align 8, !tbaa !195, !alias.scope !2648
  %i.ezj = ptrtoint ptr %i.ezi to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKS3_EEEEvlS2_S3_, ptr %i.ezf, align 8, !alias.scope !2648
  %.sroa.4.0..sroa_idx.i.i.i5923 = getelementptr inbounds nuw i8, ptr %680, i64 56
  store i64 %i.ezj, ptr %.sroa.4.0..sroa_idx.i.i.i5923, align 8, !tbaa !196, !alias.scope !2648
  call void @_ZNK4llvm19formatv_object_base3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %679, ptr noundef nonnull align 8 dereferenceable(33) %680)
  call void @llvm.lifetime.start.p0(ptr nonnull %681) #27
  %i.ezk = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #27 ; 2 uses
  %i.ezl = extractvalue { i32, ptr } %i.ezk, 0
  store i32 %i.ezl, ptr %681, align 8
  %i.ezm = getelementptr inbounds nuw i8, ptr %681, i64 8
  %i.ezn = extractvalue { i32, ptr } %i.ezk, 1
  store ptr %i.ezn, ptr %i.ezm, align 8
  call void @_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeEEENS_5ErrorEDpOT0_(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %679, ptr noundef nonnull align 8 dereferenceable(16) %681)
  call void @llvm.lifetime.end.p0(ptr nonnull %681) #27
  %i.ezo = load ptr, ptr %679, align 8, !tbaa !365 ; 2 uses
  %i.ezp = getelementptr inbounds nuw i8, ptr %679, i64 16 ; 2 uses
  %i.ezq = icmp eq ptr %i.ezo, %i.ezp
  br i1 %i.ezq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5926, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5924

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5924: ; preds = %.critedge2050
  %i.ezr = load i64, ptr %i.ezp, align 8, !tbaa !196
  %i.ezs = add i64 %i.ezr, 1
  call void @_ZdlPvm(ptr noundef %i.ezo, i64 noundef %i.ezs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5926

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5926: ; preds = %.critedge2050, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5924
  call void @llvm.lifetime.end.p0(ptr nonnull %680) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %679) #27
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit.sink.split: ; preds = %bb.aw, %bb.ax
  %.sink9994 = phi ptr [ %i.aay, %bb.ax ], [ null, %bb.aw ]
  store ptr %.sink9994, ptr %0, align 8, !tbaa !369
  br label %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit

_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit: ; preds = %_ZN4llvm8ExpectedINS_17AllocTokenOptionsEED2Ev.exit.sink.split, %bb.fn, %bb.gd, %bb.gc, %bb.fm, %_ZN4llvm5ErrorD2Ev.exit5920, %_ZN4llvm5ErrorD2Ev.exit2115, %bb.o, %.critedge2040, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5926, %_ZN4llvm8ExpectedISt4pairIbbEED2Ev.exit, %_ZN4llvm8ExpectedIN12_GLOBAL__N_117LoopRotateOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_11LICMOptionsEED2Ev.exit5877, %_ZN4llvm8ExpectedINS_11LICMOptionsEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit5830, %_ZN4llvm5ErrorD2Ev.exit5822, %_ZN4llvm5ErrorD2Ev.exit5814, %_ZN4llvm5ErrorD2Ev.exit5806, %_ZN4llvm5ErrorD2Ev.exit5798, %_ZN4llvm5ErrorD2Ev.exit5785, %_ZN4llvm5ErrorD2Ev.exit5777, %_ZN4llvm5ErrorD2Ev.exit5769, %_ZN4llvm5ErrorD2Ev.exit5761, %_ZN4llvm5ErrorD2Ev.exit5753, %_ZN4llvm5ErrorD2Ev.exit5745, %_ZN4llvm5ErrorD2Ev.exit5737, %_ZN4llvm5ErrorD2Ev.exit5729, %_ZN4llvm5ErrorD2Ev.exit5721, %_ZN4llvm5ErrorD2Ev.exit5713, %_ZN4llvm5ErrorD2Ev.exit5705, %_ZN4llvm5ErrorD2Ev.exit5697, %_ZN4llvm5ErrorD2Ev.exit5689, %_ZN4llvm5ErrorD2Ev.exit5681, %_ZN4llvm5ErrorD2Ev.exit5673, %_ZN4llvm5ErrorD2Ev.exit5665, %_ZN4llvm5ErrorD2Ev.exit5657, %_ZN4llvm5ErrorD2Ev.exit5649, %_ZN4llvm5ErrorD2Ev.exit5641, %_ZN4llvm5ErrorD2Ev.exit5633, %_ZN4llvm5ErrorD2Ev.exit5625, %_ZN4llvm5ErrorD2Ev.exit5617, %_ZN4llvm8ExpectedINS_15CodeGenOptLevelEED2Ev.exit, %_ZN4llvm8ExpectedINS_18BoundsCheckingPass7OptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit5553, %_ZN4llvm8ExpectedIbED2Ev.exit5529, %_ZN4llvm8ExpectedINS_11SROAOptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit5484, %_ZN4llvm8ExpectedINS_18SimplifyCFGOptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit5435, %_ZN4llvm8ExpectedINS_21ScalarizerPassOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_13StackLifetime12LivenessTypeEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit5366, %_ZN4llvm8ExpectedIbED2Ev.exit5337, %_ZN4llvm8ExpectedIbED2Ev.exit5308, %_ZN4llvm8ExpectedIbED2Ev.exit5290, %_ZN4llvm8ExpectedINS_19IRNormalizerOptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit5245, %bb.gm, %_ZN4llvm8ExpectedINS_20LoopVectorizeOptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit5161, %_ZN4llvm8ExpectedIbED2Ev.exit5137, %_ZN4llvm8ExpectedINS_18InstCombineOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_10GVNOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_17OptimizationLevelEED2Ev.exit5053, %_ZN4llvm8ExpectedIbED2Ev.exit5030, %_ZN4llvm8ExpectedIbED2Ev.exit5006, %_ZN4llvm8ExpectedIbED2Ev.exit4982, %_ZN4llvm8ExpectedIbED2Ev.exit4958, %_ZN4llvm5ErrorD2Ev.exit4934, %_ZN4llvm5ErrorD2Ev.exit4926, %_ZN4llvm5ErrorD2Ev.exit4917, %_ZN4llvm5ErrorD2Ev.exit4908, %_ZN4llvm5ErrorD2Ev.exit4899, %_ZN4llvm5ErrorD2Ev.exit4890, %_ZN4llvm5ErrorD2Ev.exit4882, %_ZN4llvm5ErrorD2Ev.exit4874, %_ZN4llvm5ErrorD2Ev.exit4866, %_ZN4llvm5ErrorD2Ev.exit4858, %_ZN4llvm5ErrorD2Ev.exit4850, %_ZN4llvm5ErrorD2Ev.exit4842, %_ZN4llvm5ErrorD2Ev.exit4834, %_ZN4llvm5ErrorD2Ev.exit4826, %_ZN4llvm5ErrorD2Ev.exit4818, %_ZN4llvm5ErrorD2Ev.exit4809, %_ZN4llvm5ErrorD2Ev.exit4800, %_ZN4llvm5ErrorD2Ev.exit4792, %_ZN4llvm5ErrorD2Ev.exit4784, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4779, %_ZN4llvm5ErrorD2Ev.exit4769, %_ZN4llvm5ErrorD2Ev.exit4761, %_ZN4llvm5ErrorD2Ev.exit4753, %_ZN4llvm5ErrorD2Ev.exit4745, %_ZN4llvm5ErrorD2Ev.exit4737, %_ZN4llvm5ErrorD2Ev.exit4728, %_ZN4llvm5ErrorD2Ev.exit4720, %_ZN4llvm5ErrorD2Ev.exit4712, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4707, %_ZN4llvm5ErrorD2Ev.exit4697, %_ZN4llvm5ErrorD2Ev.exit4689, %_ZN4llvm5ErrorD2Ev.exit4681, %_ZN4llvm5ErrorD2Ev.exit4672, %_ZN4llvm5ErrorD2Ev.exit4664, %_ZN4llvm5ErrorD2Ev.exit4655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4650, %_ZN4llvm5ErrorD2Ev.exit4640, %_ZN4llvm5ErrorD2Ev.exit4632, %_ZN4llvm5ErrorD2Ev.exit4624, %_ZN4llvm5ErrorD2Ev.exit4616, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4611, %_ZN4llvm5ErrorD2Ev.exit4601, %_ZN4llvm5ErrorD2Ev.exit4593, %_ZN4llvm5ErrorD2Ev.exit4585, %_ZN4llvm5ErrorD2Ev.exit4577, %_ZN4llvm5ErrorD2Ev.exit4569, %_ZN4llvm5ErrorD2Ev.exit4561, %_ZN4llvm5ErrorD2Ev.exit4552, %_ZN4llvm5ErrorD2Ev.exit4543, %_ZN4llvm5ErrorD2Ev.exit4534, %_ZN4llvm5ErrorD2Ev.exit4525, %_ZN4llvm5ErrorD2Ev.exit4516, %_ZN4llvm5ErrorD2Ev.exit4507, %_ZN4llvm5ErrorD2Ev.exit4498, %_ZN4llvm5ErrorD2Ev.exit4489, %_ZN4llvm5ErrorD2Ev.exit4480, %_ZN4llvm5ErrorD2Ev.exit4471, %_ZN4llvm5ErrorD2Ev.exit4462, %_ZN4llvm5ErrorD2Ev.exit4453, %_ZN4llvm5ErrorD2Ev.exit4444, %_ZN4llvm5ErrorD2Ev.exit4435, %_ZN4llvm5ErrorD2Ev.exit4426, %_ZN4llvm5ErrorD2Ev.exit4417, %_ZN4llvm5ErrorD2Ev.exit4408, %_ZN4llvm5ErrorD2Ev.exit4399, %_ZN4llvm5ErrorD2Ev.exit4387, %_ZN4llvm5ErrorD2Ev.exit4378, %_ZN4llvm5ErrorD2Ev.exit4369, %_ZN4llvm5ErrorD2Ev.exit4360, %_ZN4llvm5ErrorD2Ev.exit4351, %_ZN4llvm5ErrorD2Ev.exit4342, %_ZN4llvm5ErrorD2Ev.exit4333, %_ZN4llvm5ErrorD2Ev.exit4324, %_ZN4llvm5ErrorD2Ev.exit4315, %_ZN4llvm5ErrorD2Ev.exit4306, %_ZN4llvm5ErrorD2Ev.exit4297, %_ZN4llvm5ErrorD2Ev.exit4284, %_ZN4llvm5ErrorD2Ev.exit4276, %_ZN4llvm5ErrorD2Ev.exit4268, %_ZN4llvm5ErrorD2Ev.exit4260, %_ZN4llvm5ErrorD2Ev.exit4252, %_ZN4llvm5ErrorD2Ev.exit4244, %_ZN4llvm5ErrorD2Ev.exit4236, %_ZN4llvm5ErrorD2Ev.exit4228, %_ZN4llvm5ErrorD2Ev.exit4220, %_ZN4llvm5ErrorD2Ev.exit4212, %_ZN4llvm5ErrorD2Ev.exit4204, %_ZN4llvm5ErrorD2Ev.exit4196, %_ZN4llvm5ErrorD2Ev.exit4188, %_ZN4llvm5ErrorD2Ev.exit4180, %_ZN4llvm5ErrorD2Ev.exit4172, %_ZN4llvm5ErrorD2Ev.exit4164, %_ZN4llvm5ErrorD2Ev.exit4156, %_ZN4llvm5ErrorD2Ev.exit4148, %_ZN4llvm5ErrorD2Ev.exit4140, %_ZN4llvm5ErrorD2Ev.exit4132, %_ZN4llvm5ErrorD2Ev.exit4124, %_ZN4llvm5ErrorD2Ev.exit4116, %_ZN4llvm5ErrorD2Ev.exit4108, %_ZN4llvm5ErrorD2Ev.exit4100, %_ZN4llvm5ErrorD2Ev.exit4092, %_ZN4llvm5ErrorD2Ev.exit4084, %_ZN4llvm5ErrorD2Ev.exit4076, %_ZN4llvm5ErrorD2Ev.exit4068, %_ZN4llvm5ErrorD2Ev.exit4060, %_ZN4llvm5ErrorD2Ev.exit4052, %_ZN4llvm5ErrorD2Ev.exit4044, %_ZN4llvm5ErrorD2Ev.exit4036, %_ZN4llvm5ErrorD2Ev.exit4028, %_ZN4llvm5ErrorD2Ev.exit4020, %_ZN4llvm5ErrorD2Ev.exit4011, %_ZN4llvm5ErrorD2Ev.exit4003, %_ZN4llvm5ErrorD2Ev.exit3994, %_ZN4llvm5ErrorD2Ev.exit3986, %_ZN4llvm5ErrorD2Ev.exit3978, %_ZN4llvm5ErrorD2Ev.exit3970, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3965, %_ZN4llvm5ErrorD2Ev.exit3955, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3950, %_ZN4llvm5ErrorD2Ev.exit3940, %_ZN4llvm5ErrorD2Ev.exit3932, %_ZN4llvm5ErrorD2Ev.exit3924, %_ZN4llvm5ErrorD2Ev.exit3916, %_ZN4llvm5ErrorD2Ev.exit3908, %_ZN4llvm5ErrorD2Ev.exit3900, %_ZN4llvm5ErrorD2Ev.exit3891, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3886, %_ZN4llvm5ErrorD2Ev.exit3876, %_ZN4llvm5ErrorD2Ev.exit3868, %_ZN4llvm5ErrorD2Ev.exit3860, %_ZN4llvm5ErrorD2Ev.exit3852, %_ZN4llvm5ErrorD2Ev.exit3844, %_ZN4llvm5ErrorD2Ev.exit3836, %_ZN4llvm5ErrorD2Ev.exit3828, %_ZN4llvm5ErrorD2Ev.exit3820, %_ZN4llvm5ErrorD2Ev.exit3812, %_ZN4llvm5ErrorD2Ev.exit3804, %_ZN4llvm5ErrorD2Ev.exit3796, %_ZN4llvm5ErrorD2Ev.exit3788, %_ZN4llvm5ErrorD2Ev.exit3780, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3775, %_ZN4llvm5ErrorD2Ev.exit3765, %_ZN4llvm5ErrorD2Ev.exit3757, %_ZN4llvm5ErrorD2Ev.exit3748, %_ZN4llvm5ErrorD2Ev.exit3739, %_ZN4llvm5ErrorD2Ev.exit3730, %_ZN4llvm5ErrorD2Ev.exit3721, %_ZN4llvm5ErrorD2Ev.exit3713, %_ZN4llvm5ErrorD2Ev.exit3705, %_ZN4llvm5ErrorD2Ev.exit3697, %_ZN4llvm5ErrorD2Ev.exit3689, %_ZN4llvm5ErrorD2Ev.exit3681, %_ZN4llvm5ErrorD2Ev.exit3673, %_ZN4llvm5ErrorD2Ev.exit3665, %_ZN4llvm5ErrorD2Ev.exit3657, %_ZN4llvm5ErrorD2Ev.exit3649, %_ZN4llvm5ErrorD2Ev.exit3641, %_ZN4llvm5ErrorD2Ev.exit3633, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3628, %_ZN4llvm5ErrorD2Ev.exit3618, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3613, %_ZN4llvm5ErrorD2Ev.exit3603, %_ZN4llvm5ErrorD2Ev.exit3595, %_ZN4llvm5ErrorD2Ev.exit3587, %_ZN4llvm5ErrorD2Ev.exit3579, %_ZN4llvm5ErrorD2Ev.exit3571, %_ZN4llvm5ErrorD2Ev.exit3563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3558, %_ZN4llvm5ErrorD2Ev.exit3548, %_ZN4llvm5ErrorD2Ev.exit3540, %_ZN4llvm5ErrorD2Ev.exit3532, %_ZN4llvm5ErrorD2Ev.exit3524, %_ZN4llvm5ErrorD2Ev.exit3513, %_ZN4llvm5ErrorD2Ev.exit3505, %_ZN4llvm5ErrorD2Ev.exit3497, %_ZN4llvm5ErrorD2Ev.exit3489, %_ZN4llvm8ExpectedIbED2Ev.exit3481, %_ZN4llvm8ExpectedIbED2Ev.exit3456, %_ZN4llvm8ExpectedIbED2Ev.exit3432, %_ZN4llvm5ErrorD2Ev.exit3408, %_ZN4llvm5ErrorD2Ev.exit3400, %_ZN4llvm5ErrorD2Ev.exit3391, %_ZN4llvm5ErrorD2Ev.exit3383, %_ZN4llvm5ErrorD2Ev.exit3375, %_ZN4llvm5ErrorD2Ev.exit3367, %_ZN4llvm5ErrorD2Ev.exit3359, %_ZN4llvm8ExpectedIN12_GLOBAL__N_113FatLTOOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_17OptimizationLevelEED2Ev.exit3334, %_ZN4llvm8ExpectedINS_17OptimizationLevelEED2Ev.exit3311, %_ZN4llvm8ExpectedINS_17OptimizationLevelEED2Ev.exit3288, %_ZN4llvm8ExpectedINS_17OptimizationLevelEED2Ev.exit3265, %_ZN4llvm8ExpectedINS_17OptimizationLevelEED2Ev.exit, %_ZN4llvm8ExpectedINS_21StructuralHashOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_22MemorySanitizerOptionsEED2Ev.exit, %bb.cf, %_ZN4llvm8ExpectedIbED2Ev.exit3169, %_ZN4llvm8ExpectedINS_13IPSCCPOptionsEED2Ev.exit, %bb.bw, %_ZN4llvm8ExpectedINS_14lowertypetests12DropTestKindEED2Ev.exit, %_ZN4llvm8ExpectedINS_25HWAddressSanitizerOptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit3083, %_ZN4llvm8ExpectedINS_19EmbedBitcodeOptionsEED2Ev.exit, %_ZN4llvm8ExpectedINS_18GlobalMergeOptionsEED2Ev.exit, %_ZN4llvm8ExpectedIbED2Ev.exit, %_ZN4llvm8ExpectedINS_23AddressSanitizerOptionsEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit2990, %_ZN4llvm5ErrorD2Ev.exit2985, %_ZN4llvm5ErrorD2Ev.exit2980, %_ZN4llvm5ErrorD2Ev.exit2975, %_ZN4llvm5ErrorD2Ev.exit2970, %_ZN4llvm5ErrorD2Ev.exit2965, %_ZN4llvm5ErrorD2Ev.exit2960, %_ZN4llvm5ErrorD2Ev.exit2955, %_ZN4llvm5ErrorD2Ev.exit2950, %_ZN4llvm5ErrorD2Ev.exit2945, %_ZN4llvm5ErrorD2Ev.exit2940, %_ZN4llvm5ErrorD2Ev.exit2935, %_ZN4llvm5ErrorD2Ev.exit2930, %_ZN4llvm5ErrorD2Ev.exit2925, %_ZN4llvm5ErrorD2Ev.exit2920, %_ZN4llvm5ErrorD2Ev.exit2915, %_ZN4llvm5ErrorD2Ev.exit2910, %_ZN4llvm5ErrorD2Ev.exit2905, %_ZN4llvm5ErrorD2Ev.exit2897, %_ZN4llvm5ErrorD2Ev.exit2890, %_ZN4llvm5ErrorD2Ev.exit2877, %_ZN4llvm5ErrorD2Ev.exit2872, %_ZN4llvm5ErrorD2Ev.exit2867, %_ZN4llvm5ErrorD2Ev.exit2862, %_ZN4llvm5ErrorD2Ev.exit2857, %_ZN4llvm5ErrorD2Ev.exit2852, %_ZN4llvm5ErrorD2Ev.exit2847, %_ZN4llvm5ErrorD2Ev.exit2842, %_ZN4llvm5ErrorD2Ev.exit2837, %_ZN4llvm5ErrorD2Ev.exit2832, %_ZN4llvm5ErrorD2Ev.exit2827, %_ZN4llvm5ErrorD2Ev.exit2822, %_ZN4llvm5ErrorD2Ev.exit2817, %_ZN4llvm5ErrorD2Ev.exit2812, %_ZN4llvm5ErrorD2Ev.exit2807, %_ZN4llvm5ErrorD2Ev.exit2802, %_ZN4llvm5ErrorD2Ev.exit2797, %_ZN4llvm5ErrorD2Ev.exit2792, %_ZN4llvm5ErrorD2Ev.exit2787, %_ZN4llvm5ErrorD2Ev.exit2782, %_ZN4llvm5ErrorD2Ev.exit2777, %_ZN4llvm5ErrorD2Ev.exit2772, %_ZN4llvm5ErrorD2Ev.exit2767, %_ZN4llvm5ErrorD2Ev.exit2762, %_ZN4llvm5ErrorD2Ev.exit2757, %_ZN4llvm5ErrorD2Ev.exit2749, %_ZN4llvm5ErrorD2Ev.exit2744, %_ZN4llvm5ErrorD2Ev.exit2731, %_ZN4llvm5ErrorD2Ev.exit2726, %_ZN4llvm5ErrorD2Ev.exit2721, %_ZN4llvm5ErrorD2Ev.exit2716, %_ZN4llvm5ErrorD2Ev.exit2711, %_ZN4llvm5ErrorD2Ev.exit2706, %_ZN4llvm5ErrorD2Ev.exit2701, %_ZN4llvm5ErrorD2Ev.exit2696, %_ZN4llvm5ErrorD2Ev.exit2691, %_ZN4llvm5ErrorD2Ev.exit2686, %_ZN4llvm5ErrorD2Ev.exit2680, %_ZN4llvm5ErrorD2Ev.exit2675, %_ZN4llvm5ErrorD2Ev.exit2670, %_ZN4llvm5ErrorD2Ev.exit2664, %_ZN4llvm5ErrorD2Ev.exit2659, %_ZN4llvm5ErrorD2Ev.exit2654, %_ZN4llvm5ErrorD2Ev.exit2649, %_ZN4llvm5ErrorD2Ev.exit2644, %_ZN4llvm5ErrorD2Ev.exit2639, %_ZN4llvm5ErrorD2Ev.exit2634, %_ZN4llvm5ErrorD2Ev.exit2629, %_ZN4llvm5ErrorD2Ev.exit2624, %_ZN4llvm5ErrorD2Ev.exit2619, %_ZN4llvm5ErrorD2Ev.exit2614, %_ZN4llvm5ErrorD2Ev.exit2609, %_ZN4llvm5ErrorD2Ev.exit2604, %_ZN4llvm5ErrorD2Ev.exit2599, %_ZN4llvm5ErrorD2Ev.exit2594, %_ZN4llvm5ErrorD2Ev.exit2587, %_ZN4llvm5ErrorD2Ev.exit2582, %_ZN4llvm5ErrorD2Ev.exit2577, %_ZN4llvm5ErrorD2Ev.exit2572, %_ZN4llvm5ErrorD2Ev.exit2567, %_ZN4llvm5ErrorD2Ev.exit2560, %_ZN4llvm5ErrorD2Ev.exit2555, %_ZN4llvm5ErrorD2Ev.exit2550, %_ZN4llvm5ErrorD2Ev.exit2545, %_ZN4llvm5ErrorD2Ev.exit2540, %_ZN4llvm5ErrorD2Ev.exit2535, %_ZN4llvm5ErrorD2Ev.exit2530, %_ZN4llvm5ErrorD2Ev.exit2525, %_ZN4llvm5ErrorD2Ev.exit2520, %_ZN4llvm5ErrorD2Ev.exit2515, %_ZN4llvm5ErrorD2Ev.exit2510, %_ZN4llvm5ErrorD2Ev.exit2505, %_ZN4llvm5ErrorD2Ev.exit2500, %_ZN4llvm5ErrorD2Ev.exit2495, %_ZN4llvm5ErrorD2Ev.exit2490, %_ZN4llvm5ErrorD2Ev.exit2485, %_ZN4llvm5ErrorD2Ev.exit2480, %_ZN4llvm5ErrorD2Ev.exit2475, %_ZN4llvm5ErrorD2Ev.exit2470, %_ZN4llvm5ErrorD2Ev.exit2464, %_ZN4llvm5ErrorD2Ev.exit2459, %_ZN4llvm5ErrorD2Ev.exit2453, %_ZN4llvm5ErrorD2Ev.exit2448, %_ZN4llvm5ErrorD2Ev.exit2443, %_ZN4llvm5ErrorD2Ev.exit2438, %_ZN4llvm5ErrorD2Ev.exit2433, %_ZN4llvm5ErrorD2Ev.exit2428, %_ZN4llvm5ErrorD2Ev.exit2423, %_ZN4llvm5ErrorD2Ev.exit2418, %_ZN4llvm5ErrorD2Ev.exit2413, %_ZN4llvm5ErrorD2Ev.exit2408, %_ZN4llvm5ErrorD2Ev.exit2403, %_ZN4llvm5ErrorD2Ev.exit2398, %_ZN4llvm5ErrorD2Ev.exit2393, %_ZN4llvm5ErrorD2Ev.exit2388, %_ZN4llvm5ErrorD2Ev.exit2383, %_ZN4llvm5ErrorD2Ev.exit2378, %_ZN4llvm5ErrorD2Ev.exit2373, %_ZN4llvm5ErrorD2Ev.exit2368, %_ZN4llvm5ErrorD2Ev.exit2363, %_ZN4llvm5ErrorD2Ev.exit2358, %_ZN4llvm5ErrorD2Ev.exit2353, %_ZN4llvm5ErrorD2Ev.exit2348, %_ZN4llvm5ErrorD2Ev.exit2343, %_ZN4llvm5ErrorD2Ev.exit2338, %_ZN4llvm5ErrorD2Ev.exit2333, %_ZN4llvm5ErrorD2Ev.exit2328, %_ZN4llvm5ErrorD2Ev.exit2323, %_ZN4llvm5ErrorD2Ev.exit2318, %_ZN4llvm5ErrorD2Ev.exit2313, %_ZN4llvm5ErrorD2Ev.exit2308, %_ZN4llvm5ErrorD2Ev.exit2303, %_ZN4llvm5ErrorD2Ev.exit2298, %_ZN4llvm5ErrorD2Ev.exit2293, %_ZN4llvm5ErrorD2Ev.exit2288, %_ZN4llvm5ErrorD2Ev.exit2283, %_ZN4llvm5ErrorD2Ev.exit2278, %_ZN4llvm5ErrorD2Ev.exit2273, %_ZN4llvm5ErrorD2Ev.exit2268, %_ZN4llvm5ErrorD2Ev.exit2263, %_ZN4llvm5ErrorD2Ev.exit2258, %_ZN4llvm5ErrorD2Ev.exit2253, %_ZN4llvm5ErrorD2Ev.exit2248, %_ZN4llvm5ErrorD2Ev.exit2243, %_ZN4llvm5ErrorD2Ev.exit2238, %_ZN4llvm5ErrorD2Ev.exit2233, %_ZN4llvm5ErrorD2Ev.exit2228, %_ZN4llvm5ErrorD2Ev.exit2223, %_ZN4llvm5ErrorD2Ev.exit2218, %_ZN4llvm5ErrorD2Ev.exit2213, %_ZN4llvm5ErrorD2Ev.exit2208, %_ZN4llvm5ErrorD2Ev.exit2203, %_ZN4llvm5ErrorD2Ev.exit2198, %_ZN4llvm5ErrorD2Ev.exit2193, %_ZN4llvm5ErrorD2Ev.exit2188, %_ZN4llvm5ErrorD2Ev.exit2183, %_ZN4llvm5ErrorD2Ev.exit2178, %_ZN4llvm5ErrorD2Ev.exit2173, %_ZN4llvm5ErrorD2Ev.exit2168, %_ZN4llvm5ErrorD2Ev.exit2163, %_ZN4llvm5ErrorD2Ev.exit2158, %_ZN4llvm5ErrorD2Ev.exit2153, %_ZN4llvm5ErrorD2Ev.exit2148, %_ZN4llvm5ErrorD2Ev.exit2143, %_ZN4llvm5ErrorD2Ev.exit2136, %_ZN4llvm5ErrorD2Ev.exit2129, %_ZN4llvm5ErrorD2Ev.exit2122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4llvm11PassManagerINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS2_JRS1_EEEJS4_RNS_17CGSCCUpdateResultEEED2Ev.exit, %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit2086, %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11PassBuilder23parseModulePassPipelineERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEENS_8ArrayRefINS0_15PipelineElementEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2288) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.idx = mul nuw nsw i64 %4, 40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not21 = icmp eq i64 %4, 0
  br i1 %.not21, label %_ZN4llvm5ErrorD2Ev.exit15, label %_ZN4llvm5ErrorD2Ev.exit

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.01422, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.a
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit15, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %.01422 = phi ptr [ %i.b, %bb.b ], [ %3, %bb.a ] ; 2 uses
  tail call void @_ZN4llvm11PassBuilder15parseModulePassERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEERKNS0_15PipelineElementE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2288) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %.01422)
  %i.c = load ptr, ptr %0, align 8, !tbaa !369
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.b, label %.critedge

_ZN4llvm5ErrorD2Ev.exit15:                        ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !388    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !384  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #27, !inline_history !2649
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !388
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !385
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i, %bb.b
  ret void
}

declare void @_ZN4llvm22CoroConditionalWrapperC1EONS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11PassBuilder22parseCGSCCPassPipelineERNS_11PassManagerINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS3_JRS2_EEEJS5_RNS_17CGSCCUpdateResultEEEENS_8ArrayRefINS0_15PipelineElementEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2288) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.idx = mul nuw nsw i64 %4, 40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not21 = icmp eq i64 %4, 0
  br i1 %.not21, label %_ZN4llvm5ErrorD2Ev.exit15, label %_ZN4llvm5ErrorD2Ev.exit

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.01422, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.b, %i.a
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit15, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %.01422 = phi ptr [ %i.b, %bb.b ], [ %3, %bb.a ] ; 2 uses
  tail call void @_ZN4llvm11PassBuilder14parseCGSCCPassERNS_11PassManagerINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS3_JRS2_EEEJS5_RNS_17CGSCCUpdateResultEEEERKNS0_15PipelineElementE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2288) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %.01422)
  %i.c = load ptr, ptr %0, align 8, !tbaa !369
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.b, label %.critedge

_ZN4llvm5ErrorD2Ev.exit15:                        ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !369
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit15
  ret void
}

; Function Attrs: minsize mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_33ModuleToPostOrderCGSCCPassAdaptorEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.3675", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !397
  store ptr null, ptr %1, align 8, !tbaa !397
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm6detail9PassModelINS_6ModuleENS_33ModuleToPostOrderCGSCCPassAdaptorENS_15AnalysisManagerIS2_JEEEJEEE, i64 16), ptr %i.a, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !397
  store ptr %i.a, ptr %2, align 8, !tbaa !387
  call void @_ZNSt6vectorISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EESaISA_EE9push_backEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.d = load ptr, ptr %2, align 8, !tbaa !387    ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4llvm33ModuleToPostOrderCGSCCPassAdaptorD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #27, !inline_history !33
  br label %_ZN4llvm33ModuleToPostOrderCGSCCPassAdaptorD2Ev.exit

_ZN4llvm33ModuleToPostOrderCGSCCPassAdaptorD2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i24 0, 131072) i24 @_ZL25parseFunctionPipelineNameN4llvm9StringRefE(ptr %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.not.i.i = icmp ult i64 %1, 8
  br i1 %.not.i.i, label %.critedge, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.a
  %i.c = load i64, ptr %0, align 1
  %i.d = icmp ne i64 %i.c, 7957695015192261990
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.g = icmp eq i64 %1, 8
  br i1 %i.g, label %.critedge, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i8

_ZNK4llvm9StringRef11starts_withES0_.exit.i8:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %lhsc = load i8, ptr %i.h, align 1
  %i.i = icmp eq i8 %lhsc, 60
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9
  store ptr %i.j, ptr %2, align 8, !tbaa !186
  %.not.i.i12 = icmp eq i64 %1, 9
  br i1 %.not.i.i12, label %.critedge, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 %1
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -1
  %lhsc45 = load i8, ptr %i.l, align 1
  %i.m = icmp eq i8 %lhsc45, 62
  br i1 %i.m, label %_ZN4llvm9StringRef12consume_backES0_.exit, label %.critedge

_ZN4llvm9StringRef12consume_backES0_.exit:        ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %i.n = add i64 %1, -10                          ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !187
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.sroa.6.049 = phi i8 [ %.sroa.6.1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ 0, %_ZN4llvm9StringRef12consume_backES0_.exit ]
  %.sroa.028.048 = phi i8 [ %.sroa.028.1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ 0, %_ZN4llvm9StringRef12consume_backES0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 59, ptr %i.a, align 1, !tbaa !196, !noalias !2655
  %i.p = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull %i.a, i64 1, i64 noundef 0) #27, !noalias !2656 ; 3 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %.sroa.020.0.copyload = load ptr, ptr %2, align 8, !tbaa !186
  %.sroa.7.0.copyload = load i64, ptr %i.b, align 8, !tbaa !187
  br label %_ZNK4llvm9StringRef5splitEc.exit

bb.e:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr %i.b, align 8, !tbaa !352, !noalias !2656 ; 3 uses
end_hunk_1
