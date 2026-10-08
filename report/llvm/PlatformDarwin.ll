Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PlatformDarwin?download=true
inline.NumInlined: 11009
inline.NumDeleted: 1790
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12lldb_private20SharedCacheImageInfo12GetExtractorEv:bb.a

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aa, align 8, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !52
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !2
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !2
  br label %_ZNSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.o, label %_ZNSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !53

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25
  br label %_ZNSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEaSEOS2_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !337
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b, %bb.a
  %i.ap = phi ptr [ %.pre, %_ZNSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ null, %bb.b ], [ %i.b, %bb.a ]
  store ptr %i.ap, ptr %0, align 8, !tbaa !337
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !49
  %.not.i.i.i1 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i1, label %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i2 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load i32, ptr %i.at, align 4, !tbaa !43
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !43
  br label %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit: ; preds = %bb.p, %bb.r, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private10ModuleSpecC2ERKNS_8FileSpecERKNS_4UUIDESt10shared_ptrINS_13DataExtractorEE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef align 8 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN12lldb_private8ArchSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !331
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !299
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 20, ptr %i.g, align 8, !tbaa !332
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !299  ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %i.j = icmp eq ptr %i.d, %2
  %or.cond.i.i = or i1 %i.j, %.not.i.i.i
  br i1 %or.cond.i.i, label %_ZN12lldb_private4UUIDC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.i, 20
  br i1 %i.k, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i:         ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.e, i64 noundef %i.i, i64 noundef 1) #25
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !299 ; 2 uses
  %.not.i.i.i.i = icmp samesign eq i64 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !331
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i:  ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i, %bb.b
  %i.l = phi ptr [ %.pre.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.e, %bb.b ]
  %i.m = phi i64 [ %.pre.i.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !331
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.n, i64 %i.m, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.thread.i.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit30.i.i.i
  store i64 %i.i, ptr %i.f, align 8, !tbaa !299
  br label %_ZN12lldb_private4UUIDC2ERKS0_.exit

_ZN12lldb_private4UUIDC2ERKS0_.exit:              ; preds = %bb.a, %.sink.split.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  tail call void @_ZN12lldb_private15PathMappingListC1Ev(ptr noundef nonnull align 8 dereferenceable(124) %i.q) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.s = load ptr, ptr %3, align 8, !tbaa !337    ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !337
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49   ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !49
  %.not.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i4, label %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12lldb_private4UUIDC2ERKS0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i5 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !43
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !43
  br label %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !337
  br label %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit: ; preds = %_ZN12lldb_private4UUIDC2ERKS0_.exit, %bb.d, %bb.e
  %i.ab = phi ptr [ %i.s, %_ZN12lldb_private4UUIDC2ERKS0_.exit ], [ %i.s, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 0, ptr %i.ac, align 8, !tbaa !334
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.ab) #25
  br label %.sink.split

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private13DataExtractorEEC2ERKS2_.exit
  %i.ah = tail call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #25
  %i.aj = tail call noundef i64 @_ZNK12lldb_private10FileSystem11GetByteSizeERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  %.sink = phi i64 [ %i.aj, %bb.h ], [ %i.ag, %bb.f ]
  store i64 %.sink, ptr %i.p, align 8, !tbaa !488
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  ret void
}

