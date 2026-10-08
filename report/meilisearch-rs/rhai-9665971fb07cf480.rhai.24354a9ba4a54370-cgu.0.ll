Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@"_ZN120_$LT$rhai..packages..array_basic..array_functions..sort_with_builtin_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17h5633051962ee4859E":bb.a
.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #70
  unreachable

bb.h:                                             ; preds = %bb.f, %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE"(ptr nonnull %.sroa.0.0.copyload, i8 %i.e) #72
          to label %bb.s unwind label %bb.r

"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit": ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi ptr [ %.val4.i, %bb.e ], [ %.sroa.0.0.copyload, %bb.d ]
  %i.j = invoke noundef align 8 ptr @_ZN4rhai8packages11array_basic15array_functions17sort_with_builtin17h33ab3b7ae0d43a89E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.i:                                             ; preds = %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  %.not4 = icmp eq ptr %i.j, null
  br i1 %.not4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.513.0..sroa_idx, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi i8 [ 0, %bb.k ], [ 12, %bb.j ]
  store i8 %.sink, ptr %0, align 8
  br i1 %.not.i, label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.m = trunc nuw i8 %i.e to i1
  br i1 %i.m, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.o = and i64 %i.n, 9223372036854775807
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.o, !prof !74

bb.o:                                             ; preds = %bb.n
  %i.q = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.q, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.l monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.r = atomicrmw sub ptr %.sroa.0.0.copyload, i32 1073741823 release, align 4
  %i.s = add i32 %i.r, -1073741823                ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %i.s, 1073741824
  br i1 %or.cond.i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit", label %bb.q, !prof !76

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.0.0.copyload, i32 noundef %i.s)
  br label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit"

"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit": ; preds = %bb.l, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, %bb.q
  ret void

bb.r:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.s:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.i
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..array_basic..array_functions..sort_with_builtin_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$7is_pure17h6fc38dad4b2953fdE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..iterator_functions..bits_from_start_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17h3538a3f53a575935E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..iterator_functions..bits_from_start_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17hed208886b73ec353E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..iterator_functions..bits_from_start_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17h2e1a995e08d78d0bE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN120_$LT$rhai..packages..iter_basic..iterator_functions..bits_from_start_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17hcf57966c2925271dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias readonly align 8 captures(none) dead_on_return %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not1 = icmp eq i64 %4, 1
  br i1 %.not1, label %bb.k, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #70
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4061
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 64, ptr %i.j, align 8, !noalias !4061
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.k, align 8, !noalias !4061
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.l, align 2, !noalias !4061
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.m, align 4, !noalias !4061
  store i8 17, ptr %i.a, align 8, !noalias !4061
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !4062
  %i.n = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !4062 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.l, !prof !58

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc.i.i.i unwind label %bb.g, !noalias !4061

.noexc.i.i.i:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %common.resume unwind label %bb.h, !noalias !4061

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !4061
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.ac, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.d
  %i.r = icmp samesign ult i64 %i.h, 64
  br i1 %i.r, label %bb.m, label %bb.e

bb.j:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.h, 64                     ; 2 uses
  %i.t = icmp ult i64 %i.s, 65
  br i1 %i.t, label %bb.m, label %bb.e

bb.k:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #70
  unreachable

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !4061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4061
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.u, align 8
  store i8 12, ptr %0, align 8
  br label %bb.r

bb.m:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i = phi i64 [ %i.s, %bb.j ], [ %i.h, %bb.i ] ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !4063
  %i.v = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !4063 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit2, !prof !58

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70, !noalias !4063
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit2: ; preds = %bb.m
  %i.x = ashr i64 %i.e, %.sroa.4.0.i.ph.i
  %i.y = sub nuw nsw i64 64, %.sroa.4.0.i.ph.i
  store i64 %i.x, ptr %i.v, align 8, !noalias !4063
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !4063
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !4063
  %i.aa = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !4063 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.o, label %_ZN4rhai5types7dynamic7Dynamic4from17h11046517fb35bb91E.exit, !prof !58

bb.o:                                             ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit2
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr nonnull %i.v, ptr nonnull @1094) #72
          to label %common.resume unwind label %bb.q, !noalias !4063

