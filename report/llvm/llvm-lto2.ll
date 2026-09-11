Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-lto2?download=true
inline.NumInlined: 4038
inline.NumDeleted: 2108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !27, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.i) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optISt8optionalImELb0ENS_7remarks22HotnessThresholdParserEED2Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optISt8optionalImELb0ENS_7remarks22HotnessThresholdParserEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserISt8optionalImEEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm2cl6parserISt8optionalImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.g) #26, !inline_history !51
  br label %_ZN4llvm2cl6parserISt8optionalImEED2Ev.exit

_ZN4llvm2cl6parserISt8optionalImEED2Ev.exit:      ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm2cl6parserISt8optionalImEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.n) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.d, %_ZN4llvm2cl6parserISt8optionalImEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.p) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optINS_3lto3LTO7LTOKindELb0ENS0_6parserIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optINS_3lto3LTO7LTOKindELb0ENS0_6parserIS4_EEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2cl6parserINS_3lto3LTO7LTOKindEEE, i64 16), ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm2cl6parserINS_3lto3LTO7LTOKindEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @free(ptr noundef %i.g) #26, !inline_history !52
  br label %_ZN4llvm2cl6parserINS_3lto3LTO7LTOKindEED2Ev.exit

_ZN4llvm2cl6parserINS_3lto3LTO7LTOKindEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm2cl6parserINS_3lto3LTO7LTOKindEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.n) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.d, %_ZN4llvm2cl6parserINS_3lto3LTO7LTOKindEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.p) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #26, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !27, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.i) #26
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %4 = alloca %class.anon.215, align 8            ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %.sroa.0305.i = alloca ptr, align 8             ; 8 uses
  %7 = alloca %"class.llvm::ErrorOr", align 8     ; 9 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.llvm::Expected.167", align 8 ; 13 uses
  %11 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::unique_ptr.175", align 8 ; 9 uses
  %14 = alloca %"class.llvm::Expected.183", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.llvm::Triple", align 8     ; 6 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.llvm::InitLLVM", align 8   ; 4 uses
  store i32 %0, ptr %i.g, align 4, !tbaa !53
  store ptr %1, ptr %i.h, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @_ZN4llvm8InitLLVMC2ERiRPPKcbb(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext true, i1 noundef zeroext false) #26
  call void @_ZN4llvm20InitializeAllTargetsEv()
  call void @_ZN4llvm22InitializeAllTargetMCsEv()
  call void @_ZN4llvm24InitializeAllAsmPrintersEv()
  call void @LLVMInitializeAArch64AsmParser() #26
  call void @LLVMInitializeAMDGPUAsmParser() #26
  call void @LLVMInitializeARMAsmParser() #26
  call void @LLVMInitializeAVRAsmParser() #26
  call void @LLVMInitializeBPFAsmParser() #26
  call void @LLVMInitializeHexagonAsmParser() #26
  call void @LLVMInitializeLanaiAsmParser() #26
  call void @LLVMInitializeLoongArchAsmParser() #26
  call void @LLVMInitializeMipsAsmParser() #26
  call void @LLVMInitializeMSP430AsmParser() #26
  call void @LLVMInitializePowerPCAsmParser() #26
  call void @LLVMInitializeRISCVAsmParser() #26
  call void @LLVMInitializeSparcAsmParser() #26
  call void @LLVMInitializeSystemZAsmParser() #26
  call void @LLVMInitializeVEAsmParser() #26
  call void @LLVMInitializeWebAssemblyAsmParser() #26
  call void @LLVMInitializeX86AsmParser() #26
  %i.i = load i32, ptr %i.g, align 4, !tbaa !53   ; 4 uses
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #26 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 50
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull @.str.154, i64 noundef 50) #26 ; 0 uses
  br label %_ZL5usagev.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.o, ptr noundef nonnull align 1 dereferenceable(50) @.str.154, i64 50, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 50
  store ptr %i.v, ptr %i.n, align 8, !tbaa !58
  br label %_ZL5usagev.exit

bb.e:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !303  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59   ; 7 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit.thread, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit.thread:             ; preds = %bb.e
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !59
  store ptr %i.z, ptr %i.x, align 8, !tbaa !59
  br label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.e
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #26 ; 4 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !59
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !59
  switch i64 %i.aa, label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54 [
    i64 11, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i64 3, label %_ZN4llvmeqENS_9StringRefES0_.exit16
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit21
    i64 9, label %_ZN4llvmeqENS_9StringRefES0_.exit31
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.ac = load i64, ptr %i.y, align 1
  %i.ad = xor i64 %i.ac, 7888462861313078628
  %i.ae = getelementptr i8, ptr %i.y, i64 3
  %i.af = load i64, ptr %i.ae, align 1
  %i.ag = xor i64 %i.af, 7089075301995720048
  %i.ah = or i64 %i.ad, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.al = add nsw i32 %i.i, -1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.am = zext nneg i32 %i.al to i64
  %.idx.i = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %.not332.i = icmp eq i32 %i.al, 1
  br i1 %.not332.i, label %_ZL10dumpSymtabiPPc.exit, label %.lr.ph335.i

.lr.ph335.i:                                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %.0331.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 33
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.10.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.11.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 52 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, %.lr.ph335.i
  %.0333.i = phi ptr [ %.0331.i, %.lr.ph335.i ], [ %.0.i10, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i ] ; 2 uses
  %i.bk = load ptr, ptr %.0333.i, align 8, !tbaa !59 ; 9 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.bl, %bb.g ], [ 0, %bb.f ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0305.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i8 5, ptr %i.ao, align 8, !tbaa !62
  store i8 1, ptr %i.ap, align 1, !tbaa !63
  store ptr %i.bk, ptr %8, align 8, !tbaa !44
  store i64 %.sroa.0.0.i.i, ptr %i.aq, align 8, !tbaa !44
  call void @_ZN4llvm12MemoryBuffer7getFileERKNS_5TwineEbbbSt8optionalINS_5AlignEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %8, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i16 0) #26
  store ptr %i.ar, ptr %9, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !tbaa !65
  %i.bm = icmp ugt i64 %.sroa.0.0.i.i, 15         ; 3 uses
  br i1 %i.bm, label %bb.i, label %._crit_edge.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !43
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !65
  store i64 %i.bo, ptr %i.ar, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.bp = phi ptr [ %i.bn, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bq = load i8, ptr %i.bk, align 1, !tbaa !44
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bk, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i
  %i.br = load i64, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  store i64 %i.br, ptr %i.as, align 8, !tbaa !66
  %i.bs = load ptr, ptr %9, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %.val.i = load ptr, ptr %9, align 8             ; 2 uses
  %.val73.i = load i64, ptr %i.as, align 8        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bu = load i8, ptr %i.at, align 8, !noalias !304
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  %i.bw = load i64, ptr %7, align 8, !tbaa !68, !noalias !304
  %i.bx = inttoptr i64 %i.bw to ptr
  store ptr %i.bx, ptr %.sroa.0305.i, align 8, !tbaa !68, !alias.scope !304
  br label %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %7, align 8, !tbaa !53, !noalias !304
  %.sroa.31.0.copyload.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i, align 8, !tbaa !70, !noalias !304
  store ptr %i.au, ptr %6, align 8, !tbaa !64, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !304
  store i64 %.val73.i, ptr %i.e, align 8, !tbaa !65, !noalias !304
  %i.by = icmp ugt i64 %.val73.i, 15
  br i1 %i.by, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i.i
  %i.bz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #26, !noalias !304 ; 2 uses
  store ptr %i.bz, ptr %6, align 8, !tbaa !43, !noalias !304
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !65, !noalias !304
  store i64 %i.ca, ptr %i.au, align 8, !tbaa !44, !noalias !304
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.m, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i.i
  %i.cb = phi ptr [ %i.bz, %bb.m ], [ %i.au, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i.i ] ; 2 uses
  switch i64 %.val73.i, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cc = load i8, ptr %.val.i, align 1, !tbaa !44, !noalias !304
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !44, !noalias !304
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr readonly align 1 %.val.i, i64 %.val73.i, i1 false), !noalias !304
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !65, !noalias !304 ; 2 uses
  store i64 %i.cd, ptr %i.av, align 8, !tbaa !66, !noalias !304
  %i.ce = load ptr, ptr %6, align 8, !tbaa !43, !noalias !304
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !44, !noalias !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !304
  call fastcc void @_ZL5checkSt10error_codeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.31.0.copyload.i.i.i, ptr nofree noundef align 8 dereferenceable(32) %6), !noalias !304
  %i.cg = load ptr, ptr %6, align 8, !tbaa !43, !noalias !304 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.au
  br i1 %i.ch, label %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ci = load i64, ptr %i.au, align 8, !tbaa !44, !noalias !304
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #27, !noalias !304
  br label %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l
  %.sink.i.i = phi ptr [ %7, %bb.l ], [ %.sroa.0305.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.sroa.0305.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ]
  store ptr null, ptr %.sink.i.i, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ck = load ptr, ptr %9, align 8, !tbaa !43    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ar
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cm = load i64, ptr %i.ar, align 8, !tbaa !44
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.co = load i8, ptr %i.at, align 8
  %i.cp = trunc i8 %i.co to i1
  br i1 %i.cp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cq = load ptr, ptr %7, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i.i: ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(24) %i.cq) #26, !inline_history !291
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0..i = load ptr, ptr %.sroa.0305.i, align 8, !tbaa !68
  call void @_ZN4llvm15MemoryBufferRefC1ERKNS_12MemoryBufferE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0..i) #26
  call void @_ZN4llvm22getBitcodeFileContentsENS_15MemoryBufferRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.167") align 8 %10, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %11) #26
  store ptr %i.aw, ptr %12, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 %.sroa.0.0.i.i, ptr %i.d, align 8, !tbaa !65
  br i1 %i.bm, label %bb.r, label %._crit_edge.i.i.i.i79.i

bb.r:                                             ; preds = %bb.q
  %i.cu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #26 ; 2 uses
  store ptr %i.cu, ptr %12, align 8, !tbaa !43
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !65
  store i64 %i.cv, ptr %i.aw, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i79.i

._crit_edge.i.i.i.i79.i:                          ; preds = %bb.r, %bb.q
  %i.cw = phi ptr [ %i.cu, %bb.r ], [ %i.aw, %bb.q ] ; 2 uses
  switch i64 %.sroa.0.0.i.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit80.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i79.i
  %i.cx = load i8, ptr %i.bk, align 1, !tbaa !44
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit80.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i79.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.bk, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit80.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i79.i
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !65  ; 2 uses
  store i64 %i.cy, ptr %i.ax, align 8, !tbaa !66
  %i.cz = load ptr, ptr %12, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %.val74.i = load ptr, ptr %12, align 8          ; 2 uses
  %.val75.i = load i64, ptr %i.ax, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.db = load i8, ptr %i.ay, align 8, !noalias !305
  %i.dc = trunc i8 %i.db to i1
  br i1 %i.dc, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit80.i
  %i.dd = load ptr, ptr %10, align 8, !tbaa !308, !noalias !305
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !309, !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 24, i1 false), !noalias !305
  %.sroa.8.24.copyload.i = load ptr, ptr %i.ba, align 8
  %.sroa.10.24.copyload.i = load i64, ptr %.sroa.10.24..sroa_idx.i, align 8
  %.sroa.11.24.copyload.i = load ptr, ptr %.sroa.11.24..sroa_idx.i, align 8
  %i.df = icmp ugt i64 %.sroa.10.24.copyload.i, 75
  %i.dg = ptrtoint ptr %i.de to i64
  br label %_ZL5checkIN4llvm19BitcodeFileContentsEET_NS0_8ExpectedIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit80.i
  %i.dh = load i64, ptr %10, align 8, !tbaa !72, !noalias !310 ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !72, !noalias !310
  store ptr %i.bb, ptr %5, align 8, !tbaa !64, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !305
  store i64 %.val75.i, ptr %i.c, align 8, !tbaa !65, !noalias !305
  %i.di = icmp ugt i64 %.val75.i, 15
  br i1 %i.di, label %bb.v, label %._crit_edge.i.i.i81.i

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.dj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #26, !noalias !305 ; 2 uses
  store ptr %i.dj, ptr %5, align 8, !tbaa !43, !noalias !305
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !65, !noalias !305
  store i64 %i.dk, ptr %i.bb, align 8, !tbaa !44, !noalias !305
  br label %._crit_edge.i.i.i81.i

._crit_edge.i.i.i81.i:                            ; preds = %bb.v, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.dl = phi ptr [ %i.dj, %bb.v ], [ %i.bb, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i ] ; 2 uses
  switch i64 %.val75.i, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i82.i
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i81.i
  %i.dm = load i8, ptr %.val74.i, align 1, !tbaa !44, !noalias !305
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !44, !noalias !305
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i82.i

bb.x:                                             ; preds = %._crit_edge.i.i.i81.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr readonly align 1 %.val74.i, i64 %.val75.i, i1 false), !noalias !305
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i82.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i82.i: ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i81.i
  %i.dn = load i64, ptr %i.c, align 8, !tbaa !65, !noalias !305 ; 2 uses
  store i64 %i.dn, ptr %i.bc, align 8, !tbaa !66, !noalias !305
  %i.do = load ptr, ptr %5, align 8, !tbaa !43, !noalias !305
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !44, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !305
  %.not.i.i83.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i83.i, label %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i82.i
  %i.dq = inttoptr i64 %i.dh to ptr
  store ptr %i.dq, ptr %3, align 8, !tbaa !74, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !305
  store ptr %5, ptr %4, align 8, !tbaa !75, !noalias !305
  call fastcc void @"_ZN4llvm15handleAllErrorsIJZL5checkNS_5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvS1_DpOT_"(ptr nofree noundef align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !305
  %i.dr = load ptr, ptr %3, align 8, !tbaa !74, !noalias !305 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN4llvm5ErrorD2Ev.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !20, !noalias !305
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !305
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr) #26, !noalias !305, !inline_history !296
  br label %_ZN4llvm5ErrorD2Ev.exit.i.i.i

_ZN4llvm5ErrorD2Ev.exit.i.i.i:                    ; preds = %bb.z, %bb.y
  call void @exit(i32 noundef 1) #28, !noalias !305
  unreachable

_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !305
  %i.dw = load ptr, ptr %5, align 8, !tbaa !43, !noalias !305 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.bb
  br i1 %i.dx, label %_ZL5checkIN4llvm19BitcodeFileContentsEET_NS0_8ExpectedIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i: ; preds = %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.dy = load i64, ptr %i.bb, align 8, !tbaa !44, !noalias !305
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #27, !noalias !305
  br label %_ZL5checkIN4llvm19BitcodeFileContentsEET_NS0_8ExpectedIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZL5checkIN4llvm19BitcodeFileContentsEET_NS0_8ExpectedIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i, %bb.u
  %.sroa.6.0.i = phi i64 [ %i.dg, %bb.u ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i ], [ 0, %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ]
  %.sroa.8.0.i = phi ptr [ %.sroa.8.24.copyload.i, %bb.u ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i ], [ null, %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ] ; 4 uses
  %.sroa.10.0.i = phi i1 [ %i.df, %bb.u ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i ], [ false, %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ]
  %.sroa.11.0.i = phi ptr [ %.sroa.11.24.copyload.i, %bb.u ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i ], [ null, %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ]
  %.sroa.0301.0.i = phi ptr [ %i.dd, %bb.u ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84.i ], [ null, %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ea = load ptr, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.aw
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i: ; preds = %_ZL5checkIN4llvm19BitcodeFileContentsEET_NS0_8ExpectedIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ec = load i64, ptr %i.aw, align 8, !tbaa !44
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i: ; preds = %_ZL5checkIN4llvm19BitcodeFileContentsEET_NS0_8ExpectedIS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i
  %i.ee = load i8, ptr %i.ay, align 8
  %i.ef = trunc i8 %i.ee to i1
  %i.eg = load ptr, ptr %10, align 8, !tbaa !76   ; 5 uses
  %.not.i.i89.i = icmp eq ptr %i.eg, null         ; 2 uses
  br i1 %i.ef, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i
  br i1 %.not.i.i89.i, label %_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load ptr, ptr %i.az, align 8, !tbaa !309
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #27
  br label %_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88.i
  br i1 %.not.i.i89.i, label %_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.ac
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.eg) #26, !inline_history !297
  br label %_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i

_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i, %bb.ac, %bb.ab, %bb.aa
  br i1 %.sroa.10.0.i, label %bb.ad, label %bb.aq

