Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-bolt?download=true
begin_hunk_0_@_Z8boltModeiPPc:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.i, align 8
  store ptr @_ZN4llvm14TargetRegistry32printRegisteredTargetsForVersionERNS_11raw_ostreamE, ptr %3, align 8, !tbaa !54
  store ptr @_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.h, align 8, !tbaa !55
  store ptr @_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.g, align 8, !tbaa !10
  call void @_ZN4llvm2cl22AddExtraVersionPrinterESt8functionIFvRNS_11raw_ostreamEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #19
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #19, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  %i.l = call noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef %0, ptr noundef %1, ptr nonnull @.str.21, i64 43, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #19 ; 0 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts14OutputFilenameB5cxx11E, i64 128), align 8, !tbaa !57
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.o = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19
  %.sroa.0.0.copyload = load ptr, ptr @_ZL8ToolName.0, align 8, !tbaa !42
  %.sroa.2.0.copyload = load i64, ptr @_ZL8ToolName.1, align 8, !tbaa !43
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull @.str.15) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  ret void
}

declare void @_ZN4llvm14TargetRegistry32printRegisteredTargetsForVersionERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(48)) #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %"class.llvm::PrettyStackTraceProgram", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.std::error_code", align 8   ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %7 = alloca %"class.llvm::Expected", align 8    ; 10 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %9 = alloca %"class.llvm::Expected.47", align 8 ; 8 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %17 = alloca %"class.llvm::Expected.496", align 8 ; 8 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %21 = alloca %"class.llvm::Expected", align 8   ; 10 uses
  %22 = alloca %"class.llvm::Expected", align 8   ; 10 uses
  %23 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %25 = alloca %"class.llvm::Expected.47", align 8 ; 8 uses
  %26 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %27 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %28 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %29 = alloca %"class.llvm::Expected.47", align 8 ; 8 uses
  %30 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %31 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %32 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %33 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %35 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %36 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !42     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN4llvm3sys28PrintStackTraceOnErrorSignalENS_9StringRefEb(ptr %i.a, i64 %.sroa.0.0.i, i1 noundef zeroext false) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4llvm21PrettyStackTraceEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm23PrettyStackTraceProgramE, i64 16), ptr %2, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %0, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !72
  call void @_ZN4llvm22EnablePrettyStackTraceEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = load ptr, ptr %1, align 8, !tbaa !42
  call void @_ZN4llvm3sys2fs17getMainExecutableB5cxx11EPKcPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %i.e, ptr noundef null) #19
  call void @LLVMInitializeAArch64TargetInfo() #19
  call void @LLVMInitializeAArch64TargetMC() #19
  call void @LLVMInitializeAArch64AsmParser() #19
  call void @LLVMInitializeAArch64Disassembler() #19
  call void @LLVMInitializeAArch64Target() #19
  call void @LLVMInitializeAArch64AsmPrinter() #19
  call void @LLVMInitializeX86TargetInfo() #19
  call void @LLVMInitializeX86TargetMC() #19
  call void @LLVMInitializeX86AsmParser() #19
  call void @LLVMInitializeX86Disassembler() #19
  call void @LLVMInitializeX86Target() #19
  call void @LLVMInitializeX86AsmPrinter() #19
  call void @LLVMInitializeRISCVTargetInfo() #19
  call void @LLVMInitializeRISCVTargetMC() #19
  call void @LLVMInitializeRISCVAsmParser() #19
  call void @LLVMInitializeRISCVDisassembler() #19
  call void @LLVMInitializeRISCVTarget() #19
  call void @LLVMInitializeRISCVAsmPrinter() #19
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 4 uses
  %.not.i61 = icmp eq ptr %i.f, null
  br i1 %.not.i61, label %_ZN4llvm9StringRefC2EPKc.exit63, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #19
  br label %_ZN4llvm9StringRefC2EPKc.exit63

_ZN4llvm9StringRefC2EPKc.exit63:                  ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.c
  %.sroa.0.0.i62 = phi i64 [ %i.g, %bb.c ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit ] ; 2 uses
  store ptr %i.f, ptr @_ZL8ToolName.0, align 8, !tbaa !42
  store i64 %.sroa.0.0.i62, ptr @_ZL8ToolName.1, align 8, !tbaa !43
  %i.h = call { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr %i.f, i64 %.sroa.0.0.i62, i32 noundef 0) #19 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %.not.i65 = icmp ult i64 %i.i, 9
  br i1 %.not.i65, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread284, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZN4llvm9StringRefC2EPKc.exit63
  %i.j = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.k = load i64, ptr %i.j, align 1
  %i.l = xor i64 %i.k, 7813571847117759856
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = xor i64 %i.o, 116
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread284

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  call void @_Z13perf2boltModeiPPc(i32 noundef %0, ptr noundef nonnull %1)
  br label %bb.d