bb.q:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !4063
  unreachable

_ZN4rhai5types7dynamic7Dynamic4from17h11046517fb35bb91E.exit: ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit2
  store ptr %i.v, ptr %i.aa, align 8, !noalias !4063
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @1094, ptr %i.ae, align 8, !noalias !4063
  store i8 10, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.44.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4from17h11046517fb35bb91E.exit, %bb.l
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..iterator_functions..bits_from_start_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$7is_pure17h9a27ca70c880a86dE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..range_functions..contains_exclusive_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17h945623f4b4ea0927E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..range_functions..contains_exclusive_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17h052921ee3e503bd4E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN120_$LT$rhai..packages..iter_basic..range_functions..contains_exclusive_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17h39d41b16e884a96fE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN120_$LT$rhai..packages..iter_basic..range_functions..contains_exclusive_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17h18167cc68a76828eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias readonly align 8 captures(none) dead_on_return %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp ugt i64 %4, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load ptr, ptr %3, align 8, !nonnull !55, !align !56, !noundef !55 ; 2 uses
  %.val = load i8, ptr %i.h, align 8, !range !67, !noundef !55
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1 = load ptr, ptr %i.i, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic10write_lock17h19c45b98a3acdb57E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, i8 %.val, ptr %.val1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !75, !noundef !55 ; 4 uses
  %.not = icmp eq i8 %i.k, 3
  br i1 %.not, label %bb.g, label %bb.d, !prof !66

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #70
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !55, !noundef !55 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.k, 2                    ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %.val.i = load i8, ptr %i.l, align 8, !range !67, !noundef !55
  %cond.i.i = icmp eq i8 %.val.i, 10
  br i1 %cond.i.i, label %bb.f, label %_ZN4rhai5types7dynamic7Dynamic12downcast_mut17h08e90ea34b6848c5E.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 24
  %.val4.i = load ptr, ptr %i.m, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.n = load ptr, ptr %.val4.i, align 8, !nonnull !55, !align !61, !noundef !55
  %i.o = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !55, !align !56, !noundef !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !55, !nonnull !55
  %i.s = invoke { ptr, ptr } %i.r(ptr noundef nonnull align 1 %i.n)
          to label %.noexc unwind label %bb.h, !inline_history !1 ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !55, !nonnull !55
  invoke void %i.w(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef align 1 %i.t)
          to label %.noexc8 unwind label %bb.h, !inline_history !1

.noexc8:                                          ; preds = %.noexc
  %i.x = load i128, ptr %i.a, align 16, !noundef !55
  %i.y = icmp ne i128 %i.x, 71727358734286728294105912848098828593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not3.i = icmp eq ptr %i.t, null
  %or.cond.i = or i1 %.not3.i, %i.y
  br i1 %or.cond.i, label %_ZN4rhai5types7dynamic7Dynamic12downcast_mut17h08e90ea34b6848c5E.exit.thread.i, label %bb.i, !prof !77

_ZN4rhai5types7dynamic7Dynamic12downcast_mut17h08e90ea34b6848c5E.exit.thread.i: ; preds = %.noexc8, %bb.e
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3315) #70
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %_ZN4rhai5types7dynamic7Dynamic12downcast_mut17h08e90ea34b6848c5E.exit.thread.i
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #70
  unreachable

bb.h:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic12downcast_mut17h08e90ea34b6848c5E.exit.thread.i, %.noexc, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr101drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hebf5e54a1bc913b6E"(ptr nonnull %.sroa.0.0.copyload, i8 %i.k) #72
          to label %bb.p unwind label %bb.o

