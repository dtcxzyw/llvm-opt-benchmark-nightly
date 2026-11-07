Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOObjectFile?download=true
inline.NumInlined: 6417
inline.NumDeleted: 1696
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3sys2fs18directory_iteratorC2ERKNS_5TwineERSt10error_codeb:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !4791
  store ptr %i.h, ptr %i.g, align 8, !tbaa !122, !noalias !4791
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 9, ptr %i.i, align 8, !tbaa !4793, !noalias !4791
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i8 1, ptr %i.j, align 4, !tbaa !4794, !noalias !4791
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 44, i1 false), !noalias !4791
  store i32 65535, ptr %i.l, align 4, !tbaa !291, !noalias !4791
  store ptr %i.f, ptr %0, align 8, !tbaa !4795
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !300  ; 8 uses
  store ptr %i.c, ptr %i.m, align 8, !tbaa !300
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.o, align 8, !tbaa !298
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !299
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !4789
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27, !inline_history !4789
  br label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.g, label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !149

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #27
  br label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 128, ptr %i.af, align 8, !tbaa !118
  %i.ag = load ptr, ptr %0, align 8, !tbaa !286
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !71
  %.not.i.i5 = icmp eq i8 %i.ai, 1
  br i1 %.not.i.i5, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !70
  switch i8 %i.ak, label %bb.m [
    i8 1, label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.i
    i8 4, label %bb.k
    i8 5, label %bb.l
    i8 6, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %1, align 8, !tbaa !72    ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i6, label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #27
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.k:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !124
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.ar = load ptr, ptr %1, align 8, !tbaa !72
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !72
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.m:                                             ; preds = %bb.h, %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(24) %4) #27
  %i.au = load ptr, ptr %4, align 8, !tbaa !119
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !117
  br label %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.3.0.i = phi i64 [ %i.av, %bb.m ], [ %i.at, %bb.l ], [ 0, %bb.h ], [ %i.aq, %bb.k ], [ 0, %bb.i ], [ %i.am, %bb.j ]
  %.sroa.0.0.i = phi ptr [ %i.au, %bb.m ], [ %i.ar, %bb.l ], [ null, %bb.h ], [ %i.ao, %bb.k ], [ null, %bb.i ], [ %i.al, %bb.j ]
  %i.aw = load i8, ptr %i.b, align 8, !tbaa !285, !range !95, !noundef !96
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = call { i32, ptr } @_ZN4llvm3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 noundef zeroext %i.ax) #27 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0
  %i.ba = extractvalue { i32, ptr } %i.ay, 1
  store i32 %i.az, ptr %2, align 8, !tbaa !73
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !295
  %i.bb = load ptr, ptr %4, align 8, !tbaa !119   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ad
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  call void @free(ptr noundef %i.bb) #27
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZNK4llvm5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare { i32, ptr } @_ZN4llvm3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb(ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3sys2fs18directory_iteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !300  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !298
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !299
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !4796
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !4796
  br label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !149

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm3sys2fs6detail12DirIterStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 12) i32 @_ZNK4llvm6object15MachOObjectFile35mapReflectionSectionNameToEnumValueENS_9StringRefE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  switch i64 %2, label %bb.j [
    i64 16, label %bb.b
    i64 14, label %bb.g
    i64 15, label %bb.h
    i64 11, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i128, ptr %1, align 1
  %i.b = icmp ne i128 %i.a, 133490796765059206850170528851031187295
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i128, ptr %1, align 1
  %i.e = icmp ne i128 %i.d, 161440910714171923649535342330271457119
  %i.f = zext i1 %i.e to i32
  %.not.i.i8 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i8, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i128, ptr %1, align 1
  %i.h = icmp ne i128 %i.g, 146762632055280312955076084970953072479
  %i.i = zext i1 %i.h to i32
  %.not.i.i16 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i16, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i128, ptr %1, align 1
  %i.k = icmp ne i128 %i.j, 134846331683320008588107326358220398431
  %i.l = zext i1 %i.k to i32
  %.not.i.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i24, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i128, ptr %1, align 1
  %i.n = icmp ne i128 %i.m, 136107997784321817532764861105469349727
  %i.o = zext i1 %i.n to i32
  %.not.i.i32 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %.thread199

.thread199:                                       ; preds = %bb.f
  %i.p = load i128, ptr %1, align 1
  %i.q = icmp ne i128 %i.p, 152136639020506533614220581365798362975
  %i.r = zext i1 %i.q to i32
  %.not.i.i40 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i40, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit58.thread278

bb.g:                                             ; preds = %bb.a
  %i.s = load i64, ptr %1, align 1
  %i.t = xor i64 %i.s, 3851816184470265695
  %i.u = getelementptr i8, ptr %1, i64 6
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 8031166572810679668
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i.i48 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i48, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %1, align 1
  %i.ab = xor i64 %i.aa, 3851816184470265695
  %i.ac = getelementptr i8, ptr %1, i64 7
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 8317995058786754357
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i56 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i56, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit66.thread.thread290

_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit58.thread278: ; preds = %.thread199
  %i.ai = load i128, ptr %1, align 1
  %i.aj = icmp ne i128 %i.ai, 153377497270699303655596850551803043679
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i64 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i64, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.j

_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit66.thread.thread290: ; preds = %bb.h
  %i.al = load i64, ptr %1, align 1
  %i.am = xor i64 %i.al, 3851816184470265695
  %i.an = getelementptr i8, ptr %1, i64 7
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 7887331704366260021
  %i.aq = or i64 %i.am, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not.i.i72 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i72, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.at = load i64, ptr %1, align 1
  %i.au = xor i64 %i.at, 6878235134063239007
  %i.av = getelementptr i8, ptr %1, i64 3
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 8391157593324022135
  %i.ay = or i64 %i.au, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %.not.i.i80 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i80, label %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread, label %bb.j

_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread: ; preds = %bb.d, %.thread199, %bb.f, %bb.e, %bb.h, %bb.c, %bb.b, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit66.thread.thread290, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit58.thread278, %bb.i, %bb.g
  %.sroa.26.10.ph = phi i32 [ 10, %bb.i ], [ 8, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit58.thread278 ], [ 9, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit66.thread.thread290 ], [ 2, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ], [ 7, %bb.h ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %.thread199 ], [ 6, %bb.g ]
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit58.thread278, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit66.thread.thread290, %bb.a, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread
  %3 = phi i32 [ %.sroa.26.10.ph, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit82.thread ], [ 11, %bb.a ], [ 11, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit66.thread.thread290 ], [ 11, %_ZN4llvm12StringSwitchINS_12binaryformat27Swift5ReflectionSectionKindES2_E4CaseENS_13StringLiteralES2_.exit58.thread278 ], [ 11, %bb.i ], [ 11, %bb.g ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm6object15MachOObjectFile18isMachOPairedRelocEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  switch i64 %1, label %switch.edge [
    i64 40, label %bb.b
    i64 41, label %bb.c
    i64 1, label %bb.d
    i64 38, label %bb.d
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %0, 2
  %i.b = icmp eq i64 %0, 4
  %i.c = or i1 %i.a, %i.b
  br label %switch.edge

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 5
  br label %switch.edge

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.e = icmp ult i64 %0, 10
  br i1 %i.e, label %switch.lookup, label %switch.edge

bb.e:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %0, 1
  br label %switch.edge

switch.lookup:                                    ; preds = %bb.d
  %switch.cast = trunc nuw i64 %0 to i10
  %switch.downshift = lshr i10 -244, %switch.cast
  %switch.masked = trunc i10 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %bb.d, %switch.lookup, %bb.a, %bb.e, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %switch.masked, %switch.lookup ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6object15MachOObjectFileD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTVN4llvm6object15MachOObjectFileE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm6object17BindRebaseSegInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt14default_deleteIN4llvm6object17BindRebaseSegInfoEEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.c) #27
  br label %_ZNKSt14default_deleteIN4llvm6object17BindRebaseSegInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm6object17BindRebaseSegInfoEEclEPS2_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 2328) #30
  br label %_ZNSt10unique_ptrIN4llvm6object17BindRebaseSegInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object17BindRebaseSegInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm6object17BindRebaseSegInfoEEclEPS2_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorINS_9StringRefELj1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm6object17BindRebaseSegInfoESt14default_deleteIS2_EED2Ev.exit
  tail call void @free(ptr noundef %i.g) #27
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm6object17BindRebaseSegInfoESt14default_deleteIS2_EED2Ev.exit, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj1EED2Ev.exit
  tail call void @free(ptr noundef %i.k) #27
  br label %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit

_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj1EED2Ev.exit, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorINS_6object15MachOObjectFile15LoadCommandInfoELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit
  tail call void @free(ptr noundef %i.o) #27
  br label %_ZN4llvm11SmallVectorINS_6object15MachOObjectFile15LoadCommandInfoELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_6object15MachOObjectFile15LoadCommandInfoELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit1, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_6object15MachOObjectFile15LoadCommandInfoELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.s) #27
  br label %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit1

