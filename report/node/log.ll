inline.NumInlined: 3570
inline.NumDeleted: 1632
begin_hunk_0_@_ZN2v88internal6Logger11AddListenerEPNS0_16LogEventListenerE:bb.a
bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #33
  unreachable

_ZNKSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aq = ashr exact i64 %i.g, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #31 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.ax, align 8
  %i.ay = icmp sgt i64 %i.g, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.b, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.aw, ptr %0, align 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.al, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.bb = phi i1 [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ true, %bb.j ], [ true, %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  ret i1 %i.bb
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6Logger14RemoveListenerEPNS0_16LogEventListenerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  %i.b = load ptr, ptr %0, align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.w = add nsw i64 %.052.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.e, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.y, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.032.1.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.ag = icmp eq ptr %i.af, %1
  %spec.select.i.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i.i, ptr %i.d
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit27: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit29: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit27, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit29, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.g ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit29 ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit27 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.b ] ; 2 uses
  %i.ak = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  br i1 %i.ak, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.al = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.am = sub i64 %i.al, %i.f
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.e, %i.aq                     ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 8
  br i1 %i.as, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr nonnull align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.at = icmp eq i64 %i.ar, 8
  br i1 %i.at, label %bb.n, label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.ao, align 8
  store ptr %i.au, ptr %i.an, align 8
  br label %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit: ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  store ptr %i.aw, ptr %i.c, align 8
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit
  %.0 = phi i1 [ true, %_ZNSt6vectorIPN2v88internal16LogEventListenerESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit ], [ false, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN2v88internal16LogEventListenerESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ false, %._crit_edge.i.i.i ]
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #30
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = load i64, ptr %2, align 8                ; 5 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.g = add i64 %i.f, 11
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i16, ptr %i.h monotonic, align 2
  %i.j = icmp eq i16 %i.i, 185
  %i.k = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.l = add i64 %i.k, 11
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i16, ptr %i.m monotonic, align 2 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i16 %i.n, 185
  br i1 %i.o, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i:   ; preds = %bb.b
  %i.p = add i64 %i.c, 39
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

bb.d:                                             ; preds = %bb.a
  %i.s = icmp eq i16 %i.n, 184
  br i1 %i.s, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i: ; preds = %bb.d
  %i.t = add i64 %i.c, 63
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  %.0.i = phi i64 [ %i.r, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i ], [ %i.t, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i, ptr %i.u, align 8
  %i.v = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = icmp eq i16 %i.y, 185
  %i.aa = load atomic volatile i64, ptr %i.e monotonic, align 8
  %i.ab = add i64 %i.aa, 11
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i16, ptr %i.ac monotonic, align 2 ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.ae = icmp eq i16 %i.ad, 185
  br i1 %i.ae, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7:  ; preds = %bb.f
  %i.af = add i64 %i.c, 55
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i32, ptr %i.ag, align 4
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

bb.h:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.ai = icmp eq i16 %i.ad, 184
  br i1 %i.ai, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5: ; preds = %bb.h
  %i.aj = add i64 %i.c, 7
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = lshr i64 %i.al, 32
  %i.an = trunc nuw i64 %i.am to i32
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5
  %.0.i6 = phi i32 [ %i.ah, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7 ], [ %i.an, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5 ]
  %i.ao = sext i32 %.0.i6 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 688
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  store i64 %i.as, ptr %i.b, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.av, align 4
  %i.aw = icmp ult i8 %1, 12
  br i1 %i.aw, label %switch.lookup, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.119) #33
  unreachable

