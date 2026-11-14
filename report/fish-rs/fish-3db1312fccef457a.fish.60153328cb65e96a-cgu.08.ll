Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.08?download=true
inline.NumInlined: 2294
inline.NumDeleted: 1070
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvNtNtCs8frGy5WneL6_4fish12localization8settings35update_from_status_language_builtinNtNtCs1xwejQucwHj_5alloc6string6StringEB6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1037
  store ptr %1, ptr %i.k, align 8, !noalias !1037
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ap, ptr %i.hs, align 8, !noalias !1037
  %i.ht = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.ht, align 8, !noalias !1037
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.m, ptr %i.hu, align 8, !noalias !1037
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtB25_3map3MapINtNtNtB29_5slice4iter4IterNtNtB6_6string6StringENCNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB49_17LocalizationState35update_from_status_language_builtinB3C_E00ENCB42_s_0EE9from_iterB4d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %bb.av unwind label %bb.au, !noalias !1042

bb.au:                                            ; preds = %bb.at
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.body.i unwind label %bb.ba, !noalias !1042

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !1059
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1037
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit82.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1042

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit82.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1037
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit84.i unwind label %.split.i, !noalias !1042

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit84.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1037
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ax unwind label %bb.aw, !noalias !1042

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit84.i
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body86.i unwind label %bb.ay, !noalias !1042

bb.ax:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit84.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i unwind label %bb.az, !noalias !1042

bb.ay:                                            ; preds = %bb.aw
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1042
  unreachable

.body86.i:                                        ; preds = %bb.bb, %bb.az, %bb.aw
  %.pn28.i = phi { ptr, i32 } [ %.pn2690.i, %bb.bb ], [ %i.hz, %bb.az ], [ %i.hx, %bb.aw ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %.body unwind label %bb.ba, !noalias !1042

bb.az:                                            ; preds = %bb.ax
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1037
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCslSwhfOFuxKz_17fish_localization8LanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %bb.bd unwind label %bb.bc

bb.ba:                                            ; preds = %.split.thread.loopexit.split-lp.i, %bb.bb, %.body86.i, %bb.au, %.body.i
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1042
  unreachable

bb.bb:                                            ; preds = %.split.thread.loopexit.split-lp.i, %.split.i, %bb.f
  %.pn2690.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.split.i ], [ %.pn2691.i, %.split.thread.loopexit.split-lp.i ], [ %.pn.i, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #36
          to label %.body86.i unwind label %bb.ba, !noalias !1042

.split.thread.loopexit.split-lp.i:                ; preds = %.split.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn2691.i = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %lpad.loopexit.split-lp122, %.split.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #36
          to label %bb.bb unwind label %bb.ba, !noalias !1042

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish12localization8settings17LocalizationStateEINtBM_11PoisonErrorBH_EE6unwrapB1I_.exit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body86.i, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.ib, %bb.bc ], [ %.pn28.i, %.body86.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish12localization8settings17LocalizationStateEEB1C_(ptr nonnull %i.ad, i8 %i.af) #36
          to label %common.resume unwind label %bb.bi

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1037
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br i1 %i.ag, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.id = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ie = and i64 %i.id, 9223372036854775807
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bf, !prof !8

bb.bf:                                            ; preds = %bb.be
  %i.ig = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.ig, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store atomic i8 1, ptr %i.ic monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd
  %i.ih = atomicrmw xchg ptr %i.ad, i32 0 release, align 4
  %i.ii = icmp eq i32 %i.ih, 2
  br i1 %i.ii, label %bb.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish12localization8settings17LocalizationStateEEB1C_.exit, !prof !11

bb.bh:                                            ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ad)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish12localization8settings17LocalizationStateEEB1C_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtCs8frGy5WneL6_4fish12localization8settings17LocalizationStateEEB1C_.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.bh
  ret void

bb.bi:                                            ; preds = %.body
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeRNtNtNtCs3oUPovFnLWP_4core3ffi5c_str4CStrEB6_(i32 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add i64 %2, -1
  %i.d = tail call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %i.c) #38 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeRShEB6_(i32 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safejEB6_(i32 noundef %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 5 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !1064
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.e = sub nsw i64 25, %.sroa.06.019.i.i
  br label %_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit

bb.e:                                             ; preds = %bb.e, %bb.c
  %.sroa.0.020.i.i = phi i64 [ %1, %bb.c ], [ %i.g, %bb.e ] ; 3 uses
  %.sroa.06.019.i.i = phi i64 [ 24, %bb.c ], [ %i.j, %bb.e ] ; 2 uses
  %i.f = urem i64 %.sroa.0.020.i.i, 10
  %i.g = udiv i64 %.sroa.0.020.i.i, 10
  %i.h = trunc nuw nsw i64 %i.f to i8
  %i.i = or disjoint i8 %i.h, 48
  %i.j = add nsw i64 %.sroa.06.019.i.i, -1        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  store i8 %i.i, ptr %i.k, align 1, !alias.scope !1064
  %i.l = icmp ugt i64 %.sroa.0.020.i.i, 9
  br i1 %i.l, label %bb.e, label %bb.d

_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit: ; preds = %bb.b, %bb.d
  %.sroa.3.0.i.i = phi i64 [ %i.e, %bb.d ], [ 1, %bb.b ]
  %.sroa.05.0.i.i = phi ptr [ %i.d, %bb.d ], [ @273, %bb.b ]
  %i.m = call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safelEB6_(i32 noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 6 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i32 %1, 0
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.e = zext i32 %.sroa.0.0.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !1069
  br label %bb.g

bb.d:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %.sroa.06.019.i.i, -2        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 45, ptr %i.g, align 1, !alias.scope !1069
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.1.i.i = phi i64 [ %i.f, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.h = sub nuw nsw i64 24, %.sroa.06.1.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.06.1.i.i
  br label %_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit

bb.g:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.020.i.i = phi i64 [ %i.e, %bb.c ], [ %i.k, %bb.g ] ; 3 uses
  %.sroa.06.019.i.i = phi i64 [ 24, %bb.c ], [ %i.n, %bb.g ] ; 2 uses
  %i.j = urem i64 %.sroa.0.020.i.i, 10
  %i.k = udiv i64 %.sroa.0.020.i.i, 10
  %i.l = trunc nuw nsw i64 %i.j to i8
  %i.m = or disjoint i8 %i.l, 48
  %i.n = add nsw i64 %.sroa.06.019.i.i, -1        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  store i8 %i.m, ptr %i.o, align 1, !alias.scope !1069
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.i, 9
  br i1 %i.p, label %bb.g, label %bb.d

_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit: ; preds = %bb.b, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.h, %bb.f ], [ 1, %bb.b ]
  %.sroa.05.0.i.i = phi ptr [ %i.i, %bb.f ], [ @273, %bb.b ]
  %i.q = call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safexEB6_(i32 noundef %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 6 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i64 %1, 0
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.i = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !1074
  br label %bb.g

bb.d:                                             ; preds = %bb.g
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i64 %.sroa.06.019.i.i, -2        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  store i8 45, ptr %i.f, align 1, !alias.scope !1074
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.1.i.i = phi i64 [ %i.e, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.g = sub nuw nsw i64 24, %.sroa.06.1.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.06.1.i.i
  br label %_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit

bb.g:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.0.i, %bb.c ], [ %i.j, %bb.g ] ; 3 uses
  %.sroa.06.019.i.i = phi i64 [ 24, %bb.c ], [ %i.m, %bb.g ] ; 2 uses
  %i.i = urem i64 %.sroa.0.020.i.i, 10
  %i.j = udiv i64 %.sroa.0.020.i.i, 10
  %i.k = trunc nuw nsw i64 %i.i to i8
  %i.l = or disjoint i8 %i.k, 48
  %i.m = add nsw i64 %.sroa.06.019.i.i, -1        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !alias.scope !1074
  %i.o = icmp ugt i64 %.sroa.0.020.i.i, 9
  br i1 %i.o, label %bb.g, label %bb.d

_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit: ; preds = %bb.b, %bb.f
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.f ], [ 1, %bb.b ]
  %.sroa.05.0.i.i = phi ptr [ %i.h, %bb.f ], [ @273, %bb.b ]
  %i.p = call noundef i64 @write(i32 noundef %0, ptr noundef nonnull %.sroa.05.0.i.i, i64 noundef %.sroa.3.0.i.i) #38 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe.exit
  ret void
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_Cse7JGOylGlDZ_3nixNtNtNtCs3oUPovFnLWP_4core3ffi5c_str4CStrNtB6_7NixPath13with_nix_pathlNCINvNtB6_5fcntl4openBo_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #3 {
bb.a:
  %.val = load i32, ptr %2, align 4, !noundef !9
  %.val1 = load i32, ptr %3, align 4, !noundef !9
  %i.a = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull readonly %0, i32 noundef %.val, i32 noundef %.val1) #38
  %i.b = insertvalue { i32, i32 } { i32 0, i32 poison }, i32 %i.a, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB6_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB6_22DedupPred2CoalescePredNtB6_7DedupEqENtB6_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3I_8adapters3map8map_foldB1W_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4K_7flattenINtB6N_13FlattenCompatppE9iter_fold7flattenB5g_uNCINvNvXsi_B6N_B71_B3C_4fold7flattenINtNtNtB3K_5array4iter8IntoIterB5h_KB5j_EuNCINvNvB3C_8for_each4callB5h_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9G_11Utf32StringINtNtB3G_7collect6ExtendB5h_E6extendINtB6N_7FlatMapBQ_B5g_B5n_EE0E0E0E0E0EB5v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.017.0.copyload = load ptr, ptr %i.h, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8 ; 5 uses
  %i.i = load i64, ptr %0, align 8, !range !20, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.l, null
  br i1 %.not9, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.m = icmp eq ptr %.sroa.6.0.copyload, %.sroa.10.0.copyload
  br i1 %i.m, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  %i.o = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !1121, !nonnull !9, !align !14, !noundef !9
  br label %bb.e

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload) ]
  store i64 %.sroa.8.0.copyload, ptr %i.g, align 8, !noalias !1122
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.p, align 8, !noalias !1122
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1122
  br label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.l, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  %.not.not15.i = icmp eq ptr %.sroa.6.0, %.sroa.10.0.copyload
  br i1 %.not.not15.i, label %_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %.sroa.02.0, %.lr.ph.i ], [ %.sroa.5.06.i.i, %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i ] ; 3 uses
  %i.s = phi ptr [ %.sroa.6.0, %.lr.ph.i ], [ %i.u, %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1123, !nonnull !9, !align !14, !noundef !9 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1128, !noalias !1129, !noundef !9 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1130, !noalias !1123, !noundef !9
  %i.x = icmp eq i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %.val2.pre.i.i = load ptr, ptr %.sroa.0.016.i, align 8, !alias.scope !1124, !noalias !1129 ; 3 uses
  br i1 %i.x, label %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i, label %bb.g

_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.f
  %.val2.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !1130, !noalias !1123, !nonnull !9, !noundef !9
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.pre.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %.val1.i.i.i.i.i), !alias.scope !1131, !noalias !1132
  %i.y = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1133
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1133
  store ptr %.val2.pre.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1134
  store i64 %.val1.i.i.i.i.i, ptr %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1134
  store ptr @53, ptr %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1134
  store i64 1, ptr %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1134
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1137
  store ptr %.sroa.5.0..sroa_idx.i.i.i.i, ptr %i.d, align 8, !noalias !1137
  store i64 2, ptr %i.q, align 8, !noalias !1137
  store ptr %1, ptr %i.r, align 8, !noalias !1137
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  store i64 1, ptr %i.e, align 8, !alias.scope !1140, !noalias !1133
  invoke void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB20_11Utf32StringINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB47_22DedupPred2CoalescePredNtB47_7DedupEqENtB47_7NoCountEAB1O_j2_NCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.pre.i.i, i64 noundef %.val1.i.i.i.i.i)
          to label %.noexc.i unwind label %bb.h, !noalias !1123