bb.ad:                                            ; preds = %_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i
  %i.eo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !58 ; 2 uses
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ult i64 %i.ev, 9
  br i1 %i.ew, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ex = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eo, ptr noundef nonnull @.str.155, i64 noundef 9) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.es, ptr noundef nonnull align 1 dereferenceable(9) @.str.155, i64 9, i1 false)
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 9
  store ptr %i.ez, ptr %i.er, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.af, %bb.ae
  %.0.i.i.i = phi ptr [ %i.ex, %bb.ae ], [ %i.eo, %bb.af ]
  %.0.copyload.i.i.i.i = load i32, ptr %.sroa.8.0.i, align 1
  %i.fa = zext i32 %.0.copyload.i.i.i.i to i64
  %i.fb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 noundef %i.fa) #26 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !58 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !57
  %.not.i90.i = icmp ult ptr %i.fd, %i.ff
  br i1 %.not.i90.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.fg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fh, ptr %i.fc, align 8, !tbaa !58
  store i8 10, ptr %i.fd, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.ah, %bb.ag
  %.0.copyload.i.i.i91.i = load i32, ptr %.sroa.8.0.i, align 1
  %i.fi = icmp eq i32 %.0.copyload.i.i.i91.i, 4
  br i1 %i.fi, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.fj = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !57
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !58 ; 2 uses
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = icmp ult i64 %i.fq, 10
  br i1 %i.fr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef nonnull @.str.156, i64 noundef 10) #26 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit94.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fn, ptr noundef nonnull align 1 dereferenceable(10) @.str.156, i64 10, i1 false)
  %i.ft = load ptr, ptr %i.fm, align 8, !tbaa !58
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 10 ; 2 uses
  store ptr %i.fu, ptr %i.fm, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit94.i

_ZN4llvm11raw_ostreamlsEPKc.exit94.i:             ; preds = %bb.ak, %bb.aj
  %i.fv = phi ptr [ %.pre.i, %bb.aj ], [ %i.fu, %bb.ak ] ; 3 uses
  %.0.i.i93.i = phi ptr [ %i.fs, %bb.aj ], [ %i.fj, %bb.ak ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 4
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.fw, align 1
  %i.fx = zext i32 %.0.copyload.i.i.i.i.i to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 8
  %.0.copyload.i.i.i1.i.i = load i32, ptr %i.fz, align 1 ; 2 uses
  %i.ga = zext i32 %.0.copyload.i.i.i1.i.i to i64 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.i93.i, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !57
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i93.i, i64 32 ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.fv to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.ga
  br i1 %i.gh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit94.i
  %i.gi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i93.i, ptr noundef %i.fy, i64 noundef %i.ga) #26 ; 2 uses
  %.phi.trans.insert337.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %.pre338.i = load ptr, ptr %.phi.trans.insert337.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit94.i
  %.not.i97.i = icmp eq i32 %.0.copyload.i.i.i1.i.i, 0
  br i1 %.not.i97.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr align 1 %i.fy, i64 %i.ga, i1 false)
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !58
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.ga ; 2 uses
  store ptr %i.gk, ptr %i.gd, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.an, %bb.am, %bb.al
  %i.gl = phi ptr [ %.pre338.i, %bb.al ], [ %i.gk, %bb.an ], [ %i.fv, %bb.am ] ; 3 uses
  %.0.i98.i = phi ptr [ %i.gi, %bb.al ], [ %.0.i.i93.i, %bb.an ], [ %.0.i.i93.i, %bb.am ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i98.i, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !57
  %.not.i99.i = icmp ult ptr %i.gl, %i.gn
  br i1 %.not.i99.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.go = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i98.i, i8 noundef zeroext 10) #26 ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i98.i, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store ptr %i.gq, ptr %i.gp, align 8, !tbaa !58
  store i8 10, ptr %i.gl, align 1, !tbaa !44
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZN4llvm11raw_ostreamlsEc.exit.i, %_ZN4llvm8ExpectedINS_19BitcodeFileContentsEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0.306.i = load ptr, ptr %.sroa.0305.i, align 8, !tbaa !68
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0.306.i) #26
  call void @_ZN4llvm3lto9InputFile6createENS_15MemoryBufferRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.183") align 8 %14, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %15) #26
  store ptr %i.bd, ptr %16, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8, !tbaa !65
  br i1 %i.bm, label %bb.ar, label %._crit_edge.i.i.i.i103.i

bb.ar:                                            ; preds = %bb.aq
  %i.gr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.gr, ptr %16, align 8, !tbaa !43
  %i.gs = load i64, ptr %i.b, align 8, !tbaa !65
  store i64 %i.gs, ptr %i.bd, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i103.i

._crit_edge.i.i.i.i103.i:                         ; preds = %bb.ar, %bb.aq
  %i.gt = phi ptr [ %i.gr, %bb.ar ], [ %i.bd, %bb.aq ] ; 2 uses
  switch i64 %.sroa.0.0.i.i, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit104.i
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i103.i
  %i.gu = load i8, ptr %i.bk, align 1, !tbaa !44
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit104.i

bb.at:                                            ; preds = %._crit_edge.i.i.i.i103.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.bk, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit104.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit104.i: ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i.i103.i
  %i.gv = load i64, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  store i64 %i.gv, ptr %i.be, align 8, !tbaa !66
  %i.gw = load ptr, ptr %16, align 8, !tbaa !43
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv
  store i8 0, ptr %i.gx, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.val76.i = load ptr, ptr %16, align 8
  %.val77.i = load i64, ptr %i.be, align 8
  call fastcc void @_ZL5checkISt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS3_EEET_NS1_8ExpectedIS7_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %13, ptr nofree noundef align 8 dereferenceable(16) %14, ptr %.val76.i, i64 %.val77.i)
  %i.gy = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.bd
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit104.i
  %i.ha = load i64, ptr %i.bd, align 8, !tbaa !44
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit104.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i
  %i.hc = load i8, ptr %i.bf, align 8
  %i.hd = trunc i8 %i.hc to i1
  %i.he = load ptr, ptr %14, align 8, !tbaa !76   ; 5 uses
  %.not.i1.i.i = icmp eq ptr %i.he, null          ; 2 uses
  br i1 %i.hd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i
  br i1 %.not.i1.i.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i.i: ; preds = %bb.au
  call void @_ZN4llvm3lto9InputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.he) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef 264) #27
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i
  br i1 %.not.i1.i.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i108.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i108.i: ; preds = %bb.av
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.he) #26, !inline_history !298
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i

_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i108.i, %bb.av, %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i.i, %bb.au
  %i.hi = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !57
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 32 ; 3 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !58 ; 2 uses
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = icmp ult i64 %i.hp, 15
  br i1 %i.hq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i
  %i.hr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hi, ptr noundef nonnull @.str.157, i64 noundef 15) #26 ; 2 uses
  %.phi.trans.insert339.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %.pre340.i = load ptr, ptr %.phi.trans.insert339.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit111.i

bb.ax:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.hm, ptr noundef nonnull align 1 dereferenceable(15) @.str.157, i64 15, i1 false)
  %i.hs = load ptr, ptr %i.hl, align 8, !tbaa !58
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 15 ; 2 uses
  store ptr %i.ht, ptr %i.hl, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit111.i

_ZN4llvm11raw_ostreamlsEPKc.exit111.i:            ; preds = %bb.ax, %bb.aw
  %i.hu = phi ptr [ %.pre340.i, %bb.aw ], [ %i.ht, %bb.ax ] ; 3 uses
  %.0.i.i110.i = phi ptr [ %i.hr, %bb.aw ], [ %i.hi, %bb.ax ] ; 5 uses
  %i.hv = load ptr, ptr %13, align 8, !tbaa !78   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 96
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.hw, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 104
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !65 ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i110.i, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !57
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.i110.i, i64 32 ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hu to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = icmp ugt i64 %.sroa.2.0.copyload.i.i, %i.ic
  br i1 %i.id, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit111.i
  %i.ie = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i110.i, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.2.0.copyload.i.i) #26 ; 2 uses
  %.phi.trans.insert341.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %.pre342.i = load ptr, ptr %.phi.trans.insert341.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit116.i

bb.az:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit111.i
  %.not.i114.i = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not.i114.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit116.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i, i1 false)
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !58
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.2.0.copyload.i.i ; 2 uses
  store ptr %i.ig, ptr %i.hz, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit116.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit116.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ih = phi ptr [ %.pre342.i, %bb.ay ], [ %i.ig, %bb.ba ], [ %i.hu, %bb.az ] ; 3 uses
  %.0.i115.i = phi ptr [ %i.ie, %bb.ay ], [ %.0.i.i110.i, %bb.ba ], [ %.0.i.i110.i, %bb.az ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i115.i, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !57
  %.not.i117.i = icmp ult ptr %i.ih, %i.ij
  br i1 %.not.i117.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit116.i
  %i.ik = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i115.i, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit119.i

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit116.i
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i115.i, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.im, ptr %i.il, align 8, !tbaa !58
  store i8 10, ptr %i.ih, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit119.i

_ZN4llvm11raw_ostreamlsEc.exit119.i:              ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.in = load ptr, ptr %13, align 8, !tbaa !78   ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 96
  %.sroa.0.0.copyload.i120.i = load ptr, ptr %i.io, align 8, !tbaa !59 ; 3 uses
  %.sroa.2.0..sroa_idx.i121.i = getelementptr inbounds nuw i8, ptr %i.in, i64 104
  %.sroa.2.0.copyload.i122.i = load i64, ptr %.sroa.2.0..sroa_idx.i121.i, align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %.not.i.i125.i = icmp eq ptr %.sroa.0.0.copyload.i120.i, null
  store ptr %i.bg, ptr %2, align 8, !tbaa !64, !alias.scope !311
  br i1 %.not.i.i125.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit119.i
  store i64 0, ptr %i.bh, align 8, !tbaa !66, !alias.scope !311
  store i8 0, ptr %i.bg, align 8, !tbaa !44, !alias.scope !311
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i

bb.be:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit119.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !311
  store i64 %.sroa.2.0.copyload.i122.i, ptr %i.a, align 8, !tbaa !65, !noalias !311
  %i.ip = icmp ugt i64 %.sroa.2.0.copyload.i122.i, 15
  br i1 %i.ip, label %bb.bf, label %._crit_edge.i.i.i.i126.i

bb.bf:                                            ; preds = %bb.be
  %i.iq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.iq, ptr %2, align 8, !tbaa !43, !alias.scope !311
  %i.ir = load i64, ptr %i.a, align 8, !tbaa !65, !noalias !311
  store i64 %i.ir, ptr %i.bg, align 8, !tbaa !44, !alias.scope !311
  br label %._crit_edge.i.i.i.i126.i

._crit_edge.i.i.i.i126.i:                         ; preds = %bb.bf, %bb.be
  %i.is = phi ptr [ %i.iq, %bb.bf ], [ %i.bg, %bb.be ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i122.i, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i126.i
  %i.it = load i8, ptr %.sroa.0.0.copyload.i120.i, align 1, !tbaa !44
  store i8 %i.it, ptr %i.is, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i126.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.is, ptr nonnull align 1 %.sroa.0.0.copyload.i120.i, i64 %.sroa.2.0.copyload.i122.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i: ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i.i.i126.i
end_hunk_0
begin_hunk_1_@main:bb.a
  br label %_ZN4llvm11raw_ostreamlsEc.exit156thread-pre-split.i

_ZN4llvm11raw_ostreamlsEc.exit156thread-pre-split.i: ; preds = %bb.bw, %bb.bv
  %.pr.i = load i32, ptr %i.bi, align 4, !tbaa !312
  br label %_ZN4llvm11raw_ostreamlsEc.exit156.i

_ZN4llvm11raw_ostreamlsEc.exit156.i:              ; preds = %_ZN4llvm11raw_ostreamlsEc.exit156thread-pre-split.i, %_ZN4llvm11raw_ostreamlsEc.exit142.i
  %i.lm = phi i32 [ %.pr.i, %_ZN4llvm11raw_ostreamlsEc.exit156thread-pre-split.i ], [ %i.kf, %_ZN4llvm11raw_ostreamlsEc.exit142.i ]
  %i.ln = icmp eq i32 %i.lm, 3
  br i1 %i.ln, label %bb.bx, label %_ZN4llvm11raw_ostreamlsEc.exit164.i

bb.bx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit156.i
  %i.lo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !57
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 32 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !58 ; 2 uses
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = icmp ult i64 %i.lv, 20
  br i1 %i.lw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.lx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lo, ptr noundef nonnull @.str.160, i64 noundef 20) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit159.i

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ls, ptr noundef nonnull align 1 dereferenceable(20) @.str.160, i64 20, i1 false)
  %i.ly = load ptr, ptr %i.lr, align 8, !tbaa !58
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 20
  store ptr %i.lz, ptr %i.lr, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit159.i

_ZN4llvm11raw_ostreamlsEPKc.exit159.i:            ; preds = %bb.bz, %bb.by
  %i.ma = load ptr, ptr %13, align 8, !tbaa !78   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 144
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !314 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 152
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !315 ; 2 uses
  %.not70324.i = icmp eq ptr %i.mc, %i.me
  br i1 %.not70324.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit173.i, %_ZN4llvm11raw_ostreamlsEPKc.exit159.i
  %i.mf = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !58 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !57
  %.not.i162.i = icmp ult ptr %i.mh, %i.mj
  br i1 %.not.i162.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i
  %i.mk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.mf, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit164.i

bb.cb:                                            ; preds = %._crit_edge.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store ptr %i.ml, ptr %i.mg, align 8, !tbaa !58
  store i8 10, ptr %i.mh, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit164.i

.lr.ph.i:                                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit159.i, %_ZN4llvm11raw_ostreamlsEPKc.exit173.i
  %.067325.i = phi ptr [ %i.nr, %_ZN4llvm11raw_ostreamlsEPKc.exit173.i ], [ %i.mc, %_ZN4llvm11raw_ostreamlsEPKc.exit159.i ] ; 3 uses
  %.sroa.034.0.copyload.i = load ptr, ptr %.067325.i, align 8, !tbaa !59 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.067325.i, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !65 ; 5 uses
  %i.mm = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !57
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 32 ; 3 uses
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !58 ; 2 uses
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = icmp ult i64 %i.mt, 2
  br i1 %i.mu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.lr.ph.i
  %i.mv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mm, ptr noundef nonnull @.str.161, i64 noundef 2) #26 ; 2 uses
  %.phi.trans.insert351.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %.pre352.i = load ptr, ptr %.phi.trans.insert351.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit167.i

bb.cd:                                            ; preds = %.lr.ph.i
  store i16 8736, ptr %i.mq, align 1
  %i.mw = load ptr, ptr %i.mp, align 8, !tbaa !58
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 2 ; 2 uses
  store ptr %i.mx, ptr %i.mp, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit167.i

_ZN4llvm11raw_ostreamlsEPKc.exit167.i:            ; preds = %bb.cd, %bb.cc
  %i.my = phi ptr [ %.pre352.i, %bb.cc ], [ %i.mx, %bb.cd ] ; 3 uses
  %.0.i.i166.i = phi ptr [ %i.mv, %bb.cc ], [ %i.mm, %bb.cd ] ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i.i166.i, i64 24
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !57
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.i.i166.i, i64 32 ; 2 uses
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.my to i64
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = icmp ugt i64 %.sroa.4.0.copyload.i, %i.ne
  br i1 %i.nf, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit167.i
  %i.ng = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i166.i, ptr noundef %.sroa.034.0.copyload.i, i64 noundef %.sroa.4.0.copyload.i) #26 ; 2 uses
  %.phi.trans.insert353.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  %.pre354.i = load ptr, ptr %.phi.trans.insert353.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit170.i

bb.cf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit167.i
  %.not.i168.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i168.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit170.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.my, ptr align 1 %.sroa.034.0.copyload.i, i64 %.sroa.4.0.copyload.i, i1 false)
  %i.nh = load ptr, ptr %i.nb, align 8, !tbaa !58
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.sroa.4.0.copyload.i ; 2 uses
  store ptr %i.ni, ptr %i.nb, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit170.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit170.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.nj = phi ptr [ %.pre354.i, %bb.ce ], [ %i.ni, %bb.cg ], [ %i.my, %bb.cf ] ; 2 uses
  %.0.i169.i = phi ptr [ %i.ng, %bb.ce ], [ %.0.i.i166.i, %bb.cg ], [ %.0.i.i166.i, %bb.cf ] ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.i169.i, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !57
  %i.nm = icmp eq ptr %i.nl, %i.nj
  br i1 %i.nm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit170.i
  %i.nn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i169.i, ptr noundef nonnull @.str.162, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit173.i

bb.ci:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit170.i
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i169.i, i64 32 ; 2 uses
  store i8 34, ptr %i.nj, align 1
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !58
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  store ptr %i.nq, ptr %i.no, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit173.i