bb.i:                                             ; preds = %.noexc8, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.t, %.noexc8 ], [ %.sroa.0.0.copyload, %bb.d ] ; 2 uses
  %i.aa = load i64, ptr %.sroa.0.0.i, align 8, !alias.scope !4071, !noalias !4072, !noundef !55
  %.not.i.i = icmp sle i64 %i.aa, %i.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !4073
  %i.ad = icmp slt i64 %i.g, %i.ac
  %.sroa.06.0.i.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  %i.ae = zext i1 %.sroa.06.0.i.i to i8
  store i8 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ae, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.612.0..sroa_idx, align 4
  br i1 %.not.i, label %"_ZN4core3ptr101drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hebf5e54a1bc913b6E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.ag = trunc nuw i8 %i.k to i1
  br i1 %i.ag, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.ak = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.af monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.al = atomicrmw sub ptr %.sroa.0.0.copyload, i32 1073741823 release, align 4
  %i.am = add i32 %i.al, -1073741823              ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %i.am, 1073741824
  br i1 %or.cond.i.i.i.i, label %"_ZN4core3ptr101drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$core..ops..range..Range$LT$i64$GT$$GT$$GT$17hebf5e54a1bc913b6E.exit", label %bb.n, !prof !76

end_hunk_0
begin_hunk_1_@_ZN4rhai8packages10iter_basic18iterator_functions9get_chars17h5048ad6103467d02E:bb.a
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload.i19.i, ptr %.sroa.531.0..sroa_idx.i, align 8, !alias.scope !43970, !noalias !43974
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %.sroa.632.0..sroa_idx.i, align 8, !alias.scope !43970, !noalias !43974
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i1, i8 } @_ZN4rhai8packages10iter_basic7std_add17h280afd53275f83e0E(i8 noundef %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i8, i1 } @llvm.sadd.with.overflow.i8(i8 %0, i8 %1) ; 2 uses
  %i.b = extractvalue { i8, i1 } %i.a, 1
  %.sroa.0.0.i = xor i1 %i.b, true
  %i.c = extractvalue { i8, i1 } %i.a, 0
  %i.d = insertvalue { i1, i8 } poison, i1 %.sroa.0.0.i, 0
  %i.e = insertvalue { i1, i8 } %i.d, i8 %i.c, 1
  ret { i1, i8 } %i.e
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i32, i32 } @_ZN4rhai8packages10iter_basic7std_add17h4b801dcf19cead84E(i32 noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i32 %1, %0                           ; 2 uses
  %i.b = icmp uge i32 %i.a, %0
  %..i = zext i1 %i.b to i32
  %i.c = insertvalue { i32, i32 } poison, i32 %..i, 0
  %i.d = insertvalue { i32, i32 } %i.c, i32 %i.a, 1
  ret { i32, i32 } %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i16, i16 } @_ZN4rhai8packages10iter_basic7std_add17h5d5c1398bde75c35E(i16 noundef %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %0, i16 %1) ; 2 uses
  %i.b = extractvalue { i16, i1 } %i.a, 1
  %not..i = xor i1 %i.b, true
  %..i = zext i1 %not..i to i16
  %i.c = extractvalue { i16, i1 } %i.a, 0
  %i.d = insertvalue { i16, i16 } poison, i16 %..i, 0
  %i.e = insertvalue { i16, i16 } %i.d, i16 %i.c, 1
  ret { i16, i16 } %i.e
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i1, i8 } @_ZN4rhai8packages10iter_basic7std_add17h6c9ea93db7915a49E(i8 noundef %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i8 %1, %0                            ; 2 uses
  %i.b = icmp uge i8 %i.a, %0
  %i.c = insertvalue { i1, i8 } poison, i1 %i.b, 0
  %i.d = insertvalue { i1, i8 } %i.c, i8 %i.a, 1
  ret { i1, i8 } %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i32, i32 } @_ZN4rhai8packages10iter_basic7std_add17h90ed30a802c4483bE(i32 noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %1) ; 2 uses
  %i.b = extractvalue { i32, i1 } %i.a, 1
  %not..i = xor i1 %i.b, true
  %..i = zext i1 %not..i to i32
  %i.c = extractvalue { i32, i1 } %i.a, 0
  %i.d = insertvalue { i32, i32 } poison, i32 %..i, 0
  %i.e = insertvalue { i32, i32 } %i.d, i32 %i.c, 1
  ret { i32, i32 } %i.e
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_ZN4rhai8packages10iter_basic7std_add17h960cba5c3ea3e229E(i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %1, %0                           ; 2 uses
  %i.b = icmp uge i64 %i.a, %0
  %..i = zext i1 %i.b to i64
  %i.c = insertvalue { i64, i64 } poison, i64 %..i, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %i.a, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i16, i16 } @_ZN4rhai8packages10iter_basic7std_add17had38b4d43b26f64cE(i16 noundef %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i16 %1, %0                           ; 2 uses
  %i.b = icmp uge i16 %i.a, %0
  %..i = zext i1 %i.b to i16
  %i.c = insertvalue { i16, i16 } poison, i16 %..i, 0
  %i.d = insertvalue { i16, i16 } %i.c, i16 %i.a, 1
  ret { i16, i16 } %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_ZN4rhai8packages10iter_basic7std_add17hd9a187ab9cec2062E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, i128 noundef %1, i128 noundef %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i128 %2, %1                          ; 2 uses
  %i.b = icmp ult i128 %i.a, %1
  br i1 %i.b, label %"_ZN61_$LT$u128$u20$as$u20$num_traits..ops..checked..CheckedAdd$GT$11checked_add17h93fe2d8494f57579E.exit", label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.a, ptr %i.c, align 16, !alias.scope !43977
  br label %"_ZN61_$LT$u128$u20$as$u20$num_traits..ops..checked..CheckedAdd$GT$11checked_add17h93fe2d8494f57579E.exit"

"_ZN61_$LT$u128$u20$as$u20$num_traits..ops..checked..CheckedAdd$GT$11checked_add17h93fe2d8494f57579E.exit": ; preds = %bb.a, %bb.b
  %storemerge.i = phi i128 [ 1, %bb.b ], [ 0, %bb.a ]
  store i128 %storemerge.i, ptr %0, align 16, !alias.scope !43977
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_ZN4rhai8packages10iter_basic7std_add17hdde453a4b5d84a80E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 16)) %0, i128 noundef %1, i128 noundef %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i128, i1 } @llvm.sadd.with.overflow.i128(i128 %1, i128 %2) ; 2 uses
  %i.b = extractvalue { i128, i1 } %i.a, 1
  br i1 %i.b, label %"_ZN61_$LT$i128$u20$as$u20$num_traits..ops..checked..CheckedAdd$GT$11checked_add17he30e4d37c48e2e7eE.exit", label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i128, i1 } %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.c, ptr %i.d, align 16, !alias.scope !43980
  br label %"_ZN61_$LT$i128$u20$as$u20$num_traits..ops..checked..CheckedAdd$GT$11checked_add17he30e4d37c48e2e7eE.exit"

