Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsTargetMachine?download=true
inline.NumInlined: 5669
inline.NumDeleted: 2443
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_MipsTargetMachine.cpp, ptr null }]

@_ZN4llvm17MipsTargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEbb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1, i1), ptr @_ZN4llvm17MipsTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEbb
@_ZN4llvm17MipsTargetMachineD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm17MipsTargetMachineD2Ev
@_ZN4llvm19MipsebTargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1), ptr @_ZN4llvm19MipsebTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb
@_ZN4llvm19MipselTargetMachineC1ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i32, i1), ptr @_ZN4llvm19MipselTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #19
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #19
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMInitializeMipsTarget() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm16getTheMipsTargetEv() #19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_19MipsebTargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.b, align 8, !tbaa !23
  %i.c = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm18getTheMipselTargetEv() #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_19MipselTargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.d, align 8, !tbaa !23
  %i.e = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm18getTheMips64TargetEv() #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_19MipsebTargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.f, align 8, !tbaa !23
  %i.g = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm20getTheMips64elTargetEv() #19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr @_ZN4llvm21RegisterTargetMachineINS_19MipselTargetMachineEE9AllocatorERKNS_6TargetERKNS_6TripleENS_9StringRefES9_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESD_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEb, ptr %i.h, align 8, !tbaa !23
  %i.i = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #19 ; 10 uses
  tail call void @_ZN4llvm20initializeGlobalISelERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm28initializeMipsAsmPrinterPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm33initializeMipsDelaySlotFillerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm33initializeMipsBranchExpansionPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm33initializeMicroMipsSizeReducePassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm38initializeMipsPreLegalizerCombinerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm39initializeMipsPostLegalizerCombinerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm30initializeMipsMulMulBugFixPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm36initializeMipsDAGToDAGISelLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  tail call void @_ZN4llvm41initializeMipsSetMachineRegisterFlagsPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm16getTheMipsTargetEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm18getTheMipselTargetEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm18getTheMips64TargetEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm20getTheMips64elTargetEv() local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() local_unnamed_addr #4

declare void @_ZN4llvm20initializeGlobalISelERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm28initializeMipsAsmPrinterPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm33initializeMipsDelaySlotFillerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm33initializeMipsBranchExpansionPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm33initializeMicroMipsSizeReducePassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm38initializeMipsPreLegalizerCombinerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm39initializeMipsPostLegalizerCombinerPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm30initializeMipsMulMulBugFixPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm36initializeMipsDAGToDAGISelLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

declare void @_ZN4llvm41initializeMipsSetMachineRegisterFlagsPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17MipsTargetMachineC2ERKNS_6TargetERKNS_6TripleENS_9StringRefES7_RKNS_13TargetOptionsESt8optionalINS_5Reloc5ModelEESB_INS_9CodeModel5ModelEENS_15CodeGenOptLevelEbb(ptr noundef nonnull align 8 dereferenceable(3392) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, ptr noundef nonnull align 8 dereferenceable(440) %6, i64 %7, i64 %8, i32 noundef %9, i1 noundef zeroext %10, i1 noundef zeroext %11) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = zext i1 %11 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.e = tail call { ptr, i64 } @_ZNK4llvm15MCTargetOptions10getABINameEv(ptr noundef nonnull align 8 dereferenceable(282) %i.d) #19 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @_ZNK4llvm6Triple17computeDataLayoutB5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %i.f, i64 %i.g) #19
  %i.h = load ptr, ptr %12, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  store ptr %3, ptr %13, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !33
  %.sroa.0.0.extract.trunc.i = trunc i64 %7 to i32
  %i.k = and i64 %7, 4294967296
  %.not3.i = icmp eq i64 %i.k, 0
  %or.cond.i = or i1 %.not3.i, %10
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 %.sroa.0.0.extract.trunc.i
  %i.l = and i64 %8, 4294967296
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4llvm21getEffectiveCodeModelESt8optionalINS_9CodeModel5ModelEES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc.i58 = trunc i64 %8 to i32 ; 2 uses
  switch i32 %.sroa.0.0.extract.trunc.i58, label %_ZN4llvm21getEffectiveCodeModelESt8optionalINS_9CodeModel5ModelEES2_.exit [
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.19) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.20) #20
  unreachable