.noexc.i:                                         ; preds = %bb.g
  store i64 2, ptr %i.e, align 8, !alias.scope !1140, !noalias !1133
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.z = load ptr, ptr %i.d, align 8, !alias.scope !1142, !noalias !1137, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1143, !nonnull !9, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !1143, !noundef !9
  invoke void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callReNCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB20_11Utf32StringINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesce10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB47_22DedupPred2CoalescePredNtB47_7DedupEqENtB47_7NoCountEAB1O_j2_NCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
          to label %.noexc8.i unwind label %bb.h, !noalias !1123

.noexc8.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  br label %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i

_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i: ; preds = %.noexc8.i, %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.5.06.i.i = phi ptr [ %i.t, %.noexc8.i ], [ %.sroa.0.016.i, %_RNvXs7_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateRNtCslSwhfOFuxKz_17fish_localization8LanguageE10dedup_pairCs8frGy5WneL6_4fish.exit.i.i.i ] ; 2 uses
  %.not.not.i = icmp eq ptr %i.u, %.sroa.10.0.copyload
  br i1 %.not.not.i, label %_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit, label %bb.f

bb.h:                                             ; preds = %.noexc.i, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1144
  store i64 %.sroa.8.0.copyload, ptr %i.c, align 8, !noalias !1144
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.ae, align 8, !noalias !1144
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i unwind label %bb.i, !noalias !1123

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1144
  resume { ptr, i32 } %lpad.thr_comm.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !1123
  unreachable