switch.lookup:                                    ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  %i.ax = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_4NameEEEii, i64 %i.ax
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %switch.ext, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %3, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_4NameEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.b, ptr %3) #30 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.134) #33
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load i64, ptr %2, align 8                ; 5 uses
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 185
  %i.n = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %i.r = icmp eq i16 %i.q, 185
  br i1 %i.r, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i:   ; preds = %bb.c
  %i.s = add i64 %i.f, 39
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %i.v = icmp eq i16 %i.q, 184
  br i1 %i.v, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i: ; preds = %bb.e
  %i.w = add i64 %i.f, 63
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  %.0.i = phi i64 [ %i.u, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i ], [ %i.w, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i, ptr %i.x, align 8
  %i.y = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 185
  %i.ad = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.ah = icmp eq i16 %i.ag, 185
  br i1 %i.ah, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i8, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i8:  ; preds = %bb.g
  %i.ai = add i64 %i.f, 55
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

bb.i:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.al = icmp eq i16 %i.ag, 184
  br i1 %i.al, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i6, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i6: ; preds = %bb.i
  %i.am = add i64 %i.f, 7
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i8, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i6
  %.0.i7 = phi i32 [ %i.ak, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i8 ], [ %i.aq, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i6 ]
  %i.ar = sext i32 %.0.i7 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ar, ptr %i.as, align 8
  store ptr %i.c, ptr %i.e, align 8
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 688
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aw = ptrtoint ptr %i.au to i64
  store i64 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.ay, align 4
  %i.az = icmp ult i8 %1, 12
  br i1 %i.az, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.119) #33
  unreachable

switch.lookup:                                    ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  %i.ba = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_4NameEEEii, i64 %i.ba
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %switch.ext, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.13, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_4NameEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.b, ptr %4) #30 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.134) #33
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load i64, ptr %2, align 8                ; 5 uses
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 185
  %i.n = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %i.r = icmp eq i16 %i.q, 185
  br i1 %i.r, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i:   ; preds = %bb.c
  %i.s = add i64 %i.f, 39
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

bb.e:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %i.v = icmp eq i16 %i.q, 184
  br i1 %i.v, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i: ; preds = %bb.e
  %i.w = add i64 %i.f, 63
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  %.0.i = phi i64 [ %i.u, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i ], [ %i.w, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0.i, ptr %i.x, align 8
  %i.y = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 185
  %i.ad = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.ah = icmp eq i16 %i.ag, 185
  br i1 %i.ah, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i9, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i9:  ; preds = %bb.g
  %i.ai = add i64 %i.f, 55
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i32, ptr %i.aj, align 4
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

bb.i:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.al = icmp eq i16 %i.ag, 184
  br i1 %i.al, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i7, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i7: ; preds = %bb.i
  %i.am = add i64 %i.f, 7
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i9, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i7
  %.0.i8 = phi i32 [ %i.ak, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i9 ], [ %i.aq, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i7 ]
  %i.ar = sext i32 %.0.i8 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ar, ptr %i.as, align 8
  store ptr %i.c, ptr %i.e, align 8
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 688
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aw = ptrtoint ptr %i.au to i64
  store i64 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.ay, align 4
  %i.az = icmp ult i8 %1, 12
  br i1 %i.az, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.119) #33
  unreachable

switch.lookup:                                    ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  %i.ba = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_4NameEEEii, i64 %i.ba
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %switch.ext, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @.str.13, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_4NameEEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef zeroext %1, ptr nofree readonly captures(none) %2, ptr nofree readonly captures(none) %3, ptr %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1233", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1233", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1233", align 8 ; 4 uses
  %10 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %3, align 8
  %i.d = add i64 %i.c, 23
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8 ; 4 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp eq i16 %i.m, 284
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i

bb.b:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i64 %i.f, ptr %7, align 8
  %i.o = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %i.o, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i, label %bb.c

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i: ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i

bb.c:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i, %bb.b
  %i.p = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10624
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.t = load i64, ptr %i.s, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i, %bb.b, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.u = load atomic volatile i64, ptr %i.e acquire, align 8 ; 6 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i
  %i.w = add nsw i64 %i.u, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = icmp eq i16 %i.ab, 284
  br i1 %i.ac, label %bb.d, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