_ZNK4llvm9StringRef11starts_withES0_.exit.thread284: ; preds = %_ZN4llvm9StringRefC2EPKc.exit63, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %.sroa.032.0.copyload = load ptr, ptr @_ZL8ToolName.0, align 8, !tbaa !42
  %.sroa.233.0.copyload = load i64, ptr @_ZL8ToolName.1, align 8, !tbaa !43
  %i.u = call { ptr, i64 } @_ZN4llvm3sys4path8filenameENS_9StringRefENS1_5StyleE(ptr %.sroa.032.0.copyload, i64 %.sroa.233.0.copyload, i32 noundef 0) #19 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 1
  %.not.i67 = icmp ult i64 %i.v, 13
  br i1 %.not.i67, label %_ZNK4llvm9StringRef11starts_withES0_.exit69.thread285, label %_ZNK4llvm9StringRef11starts_withES0_.exit69

_ZNK4llvm9StringRef11starts_withES0_.exit69:      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread284
  %i.w = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 7813571825760627820
  %i.z = getelementptr i8, ptr %i.w, i64 5
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 7378700919664045922
  %i.ac = or i64 %i.y, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNK4llvm9StringRef11starts_withES0_.exit69.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit69.thread285

_ZNK4llvm9StringRef11starts_withES0_.exit69.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit69
  call void @_Z12boltDiffModeiPPc(i32 noundef %0, ptr noundef nonnull %1)
  br label %bb.d

_ZNK4llvm9StringRef11starts_withES0_.exit69.thread285: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread284, %_ZNK4llvm9StringRef11starts_withES0_.exit69
  call void @_Z8boltModeiPPc(i32 noundef %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit69.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit69.thread285, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 4, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !47
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 120), ptr %4, align 8, !tbaa !19
  %i.ai = call { i32, ptr } @_ZN4llvm3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 0) #19
  %i.aj = extractvalue { i32, ptr } %i.ai, 0
  %.not.i70 = icmp eq i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %.not.i70, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 120), align 8, !tbaa !14
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 128), align 8, !tbaa !57
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #22
  call fastcc void @_ZL12report_errorN4llvm9StringRefESt10error_code(ptr %i.ak, i64 %i.al, i32 2, ptr nonnull %i.am)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.an = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #19
  %i.ao = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL7LogFileB5cxx11E, i64 128), align 8, !tbaa !57 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %5, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #22
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !76
  %i.at = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23, !noalias !77 ; 4 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL7LogFileB5cxx11E, i64 120), align 8, !tbaa !14, !noalias !77
  call void @_ZN4llvm14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(96) %i.at, ptr %i.au, i64 %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0) #19, !noalias !77
  %i.av = load i32, ptr %5, align 8, !tbaa !73
  %.not302 = icmp eq i32 %i.av, 0
  br i1 %.not302, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19
  %i.ax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull @.str.24)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !76, !noalias !80 ; 2 uses
  %i.az = load i32, ptr %5, align 8, !tbaa !73, !noalias !80
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !8, !noalias !80
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !80
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i32 noundef %i.az) #19, !inline_history !83
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull @.str.25) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @exit(i32 noundef 1) #21
  unreachable

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.0264.0 = phi ptr [ null, %bb.f ], [ %i.at, %bb.h ] ; 3 uses
  %.054 = phi ptr [ %i.ao, %bb.f ], [ %i.at, %bb.h ]
  %.053 = phi ptr [ %i.an, %bb.f ], [ %i.at, %bb.h ]
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts8DiffOnlyE, i64 120), align 8, !tbaa !84, !range !24, !noundef !25
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ak, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 120), align 8, !tbaa !14
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 128), align 8, !tbaa !57
  call void @_ZN4llvm6object12createBinaryENS_9StringRefEPNS_11LLVMContextEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %7, ptr %i.bh, i64 %i.bi, ptr noundef null, i1 noundef zeroext true) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !noalias !90
  %i.bl = trunc i8 %i.bk to i1
  br i1 %i.bl, label %_ZN4llvm8ExpectedINS_6object12OwningBinaryINS1_6BinaryEEEE9takeErrorEv.exit, label %_ZN4llvm5ErrorD2Ev.exit72