_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit1:         ; preds = %_ZN4llvm11SmallVectorINS_6object15MachOObjectFile15LoadCommandInfoELj4EED2Ev.exit, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit2, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit1
  tail call void @free(ptr noundef %i.w) #27
  br label %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit2

_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit2:         ; preds = %_ZN4llvm11SmallVectorIPKcLj1EED2Ev.exit1, %bb.h
  tail call void @_ZN4llvm6object12SymbolicFileD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6object15MachOObjectFileD0Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm6object15MachOObjectFileD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 360) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6object6Binary11initContentEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !28
  ret void
}

declare void @_ZNK4llvm6object10ObjectFile15printSymbolNameERNS_11raw_ostreamENS0_11DataRefImplE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), i64) unnamed_addr #3

declare void @_ZN4llvm6object10ObjectFile6anchorEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm6object10ObjectFile14isBerkeleyTextENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(48), i64) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm6object10ObjectFile14isBerkeleyDataENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(48), i64) unnamed_addr #3

declare void @_ZNK4llvm6object10ObjectFile19getRelocatedSectionENS0_11DataRefImplE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.45") align 8, ptr noundef nonnull align 8 dereferenceable(48), i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6object10ObjectFile27dynamic_relocation_sectionsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.183") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm6object10ObjectFile12hasDebugInfoEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm6object10ObjectFile5getOSEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6object15MachOObjectFile11getFeaturesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.188") align 8 %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm17SubtargetFeaturesD2Ev.exit:
  %2 = alloca %"class.llvm::SubtargetFeatures", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4llvm17SubtargetFeaturesC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull @.str.340, i64 0) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 8
  %i.d = load <2 x ptr>, ptr %2, align 16, !tbaa !272
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !294
  store ptr %i.g, ptr %i.e, align 8, !tbaa !294
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6object10ObjectFile13tryGetCPUNameEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.158") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !4798
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm6object10ObjectFile13setARMSubArchERNS_6TripleE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