_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldTBX_uENCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB2W_10CoalesceByBI_INtB2W_22DedupPred2CoalescePredNtB2W_7DedupEqENtB2W_7NoCountEB1H_4folduNCINvNtNtB1N_8adapters3map8map_foldBX_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB5i_7flattenINtB7k_13FlattenCompatppE9iter_fold7flattenB5N_uNCINvNvXsi_B7k_B7y_B1H_4fold7flattenINtNtNtB1P_5array4iter8IntoIterB5O_KB5Q_EuNCINvNvB1H_8for_each4callB5O_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtBad_11Utf32StringINtNtB1L_7collect6ExtendB5O_E6extendINtB7k_7FlatMapB3G_B5N_B5U_EE0E0E0E0E0Es_0EB62_.exit: ; preds = %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i, %bb.e
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.02.0, %bb.e ], [ %.sroa.5.06.i.i, %_RNCINvXs0_NtNtCs1E3VsKHMe0J_9itertools8adaptors8coalesceINtB8_10CoalesceByINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB8_22DedupPred2CoalescePredNtB8_7DedupEqENtB8_7NoCountENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB3K_8adapters3map8map_foldB1Y_ARej2_uNCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languages0NCINvNvMsg_NtB4M_7flattenINtB6P_13FlattenCompatppE9iter_fold7flattenB5i_uNCINvNvXsi_B6P_B73_B3E_4fold7flattenINtNtNtB3M_5array4iter8IntoIterB5j_KB5l_EuNCINvNvB3E_8for_each4callB5j_NCINvXs21_NtCslLGyqsphxMB_10widestring9utfstringNtB9I_11Utf32StringINtNtB3I_7collect6ExtendB5j_E6extendINtB6P_7FlatMapBS_B5i_B5p_EE0E0E0E0E0Es_0B5x_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1123
  store i64 %.sroa.8.0.copyload, ptr %i.f, align 8, !noalias !1123
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.017.0.copyload, ptr %i.ag, align 8, !noalias !1123
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtCslSwhfOFuxKz_17fish_localization8LanguageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !1123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1123
  %.val15 = load ptr, ptr %.sroa.0.0.lcssa.i, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.0.lcssa.i, i64 8
  %.val16 = load i64, ptr %i.ah, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1145
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1145
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %.val15, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val16, ptr %.sroa.44.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @53, ptr %.sroa.55.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 1, ptr %.sroa.66.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1148
  store ptr %.sroa.5.0..sroa_idx.i.i, ptr %i.a, align 8, !noalias !1148
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %i.ai, align 8, !noalias !1148
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCs8frGy5WneL6_4fish8builtins3setNtB5_18EnvArrayParseErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt:bb.a
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.m, i64 noundef %i.n, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @67, ptr noalias nofree noundef nonnull align 8 %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %bb.u

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3801)
  %i.t = load i8, ptr %i.e, align 8, !range !16, !alias.scope !3801, !noundef !9
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3802
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !21, !alias.scope !3801, !noundef !9
  store i8 %i.w, ptr %i.a, align 1, !noalias !3802
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @526) #40
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load i64, ptr %i.d, align 8, !range !12, !alias.scope !3803, !noundef !9
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit unwind label %bb.k

.body:                                            ; preds = %bb.k, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn27 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.ab, %bb.k ], [ %i.z, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %common.resume unwind label %bb.u

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit33, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @512, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error9to_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.g)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #36
          to label %common.resume unwind label %bb.u

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_.exit
  %i.ad = load i64, ptr %i.g, align 8, !range !12, !alias.scope !3804, !noundef !9
  %i.ae = icmp eq i64 %i.ad, -1
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %.body, %bb.l, %bb.q, %bb.s, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.s ], [ %i.af, %bb.o ], [ %i.al, %bb.q ], [ %i.ac, %bb.l ], [ %.pn27, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.n
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_.exit: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1U_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ah = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !9, !align !14, !noundef !9
  %i.ak = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noundef nonnull @527, ptr noundef nonnull %i.b)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #36
          to label %common.resume unwind label %bb.u

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.r
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.ak

