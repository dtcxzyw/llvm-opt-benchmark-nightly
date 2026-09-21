Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURegisterBankInfo?download=true
inline.NumInlined: 5206
inline.NumDeleted: 1306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm6AMDGPU15getValueMappingEjj:bb.a

switch.lookup28:                                  ; preds = %bb.a
  %i.l = zext nneg i32 %0 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.95, i64 %i.l
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  %switch.ext31 = zext i8 %switch.load30 to i32
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup28, %switch.lookup24, %switch.lookup20, %switch.lookup16, %switch.lookup, %switch.lookup32, %bb.c
  %.1 = phi i32 [ %i.g, %switch.lookup32 ], [ %i.c, %bb.c ], [ %switch.ext23, %switch.lookup20 ], [ %switch.ext31, %switch.lookup28 ], [ %switch.ext19, %switch.lookup16 ], [ %switch.ext, %switch.lookup ], [ %switch.ext27, %switch.lookup24 ]
  %i.m = zext nneg i32 %.1 to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %i.n, %bb.d ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %bb.b ]
  ret ptr %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm6AMDGPU25getValueMappingSGPR64OnlyEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  switch i32 %1, label %switch.lookup22 [
    i32 64, label %bb.e
    i32 1, label %bb.b
    i32 96, label %switch.lookup
    i32 288, label %switch.lookup6
    i32 320, label %switch.lookup10
    i32 352, label %switch.lookup14
    i32 384, label %switch.lookup18
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %0, 2
  br i1 %i.a, label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %0, 1
  %i.c = select i1 %i.b, i32 1, i32 12
  br label %bb.d

switch.lookup22:                                  ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %switch.gep23 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.96, i64 %i.d
  %switch.load24 = load i8, ptr %switch.gep23, align 1
  %switch.ext25 = zext i8 %switch.load24 to i32
  %i.e = add i32 %1, -1
  %i.f = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.e, i1 false)
  %reass.sub = sub nsw i32 %switch.ext25, %i.f
  %i.g = add nsw i32 %reass.sub, 32
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.d

switch.lookup6:                                   ; preds = %bb.a
  %i.i = zext nneg i32 %0 to i64
  %switch.gep7 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.92, i64 %i.i
  %switch.load8 = load i8, ptr %switch.gep7, align 1
  %switch.ext9 = zext i8 %switch.load8 to i32
  br label %bb.d

switch.lookup10:                                  ; preds = %bb.a
  %i.j = zext nneg i32 %0 to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.93, i64 %i.j
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext13 = zext i8 %switch.load12 to i32
  br label %bb.d

switch.lookup14:                                  ; preds = %bb.a
  %i.k = zext nneg i32 %0 to i64
  %switch.gep15 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.94, i64 %i.k
  %switch.load16 = load i8, ptr %switch.gep15, align 1
  %switch.ext17 = zext i8 %switch.load16 to i32
  br label %bb.d

switch.lookup18:                                  ; preds = %bb.a
  %i.l = zext nneg i32 %0 to i64
  %switch.gep19 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm22AMDGPURegisterBankInfo16getSGPROpMappingENS_8RegisterERKNS_19MachineRegisterInfoERKNS_18TargetRegisterInfoE.95, i64 %i.l
  %switch.load20 = load i8, ptr %switch.gep19, align 1
  %switch.ext21 = zext i8 %switch.load20 to i32
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup18, %switch.lookup14, %switch.lookup10, %switch.lookup6, %switch.lookup, %switch.lookup22, %bb.c
  %.1.i = phi i32 [ %i.g, %switch.lookup22 ], [ %i.c, %bb.c ], [ %switch.ext13, %switch.lookup10 ], [ %switch.ext21, %switch.lookup18 ], [ %switch.ext9, %switch.lookup6 ], [ %switch.ext, %switch.lookup ], [ %switch.ext17, %switch.lookup14 ]
  %i.m = zext nneg i32 %.1.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm6AMDGPUL11ValMappingsE, i64 %i.m
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

bb.e:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %0, 3
  %. = select i1 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 32)
  br label %_ZN4llvm6AMDGPU15getValueMappingEjj.exit