_ZN4llvm11raw_ostreamlsEPKc.exit173.i:            ; preds = %bb.ci, %bb.ch
  %i.nr = getelementptr inbounds nuw i8, ptr %.067325.i, i64 16 ; 2 uses
  %.not70.i = icmp eq ptr %i.nr, %i.me
  br i1 %.not70.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4llvm11raw_ostreamlsEc.exit164.i:              ; preds = %bb.cb, %bb.ca, %_ZN4llvm11raw_ostreamlsEc.exit156.i
  %i.ns = load ptr, ptr %13, align 8, !tbaa !78   ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 168
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !318
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !89 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 56
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !90 ; 2 uses
  %.not71326.i = icmp eq ptr %i.nw, %i.ny
  br i1 %.not71326.i, label %._crit_edge329.i, label %.lr.ph328.i

._crit_edge329.i:                                 ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit289.i, %_ZN4llvm11raw_ostreamlsEc.exit164.i
  %i.nz = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !58 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !57
  %.not.i178.i = icmp ult ptr %i.ob, %i.od
  br i1 %.not.i178.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge329.i
  %i.oe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.nz, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit180.i

bb.ck:                                            ; preds = %._crit_edge329.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store ptr %i.of, ptr %i.oa, align 8, !tbaa !58
  store i8 10, ptr %i.ob, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit180.i

_ZN4llvm11raw_ostreamlsEc.exit180.i:              ; preds = %bb.ck, %bb.cj
  %i.og = load ptr, ptr %17, align 8, !tbaa !43   ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.bj
  br i1 %i.oh, label %_ZN4llvm6TripleD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit180.i
  %i.oi = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #27
  br label %_ZN4llvm6TripleD2Ev.exit.i

_ZN4llvm6TripleD2Ev.exit.i:                       ; preds = %_ZN4llvm11raw_ostreamlsEc.exit180.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.ok = load ptr, ptr %13, align 8, !tbaa !78   ; 3 uses
  %.not.i183.i = icmp eq ptr %i.ok, null
  br i1 %.not.i183.i, label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i: ; preds = %_ZN4llvm6TripleD2Ev.exit.i
  call void @_ZN4llvm3lto9InputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ok) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef 264) #27
  br label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i, %_ZN4llvm6TripleD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0301.0.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm19BitcodeFileContentsD2Ev.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit.i
  %i.ol = ptrtoint ptr %.sroa.0301.0.i to i64
  %i.om = sub i64 %.sroa.6.0.i, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0301.0.i, i64 noundef %i.om) #27
  br label %_ZN4llvm19BitcodeFileContentsD2Ev.exit.i

_ZN4llvm19BitcodeFileContentsD2Ev.exit.i:         ; preds = %bb.cl, %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit.i
  %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0.307.i = load ptr, ptr %.sroa.0305.i, align 8, !tbaa !68 ; 3 uses
  %.not.i184.i = icmp eq ptr %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0.307.i, null
  br i1 %.not.i184.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm19BitcodeFileContentsD2Ev.exit.i
  %i.on = load ptr, ptr %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0.307.i, align 8, !tbaa !20
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0305.i.0..sroa.0305.i.0..sroa.0305.i.0..sroa.0305.0..sroa.0305.0..sroa.0305.0.307.i) #26, !inline_history !301
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i, %_ZN4llvm19BitcodeFileContentsD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0305.i)
  %.0.i10 = getelementptr inbounds nuw i8, ptr %.0333.i, i64 8 ; 2 uses
  %.not.i11 = icmp eq ptr %.0.i10, %i.an
  br i1 %.not.i11, label %_ZL10dumpSymtabiPPc.exit, label %bb.f

.lr.ph328.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEc.exit164.i, %_ZN4llvm11raw_ostreamlsEPKc.exit289.i
  %.068327.i = phi ptr [ %i.abd, %_ZN4llvm11raw_ostreamlsEPKc.exit289.i ], [ %i.nw, %_ZN4llvm11raw_ostreamlsEc.exit164.i ] ; 11 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.068327.i, i64 36 ; 10 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.os = and i32 %i.or, 3
  switch i32 %i.os, label %default.unreachable [
    i32 1, label %bb.cm
    i32 2, label %bb.cp
    i32 0, label %bb.cs
    i32 3, label %_ZN4llvm11raw_ostreamlsEc.exit187.i
  ]

bb.cm:                                            ; preds = %.lr.ph328.i
  %i.ot = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !58 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !57
  %.not.i185.i = icmp ult ptr %i.ov, %i.ox
  br i1 %.not.i185.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ot, i8 noundef zeroext 72) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit187.i

bb.co:                                            ; preds = %bb.cm
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 1
  store ptr %i.oz, ptr %i.ou, align 8, !tbaa !58
  store i8 72, ptr %i.ov, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit187.i

bb.cp:                                            ; preds = %.lr.ph328.i
  %i.pa = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !58 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !57
  %.not.i188.i = icmp ult ptr %i.pc, %i.pe
  br i1 %.not.i188.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.pa, i8 noundef zeroext 80) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit187.i

bb.cr:                                            ; preds = %bb.cp
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 1
  store ptr %i.pg, ptr %i.pb, align 8, !tbaa !58
  store i8 80, ptr %i.pc, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit187.i

bb.cs:                                            ; preds = %.lr.ph328.i
  %i.ph = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 32 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !58 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !57
  %.not.i191.i = icmp ult ptr %i.pj, %i.pl
  br i1 %.not.i191.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ph, i8 noundef zeroext 68) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit187.i

bb.cu:                                            ; preds = %bb.cs
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  store ptr %i.pn, ptr %i.pi, align 8, !tbaa !58
  store i8 68, ptr %i.pj, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit187.i

default.unreachable:                              ; preds = %.lr.ph328.i
  unreachable

_ZN4llvm11raw_ostreamlsEc.exit187.i:              ; preds = %bb.cu, %bb.ct, %bb.cr, %bb.cq, %bb.co, %bb.cn, %.lr.ph328.i
  %i.po = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.pp = and i32 %i.po, 8
  %.not316.i = icmp eq i32 %i.pp, 0
  %i.pq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.pr = select i1 %.not316.i, i8 45, i8 85      ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 32 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !58 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !57
  %.not.i.i194.i = icmp ult ptr %i.pt, %i.pv
  br i1 %.not.i.i194.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit187.i
  %i.pw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.pq, i8 noundef zeroext %i.pr) #26 ; 0 uses
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit.i"

bb.cw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit187.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 1
  store ptr %i.px, ptr %i.ps, align 8, !tbaa !58
  store i8 %i.pr, ptr %i.pt, align 1, !tbaa !44
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit.i"

"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit.i":        ; preds = %bb.cw, %bb.cv
  %i.py = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.pz = and i32 %i.py, 32
  %.not317.i = icmp eq i32 %i.pz, 0
  %i.qa = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.qb = select i1 %.not317.i, i8 45, i8 67      ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 32 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !58 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !57
  %.not.i.i195.i = icmp ult ptr %i.qd, %i.qf
  br i1 %.not.i.i195.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit.i"
  %i.qg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.qa, i8 noundef zeroext %i.qb) #26 ; 0 uses
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit196.i"

bb.cy:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit.i"
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  store ptr %i.qh, ptr %i.qc, align 8, !tbaa !58
  store i8 %i.qb, ptr %i.qd, align 1, !tbaa !44
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit196.i"

"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit196.i":     ; preds = %bb.cy, %bb.cx
  %i.qi = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.qj = and i32 %i.qi, 16
  %.not318.i = icmp eq i32 %i.qj, 0
  %i.qk = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.ql = select i1 %.not318.i, i8 45, i8 87      ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 32 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !58 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !57
  %.not.i.i197.i = icmp ult ptr %i.qn, %i.qp
  br i1 %.not.i.i197.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit196.i"
  %i.qq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.qk, i8 noundef zeroext %i.ql) #26 ; 0 uses
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit198.i"

bb.da:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit196.i"
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  store ptr %i.qr, ptr %i.qm, align 8, !tbaa !58
  store i8 %i.ql, ptr %i.qn, align 1, !tbaa !44
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit198.i"

"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit198.i":     ; preds = %bb.da, %bb.cz
  %i.qs = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.qt = and i32 %i.qs, 64
  %.not319.i = icmp eq i32 %i.qt, 0
  %i.qu = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.qv = select i1 %.not319.i, i8 45, i8 73      ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 32 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !58 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !57
  %.not.i.i199.i = icmp ult ptr %i.qx, %i.qz
  br i1 %.not.i.i199.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit198.i"
  %i.ra = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.qu, i8 noundef zeroext %i.qv) #26 ; 0 uses
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit200.i"

bb.dc:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit198.i"
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  store ptr %i.rb, ptr %i.qw, align 8, !tbaa !58
  store i8 %i.qv, ptr %i.qx, align 1, !tbaa !44
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit200.i"

"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit200.i":     ; preds = %bb.dc, %bb.db
  %i.rc = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.rd = and i32 %i.rc, 512
  %.not320.i = icmp eq i32 %i.rd, 0
  %i.re = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.rf = select i1 %.not320.i, i8 45, i8 79      ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 32 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !58 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !57
  %.not.i.i201.i = icmp ult ptr %i.rh, %i.rj
  br i1 %.not.i.i201.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit200.i"
  %i.rk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.re, i8 noundef zeroext %i.rf) #26 ; 0 uses
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit202.i"

bb.de:                                            ; preds = %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit200.i"
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 1
  store ptr %i.rl, ptr %i.rg, align 8, !tbaa !58
  store i8 %i.rf, ptr %i.rh, align 1, !tbaa !44
  br label %"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit202.i"

"_ZZL10dumpSymtabiPPcENK3$_0clEcb.exit202.i":     ; preds = %bb.de, %bb.dd
  %i.rm = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.rn = and i32 %i.rm, 256
  %.not321.i = icmp eq i32 %i.rn, 0
  %i.ro = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 3 uses
  %i.rp = select i1 %.not321.i, i8 45, i8 84      ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 32 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !58 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.yg = load ptr, ptr %i.xz, align 8, !tbaa !58
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %.sroa.24.0.copyload.i ; 2 uses
  store ptr %i.yh, ptr %i.xz, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit253.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit253.i: ; preds = %bb.et, %bb.es, %bb.er
  %i.yi = phi ptr [ %.pre358.i, %bb.er ], [ %i.yh, %bb.et ], [ %i.ya, %bb.es ] ; 3 uses
  %.0.i252.i = phi ptr [ %i.yf, %bb.er ], [ %.0.i249.i, %bb.et ], [ %.0.i249.i, %bb.es ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.0.i252.i, i64 24
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !57
  %.not.i254.i = icmp ult ptr %i.yi, %i.yk
  br i1 %.not.i254.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit253.i
  %i.yl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i252.i, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit256.i

bb.ev:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit253.i
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.i252.i, i64 32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 1
  store ptr %i.yn, ptr %i.ym, align 8, !tbaa !58
  store i8 10, ptr %i.yi, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit256.i

_ZN4llvm11raw_ostreamlsEc.exit256.i:              ; preds = %bb.ev, %bb.eu, %_ZN4llvm11raw_ostreamlsEc.exit229.i
  %i.yo = load i32, ptr %i.bi, align 4, !tbaa !312
  %i.yp = icmp eq i32 %i.yo, 1
  br i1 %i.yp, label %bb.ew, label %_ZN4llvm11raw_ostreamlsEc.exit270.i

bb.ew:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit256.i
  %i.yq = load i32, ptr %i.oq, align 4, !tbaa !320
  %i.yr = and i32 %i.yq, 80
  %or.cond.i = icmp eq i32 %i.yr, 80
  br i1 %or.cond.i, label %bb.ex, label %_ZN4llvm11raw_ostreamlsEc.exit270.i

bb.ex:                                            ; preds = %bb.ew
  %i.ys = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !57
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 32 ; 3 uses
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !58 ; 2 uses
  %i.yx = ptrtoint ptr %i.yu to i64
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = sub i64 %i.yx, %i.yy
  %i.za = icmp ult i64 %i.yz, 18
  br i1 %i.za, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.zb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ys, ptr noundef nonnull @.str.171, i64 noundef 18) #26 ; 2 uses
  %.phi.trans.insert359.i = getelementptr inbounds nuw i8, ptr %i.zb, i64 32
  %.pre360.i = load ptr, ptr %.phi.trans.insert359.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit259.i

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.yw, ptr noundef nonnull align 1 dereferenceable(18) @.str.171, i64 18, i1 false)
  %i.zc = load ptr, ptr %i.yv, align 8, !tbaa !58
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 18 ; 2 uses
  store ptr %i.zd, ptr %i.yv, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit259.i

_ZN4llvm11raw_ostreamlsEPKc.exit259.i:            ; preds = %bb.ez, %bb.ey
  %i.ze = phi ptr [ %.pre360.i, %bb.ey ], [ %i.zd, %bb.ez ] ; 3 uses
  %.0.i.i258.i = phi ptr [ %i.zb, %bb.ey ], [ %i.ys, %bb.ez ] ; 5 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.068327.i, i64 56
  %.sroa.0.0.copyload.i260.i = load ptr, ptr %i.zf, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0..sroa_idx.i261.i = getelementptr inbounds nuw i8, ptr %.068327.i, i64 64
  %.sroa.2.0.copyload.i262.i = load i64, ptr %.sroa.2.0..sroa_idx.i261.i, align 8, !tbaa !65 ; 5 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0.i.i258.i, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !57
  %i.zi = getelementptr inbounds nuw i8, ptr %.0.i.i258.i, i64 32 ; 2 uses
  %i.zj = ptrtoint ptr %i.zh to i64
  %i.zk = ptrtoint ptr %i.ze to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = icmp ugt i64 %.sroa.2.0.copyload.i262.i, %i.zl
  br i1 %i.zm, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit259.i
  %i.zn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i258.i, ptr noundef %.sroa.0.0.copyload.i260.i, i64 noundef %.sroa.2.0.copyload.i262.i) #26 ; 2 uses
  %.phi.trans.insert361.i = getelementptr inbounds nuw i8, ptr %i.zn, i64 32
  %.pre362.i = load ptr, ptr %.phi.trans.insert361.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit267.i

bb.fb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit259.i
  %.not.i265.i = icmp eq i64 %.sroa.2.0.copyload.i262.i, 0
  br i1 %.not.i265.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit267.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ze, ptr align 1 %.sroa.0.0.copyload.i260.i, i64 %.sroa.2.0.copyload.i262.i, i1 false)
  %i.zo = load ptr, ptr %i.zi, align 8, !tbaa !58
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.sroa.2.0.copyload.i262.i ; 2 uses
  store ptr %i.zp, ptr %i.zi, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit267.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit267.i: ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.zq = phi ptr [ %.pre362.i, %bb.fa ], [ %i.zp, %bb.fc ], [ %i.ze, %bb.fb ] ; 3 uses
  %.0.i266.i = phi ptr [ %i.zn, %bb.fa ], [ %.0.i.i258.i, %bb.fc ], [ %.0.i.i258.i, %bb.fb ] ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.0.i266.i, i64 24
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !57
  %.not.i268.i = icmp ult ptr %i.zq, %i.zs
  br i1 %.not.i268.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit267.i
  %i.zt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i266.i, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit270.i

bb.fe:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit267.i
  %i.zu = getelementptr inbounds nuw i8, ptr %.0.i266.i, i64 32
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.zv, ptr %i.zu, align 8, !tbaa !58
  store i8 10, ptr %i.zq, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit270.i

_ZN4llvm11raw_ostreamlsEc.exit270.i:              ; preds = %bb.fe, %bb.fd, %bb.ew, %_ZN4llvm11raw_ostreamlsEc.exit256.i
  %i.zw = getelementptr inbounds nuw i8, ptr %.068327.i, i64 72
  %.sroa.2.0..sroa_idx.i272.i = getelementptr inbounds nuw i8, ptr %.068327.i, i64 80 ; 2 uses
  %.sroa.2.0.copyload.i273.i = load i64, ptr %.sroa.2.0..sroa_idx.i272.i, align 8, !tbaa !65
  %i.zx = icmp eq i64 %.sroa.2.0.copyload.i273.i, 0
  br i1 %i.zx, label %_ZN4llvm11raw_ostreamlsEPKc.exit289.i, label %bb.ff

bb.ff:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit270.i
  %i.zy = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26 ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !57
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 32 ; 3 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !58 ; 2 uses
  %i.aad = ptrtoint ptr %i.aaa to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = icmp ult i64 %i.aaf, 17
  br i1 %i.aag, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zy, ptr noundef nonnull @.str.172, i64 noundef 17) #26 ; 2 uses
  %.phi.trans.insert363.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %.pre364.i = load ptr, ptr %.phi.trans.insert363.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit278.i

bb.fh:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aac, ptr noundef nonnull align 1 dereferenceable(17) @.str.172, i64 17, i1 false)
  %i.aai = load ptr, ptr %i.aab, align 8, !tbaa !58
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 17 ; 2 uses
  store ptr %i.aaj, ptr %i.aab, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit278.i