"_ZN61_$LT$i128$u20$as$u20$num_traits..ops..checked..CheckedAdd$GT$11checked_add17he30e4d37c48e2e7eE.exit": ; preds = %bb.a, %bb.b
  %storemerge.i = phi i128 [ 1, %bb.b ], [ 0, %bb.a ]
  store i128 %storemerge.i, ptr %0, align 16, !alias.scope !43980
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_ZN4rhai8packages10iter_basic7std_add17he60e0c08a4cb5432E(i64 noundef %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %not..i = xor i1 %i.b, true
  %..i = zext i1 %not..i to i64
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %i.d = insertvalue { i64, i64 } poison, i64 %..i, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4rhai8packages10iter_basic8BitRange3new17h5720bbe72d654b90E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.h, label %bb.g

bb.b:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 64, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.f, align 4
  store i8 17, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43983
  %i.g = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !43983 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.i, !prof !58

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i64 %2, 64
  br i1 %i.k, label %bb.j, label %bb.b

bb.h:                                             ; preds = %bb.a
  %i.l = add nsw i64 %2, 64                       ; 2 uses
  %i.m = icmp ult i64 %i.l, 65
  br i1 %i.m, label %bb.j, label %bb.b

bb.i:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.n, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.h
  %.sroa.4.0.i.ph = phi i64 [ %i.l, %bb.h ], [ %2, %bb.g ] ; 3 uses
  %i.o = icmp slt i64 %3, 0
  %i.p = add nuw i64 %.sroa.4.0.i.ph, %3
  %i.q = icmp ugt i64 %i.p, 64
  %i.r = sub nuw nsw i64 64, %.sroa.4.0.i.ph
  %spec.select = select i1 %i.q, i64 %i.r, i64 %3
  %.sroa.04.1 = select i1 %i.o, i64 0, i64 %spec.select
  %i.s = ashr i64 %1, %.sroa.4.0.i.ph
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.04.1, ptr %i.u, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi i64 [ 0, %bb.j ], [ 1, %bb.i ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4rhai8packages10math_basic13int_functions15parse_int_radix17he2224bdd238ae179E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %1, ptr %i.m, align 8
  store i64 %2, ptr %i.k, align 8
  %i.n = add i64 %2, -2
  %or.cond = icmp ult i64 %i.n, 35
  br i1 %or.cond, label %.split, label %_ZN4core3ops5range11RangeBounds8contains17h8a7339743645d17bE.exit.thread

_ZN4core3ops5range11RangeBounds8contains17h8a7339743645d17bE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !44002
  store ptr @1677, ptr %i.f, align 8, !noalias !44003
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !44003
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !44003
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !44003
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !44003
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !44004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i16 0, ptr %i.q, align 4
  store i8 23, ptr %i.j, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !44005
  %i.r = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !44005 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !58

bb.b:                                             ; preds = %_ZN4core3ops5range11RangeBounds8contains17h8a7339743645d17bE.exit.thread
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j) #72
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.c ], [ %i.al, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %_ZN4core3ops5range11RangeBounds8contains17h8a7339743645d17bE.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit"
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %bb.k ], [ %i.r, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit" ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %bb.k ], [ 1, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit" ]
  %i.v = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.w

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.x = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h552c23ab54239f91E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0
  %i.z = extractvalue { ptr, i64 } %i.x, 1
  %i.aa = trunc nuw nsw i64 %2 to i32
  call fastcc void @"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef %i.z, i32 noundef %i.aa)
  %i.ab = load i8, ptr %i.g, align 8, !range !57, !noundef !55
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.split
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !range !64, !noundef !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.ae, ptr %i.e, align 1, !noalias !44006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44006
  store ptr %i.l, ptr %i.b, align 8, !noalias !44006
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !44006
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.af, align 8, !noalias !44006
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !44006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44007
  store ptr @1680, ptr %i.a, align 8, !noalias !44008
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !44008
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !44008
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !44008
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !44008
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !44009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44006
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !44006
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 0, ptr %i.ah, align 2, !noalias !44006
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i16 0, ptr %i.ai, align 4, !noalias !44006
  store i8 23, ptr %i.d, align 8, !noalias !44006
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !44010
  %i.aj = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !44010 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %"_ZN4rhai8packages10math_basic13int_functions15parse_int_radix28_$u7b$$u7b$closure$u7d$$u7d$17h5ef36293c9e2d10dE.exit", !prof !58

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #72
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4rhai8packages10math_basic13int_functions15parse_int_radix28_$u7b$$u7b$closure$u7d$$u7d$17h5ef36293c9e2d10dE.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.j:                                             ; preds = %.split
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !55
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZN4rhai8packages10math_basic13int_functions15parse_int_radix28_$u7b$$u7b$closure$u7d$$u7d$17h5ef36293c9e2d10dE.exit"
  %.sroa.4.1 = phi ptr [ %i.aj, %"_ZN4rhai8packages10math_basic13int_functions15parse_int_radix28_$u7b$$u7b$closure$u7d$$u7d$17h5ef36293c9e2d10dE.exit" ], [ %i.ap, %bb.j ]
  %.sroa.0.1 = phi i64 [ 1, %"_ZN4rhai8packages10math_basic13int_functions15parse_int_radix28_$u7b$$u7b$closure$u7d$$u7d$17h5ef36293c9e2d10dE.exit" ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4rhai8packages10math_basic13int_functions9parse_int17ha0db2cf8be41ecd0E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN4rhai8packages10math_basic13int_functions15parse_int_radix17he2224bdd238ae179E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 10)
  ret { i64, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4rhai8packages10math_basic14trig_functions3tan17hfbd2966e1270fda1E(double noundef %0) unnamed_addr #41 {
end_hunk_1