_ZN4llvm6AMDGPU15getValueMappingEjj.exit:         ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi ptr [ %., %bb.e ], [ %i.n, %bb.d ], [ @_ZN4llvm6AMDGPUL11ValMappingsE, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm6AMDGPU22getValueMappingSplit64Ejj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %0, 3
  %. = select i1 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm6AMDGPUL27ValMappingsSGPR64OnlyVGPR32E, i64 16)
  ret ptr %.
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22AMDGPURegisterBankInfoC2ERKNS_12GCNSubtargetE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(520232) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon.568, align 8            ; 4 uses
  tail call void @_ZN4llvm16RegisterBankInfoC2EPPKNS_12RegisterBankEjPKjj(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @_ZN4llvm25AMDGPUGenRegisterBankInfo8RegBanksE, i32 noundef 4, ptr noundef nonnull @_ZN4llvm25AMDGPUGenRegisterBankInfo5SizesE, i32 noundef 0) #21
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm22AMDGPURegisterBankInfoE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.a, align 8, !tbaa !543
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %i.c, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 912
  store ptr %i.e, ptr %i.d, align 8, !tbaa !53
  %i.f = load atomic i8, ptr @_ZGVZN4llvm22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE26InitializeRegisterBankOnce acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d, !prof !544

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE26InitializeRegisterBankOnce) #21
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @_ZZN4llvm22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE26InitializeRegisterBankOnce, align 8, !tbaa !546
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE26InitializeRegisterBankOnce) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @_ZZN4llvm22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE26InitializeRegisterBankOnce, ptr %2, align 8, !tbaa !55
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %2, ptr %i.i, align 8, !tbaa !55
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRZN4llvm22AMDGPURegisterBankInfoC1ERKNS3_12GCNSubtargetEE3$_0JEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv", ptr %i.j, align 8, !tbaa !55
  %i.k = call noundef i32 @pthread_once(ptr noundef nonnull @_ZZN4llvm22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE26InitializeRegisterBankFlag, ptr noundef nonnull @__once_proxy) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %"_ZN4llvm9call_onceIRZNS_22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE3$_0JEEEvRSt9once_flagOT_DpOT0_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #22
  unreachable

"_ZN4llvm9call_onceIRZNS_22AMDGPURegisterBankInfoC1ERKNS_12GCNSubtargetEE3$_0JEEEvRSt9once_flagOT_DpOT0_.exit": ; preds = %bb.d
  store ptr null, ptr %i.i, align 8, !tbaa !55
  store ptr null, ptr %i.j, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm22AMDGPURegisterBankInfo18isDivergentRegBankEPKNS_12RegisterBankE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, @_ZN4llvm6AMDGPUL11SGPRRegBankE
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 -1, 5) i32 @_ZNK4llvm22AMDGPURegisterBankInfo8copyCostERKNS_12RegisterBankES3_NS_8TypeSizeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, i64 %3, i8 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !58     ; 2 uses
  %i.b = icmp ne i32 %i.a, 1                      ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val12 = load i32, ptr %2, align 8, !tbaa !58
  switch i32 %.val12, label %bb.c [
    i32 3, label %bb.g
    i32 0, label %bb.g
    i32 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = trunc nuw i8 %4 to i1
  br i1 %i.c, label %bb.d, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.c
  %i.d = icmp ne i64 %3, 1
  %brmerge = or i1 %i.d, %i.b
  br i1 %brmerge, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.val = load i32, ptr %2, align 8, !tbaa !58
  %switch = icmp ult i32 %.val, 4
  br i1 %switch, label %bb.g, label %.thread

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %5 = icmp eq i32 %i.a, 0
  %i.e = load i32, ptr %2, align 8
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %5, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.g = icmp ne ptr %1, %2
  %i.h = zext i1 %i.g to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b, %bb.b, %bb.b, %.thread
  %.0 = phi i32 [ 4, %bb.f ], [ -1, %bb.b ], [ %i.h, %.thread ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm16RegisterBankInfo8copyCostERKNS_12RegisterBankES3_NS_8TypeSizeE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i8 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %1, %2
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 1, 11) i32 @_ZNK4llvm22AMDGPURegisterBankInfo16getBreakDownCostERKNS_16RegisterBankInfo12ValueMappingEPKNS_12RegisterBankE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !547
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !548
  %i.g = icmp ugt i32 %i.f, 63
  %spec.select = select i1 %i.g, i32 10, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 10, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm22AMDGPURegisterBankInfo22getRegBankFromRegClassERKNS_15MCRegisterClassENS_3LLTE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(62) %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::LLT", align 8         ; 2 uses
  %4 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  store i64 %2, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.b = load i8, ptr %i.a, align 2, !tbaa !549
  %i.c = and i8 %i.b, 28                          ; 2 uses
  %i.d = icmp eq i8 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 1152921504606846976
  %i.f = and i64 %2, 1152921504606846975
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i64 1152921504875282432, ptr %4, align 8
  %i.i = call noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %_ZN4llvm6AMDGPUL10VCCRegBankE._ZN4llvm6AMDGPUL11SGPRRegBankE = select i1 %i.i, ptr @_ZN4llvm6AMDGPUL10VCCRegBankE, ptr @_ZN4llvm6AMDGPUL11SGPRRegBankE
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i8 %i.c, 8
  %_ZN4llvm6AMDGPUL11AGPRRegBankE._ZN4llvm6AMDGPUL11VGPRRegBankE = select i1 %i.j, ptr @_ZN4llvm6AMDGPUL11AGPRRegBankE, ptr @_ZN4llvm6AMDGPUL11VGPRRegBankE
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %_ZN4llvm6AMDGPUL10VCCRegBankE._ZN4llvm6AMDGPUL11SGPRRegBankE, %bb.c ], [ %_ZN4llvm6AMDGPUL11AGPRRegBankE._ZN4llvm6AMDGPUL11VGPRRegBankE, %bb.d ], [ @_ZN4llvm6AMDGPUL11SGPRRegBankE, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm3LLTeqERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %3 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 12 uses
  %.mask.i = and i64 %i.a, -1152921504606846976   ; 4 uses
  %i.b = icmp eq i64 %.mask.i, 1152921504606846976
  %.pre = load i64, ptr %1, align 8               ; 8 uses
  %.mask.i10 = and i64 %.pre, -1152921504606846976
  %i.c = icmp eq i64 %.mask.i10, 1152921504606846976
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  %i.d = lshr i64 %i.a, 60                        ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.off.i = add nsw i64 %i.d, -1
  %switch.i = icmp ult i64 %.off.i, 3
  %i.e = lshr i64 %.pre, 60
  %.off.i11 = add nsw i64 %i.e, -1
  %switch.i12 = icmp ult i64 %.off.i11, 3
  %i.f = xor i1 %switch.i, %switch.i12
  br i1 %i.f, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %.mask.i, 4611686018427387904
  %i.h = icmp slt i64 %i.a, -8070450532247928832
  %spec.select.i.i = or i1 %i.h, %i.g
  %i.i = lshr i64 %i.a, 44
  %i.j = and i64 %i.i, 65535
  %i.k = lshr i64 %i.a, 28
  %.0.in.i = select i1 %spec.select.i.i, i64 %i.j, i64 %i.k
  %.0.i = trunc i64 %.0.in.i to i32
  %.mask.i.i.i13 = and i64 %.pre, -1152921504606846976
  %i.l = icmp eq i64 %.mask.i.i.i13, 4611686018427387904
  %i.m = icmp slt i64 %.pre, -8070450532247928832
  %spec.select.i.i14 = or i1 %i.m, %i.l
  %i.n = lshr i64 %.pre, 44
  %i.o = and i64 %i.n, 65535
  %i.p = lshr i64 %.pre, 28
  %.0.in.i15 = select i1 %spec.select.i.i14, i64 %i.o, i64 %i.p
  %.0.i16 = trunc i64 %.0.in.i15 to i32
  %i.q = icmp eq i32 %.0.i, %.0.i16
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.r = add nsw i64 %i.d, -5
  %switch.selectcmp.i = icmp ult i64 %i.r, 4
  br i1 %switch.selectcmp.i, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i64 %.pre, 60
  %i.t = add nsw i64 %i.s, -5
  %switch.selectcmp.i17 = icmp ult i64 %i.t, 4
  br i1 %switch.selectcmp.i17, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.u = icmp slt i64 %i.a, -8070450532247928832
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.a, 1152921504605798400
  %i.w = or disjoint i64 %i.v, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.h:                                             ; preds = %bb.f
  switch i64 %.mask.i, label %bb.m [
    i64 8070450532247928832, label %bb.i
    i64 6917529027641081856, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = trunc i64 %i.a to i32
  %i.y = lshr i32 %i.x, 20
  %i.z = and i32 %i.y, 255                        ; 2 uses
  %i.aa = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !63, !range !64, !noundef !65
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.z) #21
  %i.ad = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.ac) #21
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 28               ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %storemerge.i.i.i.i.i = or disjoint i64 %i.af, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = shl nuw nsw i32 %i.z, 20
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = or disjoint i64 %i.af, %i.ah
  %i.aj = or disjoint i64 %i.ai, 3458764513820540928
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.l:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @_ZN4llvm3LLT11ExtendedLLTE, align 1, !tbaa !63, !range !64, !noundef !65
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = and i64 %i.a, 1152921504338411520
  %.sroa.0.0.v.i.i = select i1 %i.al, i64 2305843009213693952, i64 1152921504606846976
  %.sroa.0.0.i6.i = or disjoint i64 %.sroa.0.0.v.i.i, %i.am
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