_ZN4llvm11raw_ostreamlsEPKc.exit278.i:            ; preds = %bb.fh, %bb.fg
  %i.aak = phi ptr [ %.pre364.i, %bb.fg ], [ %i.aaj, %bb.fh ] ; 3 uses
  %.0.i.i277.i = phi ptr [ %i.aah, %bb.fg ], [ %i.zy, %bb.fh ] ; 5 uses
  %.sroa.0.0.copyload.i279.i = load ptr, ptr %i.zw, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0.copyload.i281.i = load i64, ptr %.sroa.2.0..sroa_idx.i272.i, align 8, !tbaa !65 ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i.i277.i, i64 24
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !57
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.i.i277.i, i64 32 ; 2 uses
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = ptrtoint ptr %i.aak to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  %i.aar = icmp ugt i64 %.sroa.2.0.copyload.i281.i, %i.aaq
  br i1 %i.aar, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit278.i
  %i.aas = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i277.i, ptr noundef %.sroa.0.0.copyload.i279.i, i64 noundef %.sroa.2.0.copyload.i281.i) #26 ; 2 uses
  %.phi.trans.insert365.i = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %.pre366.i = load ptr, ptr %.phi.trans.insert365.i, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit286.i

bb.fj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit278.i
  %.not.i284.i = icmp eq i64 %.sroa.2.0.copyload.i281.i, 0
  br i1 %.not.i284.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit286.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aak, ptr align 1 %.sroa.0.0.copyload.i279.i, i64 %.sroa.2.0.copyload.i281.i, i1 false)
  %i.aat = load ptr, ptr %i.aan, align 8, !tbaa !58
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %.sroa.2.0.copyload.i281.i ; 2 uses
  store ptr %i.aau, ptr %i.aan, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit286.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit286.i: ; preds = %bb.fk, %bb.fj, %bb.fi
  %i.aav = phi ptr [ %.pre366.i, %bb.fi ], [ %i.aau, %bb.fk ], [ %i.aak, %bb.fj ] ; 2 uses
  %.0.i285.i = phi ptr [ %i.aas, %bb.fi ], [ %.0.i.i277.i, %bb.fk ], [ %.0.i.i277.i, %bb.fj ] ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.i285.i, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !57
  %i.aay = icmp eq ptr %i.aax, %i.aav
  br i1 %i.aay, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit286.i
  %i.aaz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i285.i, ptr noundef nonnull @.str.173, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit289.i

bb.fm:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit286.i
  %i.aba = getelementptr inbounds nuw i8, ptr %.0.i285.i, i64 32 ; 2 uses
  store i8 10, ptr %i.aav, align 1
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !58
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  store ptr %i.abc, ptr %i.aba, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit289.i

_ZN4llvm11raw_ostreamlsEPKc.exit289.i:            ; preds = %bb.fm, %bb.fl, %_ZN4llvm11raw_ostreamlsEc.exit270.i
  %i.abd = getelementptr inbounds nuw i8, ptr %.068327.i, i64 88 ; 2 uses
  %.not71.i = icmp eq ptr %i.abd, %i.ny
  br i1 %.not71.i, label %._crit_edge329.i, label %.lr.ph328.i

_ZL10dumpSymtabiPPc.exit:                         ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZL5usagev.exit

_ZN4llvmeqENS_9StringRefES0_.exit16:              ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %bcmp.i15 = call i32 @bcmp(ptr nonnull %i.y, ptr nonnull @.str.143, i64 %i.aa)
  %i.abe = icmp eq i32 %bcmp.i15, 0
  br i1 %i.abe, label %_ZN4llvmeqENS_9StringRefES0_.exit16.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54

_ZN4llvmeqENS_9StringRefES0_.exit16.thread:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit16
  %i.abf = add nsw i32 %i.i, -1
  %i.abg = call fastcc noundef i32 @_ZL3runiPPc(i32 noundef %i.abf, ptr noundef nonnull %i.x)
  br label %_ZL5usagev.exit

_ZN4llvmeqENS_9StringRefES0_.exit21:              ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %bcmp.i20 = call i32 @bcmp(ptr nonnull %i.y, ptr nonnull @.str.144, i64 %i.aa)
  %i.abh = icmp eq i32 %bcmp.i20, 0
  %i.abi = icmp ne i32 %i.i, 2
  %or.cond = and i1 %i.abi, %i.abh
  br i1 %or.cond, label %bb.fn, label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54

bb.fn:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit21
  %i.abj = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #26
  %i.abk = load ptr, ptr %i.h, align 8, !tbaa !303
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !59 ; 3 uses
  %.not.i22 = icmp eq ptr %i.abm, null
  br i1 %.not.i22, label %_ZN4llvm9StringRefC2EPKc.exit24, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.abn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.abm) #26
  br label %_ZN4llvm9StringRefC2EPKc.exit24

_ZN4llvm9StringRefC2EPKc.exit24:                  ; preds = %bb.fn, %bb.fo
  %.sroa.0.0.i23 = phi i64 [ %i.abn, %bb.fo ], [ 0, %bb.fn ]
  %i.abo = call noundef i64 @_ZN4llvm11GlobalValue30getGUIDAssumingExternalLinkageENS_9StringRefE(ptr %i.abm, i64 %.sroa.0.0.i23) #26
  %i.abp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %i.abj, i64 noundef %i.abo) #26 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 32 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !58 ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 24
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !57
  %.not.i25 = icmp ult ptr %i.abr, %i.abt
  br i1 %.not.i25, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit24
  %i.abu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.abp, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZL5usagev.exit

bb.fq:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit24
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  store ptr %i.abv, ptr %i.abq, align 8, !tbaa !58
  store i8 10, ptr %i.abr, align 1, !tbaa !44
  br label %_ZL5usagev.exit

_ZN4llvmeqENS_9StringRefES0_.exit31:              ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %bcmp.i30 = call i32 @bcmp(ptr nonnull %i.y, ptr nonnull @.str.145, i64 %i.aa)
  %i.abw = icmp eq i32 %bcmp.i30, 0
  br i1 %i.abw, label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54

_ZN4llvmeqENS_9StringRefES0_.exit31.thread:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit31
  call void @_ZN4llvm2cl19PrintVersionMessageEv() #26
  br label %_ZL5usagev.exit

_ZN4llvmeqENS_9StringRefES0_.exit31.thread54:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit21, %_ZN4llvmeqENS_9StringRefES0_.exit16, %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm9StringRefC2EPKc.exit.thread, %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvmeqENS_9StringRefES0_.exit31
  %i.abx = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #26 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !57
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 32 ; 3 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !58 ; 2 uses
  %i.acc = ptrtoint ptr %i.abz to i64
  %i.acd = ptrtoint ptr %i.acb to i64
  %i.ace = sub i64 %i.acc, %i.acd
  %i.acf = icmp ult i64 %i.ace, 50
  br i1 %i.acf, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54
  %i.acg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.abx, ptr noundef nonnull @.str.154, i64 noundef 50) #26 ; 0 uses
  br label %_ZL5usagev.exit

bb.fs:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit31.thread54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.acb, ptr noundef nonnull align 1 dereferenceable(50) @.str.154, i64 50, i1 false)
  %i.ach = load ptr, ptr %i.aca, align 8, !tbaa !58
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 50
  store ptr %i.aci, ptr %i.aca, align 8, !tbaa !58
  br label %_ZL5usagev.exit

_ZL5usagev.exit:                                  ; preds = %_ZL10dumpSymtabiPPc.exit, %_ZN4llvmeqENS_9StringRefES0_.exit16.thread, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.d, %bb.c
  %.1 = phi i32 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %_ZL10dumpSymtabiPPc.exit ], [ %i.abg, %_ZN4llvmeqENS_9StringRefES0_.exit16.thread ], [ 0, %bb.fq ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread ], [ 0, %bb.fp ], [ 1, %bb.fr ], [ 1, %bb.fs ]
  call void @_ZN4llvm8InitLLVMD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20InitializeAllTargetsEv() local_unnamed_addr #1 comdat {
bb.a:
  tail call void @_ZN4llvm24InitializeAllTargetInfosEv()
  tail call void @LLVMInitializeAArch64Target() #26
  tail call void @LLVMInitializeAMDGPUTarget() #26
  tail call void @LLVMInitializeARMTarget() #26
  tail call void @LLVMInitializeAVRTarget() #26
  tail call void @LLVMInitializeBPFTarget() #26
  tail call void @LLVMInitializeHexagonTarget() #26
  tail call void @LLVMInitializeLanaiTarget() #26
  tail call void @LLVMInitializeLoongArchTarget() #26
  tail call void @LLVMInitializeMipsTarget() #26
  tail call void @LLVMInitializeMSP430Target() #26
  tail call void @LLVMInitializeNVPTXTarget() #26
  tail call void @LLVMInitializePowerPCTarget() #26
  tail call void @LLVMInitializeRISCVTarget() #26
  tail call void @LLVMInitializeSparcTarget() #26
  tail call void @LLVMInitializeSPIRVTarget() #26
  tail call void @LLVMInitializeSystemZTarget() #26
  tail call void @LLVMInitializeVETarget() #26
  tail call void @LLVMInitializeWebAssemblyTarget() #26
  tail call void @LLVMInitializeX86Target() #26
  tail call void @LLVMInitializeXCoreTarget() #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22InitializeAllTargetMCsEv() local_unnamed_addr #1 comdat {
bb.a:
  tail call void @LLVMInitializeAArch64TargetMC() #26
  tail call void @LLVMInitializeAMDGPUTargetMC() #26
  tail call void @LLVMInitializeARMTargetMC() #26
  tail call void @LLVMInitializeAVRTargetMC() #26
  tail call void @LLVMInitializeBPFTargetMC() #26
  tail call void @LLVMInitializeHexagonTargetMC() #26
  tail call void @LLVMInitializeLanaiTargetMC() #26
  tail call void @LLVMInitializeLoongArchTargetMC() #26
  tail call void @LLVMInitializeMipsTargetMC() #26
  tail call void @LLVMInitializeMSP430TargetMC() #26
  tail call void @LLVMInitializeNVPTXTargetMC() #26
  tail call void @LLVMInitializePowerPCTargetMC() #26
  tail call void @LLVMInitializeRISCVTargetMC() #26
  tail call void @LLVMInitializeSparcTargetMC() #26
  tail call void @LLVMInitializeSPIRVTargetMC() #26
  tail call void @LLVMInitializeSystemZTargetMC() #26
  tail call void @LLVMInitializeVETargetMC() #26
  tail call void @LLVMInitializeWebAssemblyTargetMC() #26
  tail call void @LLVMInitializeX86TargetMC() #26
  tail call void @LLVMInitializeXCoreTargetMC() #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm24InitializeAllAsmPrintersEv() local_unnamed_addr #1 comdat {
bb.a:
  tail call void @LLVMInitializeAArch64AsmPrinter() #26
  tail call void @LLVMInitializeAMDGPUAsmPrinter() #26
  tail call void @LLVMInitializeARMAsmPrinter() #26
  tail call void @LLVMInitializeAVRAsmPrinter() #26
  tail call void @LLVMInitializeBPFAsmPrinter() #26
  tail call void @LLVMInitializeHexagonAsmPrinter() #26
  tail call void @LLVMInitializeLanaiAsmPrinter() #26
  tail call void @LLVMInitializeLoongArchAsmPrinter() #26
  tail call void @LLVMInitializeMipsAsmPrinter() #26
  tail call void @LLVMInitializeMSP430AsmPrinter() #26
  tail call void @LLVMInitializeNVPTXAsmPrinter() #26
  tail call void @LLVMInitializePowerPCAsmPrinter() #26
  tail call void @LLVMInitializeRISCVAsmPrinter() #26
  tail call void @LLVMInitializeSparcAsmPrinter() #26
  tail call void @LLVMInitializeSPIRVAsmPrinter() #26
  tail call void @LLVMInitializeSystemZAsmPrinter() #26
  tail call void @LLVMInitializeVEAsmPrinter() #26
  tail call void @LLVMInitializeWebAssemblyAsmPrinter() #26
  tail call void @LLVMInitializeX86AsmPrinter() #26
  tail call void @LLVMInitializeXCoreAsmPrinter() #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL3runiPPc(i32 noundef range(i32 -2147483648, 2147483647) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %3 = alloca %class.anon.215, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.215, align 8            ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::function.518", align 16 ; 13 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %class.anon.215, align 8           ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %13 = alloca %class.anon.215, align 8           ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"struct.llvm::lto::Config", align 8 ; 5 uses
  %16 = alloca %"struct.llvm::lto::ThinBackend", align 8 ; 11 uses
  %17 = alloca %"struct.llvm::lto::Config", align 8 ; 5 uses
  %18 = alloca %"class.std::function", align 8    ; 7 uses
  %19 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %20 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %21 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %22 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %23 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %24 = alloca %"class.llvm::ArrayRef", align 8   ; 5 uses
  %25 = alloca %"class.std::function.523", align 8 ; 9 uses
  %26 = alloca %"class.std::function.294", align 16 ; 9 uses
  %27 = alloca %"class.std::function.380", align 8 ; 5 uses
  %28 = alloca %"class.std::function.380", align 8 ; 5 uses
  %29 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %30 = alloca %class.anon.215, align 8           ; 4 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %31 = alloca %"struct.std::pair.541", align 8   ; 3 uses
  %32 = alloca %"struct.std::less", align 1       ; 5 uses
  %33 = alloca %"class.std::tuple.529", align 8   ; 4 uses
  %34 = alloca %"class.std::tuple.532", align 1   ; 3 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %i.q = alloca i8, align 1                       ; 5 uses
  %i.r = alloca i8, align 1                       ; 5 uses
  %35 = alloca %"class.std::map", align 8         ; 12 uses
  %36 = alloca %"class.llvm::StringRef", align 8  ; 10 uses
  %37 = alloca %"class.llvm::StringRef", align 8  ; 13 uses
  %38 = alloca %"struct.std::pair.250", align 8   ; 12 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"struct.llvm::lto::Config", align 8 ; 53 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %43 = alloca %"class.llvm::TargetOptions", align 8 ; 10 uses
  %44 = alloca %"class.llvm::Triple", align 8     ; 9 uses
  %45 = alloca %"class.std::vector", align 16     ; 9 uses
  %46 = alloca %"class.llvm::DenseSet", align 8   ; 12 uses
  %47 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %52 = alloca %"class.llvm::SmallVector.338", align 8 ; 10 uses
  %53 = alloca %"class.llvm::SmallVector.338", align 8 ; 10 uses
  %54 = alloca %"class.llvm::SmallVector.338", align 8 ; 10 uses
  %55 = alloca %class.anon.377, align 1           ; 4 uses
  %56 = alloca %"struct.llvm::lto::ThinBackend", align 8 ; 17 uses
  %57 = alloca %"struct.llvm::lto::ThinBackend", align 8 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %61 = alloca %"class.std::function", align 8    ; 5 uses
  %62 = alloca %"struct.llvm::lto::ThinBackend", align 8 ; 7 uses
  %63 = alloca %"class.std::function", align 8    ; 5 uses
  %64 = alloca %"struct.std::atomic", align 1     ; 9 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %.sroa.0549 = alloca ptr, align 8               ; 11 uses
  %66 = alloca %"class.llvm::ErrorOr", align 8    ; 7 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %69 = alloca %"class.std::unique_ptr.175", align 8 ; 7 uses
  %70 = alloca %"class.llvm::Expected.183", align 8 ; 4 uses
  %71 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 2 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"struct.std::pair.250", align 8   ; 14 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %75 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %76 = alloca %"struct.std::pair.250", align 8   ; 14 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %78 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %79 = alloca %"class.std::unique_ptr.175", align 8 ; 3 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %81 = alloca %"struct.std::pair.404", align 8   ; 13 uses
  %82 = alloca %"class.llvm::SmallVector.516", align 8 ; 9 uses
  %83 = alloca %"struct.llvm::FileCache", align 16 ; 14 uses
  %84 = alloca %"struct.llvm::FileCache", align 8 ; 24 uses
  %85 = alloca %"class.llvm::Expected.520", align 8 ; 18 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %89 = alloca %"class.std::function.523", align 8 ; 7 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %91 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %92 = alloca %"class.std::function.525", align 8 ; 6 uses
  %93 = alloca %"struct.llvm::FileCache", align 8 ; 10 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.s = tail call noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef %0, ptr noundef %1, ptr nonnull @.str.177, i64 33, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #26 ; 0 uses
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL9TimeTrace, i64 120), align 8, !tbaa !97, !range !28, !noundef !29
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20TimeTraceGranularity, i64 120), align 8, !tbaa !102
  %i.w = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #26
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.x, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN4llvm27timeTraceProfilerInitializeEjNS_9StringRefEb(i32 noundef %i.v, ptr %i.w, i64 %.sroa.0.0.i, i1 noundef zeroext false) #26
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  %i.y = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 20 uses
  store i32 0, ptr %i.y, align 8, !tbaa !407
  %i.z = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 5 uses
  store ptr null, ptr %i.z, align 8, !tbaa !408
  %i.aa = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %35, i64 32
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !409
  %i.ac = getelementptr inbounds nuw i8, ptr %35, i64 40 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !108
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17SymbolResolutionsB5cxx11, i64 120), align 8, !tbaa !75 ; 2 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17SymbolResolutionsB5cxx11, i64 128), align 8, !tbaa !75 ; 2 uses
  %.not718778 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not718778, label %.critedge83, label %.lr.ph780