bb.u:                                             ; preds = %bb.d, %bb.q, %bb.l, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define { ptr, i64 } @_RNvXs0_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safexNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !9   ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0 = tail call i64 @llvm.abs.i64(i64 %i.a, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !3807
  br label %bb.f

bb.c:                                             ; preds = %bb.f
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i64 %.sroa.06.019.i, -2          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  store i8 45, ptr %i.e, align 1, !alias.scope !3807
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.1.i = phi i64 [ %i.d, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.f = sub nuw nsw i64 24, %.sroa.06.1.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.1.i
  br label %_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit

bb.f:                                             ; preds = %bb.f, %bb.b
  %.sroa.0.020.i = phi i64 [ %.sroa.0.0, %bb.b ], [ %i.i, %bb.f ] ; 3 uses
  %.sroa.06.019.i = phi i64 [ 24, %bb.b ], [ %i.l, %bb.f ] ; 2 uses
  %i.h = urem i64 %.sroa.0.020.i, 10
  %i.i = udiv i64 %.sroa.0.020.i, 10
  %i.j = trunc nuw nsw i64 %i.h to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = add nsw i64 %.sroa.06.019.i, -1          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  store i8 %i.k, ptr %i.m, align 1, !alias.scope !3807
  %i.n = icmp ugt i64 %.sroa.0.020.i, 9
  br i1 %i.n, label %bb.f, label %bb.c

_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit: ; preds = %bb.a, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.f, %bb.e ], [ 1, %bb.a ]
  %.sroa.05.0.i = phi ptr [ %i.g, %bb.e ], [ @273, %bb.a ]
  %i.o = insertvalue { ptr, i64 } poison, ptr %.sroa.05.0.i, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB5_8Iterator9size_hintB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 2 uses
  store i64 %i.g, ptr %0, align 8, !alias.scope !3810
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8, !alias.scope !3810
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8, !alias.scope !3810
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1U_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not.not.not.i.not.not.not5.not = icmp eq i64 %i.e, 0
  br i1 %.not.not.not.i.not.not.not5.not, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.n, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !3816, !noundef !9 ; 4 uses
  %i.i = xor i32 %i.h, 55296
  %i.j = add i32 %i.i, -1114112
  %i.k = icmp ult i32 %i.j, -1112064
  br i1 %i.k, label %.split.i.i, label %bb.b

.split.i.i:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3817
  store i32 %i.h, ptr %i.a, align 4, !noalias !3817
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @540) #40, !noalias !3816
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp ult i32 %i.h, 1114112
  tail call void @llvm.assume(i1 %i.l)
  %i.m = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %i.h), !noalias !3818 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.n, %i.f
  %or.cond = select i1 %i.m, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit, label %.lr.ph

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBX_12try_for_each4callcINtNtB15_6result6ResultuNtNtB15_3fmt5ErrorENCNvXs15_B7_NtB7_8Utf32StrNtB2W_7Display3fmt0E0B2w_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.m, %bb.b ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtB7_9into_iter8IntoIterNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3828, !nonnull !9, !noundef !9
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !3828
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i, %bb.a
  %i.g = phi ptr [ %i.i, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i ], [ %.promoted.i, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3829)
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1R_3ops9try_traitINtB2U_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1J_8for_each4callBK_INvNtB1R_3mem4dropBK_EE0E0B3g_EBQ_.exit, label %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i

_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !3828
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.g, align 1, !noalias !3828
  %i.j = and i32 %.sroa.02.0.copyload.i.i, 255
  %.not.i = icmp eq i32 %i.j, 2
  br i1 %.not.i, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1R_3ops9try_traitINtB2U_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1J_8for_each4callBK_INvNtB1R_3mem4dropBK_EE0E0B3g_EBQ_.exit, label %bb.b

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1R_3ops9try_traitINtB2U_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1J_8for_each4callBK_INvNtB1R_3mem4dropBK_EE0E0B3g_EBQ_.exit: ; preds = %bb.b, %_RNvXs3_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_.exit.i
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1R_3ops9try_traitINtB2U_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1J_8for_each4callBK_INvNtB1R_3mem4dropBK_EE0E0B3g_EBQ_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEINtB4_10SpecExtendBT_QINtNtB6_9into_iter8IntoIterBT_EE11spec_extendBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
  br label %bb.e

bb.d:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB1R_3ops9try_traitINtB2U_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB1J_8for_each4callBK_INvNtB1R_3mem4dropBK_EE0E0B3g_EBQ_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = tail call noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE4fillINtNtB8_9into_iter8IntoIterBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.j, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val20 = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val21 = load ptr, ptr %i.t, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %.val21, %.val20
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %.val20 to i64
  %i.v = ptrtoint ptr %.val21 to i64
  %i.w = sub nuw i64 %i.v, %i.u
  %i.x = lshr exact i64 %i.w, 2
  tail call void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9move_tailB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.x)
  %i.y = tail call noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE4fillINtNtB8_9into_iter8IntoIterBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
  br i1 %i.y, label %bb.i, label %bb.e