bb.m:                                             ; preds = %bb.h
  %i.an = icmp eq i64 %.mask.i, 4611686018427387904
  %i.ao = lshr i64 %i.a, 44
  %i.ap = and i64 %i.ao, 65535
  %i.aq = lshr i64 %i.a, 28
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = select i1 %i.an, i64 %i.ap, i64 %i.ar
  %i.at = shl nuw nsw i64 %i.as, 28
  %storemerge.i.i.i.i = or disjoint i64 %i.at, 1152921504606846976
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit

_ZNK4llvm3LLT14getElementTypeEv.exit:             ; preds = %bb.g, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.0.0.i = phi i64 [ %i.w, %bb.g ], [ %storemerge.i.i.i.i, %bb.m ], [ %.sroa.0.0.i6.i, %bb.l ], [ %i.aj, %bb.k ], [ %storemerge.i.i.i.i.i, %bb.j ]
  store i64 %.sroa.0.0.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.au = load i64, ptr %1, align 8               ; 7 uses
  %i.av = icmp slt i64 %i.au, -8070450532247928832
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4llvm3LLT14getElementTypeEv.exit
  %i.aw = and i64 %i.au, 1152921504605798400
  %i.ax = or disjoint i64 %i.aw, 4611686018427387904
  br label %_ZNK4llvm3LLT14getElementTypeEv.exit24

end_hunk_0