bb.d:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store i64 %i.u, ptr %8, align 8
  %i.ad = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i64 %i.u, ptr %9, align 8
  %i.ae = call i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10624
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.aj = load i64, ptr %i.ai, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZNK2v88internal18SharedFunctionInfo4NameEv.exit: ; preds = %bb.c, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.e, %bb.f
  %.sroa.014.1.i = phi i64 [ %i.t, %bb.c ], [ %i.ae, %bb.e ], [ %i.aj, %bb.f ], [ %i.u, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.u, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i ]
  %i.ak = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 560 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 568
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !7

bb.g:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit
  %i.aq = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.ak) #30
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit, %bb.g
  %.0.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.am, %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit ] ; 3 uses
  %i.ar = ptrtoint ptr %.0.i.i to i64
  %i.as = add i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.al, align 8
  store i64 %.sroa.014.1.i, ptr %.0.i.i, align 8
  %i.au = call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.b, ptr nonnull %.0.i.i) #30 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.h, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit10, !prof !7

bb.h:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.134) #33
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit10: ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = call ptr @_ZN2v88internal4Name14ToFunctionNameEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.aw, ptr %4) #30 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.i, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !7

bb.i:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit10
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.134) #33
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ba = load i64, ptr %2, align 8               ; 5 uses
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr               ; 4 uses
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 11
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i16, ptr %i.bf monotonic, align 2
  %i.bh = icmp eq i16 %i.bg, 185
  %i.bi = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bj = add i64 %i.bi, 11
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i16, ptr %i.bk monotonic, align 2 ; 2 uses
  br i1 %i.bh, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %i.bm = icmp eq i16 %i.bl, 185
  br i1 %i.bm, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i:   ; preds = %bb.j
  %i.bn = add i64 %i.ba, 39
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.bo, align 8
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

bb.l:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  %i.bq = icmp eq i16 %i.bl, 184
  br i1 %i.bq, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i: ; preds = %bb.l
  %i.br = add i64 %i.ba, 63
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  %.0.i = phi i64 [ %i.bp, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i ], [ %i.br, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.0.i, ptr %i.bs, align 8
  %i.bt = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bu = add i64 %i.bt, 11
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i16, ptr %i.bv monotonic, align 2
  %i.bx = icmp eq i16 %i.bw, 185
  %i.by = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.bz = add i64 %i.by, 11
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load atomic volatile i16, ptr %i.ca monotonic, align 2 ; 2 uses
  br i1 %i.bx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.cc = icmp eq i16 %i.cb, 185
  br i1 %i.cc, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i15, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i15: ; preds = %bb.n
  %i.cd = add i64 %i.ba, 55
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load i32, ptr %i.ce, align 4
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

bb.p:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.cg = icmp eq i16 %i.cb, 184
  br i1 %i.cg, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i13, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i13: ; preds = %bb.p
  %i.ch = add i64 %i.ba, 7
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = lshr i64 %i.cj, 32
  %i.cl = trunc nuw i64 %i.ck to i32
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i15, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i13
  %.0.i14 = phi i32 [ %i.cf, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i15 ], [ %i.cl, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i13 ]
  %i.cm = sext i32 %.0.i14 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.cm, ptr %i.cn, align 8
  store ptr %i.au, ptr %i.az, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.ax, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %5, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %6, ptr %i.cq, align 4
  %i.cr = icmp ult i8 %1, 12
  br i1 %i.cr, label %switch.lookup, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.119) #33
  unreachable

switch.lookup:                                    ; preds = %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit
  %i.cs = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagENS0_12DirectHandleINS0_12AbstractCodeEEENS4_INS0_18SharedFunctionInfoEEENS4_INS0_4NameEEEii, i64 %i.cs
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %switch.ext, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @.str.13, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener15CodeCreateEventENS0_16LogEventListener7CodeTagEPKNS0_4wasm8WasmCodeENS_4base6VectorIKcEESt17basic_string_viewIcSt11char_traitsIcEEii(ptr nofree nonnull readnone align 8 captures(none) %0, i8 zeroext %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4, ptr nofree noundef readnone byval(%"class.std::basic_string_view") align 8 captures(none) %5, i32 %6, i32 %7) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener21RegExpCodeCreateEventENS0_12DirectHandleINS0_12AbstractCodeEEENS2_INS0_6StringEEENS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %1, ptr %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 185
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i16 %i.l, 185
  br i1 %i.m, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i:   ; preds = %bb.b
  %i.n = add i64 %i.a, 39
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