declare void @_ZN12lldb_private10ModuleList15GetSharedModuleERKNS_10ModuleSpecERSt10shared_ptrINS_6ModuleEEPN4llvm15SmallVectorImplIS6_EEPbb(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr, i64, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteE(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(2200) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.646", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.b = tail call noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #25
  switch i32 %i.b, label %bb.l [
    i32 5, label %bb.m
    i32 3, label %bb.m
    i32 38, label %.thread.thread
    i32 1, label %bb.b
    i32 21, label %bb.k
    i32 23, label %bb.k
  ]

.thread.thread:                                   ; preds = %bb.a
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN12lldb_private14BreakpointSite21GetConstituentAtIndexEm(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.646") align 8 %3, ptr noundef nonnull align 8 dereferenceable(240) %2, i64 noundef 0) #25
  %i.c = load ptr, ptr %3, align 8, !tbaa !492    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private18BreakpointLocation10GetAddressEv(ptr noundef nonnull align 8 dereferenceable(242) %i.c) #25
  %i.e = call noundef i32 @_ZNK12lldb_private7Address15GetAddressClassEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #25
  %i.f = icmp eq i32 %i.e, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i1 [ %i.f, %bb.c ], [ false, %bb.b ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.i, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !52
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !489
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !489
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.h ], [ %i.v, %bb.i ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.j, label %.thread, !prof !53

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %.thread

.thread:                                          ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %spec.select25 = select i1 %.1, ptr @_ZZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteEE26g_thumb_breakpooint_opcode, ptr @_ZZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteEE23g_arm_breakpoint_opcode
  %spec.select26 = select i1 %.1, i32 2, i32 4
  br label %bb.m

bb.k:                                             ; preds = %bb.a, %bb.a
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.x = tail call noundef i64 @_ZN12lldb_private8Platform31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(2200) %1, ptr noundef %2) #25
  br label %bb.n

bb.m:                                             ; preds = %.thread, %.thread.thread, %bb.k, %bb.a, %bb.a
  %.016 = phi ptr [ @_ZZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteEE23g_ppc_breakpoint_opcode, %bb.k ], [ @_ZZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteEE25g_arm64_breakpoint_opcode, %bb.a ], [ @_ZZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteEE25g_arm64_breakpoint_opcode, %bb.a ], [ %spec.select25, %.thread ], [ @_ZZN12lldb_private14PlatformDarwin31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteEE26g_thumb_breakpooint_opcode, %.thread.thread ]
  %.015 = phi i32 [ 4, %bb.k ], [ 4, %bb.a ], [ 4, %bb.a ], [ %spec.select26, %.thread ], [ 2, %.thread.thread ] ; 2 uses
  %i.y = call noundef zeroext i1 @_ZN12lldb_private14BreakpointSite13SetTrapOpcodeEPKhj(ptr noundef nonnull align 8 dereferenceable(240) %2, ptr noundef nonnull %.016, i32 noundef %.015) #25
  %i.z = zext nneg i32 %.015 to i64
  %spec.select = select i1 %i.y, i64 %i.z, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.017 = phi i64 [ %i.x, %bb.l ], [ %spec.select, %bb.m ]
  ret i64 %.017
}

declare noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZN12lldb_private14BreakpointSite21GetConstituentAtIndexEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.646") align 8, ptr noundef nonnull align 8 dereferenceable(240), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private18BreakpointLocation10GetAddressEv(ptr noundef nonnull align 8 dereferenceable(242)) local_unnamed_addr #4

declare noundef i32 @_ZNK12lldb_private7Address15GetAddressClassEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef i64 @_ZN12lldb_private8Platform31GetSoftwareBreakpointTrapOpcodeERNS_6TargetEPNS_14BreakpointSiteE(ptr noundef nonnull align 8 dereferenceable(528), ptr noundef nonnull align 8 dereferenceable(2200), ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN12lldb_private14BreakpointSite13SetTrapOpcodeEPKhj(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private14PlatformDarwin40ModuleIsExcludedForUnconstrainedSearchesERNS_6TargetERKSt10shared_ptrINS_6ModuleEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !322    ; 3 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(952) %i.a) #25 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !530  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %_ZN12lldb_private10ObjectFile7GetTypeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(200) %i.e) #25, !inline_history !493 ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !530
  br label %_ZN12lldb_private10ObjectFile7GetTypeEv.exit

_ZN12lldb_private10ObjectFile7GetTypeEv.exit:     ; preds = %bb.c, %bb.d
  %i.m = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %i.n = icmp eq i32 %i.m, 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_private10ObjectFile7GetTypeEv.exit, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.n, %_ZN12lldb_private10ObjectFile7GetTypeEv.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private14PlatformDarwin28x86GetSupportedArchitecturesERSt6vectorINS_8ArchSpecESaIS2_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.lldb_private::ArchSpec", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::ArchSpec", align 8 ; 10 uses
  %4 = alloca %"class.lldb_private::ArchSpec", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN12lldb_private12HostInfoBase15GetArchitectureENS0_16ArchitectureKindE(i32 noundef 0) #25 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !71
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !72   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 %i.k, ptr %i.f, align 8, !tbaa !70
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #25 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !41
  %i.n = load i64, ptr %i.f, align 8, !tbaa !70
  store i64 %i.n, ptr %i.h, align 8, !tbaa !42
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.b, %bb.a
  %i.o = phi ptr [ %i.m, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN12lldb_private8ArchSpecC2ERKS0_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !42
  store i8 %i.p, ptr %i.o, align 1, !tbaa !42
  br label %_ZN12lldb_private8ArchSpecC2ERKS0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZN12lldb_private8ArchSpecC2ERKS0_.exit

_ZN12lldb_private8ArchSpecC2ERKS0_.exit:          ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.d
  %i.q = load i64, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !72
  %i.s = load ptr, ptr %2, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !349 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !350
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_private8ArchSpecC2ERKS0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !71
  %i.af = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !72  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !70
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.f, label %._crit_edge.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !41
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !70
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !42
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.ai, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  switch i64 %i.ag, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN12lldb_private8ArchSpecC2ERKS0_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = load i8, ptr %i.af, align 1, !tbaa !42
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !42
  br label %_ZN12lldb_private8ArchSpecC2ERKS0_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %_ZN12lldb_private8ArchSpecC2ERKS0_.exit.i

_ZN12lldb_private8ArchSpecC2ERKS0_.exit.i:        ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i
  %i.am = load i64, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !72
  %i.ao = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !349
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !349
  br label %_ZNSt6vectorIN12lldb_private8ArchSpecESaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %_ZN12lldb_private8ArchSpecC2ERKS0_.exit
  call void @_ZNSt6vectorIN12lldb_private8ArchSpecESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %2)
  br label %_ZNSt6vectorIN12lldb_private8ArchSpecESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12lldb_private8ArchSpecESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN12lldb_private8ArchSpecC2ERKS0_.exit.i, %bb.i
  %i.av = load i32, ptr %i.w, align 8, !tbaa !300
  %i.aw = icmp eq i32 %i.av, 84
  br i1 %i.aw, label %bb.j, label %bb.u

bb.j:                                             ; preds = %_ZNSt6vectorIN12lldb_private8ArchSpecESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN12lldb_private8ArchSpecC1EPKc(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.8) #25
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !349 ; 11 uses
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !350
  %.not.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i, label %bb.o, label %bb.k
end_hunk_0
