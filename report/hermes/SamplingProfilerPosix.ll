inline.NumInlined: 314
inline.NumDeleted: 209
begin_hunk_0_@_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosix22profilingSignalHandlerEi:bb.a

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #18    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = load atomic ptr, ptr @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosix9instance_E.0 seq_cst, align 8 ; 2 uses
  tail call void @_ZN6hermes2vm17sampling_profiler7Sampler16walkRuntimeStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull %i.a) #15
  store atomic ptr null, ptr @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosix15profilerForSig_E.0 seq_cst, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.f = tail call noundef zeroext i1 @_ZN6hermes9Semaphore9notifyOneEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #15
  store i32 %i.c, ptr %i.b, align 4, !tbaa !3
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @_ZN6hermes2vm17sampling_profiler7Sampler16walkRuntimeStackEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN6hermes9Semaphore9notifyOneEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare void @_ZN6hermes2vm16SamplingProfilerC2ERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(9816)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD2Ev(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = load atomic i8, ptr @_ZGVZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm17sampling_profiler7Sampler3getEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN6hermes2vm17sampling_profiler7Sampler3getEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #16 ; 2 uses
  tail call fastcc void @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosixC2Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  store ptr %i.d, ptr @_ZZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance, align 8, !tbaa !8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance) #15
  br label %_ZN6hermes2vm17sampling_profiler7Sampler3getEv.exit

_ZN6hermes2vm17sampling_profiler7Sampler3getEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr @_ZZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance, align 8, !tbaa !8
  tail call void @_ZN6hermes2vm17sampling_profiler7Sampler17unregisterRuntimeEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull %0) #15
  tail call void @_ZN6hermes2vm16SamplingProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD0Ev(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = load atomic i8, ptr @_ZGVZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD2Ev.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance) #15, !inline_history !96
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #16, !inline_history !96 ; 2 uses
  tail call fastcc void @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosixC2Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.d), !inline_history !96
  store ptr %i.d, ptr @_ZZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance, align 8, !tbaa !8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance) #15, !inline_history !96
  br label %_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD2Ev.exit

_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr @_ZZN6hermes2vm17sampling_profiler7Sampler3getEvE8instance, align 8, !tbaa !8
  tail call void @_ZN6hermes2vm17sampling_profiler7Sampler17unregisterRuntimeEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(272) %0) #15, !inline_history !96
  tail call void @_ZN6hermes2vm16SamplingProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(272) %0) #15, !inline_history !96
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #20
  ret void
}

declare void @_ZN6hermes2vm17sampling_profiler7Sampler17unregisterRuntimeEPNS0_16SamplingProfilerE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm16SamplingProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6hermes2vm16SamplingProfilerE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.r, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.q, %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EED2Ev.exit ] ; 4 uses
  %i.r = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !89   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #20
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !103

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt6vectorIPN6hermes2vm6DomainESaIS3_EED2Ev.exit
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !105
  %i.ab = shl i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.af = load i64, ptr %i.z, align 8, !tbaa !105
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %.pre1.i = load ptr, ptr %i.ah, align 8, !tbaa !107 ; 3 uses
  br i1 %i.ak, label %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit
  %i.al = zext i32 %i.aj to i64
  %.idx.i.i = mul nuw nsw i64 %i.al, 40
  %i.am = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pre1.i, %.lr.ph.preheader.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.010.i.i) ]
  %i.an = load i64, ptr %.010.i.i, align 8, !tbaa !108
  %switch.i.i = icmp ugt i64 %i.an, -3
  br i1 %switch.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !89 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.lr.ph.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.am
  br i1 %.not.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E10destroyAllEv.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !109

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E10destroyAllEv.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !107
  br label %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEED2Ev.exit

_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEED2Ev.exit: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E10destroyAllEv.exit.loopexit.i
  %i.av = phi ptr [ %.pre.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E10destroyAllEv.exit.loopexit.i ], [ %.pre1.i, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.av) #15
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i2, label %_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #20
  br label %_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit

_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit: ; preds = %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEED2Ev.exit, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit, %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bo, %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i ], [ %i.be, %_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #20
  br label %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.bo, %i.bg
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !112

_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes2vm16SamplingProfiler10StackTraceEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.bd, align 8, !tbaa !110
  br label %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i

_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exitthread-pre-split.i, %_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit
  %i.bp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exitthread-pre-split.i ], [ %i.be, %_ZN6hermes2vm16SamplingProfiler10StackTraceD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !113
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #20
  br label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EED2Ev.exit

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes2vm16SamplingProfiler10StackTraceEEvT_S5_.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm16SamplingProfilerD0Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes2vm16SamplingProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16FindAndConstructERKm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !106  ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !108    ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = mul i32 %i.g, 37
  %i.i = add i32 %i.d, -1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %.02744.i.i = and i32 %i.h, %i.i                ; 2 uses
  %i.j = zext i32 %.02744.i.i to i64
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.j ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i, !prof !114

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.n = phi i64 [ %i.x, %bb.d ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.t, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.p = icmp eq i64 %i.n, -1
  br i1 %i.p, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.q = select i1 %.not.i.i, ptr %i.o, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = icmp eq i64 %i.n, -2
  %i.s = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.r, i1 %i.s, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.o, ptr %.02945.i.i
  %i.t = add i32 %.02546.i.i, 1
  %i.u = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.u, %i.i                  ; 2 uses
  %i.v = zext i32 %.027.i.i to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.v ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !108  ; 2 uses
  %i.y = icmp eq i64 %i.f, %i.x
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i, !prof !116, !llvm.loop !117

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !119 ; 3 uses
  %i.ab = shl i32 %i.aa, 2
  %i.ac = add i32 %i.ab, 4
  %i.ad = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !115

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit
  %i.ae = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !120
  %.neg.i.i = xor i32 %i.aa, -1
  %.neg11.i.i = add i32 %i.d, %.neg.i.i
  %i.ah = sub i32 %.neg11.i.i, %i.ag
  %i.ai = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.ah, %i.ai
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !115

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ae, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.sink.i.i5)
  %i.aj = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.z, align 8, !tbaa !119
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.ak = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 6 uses
  %i.al = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.aa, %bb.f ]
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.z, align 8, !tbaa !119
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !108
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16InsertIntoBucketIRKmJEEEPSC_SI_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !120
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !120
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16InsertIntoBucketIRKmJEEEPSC_SI_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16InsertIntoBucketIRKmJEEEPSC_SI_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = load i64, ptr %1, align 8, !tbaa !108
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !121
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.av, align 8, !tbaa !93
  store i8 0, ptr %i.au, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16InsertIntoBucketIRKmJEEEPSC_SI_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.ak, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E16InsertIntoBucketIRKmJEEEPSC_SI_OT_DpOT0_.exit ], [ %i.k, %bb.b ], [ %i.w, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPKSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !108    ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.c, -1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %.02744.i = and i32 %i.g, %i.h                  ; 2 uses
  %i.i = zext i32 %.02744.i to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = icmp eq i64 %i.e, %i.k
  br i1 %i.l, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !114

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.m = phi i64 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.02546.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i64 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.p = select i1 %.not.i, ptr %i.n, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPKSC_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq i64 %i.m, -2
  %i.r = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.n, ptr %.02945.i
  %i.s = add i32 %.02546.i, 1
  %i.t = add i32 %.02546.i, %.02747.i
  %.027.i = and i32 %i.t, %i.h                    ; 2 uses
  %i.u = zext i32 %.027.i to i64
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.u ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !108  ; 2 uses
  %i.x = icmp eq i64 %i.e, %i.w
  br i1 %i.x, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPKSC_.exit, label %.lr.ph.i, !prof !116, !llvm.loop !117

_ZNK4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPKSC_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !118
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !106
  %i.r = zext i32 %.sroa.speculated.i to i64
  %i.s = mul nuw nsw i64 %i.r, 40
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !120
  %i.w = load i32, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = mul nuw nsw i64 %i.x, 40            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i.i, label %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEE4growEj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.z = add nsw i64 %.idx.i.i, -40               ; 2 uses
  %i.aa = udiv i64 %i.z, 40
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store i64 -1, ptr %.06.i.i.prol, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !122

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %i.ad = icmp ult i64 %i.z, 280
  br i1 %i.ad, label %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEE4growEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store i64 -1, ptr %.06.i.i, align 8, !tbaa !108
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  store i64 -1, ptr %i.ae, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store i64 -1, ptr %i.af, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store i64 -1, ptr %i.ag, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 160
  store i64 -1, ptr %i.ah, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 200
  store i64 -1, ptr %i.ai, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 240
  store i64 -1, ptr %i.aj, align 8, !tbaa !108
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 280
  store i64 -1, ptr %i.ak, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 320 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.i.7, label %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEE4growEj.exit, label %.lr.ph.i.i, !llvm.loop !124

bb.c:                                             ; preds = %bb.a
  %i.am = zext i32 %i.b to i64
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.am
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E18moveFromOldBucketsEPSC_SF_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.an)
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #15
  br label %_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEE4growEj.exit