_ZN4llvm21getEffectiveCodeModelESt8optionalINS_9CodeModel5ModelEES2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.a ], [ %.sroa.0.0.extract.trunc.i58, %bb.b ]
  call void @_ZN4llvm24CodeGenTargetMachineImplC2ERKNS_6TargetENS_9StringRefERKNS_6TripleES4_S4_RKNS_13TargetOptionsENS_5Reloc5ModelENS_9CodeModel5ModelENS_15CodeGenOptLevelE(ptr noundef nonnull align 8 dereferenceable(1728) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr %i.h, i64 %i.j, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %13, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull align 8 dereferenceable(440) %6, i32 noundef %spec.select.i, i32 noundef %.0.i, i32 noundef %9) #19
  %i.m = load ptr, ptr %12, align 8, !tbaa !27    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm21getEffectiveCodeModelESt8optionalINS_9CodeModel5ModelEES2_.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !34
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm21getEffectiveCodeModelESt8optionalINS_9CodeModel5ModelEES2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTVN4llvm17MipsTargetMachineE, i64 16), ptr %0, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1728
  store i8 %i.c, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 980
  %.val = load i32, ptr %i.t, align 4, !tbaa !236
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.u = icmp eq i32 %.val, 1
  br i1 %i.u, label %_ZNSt10unique_ptrIN4llvm28TargetLoweringObjectFileCOFFESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4llvm20MipsTargetObjectFileESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm28TargetLoweringObjectFileCOFFESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call noalias noundef nonnull dereferenceable(992) ptr @_Znwm(i64 noundef 992) #22, !noalias !240 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(992) %i.v, i8 0, i64 992, i1 false), !noalias !240
  store i8 1, ptr %i.w, align 1, !tbaa !243, !noalias !240
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 930
  store i8 1, ptr %i.x, align 2, !tbaa !255, !noalias !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 932
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.y, i8 0, i64 44, i1 false), !noalias !240
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTVN4llvm28TargetLoweringObjectFileCOFFE, i64 16), ptr %i.v, align 16, !tbaa !8, !noalias !240
  br label %_ZL10createTLOFRKN4llvm6TripleE.exit

_ZNSt10unique_ptrIN4llvm20MipsTargetObjectFileESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #22, !noalias !256 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1056) %i.z, i8 0, i64 1056, i1 false), !noalias !256
  store i8 1, ptr %i.aa, align 1, !tbaa !243, !noalias !256
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 930
  store i8 1, ptr %i.ab, align 2, !tbaa !255, !noalias !256
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 932
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %i.ac, i8 0, i64 45, i1 false), !noalias !256
  store i32 1, ptr %i.ad, align 4, !tbaa !259, !noalias !256
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 984
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1008
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !20, !noalias !256
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 992
  store i32 2, ptr %i.ag, align 16, !tbaa !264, !noalias !256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 1000
  store i8 1, ptr %i.ah, align 8, !tbaa !14, !noalias !256
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4llvm20MipsTargetObjectFileE, i64 16), ptr %i.z, align 16, !tbaa !8, !noalias !256
  br label %_ZL10createTLOFRKN4llvm6TripleE.exit

_ZL10createTLOFRKN4llvm6TripleE.exit:             ; preds = %_ZNSt10unique_ptrIN4llvm28TargetLoweringObjectFileCOFFESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt10unique_ptrIN4llvm20MipsTargetObjectFileESt14default_deleteIS1_EED2Ev.exit.i
  %storemerge.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm20MipsTargetObjectFileESt14default_deleteIS1_EED2Ev.exit.i ], [ %i.v, %_ZNSt10unique_ptrIN4llvm28TargetLoweringObjectFileCOFFESt14default_deleteIS1_EED2Ev.exit.i ]
  store ptr %storemerge.i, ptr %i.s, align 8, !tbaa !265, !alias.scope !237
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.aj = call { ptr, i64 } @_ZNK4llvm15MCTargetOptions10getABINameEv(ptr noundef nonnull align 8 dereferenceable(282) %i.d) #19 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call i32 @_ZN4llvm11MipsABIInfo16computeTargetABIERKNS_6TripleENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %i.ak, i64 %i.al) #19
  store i32 %i.am, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !266
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %5, align 8, !tbaa !32 ; 7 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.211.0.copyload = load i64, ptr %.sroa.211.0..sroa_idx, align 8, !tbaa !33 ; 10 uses
  call void @_ZN4llvm13MipsSubtargetC1ERKNS_6TripleENS_9StringRefES4_bRKNS_17MipsTargetMachineENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(536) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %3, i64 %4, ptr %.sroa.010.0.copyload, i64 %.sroa.211.0.copyload, i1 noundef zeroext %11, ptr noundef nonnull align 8 dereferenceable(3392) %0, i16 0) #19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2296
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.aq = icmp eq i64 %.sroa.211.0.copyload, 0    ; 3 uses
  br i1 %i.aq, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZL10createTLOFRKN4llvm6TripleE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ar, ptr %14, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ar, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 23
  store i8 0, ptr %i.at, align 1, !tbaa !34
  br label %bb.k

