Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadPoolExecutor?download=true
inline.NumInlined: 1921
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5folly6detail8function13DispatchSmall4execISt5_BindIFMNS_18ThreadPoolExecutorEFvSt10shared_ptrINS5_6ThreadEEEPS5_S8_EEEEmNS1_2OpEPNS1_4DataESG_:bb.a
  store ptr null, ptr %i.e, align 8, !tbaa !312
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !313
  store ptr null, ptr %i.c, align 8, !tbaa !316
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !7703
  store i64 %i.i, ptr %i.g, align 8, !tbaa !7703
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !312  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !7678
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !7679
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !300
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #12, !call_target !534, !inline_history !7959
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !300
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #12, !call_target !535, !inline_history !7959
  br label %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !7661
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit, !prof !7705

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #12
  br label %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit

bb.j:                                             ; preds = %bb.a
  tail call void @abort() #38
  unreachable

_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvRMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEERPS1_JRS4_EET_St21__invoke_memfun_derefOT0_OT1_DpOT2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !7703
  %.unpack = load i64, ptr %0, align 8, !tbaa !7668 ; 3 uses
  %.elt4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack5 = load i64, ptr %.elt4, align 8, !tbaa !7668
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.unpack5 ; 2 uses
  %i.c = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !300
  %i.e = getelementptr i8, ptr %i.d, i64 %.unpack
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load ptr, ptr %i.f, align 8, !nosanitize !563
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %.unpack to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !312  ; 2 uses
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !313
  store <2 x ptr> %i.m, ptr %3, align 16, !tbaa !313
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEC2ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !7661
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !7661
  br label %_ZNSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEC2ERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEC2ERKS3_.exit: ; preds = %bb.d, %bb.f, %bb.g
  invoke void %i.i(ptr noundef nonnull align 64 dereferenceable(496) %i.b, ptr noundef nonnull align 8 %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEC2ERKS3_.exit
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !312  ; 8 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !7678
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !7679
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !300
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !call_target !534, !inline_history !282
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !300
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12, !call_target !535, !inline_history !282
  br label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i6 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !7661
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7705

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #12
  br label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEC2ERKS3_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #12
  resume { ptr, i32 } %i.ai
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #28

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly18ThreadPoolExecutor15tryAddOneThreadEv(ptr noundef nonnull align 64 dereferenceable(496) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %2 = alloca %"class.std::thread", align 8       ; 6 uses
  %3 = alloca %"class.folly::Function", align 16  ; 12 uses
  %4 = alloca %"class.std::_Bind", align 16       ; 7 uses
  %5 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %6 = alloca %"class.folly::basic_fbstring", align 8 ; 6 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = load ptr, ptr %0, align 64, !tbaa !300
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 64 dereferenceable(496) %0)
          to label %bb.b unwind label %bb.aa, !call_target !699

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7710 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !7962)
  store i64 105, ptr %4, align 16, !tbaa !7794, !alias.scope !7962
  %.repack6.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.repack6.i.i, align 8, !tbaa !7794, !alias.scope !7962
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !316, !noalias !7962 ; 3 uses
  store ptr %i.g, ptr %i.f, align 16, !tbaa !316, !alias.scope !7962
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !312, !noalias !7962 ; 4 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !312, !alias.scope !7962
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668, !noalias !7962
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !7661, !noalias !7962
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !7661, !noalias !7962
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !7962 ; 0 uses
  %i.p = load <2 x i64>, ptr %4, align 16, !tbaa !7794
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !316
  %.pre32 = load ptr, ptr %i.h, align 8, !tbaa !312
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.q = phi ptr [ %.pre32, %bb.e ], [ %i.j, %bb.d ], [ null, %bb.b ]
  %i.r = phi ptr [ %.pre, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.s = phi <2 x i64> [ %i.p, %bb.e ], [ <i64 105, i64 0>, %bb.d ], [ <i64 105, i64 0>, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %0, ptr %i.t, align 16, !tbaa !7795, !alias.scope !7962
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store <2 x i64> %i.s, ptr %3, align 16, !tbaa !7794
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.r, ptr %i.w, align 16, !tbaa !316
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !312
  store ptr %i.q, ptr %i.x, align 8, !tbaa !312
  store ptr null, ptr %i.f, align 16, !tbaa !316
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = ptrtoint ptr %0 to i64
  store i64 %i.z, ptr %i.y, align 16, !tbaa !7703
  store ptr @_ZN5folly6detail8function5call_ISt5_BindIFMNS_18ThreadPoolExecutorEFvSt10shared_ptrINS4_6ThreadEEEPS4_S7_EELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.u, align 16, !tbaa !7738
  store ptr @_ZN5folly6detail8function13DispatchSmall4execISt5_BindIFMNS_18ThreadPoolExecutorEFvSt10shared_ptrINS5_6ThreadEEEPS5_S8_EEEEmNS1_2OpEPNS1_4DataESG_, ptr %i.v, align 8, !tbaa !7739
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !300
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.std::thread") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3)
          to label %bb.g unwind label %bb.j, !call_target !7799

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %1, align 8, !tbaa !316
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ae, align 8, !tbaa !7652
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #38
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.g
  %i.af = load i64, ptr %2, align 8, !tbaa !7652
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !7652
  store i64 0, ptr %2, align 8, !tbaa !7652
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !7739 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6threadD2Ev.exit
  %i.ah = call noundef i64 %i.ag(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #12, !inline_history !280 ; 0 uses
  br label %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit

_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit: ; preds = %bb.i, %_ZNSt6threadD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @_ZN5folly18ThreadPoolExecutor21afterConstructThreadsESt4spanIKSt10shared_ptrINS0_6ThreadEELm18446744073709551615EE(ptr noundef nonnull align 64 dereferenceable(496) %0, ptr nonnull %1, i64 1) #12
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !7739 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i17, label %_ZN5folly8FunctionIFvvEED2Ev.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = call noundef i64 %i.aj(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #12, !inline_history !280 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit18

_ZN5folly8FunctionIFvvEED2Ev.exit18:              ; preds = %bb.j, %bb.k
  call void @_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #12
  %.010 = extractvalue { ptr, i32 } %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.al = call ptr @__cxa_begin_catch(ptr %.010) #12 ; 0 uses
  %i.am = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %i.an = sdiv i64 %i.am, 1000000                 ; 2 uses
  %8 = load atomic i64, ptr @_ZZN5folly18ThreadPoolExecutor15tryAddOneThreadEvE11FB_LEM_hist acquire, align 8 ; 2 uses
  %9 = sub nsw i64 %i.an, %8
  %10 = icmp slt i64 %9, 1000
  br i1 %10, label %.critedge.critedge, label %bb.l

.critedge.critedge:                               ; preds = %bb.l, %_ZN5folly8FunctionIFvvEED2Ev.exit18, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.aa

bb.l:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit18
  %i.ao = cmpxchg ptr @_ZZN5folly18ThreadPoolExecutor15tryAddOneThreadEvE11FB_LEM_hist, i64 %8, i64 %i.an seq_cst seq_cst, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %bb.m, label %.critedge.critedge

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.3, i32 noundef 316, i32 noundef 2)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.o unwind label %bb.aa      ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.16, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #12
  invoke void @_ZN5folly12exceptionStrERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind nonnull writable sret(%"class.folly::basic_fbstring") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.q unwind label %bb.aa      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.at = load i8, ptr %11, align 1, !tbaa !7668
  %i.au = icmp ult i8 %i.at, 64
  br i1 %i.au, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %bb.q, %bb.r
  %i.av = load ptr, ptr %7, align 8, !tbaa !7964
  %.not.i19 = icmp eq ptr %i.av, null
  br i1 %.not.i19, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.critedge.critedge

bb.t:                                             ; preds = %.critedge.critedge, %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit
  %.011 = phi i1 [ true, %_ZNSt5_BindIFMN5folly18ThreadPoolExecutorEFvSt10shared_ptrINS1_6ThreadEEEPS1_S4_EED2Ev.exit ], [ false, %.critedge.critedge ]
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !312 ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ax, align 8, !tbaa !7678
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !7679
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !300
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #12, !call_target !534, !inline_history !282
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !300
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #12, !call_target !535, !inline_history !282
  br label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !7661
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.ba, %bb.x ], [ %i.bk, %bb.y ]
  %i.bl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bl, label %bb.z, label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !7705

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #12
  br label %_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly18ThreadPoolExecutor6ThreadELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %.011

bb.aa:                                            ; preds = %bb.o, %.critedge.critedge, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n, %bb.m, %bb.a
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %i.bm) #38
  unreachable
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEERSt13basic_ostreamINS_14basic_fbstringIT_T0_T1_T2_E10value_typeENSC_11traits_typeEESG_RKSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #20 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7668
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.c = load i8, ptr %i.b, align 1, !tbaa !7668  ; 3 uses
  %i.d = icmp ult i8 %i.c, 64
  %i.e = select i1 %i.d, ptr %1, ptr %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7668
  %i.h = zext i8 %i.c to i64
  %i.i = sub nsw i64 23, %i.h
  %i.j = icmp ult i8 %i.c, 24
  %i.k = select i1 %i.j, i64 %i.i, i64 %i.g
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.k) ; 0 uses
  ret ptr %0
}

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZN5folly12exceptionStrERKNSt15__exception_ptr13exception_ptrE(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7668
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !7668   ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #12
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EERS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::vector<std::shared_ptr<folly::ThreadPoolExecutor::Thread>>::_Temporary_value", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7669   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7720 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7721
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !312  ; 2 uses
  %i.l = load <2 x ptr>, ptr %2, align 8, !tbaa !313
  store <2 x ptr> %i.l, ptr %i.f, align 8, !tbaa !313
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !tbaa !7661
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !7661
  br label %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !7720
  br label %_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit

_ZSt12construct_atISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEEJRKS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS8_DpOS9_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.r = phi ptr [ %i.f, %bb.c ], [ %i.f, %bb.e ], [ %.pre, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.e, align 8, !tbaa !7720
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !7967
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !312  ; 2 uses
  %i.y = load <2 x ptr>, ptr %2, align 8, !tbaa !313
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !313
  %.not.i.i.i.i.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i8, label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !7661
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !7661
  br label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit: ; preds = %bb.g, %bb.i, %bb.j
  invoke void @_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE13_M_insert_auxIS4_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueC2IJRKS4_EEEPS6_DpOT_.exit
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !312 ; 8 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i9, label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !7678
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !7679
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !300
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #12, !call_target !534, !inline_history !7965
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !300
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #12, !call_target !535, !inline_history !7965
  br label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7668
  %.not.i.i.i.i.i10 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i10, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !7661
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.q, label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueD2Ev.exit, !prof !7705

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #12
  br label %_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueD2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5folly18ThreadPoolExecutor6ThreadEESaIS4_EE16_Temporary_valueD2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
end_hunk_0