_ZN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEE4growEj.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E18moveFromOldBucketsEPSC_SF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !120
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 40              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.e, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = add nsw i64 %.idx.i, -40                 ; 2 uses
  %i.i = udiv i64 %i.h, 40
  %i.j = add nuw nsw i64 %i.i, 1
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.k, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.06.i.prol) ]
  store i64 -1, ptr %.06.i.prol, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !125

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i64 %i.h, 280
  br i1 %i.l, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.06.i) ]
  store i64 -1, ptr %.06.i, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  store i64 -1, ptr %i.m, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store i64 -1, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 120
  store i64 -1, ptr %i.o, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i, i64 160
  store i64 -1, ptr %i.p, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i, i64 200
  store i64 -1, ptr %i.q, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 240
  store i64 -1, ptr %i.r, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 280
  store i64 -1, ptr %i.s, align 8, !tbaa !108
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i, i64 320 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !124

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.not18 = icmp eq ptr %1, %2
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit, %bb.f
  %.019 = phi ptr [ %i.bh, %bb.f ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.019) ]
  %i.u = load i64, ptr %.019, align 8, !tbaa !108 ; 5 uses
  %switch = icmp ugt i64 %i.u, -3
  br i1 %switch, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %0, align 8, !tbaa !107, !nonnull !53, !noundef !53 ; 2 uses
  %i.w = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = trunc i64 %i.u to i32
  %i.z = mul i32 %i.y, 37
  %i.aa = add i32 %i.w, -1                        ; 2 uses
  %.02744.i.i = and i32 %i.aa, %i.z               ; 2 uses
  %i.ab = zext i32 %.02744.i.i to i64
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.ab ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !108 ; 2 uses
  %i.ae = icmp eq i64 %i.u, %i.ad
  br i1 %i.ae, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !114

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.af = phi i64 [ %i.ap, %bb.d ], [ %i.ad, %bb.b ] ; 2 uses
  %i.ag = phi ptr [ %i.ao, %bb.d ], [ %i.ac, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.al, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.ah = icmp eq i64 %i.af, -1
  br i1 %i.ah, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.ai = select i1 %.not.i.i, ptr %i.ag, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aj = icmp eq i64 %i.af, -2
  %i.ak = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.ag, ptr %.02945.i.i
  %i.al = add i32 %.02546.i.i, 1
  %i.am = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.am, %i.aa                ; 2 uses
  %i.an = zext i32 %.027.i.i to i64
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %i.an ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !108 ; 2 uses
  %i.aq = icmp eq i64 %i.u, %i.ap
  br i1 %i.aq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !116, !llvm.loop !117

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ai, %bb.c ], [ %i.ac, %bb.b ], [ %i.ao, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i) ]
  store i64 %i.u, ptr %.sink.i.i, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !121
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !89 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.019, i64 24 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !93 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !89
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !29
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !93
  %i.be = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !93
  store ptr %i.av, ptr %i.as, align 8, !tbaa !89
  store i64 0, ptr %i.bc, align 8, !tbaa !93
  store i8 0, ptr %i.av, align 8, !tbaa !29
  %i.bf = load i32, ptr %i.a, align 8, !tbaa !119
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bh, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { cold }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosixE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE", !15, i64 0, !17, i64 8, !18, i64 16, !17, i64 24, !20, i64 32, !19, i64 48}
!15 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!19 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!20 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !21, i64 0, !17, i64 8}
!21 = !{!"float", !5, i64 0}
!22 = !{!14, !17, i64 8}
!23 = !{!20, !21, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSN6hermes2vm16SamplingProfiler10StackFrameE", !10, i64 0}
!27 = !{!25, !26, i64 16}
!28 = !{i64 0, i64 16, !29, i64 16, i64 4, !30}
!29 = !{!5, !5, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"_ZTSN6hermes2vm16SamplingProfiler10StackFrame9FrameKindE", !5, i64 0}
!32 = !{!25, !26, i64 8}
!33 = !{!34, !17, i64 0}
!34 = !{!"_ZTSNSt6thread2idE", !17, i64 0}
!35 = !{!36, !41, i64 208}
!36 = !{!"_ZTSN6hermes2vm17sampling_profiler12_GLOBAL__N_112SamplerPosixE", !37, i64 0, !41, i64 208, !51, i64 216}
!37 = !{!"_ZTSN6hermes2vm17sampling_profiler7SamplerE", !38, i64 8, !40, i64 48, !41, i64 104, !4, i64 108, !42, i64 112, !48, i64 152, !49, i64 160}
!38 = !{!"_ZTSSt5mutex", !39, i64 0}
!39 = !{!"_ZTSSt12__mutex_base", !5, i64 0}
!40 = !{!"_ZTSSt13unordered_setIPN6hermes2vm16SamplingProfilerESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE", !14, i64 0}
!41 = !{!"bool", !5, i64 0}
!42 = !{!"_ZTSN6hermes2vm16SamplingProfiler10StackTraceE", !17, i64 0, !43, i64 8, !45, i64 16}
!43 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !44, i64 0}
!44 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !17, i64 0}
!45 = !{!"_ZTSSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE12_Vector_implE", !25, i64 0}
!48 = !{!"_ZTSSt6thread", !34, i64 0}
!49 = !{!"_ZTSSt18condition_variable", !50, i64 0}
!50 = !{!"_ZTSSt9__condvar", !5, i64 0}
!51 = !{!"_ZTSN6hermes9SemaphoreE", !5, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!55, !4, i64 136}
!55 = !{!"_ZTS9sigaction", !5, i64 0, !56, i64 8, !4, i64 136, !10, i64 144}
!56 = !{!"_ZTS10__sigset_t", !5, i64 0}
!57 = !{!58, !17, i64 264}
!58 = !{!"_ZTSN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixE", !59, i64 0, !17, i64 264}
!59 = !{!"_ZTSN6hermes2vm16SamplingProfilerE", !38, i64 8, !60, i64 48, !4, i64 72, !4, i64 76, !42, i64 80, !65, i64 120, !17, i64 144, !67, i64 152, !69, i64 208, !74, i64 232, !79, i64 256}
!60 = !{!"_ZTSSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN6hermes2vm16SamplingProfiler10StackTraceE", !10, i64 0}
!65 = !{!"_ZTSN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS6_EEEE", !66, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!66 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !10, i64 0}
!67 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !68, i64 0}
!68 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !15, i64 0, !17, i64 8, !18, i64 16, !17, i64 24, !20, i64 32, !19, i64 48}
!69 = !{!"_ZTSSt6vectorIPN6hermes2vm6DomainESaIS3_EE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE12_Vector_implE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm6DomainESaIS3_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p2 _ZTSN6hermes2vm6DomainE", !16, i64 0}
!74 = !{!"_ZTSSt6vectorIPN6hermes2vm14NativeFunctionESaIS3_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIPN6hermes2vm14NativeFunctionESaIS3_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p2 _ZTSN6hermes2vm14NativeFunctionE", !16, i64 0}
!79 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !10, i64 0}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZSt11make_uniqueIN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixEJRNS1_7RuntimeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!84 = distinct !{!84, !"_ZSt11make_uniqueIN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixEJRNS1_7RuntimeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!85 = !{!86, !87, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes2vm16SamplingProfilerELb0EE", !87, i64 0}
!87 = !{!"p1 _ZTSN6hermes2vm16SamplingProfilerE", !10, i64 0}
!88 = !{!59, !17, i64 144}
!89 = !{!90, !92, i64 0}
!90 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !91, i64 0, !17, i64 8, !5, i64 16}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !92, i64 0}
!92 = !{!"p1 omnipotent char", !10, i64 0}
!93 = !{!90, !17, i64 8}
!94 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!95 = distinct !{!95, !81}
!96 = !{ptr @_ZN6hermes2vm17sampling_profiler12_GLOBAL__N_121SamplingProfilerPosixD2Ev}
!97 = !{!77, !78, i64 0}
!98 = !{!77, !78, i64 16}
!99 = !{!72, !73, i64 0}
!100 = !{!72, !73, i64 16}
!101 = !{!68, !19, i64 16}
!102 = !{!18, !19, i64 0}
!103 = distinct !{!103, !81}
!104 = !{!68, !15, i64 0}
!105 = !{!68, !17, i64 8}
!106 = !{!65, !4, i64 16}
!107 = !{!65, !66, i64 0}
!108 = !{!17, !17, i64 0}
!109 = distinct !{!109, !81}
!110 = !{!63, !64, i64 0}
!111 = !{!63, !64, i64 8}
!112 = distinct !{!112, !81}
!113 = !{!63, !64, i64 16}
!114 = !{!"branch_weights", i32 1999, i32 1}
!115 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!116 = !{!"branch_weights", i32 1, i32 0}
!117 = distinct !{!117, !81}
!118 = !{!66, !66, i64 0}
!119 = !{!65, !4, i64 8}
!120 = !{!65, !4, i64 12}
!121 = !{!91, !92, i64 0}
!122 = distinct !{!122, !123}
end_hunk_0