bb.e:                                             ; preds = %_ZL10createTLOFRKN4llvm6TripleE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %.not.i59 = icmp eq ptr %.sroa.010.0.copyload, null
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.au, ptr %15, align 8, !tbaa !267, !alias.scope !268
  br i1 %.not.i59, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, label %bb.f

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !31, !alias.scope !268
  store i8 0, ptr %i.au, align 8, !tbaa !34, !alias.scope !268
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !268
  store i64 %.sroa.211.0.copyload, ptr %i.b, align 8, !tbaa !33, !noalias !268
  %i.aw = icmp ugt i64 %.sroa.211.0.copyload, 15
  br i1 %i.aw, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.f
  %i.ax = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19 ; 2 uses
  store ptr %i.ax, ptr %15, align 8, !tbaa !27, !alias.scope !268
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !268
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !34, !alias.scope !268
  br label %bb.h

._crit_edge.i.i.i:                                ; preds = %bb.f
  %cond95 = icmp eq i64 %.sroa.211.0.copyload, 1
  br i1 %cond95, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.az = load i8, ptr %.sroa.010.0.copyload, align 1, !tbaa !34
  store i8 %i.az, ptr %i.au, align 8, !tbaa !34
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ba = phi ptr [ %i.ax, %._crit_edge.i.i.i.thread ], [ %i.au, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 1 %.sroa.010.0.copyload, i64 %.sroa.211.0.copyload, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.g, %bb.h
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !33, !noalias !268 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !31, !alias.scope !268
  %i.bd = load ptr, ptr %15, align 8, !tbaa !27, !alias.scope !268
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !268
  %.pre = load i64, ptr %i.bc, align 8, !tbaa !31, !noalias !271
  %i.bf = and i64 %.pre, -8
  %i.bg = icmp eq i64 %i.bf, 4611686018427387896
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  br i1 %i.bg, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20, !noalias !271
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, i64 noundef 8) #19, !noalias !271 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.bi, ptr %14, align 8, !tbaa !267, !alias.scope !271
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !27 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !31 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bj, ptr %14, align 8, !tbaa !27, !alias.scope !271
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !34
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !34, !alias.scope !271
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !31
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  %i.br = phi i64 [ %i.bn, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !31, !alias.scope !271
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !27
  store i64 0, ptr %i.bs, align 8, !tbaa !31
  store i8 0, ptr %i.bk, align 8, !tbaa !34
  %.pre96 = load ptr, ptr %14, align 8, !tbaa !27
  %.pre98 = load i64, ptr %i.bt, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %._crit_edge.i.i
  %i.bu = phi i64 [ %.pre98, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit ], [ 7, %._crit_edge.i.i ]
  %i.bv = phi ptr [ %.pre96, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit ], [ %i.ar, %._crit_edge.i.i ]
  call void @_ZN4llvm13MipsSubtargetC1ERKNS_6TripleENS_9StringRefES4_bRKNS_17MipsTargetMachineENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(536) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %3, i64 %4, ptr %i.bv, i64 %i.bu, i1 noundef zeroext %11, ptr noundef nonnull align 8 dereferenceable(3392) %0, i16 0) #19
  %i.bw = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.k
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  br i1 %i.aq, label %._crit_edge.i.i67, label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.cb = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %.critedge
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !34
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65

._crit_edge.i.i67:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.cg, ptr %16, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cg, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 7, ptr %i.ch, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 23
  store i8 0, ptr %i.ci, align 1, !tbaa !34
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %.not.i69 = icmp eq ptr %.sroa.010.0.copyload, null
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.cj, ptr %17, align 8, !tbaa !267, !alias.scope !274
  br i1 %.not.i69, label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit72.thread, label %bb.l

_ZNK4llvm9StringRef3strB5cxx11Ev.exit72.thread:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !31, !alias.scope !274
  store i8 0, ptr %i.cj, align 8, !tbaa !34, !alias.scope !274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i73

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !274
  store i64 %.sroa.211.0.copyload, ptr %i.a, align 8, !tbaa !33, !noalias !274
  %i.cl = icmp ugt i64 %.sroa.211.0.copyload, 15
  br i1 %i.cl, label %._crit_edge.i.i.i70.thread, label %._crit_edge.i.i.i70

._crit_edge.i.i.i70.thread:                       ; preds = %bb.l
  %i.cm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.cm, ptr %17, align 8, !tbaa !27, !alias.scope !274
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !274
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !34, !alias.scope !274
end_hunk_0