.lr.ph780:                                        ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %.sroa.9642.16..sroa.0635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %38, i64 40
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph780, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.sroa.0644.0779 = phi ptr [ %i.ad, %.lr.ph780 ], [ %i.ht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  %i.ap = load ptr, ptr %.sroa.0644.0779, align 8, !tbaa !43
  store ptr %i.ap, ptr %36, align 8, !tbaa !410
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0644.0779, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !66
  store i64 %i.ar, ptr %i.af, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 44, ptr %i.r, align 1, !tbaa !44, !noalias !411
  %i.as = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr nonnull %i.r, i64 1, i64 noundef 0) #26, !noalias !412 ; 4 uses
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %_ZNK4llvm9StringRef5splitEc.exit.thread, label %_ZNK4llvm9StringRef5splitEc.exit

_ZNK4llvm9StringRef5splitEc.exit.thread:          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  br label %.critedge81

_ZNK4llvm9StringRef5splitEc.exit:                 ; preds = %bb.e
  %i.au = load i64, ptr %i.af, align 8, !tbaa !109, !noalias !412 ; 4 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.au) ; 4 uses
  %i.av = load ptr, ptr %36, align 8, !tbaa !410, !noalias !412 ; 4 uses
  %i.aw = add nuw i64 %i.as, 1                    ; 2 uses
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.aw) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.speculated4.i.i.i
  %i.ay = sub nuw i64 %i.au, %.sroa.speculated4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %i.ax, ptr %37, align 8, !tbaa !59
  store i64 %i.ay, ptr %.sroa.9642.16..sroa.0635.0..sroa_idx, align 8, !tbaa !65
  %.not731 = icmp ugt i64 %i.au, %i.aw
  br i1 %.not731, label %bb.m, label %.critedge81

.critedge81:                                      ; preds = %_ZNK4llvm9StringRef5splitEc.exit, %_ZNK4llvm9StringRef5splitEc.exit.thread
  %i.az = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #26 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.bg, 20
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge81
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull @.str.178, i64 noundef 20) #26 ; 2 uses
  %.phi.trans.insert828 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %.pre829 = load ptr, ptr %.phi.trans.insert828, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %.critedge81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.bd, ptr noundef nonnull align 1 dereferenceable(20) @.str.178, i64 20, i1 false)
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20 ; 2 uses
  store ptr %i.bk, ptr %i.bc, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.f, %bb.g
  %i.bl = phi ptr [ %.pre829, %bb.f ], [ %i.bk, %bb.g ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bi, %bb.f ], [ %i.az, %bb.g ] ; 5 uses
  %.sroa.046.0.copyload = load ptr, ptr %36, align 8, !tbaa !59 ; 2 uses
  %.sroa.247.0.copyload = load i64, ptr %i.af, align 8, !tbaa !65 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ugt i64 %.sroa.247.0.copyload, %i.br
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %.sroa.046.0.copyload, i64 noundef %.sroa.247.0.copyload) #26 ; 2 uses
  %.phi.trans.insert830 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %.pre831 = load ptr, ptr %.phi.trans.insert830, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i99 = icmp eq i64 %.sroa.247.0.copyload, 0
  br i1 %.not.i99, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %.sroa.046.0.copyload, i64 %.sroa.247.0.copyload, i1 false)
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.247.0.copyload ; 2 uses
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.h, %bb.i, %bb.j
  %i.bw = phi ptr [ %.pre831, %bb.h ], [ %i.bv, %bb.j ], [ %i.bl, %bb.i ] ; 3 uses
  %.0.i = phi ptr [ %i.bt, %bb.h ], [ %.0.i.i, %bb.j ], [ %.0.i.i, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !57
  %.not.i100 = icmp ult ptr %i.bw, %i.by
  br i1 %.not.i100, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !58
  store i8 10, ptr %i.bw, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.hy

bb.m:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 44, ptr %i.q, align 1, !tbaa !44, !noalias !413
  %i.cc = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr nonnull %i.q, i64 1, i64 noundef 0) #26, !noalias !414 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, -1
end_hunk_2
begin_hunk_3_@_ZL3runiPPc:bb.a
  store ptr %i.yl, ptr %21, align 8, !tbaa !442, !noalias !441
  %i.ym = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.yn = load i32, ptr %i.tn, align 8, !tbaa !209, !noalias !441
  %i.yo = zext i32 %i.yn to i64
  store i64 %i.yo, ptr %i.ym, align 8, !tbaa !443, !noalias !441
  %i.yp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13DTLTOCompilerB5cxx11, i64 120), align 8, !tbaa !43, !noalias !441
  store ptr %i.yp, ptr %22, align 8, !tbaa !410, !noalias !441
  %i.yq = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.yr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13DTLTOCompilerB5cxx11, i64 128), align 8, !tbaa !66, !noalias !441
  store i64 %i.yr, ptr %i.yq, align 8, !tbaa !109, !noalias !441
  %i.ys = load ptr, ptr %53, align 8, !tbaa !32, !noalias !441
  store ptr %i.ys, ptr %23, align 8, !tbaa !442, !noalias !441
  %i.yt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.yu = load i32, ptr %i.ue, align 8, !tbaa !209, !noalias !441
  %i.yv = zext i32 %i.yu to i64
  store i64 %i.yv, ptr %i.yt, align 8, !tbaa !443, !noalias !441
  %i.yw = load ptr, ptr %54, align 8, !tbaa !32, !noalias !441
  store ptr %i.yw, ptr %24, align 8, !tbaa !442, !noalias !441
  %i.yx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.yy = load i32, ptr %i.uv, align 8, !tbaa !209, !noalias !441
  %i.yz = zext i32 %i.yy to i64
  store i64 %i.yz, ptr %i.yx, align 8, !tbaa !443, !noalias !441
  %i.za = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.zc = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.zc, align 8, !noalias !441
  store i64 %i.xz, ptr %25, align 8, !tbaa !76, !noalias !441
  store ptr @"_ZNSt17_Function_handlerIFvjRKN4llvm5TwineESt10unique_ptrINS0_12MemoryBufferESt14default_deleteIS5_EEEZL3runiPPcE3$_4E9_M_invokeERKSt9_Any_dataOjS3_OS8_", ptr %i.zb, align 8, !tbaa !444, !noalias !441
  store ptr @"_ZNSt17_Function_handlerIFvjRKN4llvm5TwineESt10unique_ptrINS0_12MemoryBufferESt14default_deleteIS5_EEEZL3runiPPcE3$_4E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr %i.za, align 8, !tbaa !23, !noalias !441
  %i.zd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL9SaveTemps, i64 120), align 8, !tbaa !97, !range !28, !noalias !441, !noundef !29
  %i.ze = trunc nuw i8 %i.zd to i1
  call void @_ZN4llvm3lto5DTLTOC2ENS0_6ConfigEjNS0_3LTO7LTOKindESt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbbNS_9StringRefESG_NS_8ArrayRefISG_EESG_SI_SI_S5_IFvjRKNS_5TwineESt10unique_ptrINS_12MemoryBufferESt14default_deleteISN_EEEEb(ptr noundef nonnull align 8 dereferenceable(4448) %i.ya, ptr nofree noundef nonnull align 8 dereferenceable(1568) %17, i32 noundef 1, i32 noundef %i.xw, ptr nofree noundef nonnull align 8 dereferenceable(32) %18, i1 noundef zeroext %i.yc, i1 noundef zeroext %i.ye, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %19, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %20, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %21, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %22, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %23, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %24, ptr nofree noundef nonnull align 8 dereferenceable(32) %25, i1 noundef zeroext %i.ze), !noalias !441
  %i.zf = load ptr, ptr %i.za, align 8, !tbaa !23, !noalias !441 ; 2 uses
  %.not.i.i233 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i233, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.zg = call noundef zeroext i1 %i.zf(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3) #26, !noalias !441, !inline_history !366 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.cy, %bb.cx
  %i.zh = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !23, !noalias !441 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.zi, null
  br i1 %.not.i13.i, label %_ZNSt10unique_ptrIN4llvm3lto5DTLTOESt14default_deleteIS2_EED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.zj = call noundef zeroext i1 %i.zi(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 3) #26, !noalias !441, !inline_history !366 ; 0 uses
  br label %_ZNSt10unique_ptrIN4llvm3lto5DTLTOESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3lto5DTLTOESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.cz
  call void @_ZN4llvm3lto6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1568) dereferenceable(1568) %17) #26, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %bb.dd

bb.da:                                            ; preds = %"_ZNSt8functionIFvRKN4llvm14DiagnosticInfoEEEaSIZL3runiPPcE3$_3EENSt9enable_ifIXsr9_CallableIT_EE5valueERS5_E4typeEOSB_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.zk = call noalias noundef nonnull dereferenceable(2648) ptr @_Znwm(i64 noundef 2648) #30, !noalias !445 ; 2 uses
  call void @_ZN4llvm3lto6ConfigC2EOS1_(ptr noundef nonnull align 8 dereferenceable(1568) %15, ptr noundef nonnull align 8 dereferenceable(1568) %41) #26, !noalias !445
  %i.zl = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 24, i1 false), !noalias !445
  store ptr %i.xm, ptr %i.zl, align 8, !tbaa !439, !noalias !445
  %.not.i.i.not.i.i.i236 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.not.i.i.i236, label %_ZN4llvm3lto11ThinBackendC2EOS1_.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zm = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %56, i64 16, i1 false), !tbaa.struct !212, !noalias !445
  store ptr %i.xl, ptr %i.zn, align 8, !tbaa !23, !noalias !445
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zm, i8 0, i64 16, i1 false), !noalias !445
  br label %_ZN4llvm3lto11ThinBackendC2EOS1_.exit.i

_ZN4llvm3lto11ThinBackendC2EOS1_.exit.i:          ; preds = %bb.db, %bb.da
  %i.zo = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.zp = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.zq = load i64, ptr %i.zp, align 8, !noalias !445
  store i64 %i.zq, ptr %i.zo, align 8, !noalias !445
  call void @_ZN4llvm3lto3LTOC1ENS0_6ConfigENS0_11ThinBackendEjNS1_7LTOKindE(ptr noundef nonnull align 8 dereferenceable(2648) %i.zk, ptr nofree noundef nonnull align 8 dereferenceable(1568) %15, ptr nofree noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1, i32 noundef %i.xw) #26, !noalias !445
  %i.zr = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !23, !noalias !445 ; 2 uses
  %.not.i.i.i237 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i.i237, label %_ZNSt10unique_ptrIN4llvm3lto3LTOESt14default_deleteIS2_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm3lto11ThinBackendC2EOS1_.exit.i
  %i.zt = call noundef zeroext i1 %i.zs(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 3) #26, !noalias !445, !inline_history !369 ; 0 uses
  br label %_ZNSt10unique_ptrIN4llvm3lto3LTOESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3lto3LTOESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm3lto11ThinBackendC2EOS1_.exit.i, %bb.dc
  call void @_ZN4llvm3lto6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(1568) dereferenceable(1568) %15) #26, !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNSt10unique_ptrIN4llvm3lto3LTOESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4llvm3lto5DTLTOESt14default_deleteIS2_EED2Ev.exit
  %.sroa.0562.0 = phi ptr [ %i.zk, %_ZNSt10unique_ptrIN4llvm3lto3LTOESt14default_deleteIS2_EED2Ev.exit ], [ %i.ya, %_ZNSt10unique_ptrIN4llvm3lto5DTLTOESt14default_deleteIS2_EED2Ev.exit ] ; 8 uses
  %i.zu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14InputFilenamesB5cxx11, i64 120), align 8, !tbaa !75 ; 2 uses
  %i.zv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14InputFilenamesB5cxx11, i64 128), align 8, !tbaa !75 ; 2 uses
  %.not728793 = icmp eq ptr %i.zu, %i.zv
  br i1 %.not728793, label %._crit_edge800, label %.lr.ph799

.lr.ph799:                                        ; preds = %bb.dd
  %i.zw = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 5 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 7 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.zz = getelementptr inbounds nuw i8, ptr %67, i64 33
  %i.aaa = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 5 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 5 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 10 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 4 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %73, i64 32 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %73, i64 48 ; 6 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %73, i64 40
  %i.aap = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 10 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 4 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 5 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %76, i64 32 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %76, i64 48 ; 6 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %76, i64 40
  %i.aax = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 5 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %80, i64 8
  br label %bb.de

._crit_edge800.loopexit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %i.aaz = ptrtoint ptr %.sroa.12617.1 to i64
  br label %._crit_edge800

._crit_edge800:                                   ; preds = %._crit_edge800.loopexit, %bb.dd
  %.sroa.12617.0.lcssa = phi i64 [ 0, %bb.dd ], [ %i.aaz, %._crit_edge800.loopexit ]
  %.sroa.7614.0.lcssa = phi ptr [ null, %bb.dd ], [ %.sroa.7614.1, %._crit_edge800.loopexit ] ; 2 uses
  %.sroa.0612.0.lcssa = phi ptr [ null, %bb.dd ], [ %.sroa.0612.1, %._crit_edge800.loopexit ] ; 5 uses
  %i.aba = load i64, ptr %i.ac, align 8, !tbaa !108
  %i.abb = icmp eq i64 %i.aba, 0
  br i1 %i.abb, label %.loopexit, label %bb.ga

bb.de:                                            ; preds = %.lr.ph799, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %.sroa.0612.0797 = phi ptr [ null, %.lr.ph799 ], [ %.sroa.0612.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ] ; 12 uses
  %.sroa.0554.0796 = phi ptr [ %i.zu, %.lr.ph799 ], [ %i.apv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ] ; 3 uses
  %.sroa.7614.0795 = phi ptr [ null, %.lr.ph799 ], [ %.sroa.7614.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ] ; 7 uses
  %.sroa.12617.0794 = phi ptr [ null, %.lr.ph799 ], [ %.sroa.12617.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #26
  store ptr %i.zw, ptr %65, align 8, !tbaa !64
  %i.abc = load ptr, ptr %.sroa.0554.0796, align 8, !tbaa !43 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.0554.0796, i64 8
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i64 %i.abe, ptr %i.m, align 8, !tbaa !65
  %i.abf = icmp ugt i64 %i.abe, 15
  br i1 %i.abf, label %bb.df, label %._crit_edge.i.i240

bb.df:                                            ; preds = %bb.de
  %i.abg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #26 ; 2 uses
  store ptr %i.abg, ptr %65, align 8, !tbaa !43
  %i.abh = load i64, ptr %i.m, align 8, !tbaa !65
  store i64 %i.abh, ptr %i.zw, align 8, !tbaa !44
  br label %._crit_edge.i.i240

._crit_edge.i.i240:                               ; preds = %bb.df, %bb.de
  %i.abi = phi ptr [ %i.abg, %bb.df ], [ %i.zw, %bb.de ] ; 2 uses
  switch i64 %i.abe, label %bb.dh [
    i64 1, label %bb.dg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.dg:                                            ; preds = %._crit_edge.i.i240
  %i.abj = load i8, ptr %i.abc, align 1, !tbaa !44
  store i8 %i.abj, ptr %i.abi, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.dh:                                            ; preds = %._crit_edge.i.i240
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abi, ptr align 1 %i.abc, i64 %i.abe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i240, %bb.dg, %bb.dh
  %i.abk = load i64, ptr %i.m, align 8, !tbaa !65 ; 2 uses
  store i64 %i.abk, ptr %i.zx, align 8, !tbaa !66
  %i.abl = load ptr, ptr %65, align 8, !tbaa !43
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abk
  store i8 0, ptr %i.abm, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0549)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #26
  store i8 4, ptr %i.zy, align 8, !tbaa !62
  store i8 1, ptr %i.zz, align 1, !tbaa !63
  store ptr %65, ptr %67, align 8, !tbaa !44
  call void @_ZN4llvm12MemoryBuffer7getFileERKNS_5TwineEbbbSt8optionalINS_5AlignEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %66, ptr noundef nonnull align 8 dereferenceable(34) %67, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i16 0) #26
  store ptr %i.aaa, ptr %68, align 8, !tbaa !64
  %i.abn = load ptr, ptr %65, align 8, !tbaa !43  ; 2 uses
  %i.abo = load i64, ptr %i.zx, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  store i64 %i.abo, ptr %i.l, align 8, !tbaa !65
  %i.abp = icmp ugt i64 %i.abo, 15
  br i1 %i.abp, label %bb.di, label %._crit_edge.i.i241

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.abq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0) #26 ; 2 uses
  store ptr %i.abq, ptr %68, align 8, !tbaa !43
  %i.abr = load i64, ptr %i.l, align 8, !tbaa !65
  store i64 %i.abr, ptr %i.aaa, align 8, !tbaa !44
  br label %._crit_edge.i.i241