bb.h:                                             ; preds = %bb.l, %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  %.val24 = load ptr, ptr %i.d, align 8, !alias.scope !32, !nonnull !9, !noundef !9
  %.val25 = load i64, ptr %i.ad, align 8, !alias.scope !32, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3830
  store i64 %.val25, ptr %i.b, align 8, !noalias !3830
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val24, ptr %i.aa, align 8, !noalias !3830
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.n unwind label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEINtB2_12SpecFromIterBU_QINtNtB4_9into_iter8IntoIterBU_EE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
  %.sroa.09.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 4 uses
  %i.ab = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload
  store ptr %.sroa.410.0.copyload, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 %.sroa.09.0.copyload, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.410.0.copyload, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ac, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not16 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not16, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.val23 = phi i64 [ %.val23.pre, %._crit_edge ], [ %.sroa.09.0.copyload, %bb.i ]
  %.val22 = phi ptr [ %.val22.pre, %._crit_edge ], [ %.sroa.410.0.copyload, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3831
  store i64 %.val23, ptr %i.a, align 8, !noalias !3831
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val22, ptr %i.ag, align 8, !noalias !3831
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !3831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE9move_tailB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ah = invoke noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE4fillINtNtB8_9into_iter8IntoIterBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %._crit_edge unwind label %bb.h ; 0 uses

._crit_edge:                                      ; preds = %bb.l
  %.val22.pre = load ptr, ptr %i.d, align 8, !alias.scope !32
  %.val23.pre = load i64, ptr %i.ad, align 8, !alias.scope !32
  br label %bb.j

bb.m:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB10_5slice4iter4ItermEEENtNtNtB10_3ops4drop4Drop4dropCs8frGy5WneL6_4fish:bb.a
  %.val21 = phi i64 [ %.val21.pre, %._crit_edge ], [ %.sroa.09.0.copyload, %bb.h ]
  %.val20 = phi ptr [ %.val20.pre, %._crit_edge ], [ %.sroa.410.0.copyload, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3872
  store i64 %.val21, ptr %i.a, align 8, !noalias !3872
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val20, ptr %i.ae, align 8, !noalias !3872
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !3872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainmE9move_tailCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.af = invoke noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainmE4fillINtNtB8_9into_iter8IntoItermEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %._crit_edge unwind label %bb.g ; 0 uses

._crit_edge:                                      ; preds = %bb.k
  %.val20.pre = load ptr, ptr %i.d, align 8, !alias.scope !3870
  %.val21.pre = load i64, ptr %i.ab, align 8, !alias.scope !3870
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3871
  resume { ptr, i32 } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3883, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !3883 ; 3 uses
  %i.g = icmp eq ptr %.promoted.i, %i.f
  br i1 %i.g, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DraincENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2ucNCINvNvBM_8for_each4callcINvNtBU_3mem4dropcEE0E0B2i_ECs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.promoted5.i = ptrtoaddr ptr %.promoted.i to i64
  %i.h = ptrtoaddr ptr %i.f to i64
  %i.i = add i64 %i.h, -4
  %i.j = sub i64 %i.i, %.promoted5.i
  %i.k = and i64 %i.j, -4
  %i.l = getelementptr i8, ptr %.promoted.i, i64 %i.k
  %scevgep.i = getelementptr i8, ptr %i.l, i64 4
  store ptr %scevgep.i, ptr %0, align 8, !alias.scope !3883
  br label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DraincENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2ucNCINvNvBM_8for_each4callcINvNtBU_3mem4dropcEE0E0B2i_ECs8frGy5WneL6_4fish.exit

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DraincENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2ucNCINvNvBM_8for_each4callcINvNtBU_3mem4dropcEE0E0B2i_ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %.lr.ph.preheader.i
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DraincENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2ucNCINvNvBM_8for_each4callcINvNtBU_3mem4dropcEE0E0B2i_ECs8frGy5WneL6_4fish.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %bb.d

bb.c:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DraincENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2ucNCINvNvBM_8for_each4callcINvNtBU_3mem4dropcEE0E0B2i_ECs8frGy5WneL6_4fish.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = tail call noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DraincE4fillNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val17 = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %.not = icmp eq ptr %.val17, %.val
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %.val to i64
  %i.w = ptrtoint ptr %.val17 to i64
  %i.x = sub nuw i64 %i.w, %i.v
  %i.y = lshr exact i64 %i.x, 2
  tail call void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DraincE9move_tailCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.y)
  %i.z = tail call noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DraincE4fillNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
  br i1 %i.z, label %bb.h, label %bb.d

bb.g:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %.val24 = load ptr, ptr %i.d, align 8, !alias.scope !3884, !nonnull !9, !noundef !9
  %.val25 = load i64, ptr %i.ae, align 8, !alias.scope !3884, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3885
  store i64 %.val25, ptr %i.b, align 8, !noalias !3885
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val24, ptr %i.ab, align 8, !noalias !3885
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.m unwind label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VeccEINtB2_12SpecFromItercQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E9from_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
  %.sroa.09.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 4 uses
  %i.ac = icmp ult i64 %.sroa.511.0.copyload, 2305843009213693952
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload
  store ptr %.sroa.410.0.copyload, ptr %i.d, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 %.sroa.09.0.copyload, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.410.0.copyload, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ad, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not16 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.val23 = phi i64 [ %.val23.pre, %._crit_edge ], [ %.sroa.09.0.copyload, %bb.h ]
  %.val22 = phi ptr [ %.val22.pre, %._crit_edge ], [ %.sroa.410.0.copyload, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3886
  store i64 %.val23, ptr %i.a, align 8, !noalias !3886
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val22, ptr %i.ah, align 8, !noalias !3886
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DraincE9move_tailCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.511.0.copyload)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.ai = invoke noundef zeroext i1 @_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DraincE4fillINtNtB8_9into_iter8IntoItercEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %._crit_edge unwind label %bb.g ; 0 uses

._crit_edge:                                      ; preds = %bb.k
  %.val22.pre = load ptr, ptr %i.d, align 8, !alias.scope !3884
  %.val23.pre = load i64, ptr %i.ae, align 8, !alias.scope !3884
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3885
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define { ptr, i64 } @_RNvXs1_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safelNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !9   ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0 = tail call i32 @llvm.abs.i32(i32 %i.a, i1 false)
  %i.d = zext i32 %.sroa.0.0 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !3889
  br label %bb.f

bb.c:                                             ; preds = %bb.f
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i64 %.sroa.06.019.i, -2          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  store i8 45, ptr %i.f, align 1, !alias.scope !3889
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.1.i = phi i64 [ %i.e, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.g = sub nuw nsw i64 24, %.sroa.06.1.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.1.i
  br label %_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit

bb.f:                                             ; preds = %bb.f, %bb.b
  %.sroa.0.020.i = phi i64 [ %i.d, %bb.b ], [ %i.j, %bb.f ] ; 3 uses
  %.sroa.06.019.i = phi i64 [ 24, %bb.b ], [ %i.m, %bb.f ] ; 2 uses
  %i.i = urem i64 %.sroa.0.020.i, 10
  %i.j = udiv i64 %.sroa.0.020.i, 10
  %i.k = trunc nuw nsw i64 %i.i to i8
  %i.l = or disjoint i8 %i.k, 48
  %i.m = add nsw i64 %.sroa.06.019.i, -1          ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !alias.scope !3889
  %i.o = icmp samesign ugt i64 %.sroa.0.020.i, 9
  br i1 %i.o, label %bb.f, label %bb.c

_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit: ; preds = %bb.a, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.e ], [ 1, %bb.a ]
  %.sroa.05.0.i = phi ptr [ %i.h, %bb.e ], [ @273, %bb.a ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.05.0.i, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtBX_17LocalizationState35update_from_status_language_builtinNtNtCs1xwejQucwHj_5alloc6string6StringEs_0INtB7_5FnMutTRNtCslSwhfOFuxKz_17fish_localization8LanguageEE8call_mutB11_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !align !14, !noundef !9
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %.val2 = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.d, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.val2, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val3, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtCslSwhfOFuxKz_17fish_localization8LanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE12contains_keyBO_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.f, label %_RNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB8_17LocalizationState35update_from_status_language_builtinNtNtCs1xwejQucwHj_5alloc6string6StringEs_0Bc_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.g = call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtCslSwhfOFuxKz_17fish_localization8LanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
  %i.h = xor i1 %i.g, true
  br label %_RNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB8_17LocalizationState35update_from_status_language_builtinNtNtCs1xwejQucwHj_5alloc6string6StringEs_0Bc_.exit

_RNCINvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtB8_17LocalizationState35update_from_status_language_builtinNtNtCs1xwejQucwHj_5alloc6string6StringEs_0Bc_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtBZ_17LocalizationState15update_from_env17update_precedenceNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageEs_0INtB7_5FnMutTRB2H_EE8call_mutB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !align !14, !noundef !9
  %.val1 = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !9
  %i.c = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val1, i64 noundef %.val2)
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvMs2_NtNtCs8frGy5WneL6_4fish12localization8settingsNtBZ_17LocalizationState15update_from_env17update_precedenceNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEs_0INtB7_5FnMutTRB2H_EE8call_mutB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !14, !noundef !9
  %.val = load ptr, ptr %i.a, align 8, !nonnull !9, !align !14, !noundef !9
  %.val1 = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i64, ptr %i.b, align 8, !noundef !9
  %i.c = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val1, i64 noundef %.val2)
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs0_NtNtCs8frGy5WneL6_4fish12localization8settingsNtBW_21LocalizationVariables16get_language_var0INtB7_5FnMutTRRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE8call_mutB10_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #13 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !9, !align !14, !noundef !9
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = icmp ult i64 %i.b, 2305843009213693952
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i64 %i.b, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish3env11environment17EnvStackSetResultNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %.val = load i8, ptr %i.a, align 1, !range !3890, !noundef !9 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish3env11environment17EnvStackSetResultNtB6_5Debug3fmtBC_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtCs8frGy5WneL6_4fish3env11environment17EnvStackSetResultNtB6_5Debug3fmtBC_.547, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_6EnvDynNtB5_11Environment13get_pwd_slash(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !14, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.a) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_6EnvDynNtB5_11Environment4getf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i16 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !14, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i16 noundef %4) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_6EnvDynNtB5_11Environment9get_names(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !align !14, !noundef !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.a, i16 noundef %2) #41
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define { ptr, i64 } @_RNvXs2_NtNtCs8frGy5WneL6_4fish9fork_exec9flog_safejNtB5_25FloggableDisplayAsyncSafe22to_flog_str_async_safe(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !9   ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, i8 0, i64 24, i1 false), !alias.scope !3893
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.d = sub nsw i64 25, %.sroa.06.019.i
  br label %_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.020.i = phi i64 [ %i.a, %bb.b ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.06.019.i = phi i64 [ 24, %bb.b ], [ %i.i, %bb.d ] ; 2 uses
  %i.e = urem i64 %.sroa.0.020.i, 10
  %i.f = udiv i64 %.sroa.0.020.i, 10
  %i.g = trunc nuw nsw i64 %i.e to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = add nsw i64 %.sroa.06.019.i, -1          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !alias.scope !3893
  %i.k = icmp ugt i64 %.sroa.0.020.i, 9
  br i1 %i.k, label %bb.d, label %bb.c

_RNvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe10format_int.exit: ; preds = %bb.a, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.d, %bb.c ], [ 1, %bb.a ]
  %.sroa.05.0.i = phi ptr [ %i.c, %bb.c ], [ @273, %bb.a ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.05.0.i, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !21, !noundef !9
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @528, i64 noundef 15)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @529, i64 noundef 10)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @530, i64 noundef 8)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @531, i64 noundef 10)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @532, i64 noundef 8)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @534, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @533)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs3_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBV_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !noundef !9
  %i.d = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.v, %.backedge ]
  %i.i = load ptr, ptr %1, align 8, !nonnull !9, !align !14, !noundef !9
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = tail call noundef zeroext i1 @_RNvYNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeNtNtCslEmbWASCaJL_8bitflags6traits5Flags8is_emptyB8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.f)
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.j, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.l, 1
  store i64 %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.backedge, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #40
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val = load i16, ptr %i.r, align 8, !noundef !9 ; 4 uses
  %i.s = tail call noundef zeroext i1 @_RNvYNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeNtNtCslEmbWASCaJL_8bitflags6traits5Flags8containsB8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.g, i16 noundef %.val)
  br i1 %i.s, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef zeroext i1 @_RNvYNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeNtNtCslEmbWASCaJL_8bitflags6traits5Flags10intersectsB8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.f, i16 noundef %.val)
  br i1 %i.t, label %bb.j, label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.i, %bb.f
  %i.u = load i64, ptr %i.a, align 8, !noundef !9
  %i.v = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.b, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @_RNvYNtNtNtCs8frGy5WneL6_4fish3env3var7EnvModeNtNtCslEmbWASCaJL_8bitflags6traits5Flags6removeB8_(ptr noalias nofree noundef nonnull align 2 dereferenceable(2) %i.f, i16 noundef %.val)
  %i.y = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9
  %i.z = load i64, ptr %i.x, align 8, !noundef !9
  store ptr %i.y, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.val, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @538, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @537)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_9EnvScopedNtB5_11Environment13get_pwd_slash(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMse_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentINtB5_8EnvMutexNtB5_13EnvScopedImplE4lockBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9
  invoke void @_RNvMs8_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_13EnvScopedImpl13get_pwd_slash(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val3 = load i8, ptr %i.e, align 8, !range !16, !noundef !9
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_13EnvScopedImplEEBK_(ptr nonnull %.val2, i8 %.val3) #36
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !9, !align !17, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1 = load i8, ptr %i.g, align 8, !range !16, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.i = trunc nuw i8 %.val1 to i1
  br i1 %i.i, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.m, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i8 1, ptr %i.h monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.n = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_13EnvScopedImplEEBK_.exit, !prof !11

bb.g:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment13EnvMutexGuardNtBE_13EnvScopedImplEEBK_.exit
end_hunk_2
