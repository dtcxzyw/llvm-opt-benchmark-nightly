inline.NumInlined: 740
inline.NumDeleted: 441
begin_hunk_0_@_ZN6hermes2vm16SamplingProfiler22registerNativeFunctionEPNS0_14NativeFunctionE:bb.a
  br i1 %.not, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.ak = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.al = sub i64 %i.ak, %i.f
  %i.am = ashr exact i64 %i.al, 3
  br label %bb.p

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.d, %i.ao
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  store ptr %1, ptr %i.d, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !26
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE9push_backERKS3_.exit

bb.l:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN6hermes2vm14NativeFunctionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %i.aq = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.aq, label %bb.m, label %_ZNKSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #16
  unreachable

_ZNKSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ar = ashr exact i64 %i.g, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #17 ; 5 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.ay, align 8, !tbaa !21
  %i.az = icmp sgt i64 %i.g, 0
  br i1 %i.az, label %bb.n, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.b, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !27
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bb, ptr %i.an, align 8, !tbaa !24
  %.pre = ptrtoint ptr %i.ax to i64
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.k, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.pre-phi = phi i64 [ %i.f, %bb.k ], [ %.pre, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bc = phi ptr [ %i.ap, %bb.k ], [ %i.ba, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %.pre-phi
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = add nsw i64 %i.bf, -1
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE9push_backERKS3_.exit, %bb.j
  %.0 = phi i64 [ %i.am, %bb.j ], [ %i.bg, %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE9push_backERKS3_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SamplingProfiler27markRootsForCompleteMarkingERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %.not9 = icmp eq ptr %i.d, %i.f
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph
  %.sroa.05.010 = phi ptr [ %i.k, %.lr.ph ], [ %i.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.010) #19, !inline_history !30
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SamplingProfiler9markRootsERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #16
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %.not18 = icmp eq ptr %i.d, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %.not1720 = icmp eq ptr %i.h, %i.j
  br i1 %.not1720, label %._crit_edge24, label %.lr.ph23

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph
  %.sroa.013.019 = phi ptr [ %i.n, %.lr.ph ], [ %i.d, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.019) #19, !inline_history !30
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge24:                                    ; preds = %.lr.ph23, %._crit_edge
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #19 ; 0 uses
  ret void

.lr.ph23:                                         ; preds = %._crit_edge, %.lr.ph23
  %.sroa.09.021 = phi ptr [ %i.s, %.lr.ph23 ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.09.021) #19, !inline_history !31
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %i.s, %i.j
  br i1 %.not17, label %._crit_edge24, label %.lr.ph23
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm16SamplingProfiler16walkRuntimeStackERNS1_10StackTraceENS1_6InLoomEj(ptr noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(40) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32, !nonnull !66, !align !67 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 9432
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not6566 = icmp eq ptr %.sroa.0.0.copyload.i, %i.e
  br i1 %.not6566, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not46 = icmp eq i32 %2, 1                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !307
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread61
  %i.h = phi ptr [ %.pre, %.lr.ph ], [ %i.bh, %.thread61 ] ; 2 uses
  %.069 = phi i32 [ %3, %.lr.ph ], [ %.264, %.thread61 ] ; 3 uses
  %.03868 = phi ptr [ null, %.lr.ph ], [ %i.bi, %.thread61 ] ; 2 uses
  %.sroa.055.067 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.bl, %.thread61 ] ; 3 uses
  %i.i = zext i32 %.069 to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32, !nonnull !66, !align !67
  %i.l = getelementptr inbounds i8, ptr %.sroa.055.067, i64 -48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !308  ; 4 uses
  %i.n = icmp ugt i64 %i.m, -281474976710657
  br i1 %i.n, label %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit

_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.o = and i64 %i.m, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %4 = load i32, ptr %i.p, align 4
  %5 = add i32 %4, -1291845632
  %i.q = icmp ult i32 %5, -67108864
  br i1 %i.q, label %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !309
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 1520
  %i.u = load i64, ptr %i.t, align 8, !tbaa !311
  %i.v = xor i64 %i.u, %i.s
  br label %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit

_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit: ; preds = %bb.b, %bb.c
  %.1.i.in = phi i64 [ %i.v, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.1.i = inttoptr i64 %.1.i.in to ptr            ; 3 uses
  %.not = icmp eq i64 %.1.i.in, 0
  br i1 %.not, label %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit._ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread_crit_edge, label %bb.d

_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit._ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread_crit_edge: ; preds = %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit
  %.pre72 = and i64 %i.m, 281474976710655
  %.pre73 = inttoptr i64 %.pre72 to ptr
  br label %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread

bb.d:                                             ; preds = %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !312
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !315
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !318
  %i.aa = icmp eq ptr %.03868, null
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !319
  %i.ad = ptrtoint ptr %.03868 to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.e ], [ 0, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !318
  %i.aj = load ptr, ptr %.1.i, align 8, !tbaa !320 ; 3 uses
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !318
  br i1 %.not46, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !321, !nonnull !66, !align !67
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.aq
  tail call void @_ZN6hermes2vm16SamplingProfiler14registerDomainEPNS0_6DomainE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %i.ar)
  br label %bb.k

_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread: ; preds = %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit._ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread_crit_edge, %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i
  %.pre-phi74 = phi ptr [ %.pre73, %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit._ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread_crit_edge ], [ %i.p, %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i ] ; 3 uses
  %6 = load i32, ptr %.pre-phi74, align 4         ; 2 uses
  %7 = add i32 %6, -1157627904
  %i.as = icmp ult i32 %7, 67108864
  br i1 %i.as, label %bb.h, label %.thread61

bb.h:                                             ; preds = %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread
  %.mask.i.i.i.i.i.i.i = and i32 %6, 1325400064
  %i.at = icmp eq i32 %.mask.i.i.i.i.i.i.i, 1207959552
  %i.au = select i1 %i.at, i32 2, i32 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.au, ptr %i.av, align 8, !tbaa !312
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call noundef i64 @_ZN6hermes2vm16SamplingProfiler22registerNativeFunctionEPNS0_14NativeFunctionE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull %.pre-phi74)
  store i64 %i.aw, ptr %i.j, align 8, !tbaa !318
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre-phi74, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !343
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !318
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.az = add i32 %.069, 1                        ; 3 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !354
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !307 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 24
  %.not47 = icmp ugt i64 %i.bg, %i.ba
  br i1 %.not47, label %.thread61, label %._crit_edge

.thread61:                                        ; preds = %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread, %bb.k
  %i.bh = phi ptr [ %i.bc, %bb.k ], [ %i.h, %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread ]
  %.264 = phi i32 [ %i.az, %bb.k ], [ %.069, %_ZNK6hermes2vm14StackFramePtrTILb1EE18getCalleeCodeBlockERNS0_7RuntimeE.exit.thread ] ; 2 uses
  %.in.in = getelementptr inbounds i8, ptr %.sroa.055.067, i64 -16
  %.in = load i64, ptr %.in.in, align 8, !tbaa !308
  %i.bi = inttoptr i64 %.in to ptr
  %i.bj = getelementptr inbounds i8, ptr %.sroa.055.067, i64 -8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !308
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %.not65 = icmp eq ptr %i.e, %i.bl
  br i1 %.not65, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.k, %.thread61, %bb.a
  %.3 = phi i32 [ %3, %bb.a ], [ %.264, %.thread61 ], [ %i.az, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !355
  store i64 %i.bn, ptr %1, align 8, !tbaa !356
  %i.bo = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !311
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SamplingProfilerC2ERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 72)) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes2vm16SamplingProfilerE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  store volatile i32 0, ptr %i.b, align 8, !tbaa !357
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  store volatile i32 0, ptr %i.c, align 4, !tbaa !358
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 16, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(12000) ptr @_Znwm(i64 noundef 12000) #17 ; 11 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !307
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12000 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.h, align 8, !tbaa !359
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3, %bb.a
  %.06.i.i.i.i.i.i.i.i.i.i.idx = phi i64 [ 24, %bb.a ], [ %.06.i.i.i.i.i.i.i.i.i.i.add.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3 ] ; 5 uses
  %.06.i.i.i.i.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.06.i.i.i.i.i.i.i.i.i.i.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i.i.ptr, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !360
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.06.i.i.i.i.i.i.i.i.i.i.idx
  %.06.i.i.i.i.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i.i.ptr.1, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !360
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.06.i.i.i.i.i.i.i.i.i.i.idx
  %.06.i.i.i.i.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i.i.ptr.2, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !360
  %.06.i.i.i.i.i.i.i.i.i.i.add.2 = add nuw nsw i64 %.06.i.i.i.i.i.i.i.i.i.i.idx, 72 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %.06.i.i.i.i.i.i.i.i.i.i.add.2, 12000
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.2, label %_ZN6hermes2vm16SamplingProfiler10StackTraceC2Ej.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.i.i.i.3:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.f, i64 %.06.i.i.i.i.i.i.i.i.i.i.add.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i.i.ptr.3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !360
  %.06.i.i.i.i.i.i.i.i.i.i.add.3 = add nuw nsw i64 %.06.i.i.i.i.i.i.i.i.i.i.idx, 96
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZN6hermes2vm16SamplingProfiler10StackTraceC2Ej.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.k, align 8, !tbaa !354
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = tail call noundef i64 @_ZN6hermes8oscompat16global_thread_idEv() #19
  store i64 %i.n, ptr %i.m, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.p, ptr %i.o, align 8, !tbaa !362
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 1, ptr %i.q, align 8, !tbaa !363
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8, !tbaa !364
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i8 0, i64 64, i1 false)
  store ptr %1, ptr %i.u, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN6hermes8oscompat11thread_nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2) #19
  %i.v = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16FindAndConstructERKm(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !366  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = load ptr, ptr %2, align 8, !tbaa !366   ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab                ; 2 uses
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2Ej.exit
  br i1 %i.ac, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceC2Ej.exit
  br i1 %i.ac, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !367 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %.not21.i = icmp eq ptr %2, %i.w
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !368

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ae, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !318
  store i8 %i.ag, ptr %i.x, align 1, !tbaa !318
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ah = load i64, ptr %i.ad, align 8, !tbaa !367 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !367
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !366
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !318
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !366
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !366
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !318
  store <2 x i64> %i.an, ptr %i.al, align 8, !tbaa !318
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !318
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !366
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !318
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !318
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.x, ptr %2, align 8, !tbaa !366
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !318
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !366
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.as = phi ptr [ %i.x, %bb.f ], [ %i.ab, %bb.g ], [ %i.aa, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
end_hunk_0