._crit_edge.i.i241:                               ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.abs = phi ptr [ %i.abq, %bb.di ], [ %i.aaa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.abo, label %bb.dk [
    i64 1, label %bb.dj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit242
  ]

bb.dj:                                            ; preds = %._crit_edge.i.i241
  %i.abt = load i8, ptr %i.abn, align 1, !tbaa !44
  store i8 %i.abt, ptr %i.abs, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit242

bb.dk:                                            ; preds = %._crit_edge.i.i241
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abs, ptr align 1 %i.abn, i64 %i.abo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit242: ; preds = %._crit_edge.i.i241, %bb.dj, %bb.dk
  %i.abu = load i64, ptr %i.l, align 8, !tbaa !65 ; 2 uses
  store i64 %i.abu, ptr %i.aab, align 8, !tbaa !66
  %i.abv = load ptr, ptr %68, align 8, !tbaa !43
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abu
  store i8 0, ptr %i.abw, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  %.val = load ptr, ptr %68, align 8              ; 2 uses
  %.val90 = load i64, ptr %i.aab, align 8         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.abx = load i8, ptr %i.aac, align 8, !noalias !446
  %i.aby = trunc i8 %i.abx to i1
  br i1 %i.aby, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit242
  %i.abz = load i64, ptr %66, align 8, !tbaa !68, !noalias !446
  %i.aca = inttoptr i64 %i.abz to ptr
  store ptr %i.aca, ptr %.sroa.0549, align 8, !tbaa !68, !alias.scope !446
  br label %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit242
  %.sroa.0.0.copyload.i.i = load i32, ptr %66, align 8, !tbaa !53, !noalias !446
  %.sroa.31.0.copyload.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !tbaa !70, !noalias !446
  store ptr %i.aad, ptr %14, align 8, !tbaa !64, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26, !noalias !446
  store i64 %.val90, ptr %i.k, align 8, !tbaa !65, !noalias !446
  %i.acb = icmp ugt i64 %.val90, 15
  br i1 %i.acb, label %bb.dm, label %._crit_edge.i.i.i

bb.dm:                                            ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i
  %i.acc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #26, !noalias !446 ; 2 uses
  store ptr %i.acc, ptr %14, align 8, !tbaa !43, !noalias !446
  %i.acd = load i64, ptr %i.k, align 8, !tbaa !65, !noalias !446
  store i64 %i.acd, ptr %i.aad, align 8, !tbaa !44, !noalias !446
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.dm, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i
  %i.ace = phi ptr [ %i.acc, %bb.dm ], [ %i.aad, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit.i ] ; 2 uses
  switch i64 %.val90, label %bb.do [
    i64 1, label %bb.dn
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.dn:                                            ; preds = %._crit_edge.i.i.i
  %i.acf = load i8, ptr %.val, align 1, !tbaa !44, !noalias !446
  store i8 %i.acf, ptr %i.ace, align 1, !tbaa !44, !noalias !446
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.do:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ace, ptr readonly align 1 %.val, i64 %.val90, i1 false), !noalias !446
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.do, %bb.dn, %._crit_edge.i.i.i
  %i.acg = load i64, ptr %i.k, align 8, !tbaa !65, !noalias !446 ; 2 uses
  store i64 %i.acg, ptr %i.aae, align 8, !tbaa !66, !noalias !446
  %i.ach = load ptr, ptr %14, align 8, !tbaa !43, !noalias !446
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.acg
  store i8 0, ptr %i.aci, align 1, !tbaa !44, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26, !noalias !446
  call fastcc void @_ZL5checkSt10error_codeNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.31.0.copyload.i.i, ptr nofree noundef align 8 dereferenceable(32) %14), !noalias !446
  %i.acj = load ptr, ptr %14, align 8, !tbaa !43, !noalias !446 ; 2 uses
  %i.ack = icmp eq ptr %i.acj, %i.aad
  br i1 %i.ack, label %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.acl = load i64, ptr %i.aad, align 8, !tbaa !44, !noalias !446
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acm) #27, !noalias !446
  br label %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244
  %.sink.i = phi ptr [ %66, %bb.dl ], [ %.sroa.0549, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i244 ], [ %.sroa.0549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ]
  store ptr null, ptr %.sink.i, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.acn = load ptr, ptr %68, align 8, !tbaa !43  ; 2 uses
  %i.aco = icmp eq ptr %i.acn, %i.aaa
  br i1 %i.aco, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.acp = load i64, ptr %i.aaa, align 8, !tbaa !44
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZL5checkISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EEET_NS1_7ErrorOrIS6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  %i.acr = load i8, ptr %i.aac, align 8
  %i.acs = trunc i8 %i.acr to i1
  br i1 %i.acs, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.act = load ptr, ptr %66, align 8, !tbaa !68  ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.act, null
  br i1 %.not.i.i249, label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.dp
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !20
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  %i.acw = load ptr, ptr %i.acv, align 8
  call void %i.acw(ptr noundef nonnull align 8 dereferenceable(24) %i.act) #26, !inline_history !372
  br label %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %bb.dp, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #26
  %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0. = load ptr, ptr %.sroa.0549, align 8, !tbaa !68
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %71, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.) #26
  call void @_ZN4llvm3lto9InputFile6createENS_15MemoryBufferRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.183") align 8 %70, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %71) #26
  store ptr %i.aaf, ptr %72, align 8, !tbaa !64
  %i.acx = load ptr, ptr %65, align 8, !tbaa !43  ; 2 uses
  %i.acy = load i64, ptr %i.zx, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  store i64 %i.acy, ptr %i.j, align 8, !tbaa !65
  %i.acz = icmp ugt i64 %i.acy, 15
  br i1 %i.acz, label %bb.dq, label %._crit_edge.i.i250

bb.dq:                                            ; preds = %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.ada = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ada, ptr %72, align 8, !tbaa !43
  %i.adb = load i64, ptr %i.j, align 8, !tbaa !65
  store i64 %i.adb, ptr %i.aaf, align 8, !tbaa !44
  br label %._crit_edge.i.i250

._crit_edge.i.i250:                               ; preds = %bb.dq, %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.adc = phi ptr [ %i.ada, %bb.dq ], [ %i.aaf, %_ZN4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEED2Ev.exit ] ; 2 uses
  switch i64 %i.acy, label %bb.ds [
    i64 1, label %bb.dr
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit251
  ]

bb.dr:                                            ; preds = %._crit_edge.i.i250
  %i.add = load i8, ptr %i.acx, align 1, !tbaa !44
  store i8 %i.add, ptr %i.adc, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit251

bb.ds:                                            ; preds = %._crit_edge.i.i250
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adc, ptr align 1 %i.acx, i64 %i.acy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit251: ; preds = %._crit_edge.i.i250, %bb.dr, %bb.ds
  %i.ade = load i64, ptr %i.j, align 8, !tbaa !65 ; 2 uses
  store i64 %i.ade, ptr %i.aag, align 8, !tbaa !66
  %i.adf = load ptr, ptr %72, align 8, !tbaa !43
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.ade
  store i8 0, ptr %i.adg, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %.val91 = load ptr, ptr %72, align 8
  %.val92 = load i64, ptr %i.aag, align 8
  call fastcc void @_ZL5checkISt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS3_EEET_NS1_8ExpectedIS7_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %69, ptr nofree noundef align 8 dereferenceable(16) %70, ptr %.val91, i64 %.val92)
  %i.adh = load ptr, ptr %72, align 8, !tbaa !43  ; 2 uses
  %i.adi = icmp eq ptr %i.adh, %i.aaf
  br i1 %i.adi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit251
  %i.adj = load i64, ptr %i.aaf, align 8, !tbaa !44
  %i.adk = add i64 %i.adj, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  %i.adl = load i8, ptr %i.aah, align 8
  %i.adm = trunc i8 %i.adl to i1
  %i.adn = load ptr, ptr %70, align 8, !tbaa !76  ; 5 uses
  %.not.i1.i = icmp eq ptr %i.adn, null           ; 2 uses
  br i1 %i.adm, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i: ; preds = %bb.dt
  call void @_ZN4llvm3lto9InputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.adn) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.adn, i64 noundef 264) #27
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.du
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !20
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8
  call void %i.adq(ptr noundef nonnull align 8 dereferenceable(8) %i.adn) #26, !inline_history !373
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit: ; preds = %bb.dt, %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i.i, %bb.du, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  %i.adr = load ptr, ptr %69, align 8, !tbaa !78  ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 48
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !89 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !90 ; 2 uses
  %.not77784 = icmp eq ptr %i.adt, %i.adv
  br i1 %.not77784, label %._crit_edge, label %.lr.ph789

._crit_edge.loopexit:                             ; preds = %bb.fn
  %i.adw = ptrtoint ptr %.sroa.7542.1 to i64
  %i.adx = ptrtoint ptr %.sroa.12.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit
  %.sroa.0539.0.lcssa = phi ptr [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ], [ %.sroa.0539.1, %._crit_edge.loopexit ] ; 5 uses
  %.sroa.7542.0.lcssa = phi i64 [ 0, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ], [ %i.adw, %._crit_edge.loopexit ]
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ], [ %i.adx, %._crit_edge.loopexit ]
  %i.ady = load atomic i8, ptr %64 seq_cst, align 1, !range !28, !noundef !29
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit, label %bb.fo

.lr.ph789:                                        ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit, %bb.fn
  %.075788 = phi ptr [ %i.ana, %bb.fn ], [ %i.adt, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ] ; 5 uses
  %.sroa.12.0787 = phi ptr [ %.sroa.12.1, %bb.fn ], [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ] ; 6 uses
  %.sroa.7542.0786 = phi ptr [ %.sroa.7542.1, %bb.fn ], [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ] ; 4 uses
  %.sroa.0539.0785 = phi ptr [ %.sroa.0539.1, %bb.fn ], [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_3lto9InputFileESt14default_deleteIS3_EEED2Ev.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #26
  %.sroa.0.0.copyload.i = load ptr, ptr %.075788, align 8, !tbaa !59 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.075788, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !65 ; 5 uses
  store ptr %i.aai, ptr %74, align 8, !tbaa !64
  %i.aea = icmp eq ptr %.sroa.0.0.copyload.i, null
  %i.aeb = icmp ne i64 %.sroa.2.0.copyload.i, 0
  %or.cond.i.i.i257 = and i1 %i.aea, %i.aeb
  br i1 %or.cond.i.i.i257, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph789
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.146) #29
  unreachable

bb.dw:                                            ; preds = %.lr.ph789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i64 %.sroa.2.0.copyload.i, ptr %i.i, align 8, !tbaa !65
  %i.aec = icmp ugt i64 %.sroa.2.0.copyload.i, 15
  br i1 %i.aec, label %bb.dx, label %._crit_edge.i.i.i.i258

bb.dx:                                            ; preds = %bb.dw
  %i.aed = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aed, ptr %74, align 8, !tbaa !43
  %i.aee = load i64, ptr %i.i, align 8, !tbaa !65
  store i64 %i.aee, ptr %i.aai, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i258

._crit_edge.i.i.i.i258:                           ; preds = %bb.dx, %bb.dw
  %i.aef = phi ptr [ %i.aed, %bb.dx ], [ %i.aai, %bb.dw ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.i, label %bb.dz [
    i64 1, label %bb.dy
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259
  ]

bb.dy:                                            ; preds = %._crit_edge.i.i.i.i258
  %i.aeg = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !44
  store i8 %i.aeg, ptr %i.aef, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aef, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259: ; preds = %._crit_edge.i.i.i.i258, %bb.dy, %bb.dz
  %i.aeh = load i64, ptr %i.i, align 8, !tbaa !65 ; 2 uses
  store i64 %i.aeh, ptr %i.aaj, align 8, !tbaa !66
  %i.aei = load ptr, ptr %74, align 8, !tbaa !43
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.aeh
  store i8 0, ptr %i.aej, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  store ptr %i.aak, ptr %73, align 8, !tbaa !64
  %i.aek = load ptr, ptr %65, align 8, !tbaa !43  ; 2 uses
  %i.ael = load i64, ptr %i.zx, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i64 %i.ael, ptr %i.h, align 8, !tbaa !65
  %i.aem = icmp ugt i64 %i.ael, 15
  br i1 %i.aem, label %bb.ea, label %._crit_edge.i.i.i260

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259
  %i.aen = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %73, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aen, ptr %73, align 8, !tbaa !43
  %i.aeo = load i64, ptr %i.h, align 8, !tbaa !65
  store i64 %i.aeo, ptr %i.aak, align 8, !tbaa !44
  br label %._crit_edge.i.i.i260

._crit_edge.i.i.i260:                             ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259
  %i.aep = phi ptr [ %i.aen, %bb.ea ], [ %i.aak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit259 ] ; 2 uses
  switch i64 %i.ael, label %bb.ec [
    i64 1, label %bb.eb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i261
  ]

bb.eb:                                            ; preds = %._crit_edge.i.i.i260
  %i.aeq = load i8, ptr %i.aek, align 1, !tbaa !44
  store i8 %i.aeq, ptr %i.aep, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i261

bb.ec:                                            ; preds = %._crit_edge.i.i.i260
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aep, ptr align 1 %i.aek, i64 %i.ael, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i261: ; preds = %bb.ec, %bb.eb, %._crit_edge.i.i.i260
  %i.aer = load i64, ptr %i.h, align 8, !tbaa !65 ; 2 uses
  store i64 %i.aer, ptr %i.aal, align 8, !tbaa !66
  %i.aes = load ptr, ptr %73, align 8, !tbaa !43
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.aer
  store i8 0, ptr %i.aet, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  store ptr %i.aan, ptr %i.aam, align 8, !tbaa !64
  %i.aeu = load ptr, ptr %74, align 8, !tbaa !43  ; 3 uses
  %i.aev = icmp eq ptr %i.aeu, %i.aai
  br i1 %i.aev, label %bb.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i261
  %i.aew = load i64, ptr %i.aaj, align 8, !tbaa !66 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZL3runiPPc:bb.a
  store i8 44, ptr %i.akq, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit323

_ZN4llvm11raw_ostreamlsEc.exit323:                ; preds = %bb.fa, %bb.fb
  %.0.i322 = phi ptr [ %i.akt, %bb.fa ], [ %i.ako, %bb.fb ] ; 5 uses
  %.sroa.0.0.copyload.i324 = load ptr, ptr %.075788, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0.copyload.i326 = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !65 ; 5 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.0.i322, i64 24
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !57
  %i.akx = getelementptr inbounds nuw i8, ptr %.0.i322, i64 32 ; 3 uses
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !58 ; 3 uses
  %i.akz = ptrtoint ptr %i.akw to i64
  %i.ala = ptrtoint ptr %i.aky to i64
  %i.alb = sub i64 %i.akz, %i.ala
  %i.alc = icmp ugt i64 %.sroa.2.0.copyload.i326, %i.alb
  br i1 %i.alc, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit323
  %i.ald = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i322, ptr noundef %.sroa.0.0.copyload.i324, i64 noundef %.sroa.2.0.copyload.i326) #26 ; 2 uses
  %.phi.trans.insert837 = getelementptr inbounds nuw i8, ptr %i.ald, i64 32
  %.pre838 = load ptr, ptr %.phi.trans.insert837, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit331

bb.fd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit323
  %.not.i329 = icmp eq i64 %.sroa.2.0.copyload.i326, 0
  br i1 %.not.i329, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit331, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aky, ptr align 1 %.sroa.0.0.copyload.i324, i64 %.sroa.2.0.copyload.i326, i1 false)
  %i.ale = load ptr, ptr %i.akx, align 8, !tbaa !58
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 %.sroa.2.0.copyload.i326 ; 2 uses
  store ptr %i.alf, ptr %i.akx, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit331

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit331:   ; preds = %bb.fc, %bb.fd, %bb.fe
  %i.alg = phi ptr [ %.pre838, %bb.fc ], [ %i.alf, %bb.fe ], [ %i.aky, %bb.fd ] ; 3 uses
  %.0.i330 = phi ptr [ %i.ald, %bb.fc ], [ %.0.i322, %bb.fe ], [ %.0.i322, %bb.fd ] ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.0.i330, i64 24
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !57
  %.not.i332 = icmp ult ptr %i.alg, %i.ali
  br i1 %.not.i332, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit331
  %i.alj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i330, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit334