_ZN4llvm8ExpectedINS_6object12OwningBinaryINS1_6BinaryEEEE9takeErrorEv.exit: ; preds = %bb.j
  %i.bm = load i64, ptr %7, align 8, !tbaa !93, !noalias !90 ; 2 uses
  store ptr null, ptr %7, align 8, !tbaa !93, !noalias !90
  %.not303 = icmp eq i64 %i.bm, 0
  br i1 %.not303, label %.thread392, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8ExpectedINS_6object12OwningBinaryINS1_6BinaryEEEE9takeErrorEv.exit
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 120), align 8, !tbaa !14
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 128), align 8, !tbaa !57
  store ptr %i.bn, ptr %8, align 8, !tbaa !95
  call fastcc void @_ZL12report_errorN4llvm9StringRefENS_5ErrorE(ptr %i.bo, i64 %i.bp, ptr nofree noundef align 8 dereferenceable(8) %8)
  unreachable

_ZN4llvm5ErrorD2Ev.exit72:                        ; preds = %bb.j
  %.pre = load ptr, ptr %7, align 8, !tbaa !97    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !99 ; 2 uses
  %i.bs = add i32 %i.br, -17
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.bs, -4
  %.not304 = icmp eq ptr %.pre, null              ; 2 uses
  %.not = or i1 %.not304, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %.not, label %bb.z, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bt = load ptr, ptr %3, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !57
  call void @_ZN4llvm4bolt15RewriteInstance6createEPNS_6object17ELFObjectFileBaseEiPKPKcNS_9StringRefERNS_11raw_ostreamESB_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.47") align 8 %9, ptr noundef nonnull %.pre, i32 noundef %0, ptr noundef nonnull %1, ptr %i.bt, i64 %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %.053, ptr noundef nonnull align 8 dereferenceable(48) %.054) #19
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !noalias !102
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %_ZN4llvm8ExpectedISt10unique_ptrINS_4bolt15RewriteInstanceESt14default_deleteIS3_EEE9takeErrorEv.exit, label %._ZN4llvm5ErrorD2Ev.exit76_crit_edge

._ZN4llvm5ErrorD2Ev.exit76_crit_edge:             ; preds = %bb.l
  %.pre332 = load ptr, ptr %9, align 8, !tbaa !105
  br label %_ZN4llvm5ErrorD2Ev.exit76

_ZN4llvm8ExpectedISt10unique_ptrINS_4bolt15RewriteInstanceESt14default_deleteIS3_EEE9takeErrorEv.exit: ; preds = %bb.l
  %i.bz = load i64, ptr %9, align 8, !tbaa !93, !noalias !102 ; 2 uses
  store ptr null, ptr %9, align 8, !tbaa !93, !noalias !102
  %.not305 = icmp eq i64 %i.bz, 0
  br i1 %.not305, label %_ZN4llvm5ErrorD2Ev.exit76, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_4bolt15RewriteInstanceESt14default_deleteIS3_EEE9takeErrorEv.exit
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 120), align 8, !tbaa !14
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL13InputFilenameB5cxx11E, i64 128), align 8, !tbaa !57
  store ptr %i.ca, ptr %10, align 8, !tbaa !95
  call fastcc void @_ZL12report_errorN4llvm9StringRefENS_5ErrorE(ptr %i.cb, i64 %i.cc, ptr nofree noundef align 8 dereferenceable(8) %10)
  unreachable

_ZN4llvm5ErrorD2Ev.exit76:                        ; preds = %._ZN4llvm5ErrorD2Ev.exit76_crit_edge, %_ZN4llvm8ExpectedISt10unique_ptrINS_4bolt15RewriteInstanceESt14default_deleteIS3_EEE9takeErrorEv.exit
  %i.cd = phi ptr [ %.pre332, %._ZN4llvm5ErrorD2Ev.exit76_crit_edge ], [ null, %_ZN4llvm8ExpectedISt10unique_ptrINS_4bolt15RewriteInstanceESt14default_deleteIS3_EEE9takeErrorEv.exit ] ; 4 uses
  %i.ce = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts13AggregateOnlyE, i64 120), align 8, !tbaa !84, !range !24, !noundef !25
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.n, label %.thread

