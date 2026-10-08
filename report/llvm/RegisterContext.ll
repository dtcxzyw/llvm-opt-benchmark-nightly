Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterContext?download=true
inline.NumInlined: 245
inline.NumDeleted: 146
begin_hunk_0
@.str.7 = private unnamed_addr constant [11 x i8] c"null error\00", align 1

@_ZN12lldb_private15RegisterContextD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private15RegisterContextD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15RegisterContextC2ERNS_6ThreadEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 36)) %0, ptr noundef nonnull align 8 dereferenceable(576) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 272) (i8, ptr @_ZTVN12lldb_private15RegisterContextE, i64 16), ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24, !noalias !97 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 8, !noalias !97
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.j = cmpxchg weak ptr %i.g, i32 %.06.i.i.i.i.i.i, i32 %i.i acq_rel monotonic, align 8, !noalias !97 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.m = load atomic i32, ptr %i.g monotonic, align 8, !noalias !97 ; 0 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !28, !noalias !97
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34   ; 3 uses
  %i.q = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f

_ZNK12lldb_private6Thread10GetProcessEv.exit.thread: ; preds = %bb.c, %bb.a
  %i.t = load i32, ptr inttoptr (i64 344 to ptr), align 8, !tbaa !34
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  store i32 0, ptr %i.g, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !37
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !1
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %i.s, -1
  store i32 %i.ac, ptr %i.g, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !40

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.af = phi i32 [ %i.t, %_ZNK12lldb_private6Thread10GetProcessEv.exit.thread ], [ %i.p, %bb.i ], [ %i.p, %bb.e ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15RegisterContextD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt23enable_shared_from_thisIN12lldb_private15RegisterContextEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !39   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt23enable_shared_from_thisIN12lldb_private15RegisterContextEED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !98
  br label %_ZNSt23enable_shared_from_thisIN12lldb_private15RegisterContextEED2Ev.exit

_ZNSt23enable_shared_from_thisIN12lldb_private15RegisterContextEED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12lldb_private15RegisterContextD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private15RegisterContext18InvalidateIfNeededEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !nonnull !43, !align !44 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24, !noalias !103 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %.thread15.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !103
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %.thread15.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %.06.i.i.i.i.i.i, i32 %i.h acq_rel monotonic, align 8, !noalias !103 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.l = load atomic i32, ptr %i.f monotonic, align 8, !noalias !103
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %.thread15.a, label %_ZNK12lldb_private6Thread10GetProcessEv.exit

_ZNK12lldb_private6Thread10GetProcessEv.exit:     ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !28, !noalias !103 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread15.a, label %bb.e

bb.e:                                             ; preds = %_ZNK12lldb_private6Thread10GetProcessEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 3 uses
  br i1 %1, label %.thread15.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %.not26 = icmp eq i32 %i.o, %i.q
  br i1 %.not26, label %.thread22, label %.thread15.a

.thread15.a:                                      ; preds = %bb.c, %bb.a, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, %_ZNK12lldb_private6Thread10GetProcessEv.exit, %bb.e, %bb.f
  %.sroa.5.081221 = phi ptr [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %_ZNK12lldb_private6Thread10GetProcessEv.exit ], [ null, %bb.a ], [ %i.e, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  %.01319 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ -1, %_ZNK12lldb_private6Thread10GetProcessEv.exit ], [ -1, %bb.a ], [ -1, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ], [ -1, %bb.c ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.01319, ptr %i.u, align 4, !tbaa !41
  %.not.i.i = icmp eq ptr %.sroa.5.081221, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.thread22

.thread22:                                        ; preds = %bb.f, %.thread15.a
  %.sroa.5.08122025 = phi ptr [ %.sroa.5.081221, %.thread15.a ], [ %i.e, %bb.f ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.5.08122025, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread22
  store i32 0, ptr %i.v, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.08122025, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !37
  %i.aa = load ptr, ptr %.sroa.5.08122025, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.08122025) #17, !inline_history !1
  %i.ad = load ptr, ptr %.sroa.5.08122025, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.08122025) #17, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %.thread22
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !40

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.08122025) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread15.a, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private15RegisterContext21GetRegisterInfoByNameEN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.thread36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN12lldb_private4Args23StringToGenericRegisterEN4llvm9StringRefE(ptr %1, i64 %2) #17 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 2, i32 noundef %i.c) #17, !inline_history !105 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread, label %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit

_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit: ; preds = %bb.c
  %i.i = zext i32 %i.g to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.i) #17, !inline_history !105 ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread, label %.thread36

_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread: ; preds = %bb.c, %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %.not2439 = icmp ult i32 %3, %i.r
  br i1 %.not2439, label %.lr.ph.preheader, label %.thread36

.lr.ph.preheader:                                 ; preds = %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread
  %i.s = zext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %indvars.iv) #17 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %.lr.ph, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.y, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !107
  %i.aa = icmp eq i64 %i.z, %.sroa.0.0.i
  br i1 %i.aa, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.ab = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.x, i64 %.sroa.0.0.i) #17
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.thread36, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 3 uses
  %.not.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i27, label %_ZN4llvm9StringRefC2EPKc.exit29, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit29

_ZN4llvm9StringRefC2EPKc.exit29:                  ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread, %bb.e
  %.sroa.0.0.i28 = phi i64 [ %i.af, %bb.e ], [ 0, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread ] ; 2 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !107
  %i.ah = icmp eq i64 %i.ag, %.sroa.0.0.i28
  br i1 %i.ah, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30: ; preds = %_ZN4llvm9StringRefC2EPKc.exit29
  %i.ai = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.ae, i64 %.sroa.0.0.i28) #17
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread36, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread: ; preds = %_ZN4llvm9StringRefC2EPKc.exit29, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.r
  br i1 %exitcond.not, label %.thread36, label %.lr.ph, !llvm.loop !104

.thread36:                                        ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread, %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread, %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit, %bb.a
  %.7 = phi ptr [ null, %bb.a ], [ %i.m, %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit ], [ null, %_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj.exit.thread ], [ %i.w, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30 ], [ %i.w, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit ], [ null, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit30.thread ]
  ret ptr %.7
}

declare noundef i32 @_ZN12lldb_private4Args23StringToGenericRegisterEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) #17 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.d to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.f) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private15RegisterContext15GetRegisterNameEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private15RegisterContext5GetPCEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