bb.fg:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit331
  %i.alk = getelementptr inbounds nuw i8, ptr %.0.i330, i64 32
  %i.all = getelementptr inbounds nuw i8, ptr %i.alg, i64 1
  store ptr %i.all, ptr %i.alk, align 8, !tbaa !58
  store i8 10, ptr %i.alg, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit334

_ZN4llvm11raw_ostreamlsEc.exit334:                ; preds = %bb.ff, %bb.fg
  store atomic i8 1, ptr %64 seq_cst, align 1
  br label %bb.fn

bb.fh:                                            ; preds = %bb.et
  %i.alm = getelementptr inbounds nuw i8, ptr %.sroa.0531.0, i64 96 ; 4 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !224
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 16 ; 2 uses
  %.not.i335 = icmp eq ptr %.sroa.7542.0786, %.sroa.12.0787
  br i1 %.not.i335, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.alp = load i32, ptr %i.alo, align 4
  store i32 %i.alp, ptr %.sroa.7542.0786, align 4
  br label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit

bb.fj:                                            ; preds = %bb.fh
  %i.alq = ptrtoint ptr %.sroa.12.0787 to i64     ; 2 uses
  %i.alr = ptrtoint ptr %.sroa.0539.0785 to i64   ; 3 uses
  %i.als = sub i64 %i.alq, %i.alr                 ; 4 uses
  %i.alt = icmp eq i64 %i.als, 9223372036854775804
  br i1 %i.alt, label %bb.fk, label %_ZNKSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.fk:                                            ; preds = %bb.fj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #29
  unreachable

_ZNKSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fj
  %i.alu = ashr exact i64 %i.als, 2               ; 3 uses
  %.sroa.speculated.i.i.i336 = call i64 @llvm.umax.i64(i64 %i.alu, i64 1)
  %i.alv = add nsw i64 %.sroa.speculated.i.i.i336, %i.alu ; 2 uses
  %i.alw = icmp ult i64 %i.alv, %i.alu
  %i.alx = call i64 @llvm.umin.i64(i64 %i.alv, i64 2305843009213693951)
  %i.aly = select i1 %i.alw, i64 2305843009213693951, i64 %i.alx ; 3 uses
  %.not.i.i.i337 = icmp ne i64 %i.aly, 0
  call void @llvm.assume(i1 %.not.i.i.i337)
  %i.alz = shl nuw nsw i64 %i.aly, 2
  %i.ama = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alz) #30 ; 8 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 %i.als
  %i.amc = load i32, ptr %i.alo, align 4
  store i32 %i.amc, ptr %i.amb, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0539.0785, %.sroa.12.0787
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i338.preheader

.lr.ph.i.i.i.i.i338.preheader:                    ; preds = %_ZNKSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.amd = ptrtoaddr ptr %i.ama to i64
  %i.ame = add i64 %i.alq, -4
  %i.amf = sub i64 %i.ame, %i.alr                 ; 2 uses
  %i.amg = lshr i64 %i.amf, 2
  %i.amh = add nuw nsw i64 %i.amg, 1              ; 2 uses
  %min.iters.check1125 = icmp ult i64 %i.amf, 28
  %i.ami = sub i64 %i.alr, %i.amd
  %diff.check = icmp ugt i64 %i.ami, -32
  %or.cond1139 = or i1 %min.iters.check1125, %diff.check
  br i1 %or.cond1139, label %.lr.ph.i.i.i.i.i338.preheader1140, label %vector.ph1126

vector.ph1126:                                    ; preds = %.lr.ph.i.i.i.i.i338.preheader
  %n.vec1127 = and i64 %i.amh, 9223372036854775800 ; 3 uses
  %i.amj = shl i64 %n.vec1127, 2                  ; 2 uses
  %i.amk = getelementptr i8, ptr %i.ama, i64 %i.amj ; 2 uses
  %i.aml = getelementptr i8, ptr %.sroa.0539.0785, i64 %i.amj
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %vector.ph1126
  %index1129 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1134, %vector.body1128 ] ; 2 uses
  %i.amm = shl i64 %index1129, 2                  ; 2 uses
  %next.gep1130 = getelementptr i8, ptr %i.ama, i64 %i.amm ; 2 uses
  %next.gep1131 = getelementptr i8, ptr %.sroa.0539.0785, i64 %i.amm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.amn = getelementptr i8, ptr %next.gep1131, i64 16
  %wide.load1132 = load <4 x i32>, ptr %next.gep1131, align 4, !alias.scope !449, !noalias !448
  %wide.load1133 = load <4 x i32>, ptr %i.amn, align 4, !alias.scope !449, !noalias !448
  %i.amo = getelementptr i8, ptr %next.gep1130, i64 16
  store <4 x i32> %wide.load1132, ptr %next.gep1130, align 4, !alias.scope !448, !noalias !449
  store <4 x i32> %wide.load1133, ptr %i.amo, align 4, !alias.scope !448, !noalias !449
  %index.next1134 = add nuw i64 %index1129, 8     ; 2 uses
  %i.amp = icmp eq i64 %index.next1134, %n.vec1127
  br i1 %i.amp, label %middle.block1135, label %vector.body1128, !llvm.loop !379

middle.block1135:                                 ; preds = %vector.body1128
  %cmp.n1136 = icmp eq i64 %i.amh, %n.vec1127
  br i1 %cmp.n1136, label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i338.preheader1140

.lr.ph.i.i.i.i.i338.preheader1140:                ; preds = %.lr.ph.i.i.i.i.i338.preheader, %middle.block1135
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ama, %.lr.ph.i.i.i.i.i338.preheader ], [ %i.amk, %middle.block1135 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0539.0785, %.lr.ph.i.i.i.i.i338.preheader ], [ %i.aml, %middle.block1135 ]
  br label %.lr.ph.i.i.i.i.i338

.lr.ph.i.i.i.i.i338:                              ; preds = %.lr.ph.i.i.i.i.i338.preheader1140, %.lr.ph.i.i.i.i.i338
  %.012.i.i.i.i.i = phi ptr [ %i.ams, %.lr.ph.i.i.i.i.i338 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i338.preheader1140 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.amr, %.lr.ph.i.i.i.i.i338 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i338.preheader1140 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.amq = load i32, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !449, !noalias !448
  store i32 %i.amq, ptr %.012.i.i.i.i.i, align 4, !alias.scope !448, !noalias !449
  %i.amr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i339 = icmp eq ptr %i.amr, %.sroa.12.0787
  br i1 %.not.i.i.i.i.i339, label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i338, !llvm.loop !380

_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i338, %middle.block1135, %_ZNKSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ama, %_ZNKSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.amk, %middle.block1135 ], [ %i.ams, %.lr.ph.i.i.i.i.i338 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0539.0785, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0539.0785, i64 noundef %i.als) #27
  br label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.fl, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %i.aly
  br label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.fi, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %.sroa.0539.2 = phi ptr [ %i.ama, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0539.0785, %bb.fi ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.7542.0786, %bb.fi ]
  %.sroa.12.2 = phi ptr [ %i.amt, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.12.0787, %bb.fi ] ; 2 uses
  %.sroa.7542.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 4 ; 2 uses
  %i.amu = load ptr, ptr %i.alm, align 8, !tbaa !224 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.0531.0, i64 112 ; 2 uses
  %i.amw = load i64, ptr %i.amv, align 8, !tbaa !418
  %i.amx = add i64 %i.amw, -1
  store i64 %i.amx, ptr %i.amv, align 8, !tbaa !418
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.amu) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.amu, i64 noundef 24) #27
  %i.amy = load ptr, ptr %i.alm, align 8, !tbaa !224
  %i.amz = icmp eq ptr %i.amy, %i.alm
  br i1 %i.amz, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit
  call void @_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_NS1_4listIN4llvm3lto16SymbolResolutionESaISC_EEEESt10_Select1stISF_ESt4lessIS7_ESaISF_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISF_E(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr nonnull %.sroa.0531.0)
  br label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit, %bb.fm, %_ZN4llvm11raw_ostreamlsEc.exit334
  %.sroa.0539.1 = phi ptr [ %.sroa.0539.0785, %_ZN4llvm11raw_ostreamlsEc.exit334 ], [ %.sroa.0539.2, %bb.fm ], [ %.sroa.0539.2, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.7542.1 = phi ptr [ %.sroa.7542.0786, %_ZN4llvm11raw_ostreamlsEc.exit334 ], [ %.sroa.7542.2, %bb.fm ], [ %.sroa.7542.2, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0787, %_ZN4llvm11raw_ostreamlsEc.exit334 ], [ %.sroa.12.2, %bb.fm ], [ %.sroa.12.2, %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.075788, i64 88 ; 2 uses
  %.not77 = icmp eq ptr %i.ana, %i.adv
  br i1 %.not77, label %._crit_edge.loopexit, label %.lr.ph789

bb.fo:                                            ; preds = %._crit_edge
  %.not.i.i340 = icmp eq ptr %.sroa.7614.0795, %.sroa.12617.0794
  br i1 %.not.i.i340, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.551 = load ptr, ptr %.sroa.0549, align 8, !tbaa !68
  %i.anb = ptrtoint ptr %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.551 to i64
  store i64 %i.anb, ptr %.sroa.7614.0795, align 8, !tbaa !68
  store ptr null, ptr %.sroa.0549, align 8, !tbaa !68
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.fq:                                            ; preds = %bb.fo
  %i.anc = ptrtoint ptr %.sroa.7614.0795 to i64   ; 3 uses
  %i.and = ptrtoint ptr %.sroa.0612.0797 to i64   ; 3 uses
  %i.ane = sub i64 %i.anc, %i.and                 ; 4 uses
  %i.anf = icmp eq i64 %i.ane, 9223372036854775800
  br i1 %i.anf, label %bb.fr, label %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.fr:                                            ; preds = %bb.fq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #29
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.fq
  %i.ang = ashr exact i64 %i.ane, 3               ; 3 uses
  %.sroa.speculated.i.i510 = call i64 @llvm.umax.i64(i64 %i.ang, i64 1)
  %i.anh = add nsw i64 %.sroa.speculated.i.i510, %i.ang ; 2 uses
  %i.ani = icmp ult i64 %i.anh, %i.ang
  %i.anj = call i64 @llvm.umin.i64(i64 %i.anh, i64 1152921504606846975)
  %i.ank = select i1 %i.ani, i64 1152921504606846975, i64 %i.anj ; 3 uses
  %.not.i.i511 = icmp ne i64 %i.ank, 0
  call void @llvm.assume(i1 %.not.i.i511)
  %i.anl = shl nuw nsw i64 %i.ank, 3
  %i.anm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anl) #30 ; 10 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 %i.ane
  %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.552 = load ptr, ptr %.sroa.0549, align 8, !tbaa !68
  %i.ano = ptrtoint ptr %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.552 to i64
  store i64 %i.ano, ptr %i.ann, align 8, !tbaa !68
  store ptr null, ptr %.sroa.0549, align 8, !tbaa !68
  %.not10.i.i.i.i512 = icmp eq ptr %.sroa.0612.0797, %.sroa.7614.0795
  br i1 %.not10.i.i.i.i512, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i513.preheader

.lr.ph.i.i.i.i513.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.anp = add i64 %i.anc, -8
  %i.anq = sub i64 %i.anp, %i.and                 ; 2 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = add nuw nsw i64 %i.anr, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.anq, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i513.preheader1141, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i513.preheader
  %scevgep = getelementptr i8, ptr %i.anm, i64 8
  %i.ant = add i64 %i.anc, -8
  %i.anu = sub i64 %i.ant, %i.and
  %i.anv = and i64 %i.anu, -8                     ; 2 uses
  %scevgep1117 = getelementptr i8, ptr %scevgep, i64 %i.anv
  %scevgep1118 = getelementptr i8, ptr %.sroa.0612.0797, i64 8
  %scevgep1119 = getelementptr i8, ptr %scevgep1118, i64 %i.anv
  %bound0 = icmp ult ptr %i.anm, %scevgep1119
  %bound1 = icmp ult ptr %.sroa.0612.0797, %scevgep1117
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i513.preheader1141, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ans, 4611686018427387900    ; 3 uses
  %i.anw = shl i64 %n.vec, 3                      ; 2 uses
  %i.anx = getelementptr i8, ptr %i.anm, i64 %i.anw ; 2 uses
  %i.any = getelementptr i8, ptr %.sroa.0612.0797, i64 %i.anw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anz = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.anm, i64 %i.anz ; 2 uses
  %next.gep1120 = getelementptr i8, ptr %.sroa.0612.0797, i64 %i.anz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.aoa = getelementptr i8, ptr %next.gep1120, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1120, align 8, !tbaa !68, !alias.scope !452, !noalias !450
  %wide.load1121 = load <2 x i64>, ptr %i.aoa, align 8, !tbaa !68, !alias.scope !452, !noalias !450
  %i.aob = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !68, !alias.scope !453, !noalias !452
  store <2 x i64> %wide.load1121, ptr %i.aob, align 8, !tbaa !68, !alias.scope !453, !noalias !452
  %i.aoc = getelementptr i8, ptr %next.gep1120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1120, align 8, !tbaa !68, !alias.scope !452, !noalias !450
  store <2 x ptr> splat (ptr null), ptr %i.aoc, align 8, !tbaa !68, !alias.scope !452, !noalias !450
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aod = icmp eq i64 %index.next, %n.vec
  br i1 %i.aod, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ans, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i513.preheader1141

.lr.ph.i.i.i.i513.preheader1141:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i513.preheader, %middle.block
  %.012.i.i.i.i514.ph = phi ptr [ %i.anm, %vector.memcheck ], [ %i.anm, %.lr.ph.i.i.i.i513.preheader ], [ %i.anx, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %.sroa.0612.0797, %vector.memcheck ], [ %.sroa.0612.0797, %.lr.ph.i.i.i.i513.preheader ], [ %i.any, %middle.block ]
  br label %.lr.ph.i.i.i.i513

.lr.ph.i.i.i.i513:                                ; preds = %.lr.ph.i.i.i.i513.preheader1141, %.lr.ph.i.i.i.i513
  %.012.i.i.i.i514 = phi ptr [ %i.aog, %.lr.ph.i.i.i.i513 ], [ %.012.i.i.i.i514.ph, %.lr.ph.i.i.i.i513.preheader1141 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aof, %.lr.ph.i.i.i.i513 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i513.preheader1141 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.aoe = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !68, !alias.scope !451, !noalias !450
  store i64 %i.aoe, ptr %.012.i.i.i.i514, align 8, !tbaa !68, !alias.scope !450, !noalias !451
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !68, !alias.scope !451, !noalias !450
  %i.aof = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i514, i64 8 ; 2 uses
  %.not.i.i.i.i515 = icmp eq ptr %i.aof, %.sroa.7614.0795
  br i1 %.not.i.i.i.i515, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i513, !llvm.loop !388

_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i513, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.anm, %_ZNKSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.anx, %middle.block ], [ %i.aog, %.lr.ph.i.i.i.i513 ]
  %.not.i23.i = icmp eq ptr %.sroa.0612.0797, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0612.0797, i64 noundef %i.ane) #27
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.fs
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %i.ank
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.fp, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %.sroa.12617.3 = phi ptr [ %i.aoh, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %.sroa.12617.0794, %bb.fp ] ; 2 uses
  %.0.lcssa.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %.sroa.7614.0795, %bb.fp ]
  %.sroa.0612.3 = phi ptr [ %i.anm, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit ], [ %.sroa.0612.0797, %bb.fp ] ; 2 uses
  %.sroa.7614.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.pn, i64 8 ; 2 uses
  %i.aoi = load i64, ptr %69, align 8, !tbaa !78
  store i64 %i.aoi, ptr %79, align 8, !tbaa !78
  store ptr null, ptr %69, align 8, !tbaa !78
  %i.aoj = ptrtoint ptr %.sroa.0539.0.lcssa to i64
  %i.aok = sub i64 %.sroa.7542.0.lcssa, %i.aoj
  %i.aol = ashr exact i64 %i.aok, 2
  call void @_ZN4llvm3lto3LTO3addESt10unique_ptrINS0_9InputFileESt14default_deleteIS3_EENS_8ArrayRefINS0_16SymbolResolutionEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %78, ptr noundef nonnull align 8 dereferenceable(2648) %.sroa.0562.0, ptr nofree noundef nonnull align 8 dereferenceable(8) %79, ptr %.sroa.0539.0.lcssa, i64 %i.aol) #26
  store ptr %i.aax, ptr %80, align 8, !tbaa !64
  %i.aom = load ptr, ptr %65, align 8, !tbaa !43  ; 2 uses
  %i.aon = load i64, ptr %i.zx, align 8, !tbaa !66 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i64 %i.aon, ptr %i.e, align 8, !tbaa !65
  %i.aoo = icmp ugt i64 %i.aon, 15
  br i1 %i.aoo, label %bb.ft, label %._crit_edge.i.i341