bb.n:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit76
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1448
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !111
  %i.cm = icmp ne i32 %i.cl, 3
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts6ArmSPEE, i64 120), align 8, !range !24
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19
  %.sroa.020.0.copyload = load ptr, ptr @_ZL8ToolName.0, align 8, !tbaa !42
  %.sroa.221.0.copyload = load i64, ptr @_ZL8ToolName.1, align 8, !tbaa !43
  %i.cq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr %.sroa.020.0.copyload, i64 %.sroa.221.0.copyload)
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull @.str.26) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts8PerfDataB5cxx11E, i64 120), align 8, !tbaa !119 ; 2 uses
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts8PerfDataB5cxx11E, i64 128), align 8, !tbaa !119 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.q

.thread:                                          ; preds = %_ZN4llvm5ErrorD2Ev.exit76
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts8PerfDataB5cxx11E, i64 120), align 8, !tbaa !119 ; 2 uses
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts8PerfDataB5cxx11E, i64 128), align 8, !tbaa !119 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %.thread288, label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p
  %i.cy = phi ptr [ %i.cw, %.thread ], [ %i.ct, %bb.p ] ; 2 uses
  %i.cz = phi ptr [ %i.cv, %.thread ], [ %i.cs, %bb.p ] ; 2 uses
  %.not306325 = icmp eq ptr %i.cz, %i.cy
  br i1 %.not306325, label %.thread288, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %_ZN4llvm5ErrorD2Ev.exit78
  %.sroa.0245.0326 = phi ptr [ %i.de, %_ZN4llvm5ErrorD2Ev.exit78 ], [ %i.cz, %bb.q ] ; 3 uses
  %i.da = load ptr, ptr %.sroa.0245.0326, align 8, !tbaa !14 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0245.0326, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN4llvm4bolt15RewriteInstance10setProfileENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %11, ptr noundef nonnull align 8 dereferenceable(808) %i.cd, ptr %i.da, i64 %i.dc) #19
  %i.dd = load ptr, ptr %11, align 8, !tbaa !95   ; 2 uses
  %.not307 = icmp eq ptr %i.dd, null
  br i1 %.not307, label %_ZN4llvm5ErrorD2Ev.exit78, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  store ptr %i.dd, ptr %12, align 8, !tbaa !95
  store ptr null, ptr %11, align 8, !tbaa !95
  call fastcc void @_ZL12report_errorN4llvm9StringRefENS_5ErrorE(ptr %i.da, i64 %i.dc, ptr nofree noundef align 8 dereferenceable(8) %12)
  unreachable

_ZN4llvm5ErrorD2Ev.exit78:                        ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0245.0326, i64 32 ; 2 uses
  %.not306 = icmp eq ptr %i.de, %i.cy
  br i1 %.not306, label %.thread288, label %.lr.ph

bb.s:                                             ; preds = %bb.p
  %i.df = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19
  %.sroa.0.0.copyload = load ptr, ptr @_ZL8ToolName.0, align 8, !tbaa !42
  %.sroa.2.0.copyload = load i64, ptr @_ZL8ToolName.1, align 8, !tbaa !43
  %i.dg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.dh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull @.str.27) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

.thread288:                                       ; preds = %_ZN4llvm5ErrorD2Ev.exit78, %bb.q, %.thread
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL17InputDataFilenameB5cxx11E, i64 128), align 8, !tbaa !57 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.thread288
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL17InputDataFilenameB5cxx11E, i64 120), align 8, !tbaa !14
  call void @_ZN4llvm4bolt15RewriteInstance10setProfileENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %13, ptr noundef nonnull align 8 dereferenceable(808) %i.cd, ptr %i.dk, i64 %i.di) #19
  %i.dl = load ptr, ptr %13, align 8, !tbaa !95   ; 2 uses
  %.not308 = icmp eq ptr %i.dl, null
  br i1 %.not308, label %_ZN4llvm5ErrorD2Ev.exit80, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL17InputDataFilenameB5cxx11E, i64 120), align 8, !tbaa !14
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL17InputDataFilenameB5cxx11E, i64 128), align 8, !tbaa !57
  store ptr %i.dl, ptr %14, align 8, !tbaa !95
  store ptr null, ptr %13, align 8, !tbaa !95
  call fastcc void @_ZL12report_errorN4llvm9StringRefENS_5ErrorE(ptr %i.dm, i64 %i.dn, ptr nofree noundef align 8 dereferenceable(8) %14)
  unreachable

_ZN4llvm5ErrorD2Ev.exit80:                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit80, %.thread288
end_hunk_0