bb.d:                                             ; preds = %bb.a
  %i.q = icmp eq i16 %i.l, 184
  br i1 %i.q, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i: ; preds = %bb.d
  %i.r = add i64 %i.a, 63
  br label %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i
  %.0.i = phi i64 [ %i.p, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i ], [ %i.r, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i, ptr %i.s, align 8
  %i.t = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 185
  %i.y = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2 ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.ac = icmp eq i16 %i.ab, 185
  br i1 %i.ac, label %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7:  ; preds = %bb.f
  %i.ad = add i64 %i.a, 55
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i32, ptr %i.ae, align 4
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

bb.h:                                             ; preds = %_ZN2v88internal12AbstractCode16InstructionStartENS0_16PtrComprCageBaseE.exit
  %i.ag = icmp eq i16 %i.ab, 184
  br i1 %i.ag, label %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.117) #33
  unreachable

_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5: ; preds = %bb.h
  %i.ah = add i64 %i.a, 7
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32
  br label %_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit

_ZN2v88internal12AbstractCode15InstructionSizeENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5
  %.0.i6 = phi i32 [ %i.af, %_ZN2v88internal12AbstractCode7GetCodeEv.exit.i7 ], [ %i.al, %_ZN2v88internal12AbstractCode16GetBytecodeArrayEv.exit.i5 ]
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = sext i32 %.0.i6 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.an, ptr %i.ao, align 8
  store ptr %2, ptr %5, align 8
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 688
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = ptrtoint ptr %i.aq to i64
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 9, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.13, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener13CodeMoveEventENS0_6TaggedINS0_17InstructionStreamEEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = add i64 %1, 31
  %i.e = add i64 %2, 31
  %i.f = add i64 %2, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8
  %i.i = add i64 %i.h, 55
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.m, align 8
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  store i64 %i.q, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 12, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.13, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24ExternalLogEventListener17BytecodeMoveEventENS0_6TaggedINS0_13BytecodeArrayEEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::CodeEvent", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = add i64 %1, 63
  %i.e = add i64 %2, 63
  %i.f = add i64 %2, 7
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %i.k = ashr i64 %i.h, 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  store i64 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 12, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.13, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14LowLevelLoggerC2EPNS0_7IsolateEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.d = tail call noalias noundef nonnull dereferenceable(4104) ptr @_Znwm(i64 noundef 4104) #31, !noalias !31 ; 2 uses
  store i64 0, ptr %i.d, align 8, !noalias !31
  store ptr %i.d, ptr %i.c, align 8, !alias.scope !31
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN2v88internal14LowLevelLoggerE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr null, ptr %i.e, align 8
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #34 ; 4 uses
  %i.g = shl i64 %i.f, 32
  %sext = add i64 %i.g, 17179869184
  %i.h = ashr exact i64 %sext, 32
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #31 ; 20 uses
  switch i64 %i.f, label %bb.r [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.n
    i64 14, label %bb.o
    i64 15, label %bb.p
    i64 16, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %2, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i16, ptr %2, align 1
  store i16 %i.k, ptr %i.i, align 1
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 3, i1 false)
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 1
  store i32 %i.l, ptr %i.i, align 1
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) %2, i64 5, i1 false)
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.i, ptr noundef nonnull align 1 dereferenceable(6) %2, i64 6, i1 false)
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.i, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 7, i1 false)
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.i:                                             ; preds = %bb.a
  %i.m = load i64, ptr %2, align 1
  store i64 %i.m, ptr %i.i, align 1
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.i, ptr noundef nonnull align 1 dereferenceable(9) %2, i64 9, i1 false)
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.i, ptr noundef nonnull align 1 dereferenceable(10) %2, i64 10, i1 false)
  br label %_ZN2v84base12ScopedVectorIcED2Ev.exit

end_hunk_0