bb.ft:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.aop = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aop, ptr %80, align 8, !tbaa !43
  %i.aoq = load i64, ptr %i.e, align 8, !tbaa !65
  store i64 %i.aoq, ptr %i.aax, align 8, !tbaa !44
  br label %._crit_edge.i.i341

._crit_edge.i.i341:                               ; preds = %bb.ft, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.aor = phi ptr [ %i.aop, %bb.ft ], [ %i.aax, %_ZNSt6vectorISt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  switch i64 %i.aon, label %bb.fv [
    i64 1, label %bb.fu
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit342
  ]

bb.fu:                                            ; preds = %._crit_edge.i.i341
  %i.aos = load i8, ptr %i.aom, align 1, !tbaa !44
  store i8 %i.aos, ptr %i.aor, align 1, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit342

bb.fv:                                            ; preds = %._crit_edge.i.i341
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aor, ptr align 1 %i.aom, i64 %i.aon, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit342: ; preds = %._crit_edge.i.i341, %bb.fu, %bb.fv
  %i.aot = load i64, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  store i64 %i.aot, ptr %i.aay, align 8, !tbaa !66
  %i.aou = load ptr, ptr %80, align 8, !tbaa !43
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 %i.aot
  store i8 0, ptr %i.aov, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.aow = load ptr, ptr %78, align 8, !tbaa !74  ; 2 uses
  %.not.i343 = icmp eq ptr %i.aow, null
  br i1 %.not.i343, label %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit345, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit342
  store ptr %i.aow, ptr %12, align 8, !tbaa !74
  store ptr null, ptr %78, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr %80, ptr %13, align 8, !tbaa !75
  call fastcc void @"_ZN4llvm15handleAllErrorsIJZL5checkNS_5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EEEvS1_DpOT_"(ptr nofree noundef align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.aox = load ptr, ptr %12, align 8, !tbaa !74  ; 3 uses
  %i.aoy = icmp eq ptr %i.aox, null
  br i1 %i.aoy, label %_ZN4llvm5ErrorD2Ev.exit.i344, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aoz = load ptr, ptr %i.aox, align 8, !tbaa !20
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.apb = load ptr, ptr %i.apa, align 8
  call void %i.apb(ptr noundef nonnull align 8 dereferenceable(8) %i.aox) #26, !inline_history !3
  br label %_ZN4llvm5ErrorD2Ev.exit.i344

_ZN4llvm5ErrorD2Ev.exit.i344:                     ; preds = %bb.fx, %bb.fw
  call void @exit(i32 noundef 1) #28
  unreachable

_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit342
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.apc = load ptr, ptr %80, align 8, !tbaa !43  ; 2 uses
  %i.apd = icmp eq ptr %i.apc, %i.aax
  br i1 %i.apd, label %_ZN4llvm5ErrorD2Ev.exit349, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit345
  %i.ape = load i64, ptr %i.aax, align 8, !tbaa !44
  %i.apf = add i64 %i.ape, 1
  call void @_ZdlPvm(ptr noundef %i.apc, i64 noundef %i.apf) #27
  %.pre839 = load ptr, ptr %78, align 8, !tbaa !74 ; 3 uses
  %i.apg = icmp eq ptr %.pre839, null
  br i1 %i.apg, label %_ZN4llvm5ErrorD2Ev.exit349, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %i.aph = load ptr, ptr %.pre839, align 8, !tbaa !20
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  %i.apj = load ptr, ptr %i.api, align 8
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(8) %.pre839) #26, !inline_history !4
  br label %_ZN4llvm5ErrorD2Ev.exit349

_ZN4llvm5ErrorD2Ev.exit349:                       ; preds = %_ZL5checkN4llvm5ErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %bb.fy
  %i.apk = load ptr, ptr %79, align 8, !tbaa !78  ; 3 uses
  %.not.i350 = icmp eq ptr %i.apk, null
  br i1 %.not.i350, label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit349
  call void @_ZN4llvm3lto9InputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.apk) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.apk, i64 noundef 264) #27
  br label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i, %_ZN4llvm5ErrorD2Ev.exit349, %._crit_edge
  %.sroa.12617.1 = phi ptr [ %.sroa.12617.0794, %._crit_edge ], [ %.sroa.12617.3, %_ZN4llvm5ErrorD2Ev.exit349 ], [ %.sroa.12617.3, %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i ] ; 2 uses
  %.sroa.7614.1 = phi ptr [ %.sroa.7614.0795, %._crit_edge ], [ %.sroa.7614.3, %_ZN4llvm5ErrorD2Ev.exit349 ], [ %.sroa.7614.3, %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i ] ; 2 uses
  %.sroa.0612.1 = phi ptr [ %.sroa.0612.0797, %._crit_edge ], [ %.sroa.0612.3, %_ZN4llvm5ErrorD2Ev.exit349 ], [ %.sroa.0612.3, %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i ] ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %.sroa.0539.0.lcssa, null
  br i1 %.not.i.i.i351, label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit
  %i.apl = ptrtoint ptr %.sroa.0539.0.lcssa to i64
  %i.apm = sub i64 %.sroa.12.0.lcssa, %i.apl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0539.0.lcssa, i64 noundef %i.apm) #27
  br label %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit, %bb.fz
  %i.apn = load ptr, ptr %69, align 8, !tbaa !78  ; 3 uses
  %.not.i352 = icmp eq ptr %i.apn, null
  br i1 %.not.i352, label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit354, label %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i353

_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i353: ; preds = %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EED2Ev.exit
  call void @_ZN4llvm3lto9InputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.apn) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.apn, i64 noundef 264) #27
  br label %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit354

_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit354: ; preds = %_ZNSt6vectorIN4llvm3lto16SymbolResolutionESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm3lto9InputFileEEclEPS2_.exit.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.550 = load ptr, ptr %.sroa.0549, align 8, !tbaa !68 ; 3 uses
  %.not.i355 = icmp eq ptr %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.550, null
  br i1 %.not.i355, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit354
  %i.apo = load ptr, ptr %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.550, align 8, !tbaa !20
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apq = load ptr, ptr %i.app, align 8
  call void %i.apq(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0549.0..sroa.0549.0..sroa.0549.0..sroa.0549.0.550) #26, !inline_history !389
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm3lto9InputFileESt14default_deleteIS2_EED2Ev.exit354, %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0549)
  %i.apr = load ptr, ptr %65, align 8, !tbaa !43  ; 2 uses
  %i.aps = icmp eq ptr %i.apr, %i.zw
  br i1 %i.aps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.apt = load i64, ptr %i.zw, align 8, !tbaa !44
  %i.apu = add i64 %i.apt, 1
  call void @_ZdlPvm(ptr noundef %i.apr, i64 noundef %i.apu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26
  %i.apv = getelementptr inbounds nuw i8, ptr %.sroa.0554.0796, i64 32 ; 2 uses
  %.not728 = icmp eq ptr %i.apv, %i.zv
  br i1 %.not728, label %._crit_edge800.loopexit, label %bb.de

bb.ga:                                            ; preds = %._crit_edge800
  store atomic i8 1, ptr %64 seq_cst, align 1
  %i.apw = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %.not729804 = icmp eq ptr %i.apw, %i.y
  br i1 %.not729804, label %.loopexit, label %.lr.ph807

.lr.ph807:                                        ; preds = %bb.ga
  %i.apx = getelementptr inbounds nuw i8, ptr %81, i64 64 ; 7 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %81, i64 72
  %i.apz = getelementptr inbounds nuw i8, ptr %81, i64 80 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.aqb = getelementptr inbounds nuw i8, ptr %81, i64 32 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %81, i64 40
  %i.aqd = getelementptr inbounds nuw i8, ptr %81, i64 48 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  br label %bb.gb

bb.gb:                                            ; preds = %.lr.ph807, %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEED2Ev.exit
  %.sroa.0519.0805 = phi ptr [ %i.apw, %.lr.ph807 ], [ %i.asq, %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #26
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.0519.0805, i64 32
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(88) %81, ptr noundef nonnull align 8 dereferenceable(88) %i.aqf)
  %i.aqg = getelementptr inbounds nuw i8, ptr %.sroa.0519.0805, i64 96 ; 3 uses
  store ptr %i.apx, ptr %i.apy, align 8, !tbaa !227
  store ptr %i.apx, ptr %i.apx, align 8, !tbaa !224
  store i64 0, ptr %i.apz, align 8, !tbaa !228
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !224 ; 2 uses
  %.not4.i.i.i359 = icmp eq ptr %i.aqh, %i.aqg
  br i1 %.not4.i.i.i359, label %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEEC2ERKSE_.exit, label %.lr.ph.i.i.i360

.lr.ph.i.i.i360:                                  ; preds = %bb.gb, %.lr.ph.i.i.i360
  %.sroa.01.05.i.i.i = phi ptr [ %i.aqo, %.lr.ph.i.i.i360 ], [ %i.aqh, %bb.gb ] ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 16
  %i.aqj = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 16
  %i.aql = load i32, ptr %i.aqi, align 4
  store i32 %i.aql, ptr %i.aqk, align 4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqj, ptr noundef nonnull align 8 dereferenceable(24) %i.apx) #26
  %i.aqm = load i64, ptr %i.apz, align 8, !tbaa !418
  %i.aqn = add i64 %i.aqm, 1
  store i64 %i.aqn, ptr %i.apz, align 8, !tbaa !418
  %i.aqo = load ptr, ptr %.sroa.01.05.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i361 = icmp eq ptr %i.aqo, %i.aqg
  br i1 %.not.i.i.i361, label %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEEC2ERKSE_.exit, label %.lr.ph.i.i.i360, !llvm.loop !390

_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i360, %bb.gb
  %i.aqp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #26 ; 6 uses
  %i.aqq = load ptr, ptr %1, align 8, !tbaa !59   ; 4 uses
  %.not.i.i362 = icmp eq ptr %i.aqq, null
  br i1 %.not.i.i362, label %_ZN4llvm11raw_ostreamlsEPKc.exit366, label %_ZN4llvm9StringRefC2EPKc.exit.i363

_ZN4llvm9StringRefC2EPKc.exit.i363:               ; preds = %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEEC2ERKSE_.exit
  %i.aqr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqq) #26 ; 5 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 24
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !57
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqp, i64 32 ; 3 uses
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !58 ; 2 uses
  %i.aqw = ptrtoint ptr %i.aqt to i64
  %i.aqx = ptrtoint ptr %i.aqv to i64
  %i.aqy = sub i64 %i.aqw, %i.aqx
  %i.aqz = icmp ugt i64 %i.aqr, %i.aqy
  br i1 %i.aqz, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i363
  %i.ara = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aqp, ptr noundef nonnull %i.aqq, i64 noundef %i.aqr) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit366

bb.gd:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i363
  %.not.i2.i364 = icmp eq i64 %i.aqr, 0
  br i1 %.not.i2.i364, label %_ZN4llvm11raw_ostreamlsEPKc.exit366, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqv, ptr nonnull align 1 %i.aqq, i64 %i.aqr, i1 false)
  %i.arb = load ptr, ptr %i.aqu, align 8, !tbaa !58
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.aqr
  store ptr %i.arc, ptr %i.aqu, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit366

_ZN4llvm11raw_ostreamlsEPKc.exit366:              ; preds = %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEEC2ERKSE_.exit, %bb.gc, %bb.gd, %bb.ge
  %.0.i.i365 = phi ptr [ %i.ara, %bb.gc ], [ %i.aqp, %bb.ge ], [ %i.aqp, %bb.gd ], [ %i.aqp, %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEEC2ERKSE_.exit ] ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %.0.i.i365, i64 24
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !57
  %i.arf = getelementptr inbounds nuw i8, ptr %.0.i.i365, i64 32 ; 3 uses
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !58 ; 2 uses
  %i.arh = ptrtoint ptr %i.are to i64
  %i.ari = ptrtoint ptr %i.arg to i64
  %i.arj = sub i64 %i.arh, %i.ari
  %i.ark = icmp ult i64 %i.arj, 31
  br i1 %i.ark, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit366
  %i.arl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i365, ptr noundef nonnull @.str.189, i64 noundef 31) #26
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit370

bb.gg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.arg, ptr noundef nonnull align 1 dereferenceable(31) @.str.189, i64 31, i1 false)
  %i.arm = load ptr, ptr %i.arf, align 8, !tbaa !58
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 31
  store ptr %i.arn, ptr %i.arf, align 8, !tbaa !58
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit370

_ZN4llvm11raw_ostreamlsEPKc.exit370:              ; preds = %bb.gf, %bb.gg
  %.0.i.i369 = phi ptr [ %i.arl, %bb.gf ], [ %.0.i.i365, %bb.gg ]
  %i.aro = load ptr, ptr %81, align 8, !tbaa !43
  %i.arp = load i64, ptr %i.aqa, align 8, !tbaa !66
  %i.arq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i369, ptr noundef %i.aro, i64 noundef %i.arp) #26 ; 4 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 32 ; 2 uses
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !58 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.arq, i64 24
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !57
  %.not.i371 = icmp ult ptr %i.ars, %i.aru
  br i1 %.not.i371, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit370
  %i.arv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.arq, i8 noundef zeroext 44) #26
  br label %_ZN4llvm11raw_ostreamlsEc.exit373

bb.gi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit370
  %i.arw = getelementptr inbounds nuw i8, ptr %i.ars, i64 1
  store ptr %i.arw, ptr %i.arr, align 8, !tbaa !58
  store i8 44, ptr %i.ars, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit373

_ZN4llvm11raw_ostreamlsEc.exit373:                ; preds = %bb.gh, %bb.gi
  %.0.i372 = phi ptr [ %i.arv, %bb.gh ], [ %i.arq, %bb.gi ]
  %i.arx = load ptr, ptr %i.aqb, align 8, !tbaa !43
  %i.ary = load i64, ptr %i.aqc, align 8, !tbaa !66
  %i.arz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i372, ptr noundef %i.arx, i64 noundef %i.ary) #26 ; 3 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 32 ; 2 uses
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !58 ; 3 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arz, i64 24
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !57
  %.not.i374 = icmp ult ptr %i.asb, %i.asd
  br i1 %.not.i374, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit373
  %i.ase = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.arz, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit376

bb.gk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit373
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asb, i64 1
  store ptr %i.asf, ptr %i.asa, align 8, !tbaa !58
  store i8 10, ptr %i.asb, align 1, !tbaa !44
  br label %_ZN4llvm11raw_ostreamlsEc.exit376

_ZN4llvm11raw_ostreamlsEc.exit376:                ; preds = %bb.gj, %bb.gk
  %i.asg = load ptr, ptr %i.apx, align 8, !tbaa !224 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.asg, %i.apx
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIN4llvm3lto16SymbolResolutionESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i377

.lr.ph.i.i.i377:                                  ; preds = %_ZN4llvm11raw_ostreamlsEc.exit376, %.lr.ph.i.i.i377
  %.09.i.i.i = phi ptr [ %i.ash, %.lr.ph.i.i.i377 ], [ %i.asg, %_ZN4llvm11raw_ostreamlsEc.exit376 ] ; 2 uses
  %i.ash = load ptr, ptr %.09.i.i.i, align 8, !tbaa !224 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #27
  %.not.i.i.i378 = icmp eq ptr %i.ash, %i.apx
  br i1 %.not.i.i.i378, label %_ZNSt7__cxx1110_List_baseIN4llvm3lto16SymbolResolutionESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i377, !llvm.loop !5

_ZNSt7__cxx1110_List_baseIN4llvm3lto16SymbolResolutionESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i377, %_ZN4llvm11raw_ostreamlsEc.exit376
  %i.asi = load ptr, ptr %i.aqb, align 8, !tbaa !43 ; 2 uses
  %i.asj = icmp eq ptr %i.asi, %i.aqd
  br i1 %i.asj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN4llvm3lto16SymbolResolutionESaIS3_EED2Ev.exit.i
  %i.ask = load i64, ptr %i.aqd, align 8, !tbaa !44
  %i.asl = add i64 %i.ask, 1
  call void @_ZdlPvm(ptr noundef %i.asi, i64 noundef %i.asl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN4llvm3lto16SymbolResolutionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.asm = load ptr, ptr %81, align 8, !tbaa !43  ; 2 uses
  %i.asn = icmp eq ptr %i.asm, %i.aqe
  br i1 %i.asn, label %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aso = load i64, ptr %i.aqe, align 8, !tbaa !44
  %i.asp = add i64 %i.aso, 1
  call void @_ZdlPvm(ptr noundef %i.asm, i64 noundef %i.asp) #27
  br label %_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEED2Ev.exit

_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENS0_4listIN4llvm3lto16SymbolResolutionESaISB_EEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #26
  %i.asq = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0519.0805) #31 ; 2 uses
  %.not729 = icmp eq ptr %i.asq, %i.y
  br i1 %.not729, label %.loopexit, label %bb.gb
end_hunk_4
