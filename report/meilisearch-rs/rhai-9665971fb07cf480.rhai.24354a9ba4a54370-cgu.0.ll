Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN109_$LT$rhai..packages..array_basic..array_functions..reduce_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17hf65d1b3fd28e1c51E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  invoke void @_ZN4rhai8packages11array_basic15array_functions19reduce_with_initial17hcd67515a0c036cd4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @2)
          to label %_ZN4rhai8packages11array_basic15array_functions6reduce17h0a409fe67154a12cE.exit unwind label %bb.k

_ZN4rhai8packages11array_basic15array_functions6reduce17h0a409fe67154a12cE.exit: ; preds = %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br i1 %.not.i, label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4rhai8packages11array_basic15array_functions6reduce17h0a409fe67154a12cE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.u = trunc nuw i8 %i.m to i1
  br i1 %i.u, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.w = and i64 %i.v, 9223372036854775807
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %.noexc12, !prof !1425

.noexc12:                                         ; preds = %bb.m
  %i.y = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.y, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc12
  store atomic i8 1, ptr %i.t monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.n, %.noexc12, %bb.m, %bb.l
  %i.z = atomicrmw sub ptr %.sroa.0.0.copyload, i32 1073741823 release, align 4
  %i.aa = add i32 %i.z, -1073741823               ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %i.aa, 1073741824
  br i1 %or.cond.i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit", label %bb.o, !prof !1435

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.0.0.copyload, i32 noundef %i.aa)
  br label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit"

"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit": ; preds = %bb.o, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, %_ZN4rhai8packages11array_basic15array_functions6reduce17h0a409fe67154a12cE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.k, %bb.r
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.q:                                             ; preds = %bb.r, %bb.d
  %.pn14 = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn15, %bb.r ]
  resume { ptr, i32 } %.pn14

bb.r:                                             ; preds = %.split.thread, %bb.d
  %.pn15 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %i.s, %bb.d ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #72
          to label %bb.q unwind label %bb.p
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..reduce_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$7is_pure17h480412d701355fadE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..remove_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17hb35ded52361f6fc0E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..remove_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17h58075c5f3b62b79eE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..remove_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17he09b494bc293c2aeE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN109_$LT$rhai..packages..array_basic..array_functions..remove_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17h1a1ffdf6724f26cdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias readonly align 8 captures(none) dead_on_return %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp ugt i64 %4, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = call fastcc noundef i64 @_ZN4rhai5types7dynamic7Dynamic4cast17h52acf56d99487057E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load ptr, ptr %3, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val = load i8, ptr %i.h, align 8, !range !645, !noundef !3
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val1 = load ptr, ptr %i.i, align 8
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic10write_lock17h4437ce3409411b8bE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, i8 %.val, ptr %.val1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !1434, !noundef !3 ; 4 uses
  %.not = icmp eq i8 %i.k, 3
  br i1 %.not, label %bb.g, label %bb.d, !prof !543

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #70
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i8 %i.k, 2                    ; 2 uses
  br i1 %.not.i, label %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %.val.i = load i8, ptr %i.l, align 8, !range !645, !noundef !3
  %i.m = getelementptr i8, ptr %.sroa.0.0.copyload, i64 24
  %.val4.i = load ptr, ptr %i.m, align 8          ; 2 uses
  %i.n = icmp ne i8 %.val.i, 6
  %.not31.i = icmp eq ptr %.val4.i, null
  %.not3.i = select i1 %i.n, i1 true, i1 %.not31.i
  br i1 %.not3.i, label %bb.f, label %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit", !prof !543

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3315) #70
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #70
  unreachable

bb.h:                                             ; preds = %bb.o, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE"(ptr nonnull %.sroa.0.0.copyload, i8 %i.k) #72
          to label %bb.w unwind label %bb.v

"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit": ; preds = %bb.e, %bb.d
  %.sroa.0.0.i = phi ptr [ %.val4.i, %bb.e ], [ %.sroa.0.0.copyload, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2346)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2346, !noalias !2349, !noundef !3 ; 9 uses
  %i.r = icmp ult i64 %i.q, 576460752303423488
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %bb.m, label %bb.i

bb.i:                                             ; preds = %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  %i.t = icmp slt i64 %i.g, 0
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = icmp samesign ult i64 %i.g, %i.q
  br i1 %i.u, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.v = sub i64 0, %i.g
  %.not.i.i = icmp ult i64 %i.q, %i.v
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i64 %i.q, %i.g
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j, %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %bb.j
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.j ], [ %i.w, %bb.l ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  %.not.i2.i = icmp ult i64 %.sroa.4.0.i.ph.i, %i.q
  br i1 %.not.i2.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit.i", label %bb.o, !prof !1425

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.4.0.i.ph.i, i64 noundef %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1866) #70
          to label %.noexc8 unwind label %bb.h

.noexc8:                                          ; preds = %bb.o
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit.i": ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2354, !noalias !2355, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.4.0.i.ph.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = xor i64 %.sroa.4.0.i.ph.i, -1
  %i.ac = add nsw i64 %i.q, %i.ab
  %i.ad = shl nuw nsw i64 %i.ac, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !noalias !2358
  %i.ae = add nsw i64 %i.q, -1
  store i64 %i.ae, ptr %i.p, align 8, !alias.scope !2354, !noalias !2355
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br i1 %.not.i, label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.ag = trunc nuw i8 %i.k to i1
  br i1 %i.ag, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.ai = and i64 %i.ah, 9223372036854775807
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.s, !prof !1425

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ak, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.af monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.al = atomicrmw sub ptr %.sroa.0.0.copyload, i32 1073741823 release, align 4
  %i.am = add i32 %i.al, -1073741823              ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %i.am, 1073741824
  br i1 %or.cond.i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit", label %bb.u, !prof !1435

bb.u:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.0.0.copyload, i32 noundef %i.am)
  br label %"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit"

"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE.exit": ; preds = %bb.p, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, %bb.u
  ret void

bb.v:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.w:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.o
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..remove_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$7is_pure17h9ef97190abde0e7bE"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..retain_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11has_context17h7d188ad6f44323f7E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..retain_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$11is_volatile17h808d410464e5dfb6E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @"_ZN109_$LT$rhai..packages..array_basic..array_functions..retain_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$14is_method_call17hf3b35d6f4f059783E"(ptr noalias nonnull readonly align 1 captures(none) %0) unnamed_addr #0 {
bb.a:
  ret i1 true
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @"_ZN109_$LT$rhai..packages..array_basic..array_functions..retain_token$u20$as$u20$rhai..func..plugin..PluginFunc$GT$4call17h28d238a097f55439E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nonnull readonly align 1 captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = icmp ugt i64 %4, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic4cast17h022a108f862bb21dE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = load ptr, ptr %3, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val = load i8, ptr %i.l, align 8, !range !645, !noundef !3
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val4 = load ptr, ptr %i.m, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic10write_lock17h4437ce3409411b8bE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, i8 %.val, ptr %.val4)
          to label %bb.f unwind label %.split.thread

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 1, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #70
  unreachable

bb.d:                                             ; preds = %.body
  br i1 %.sroa.0.2.lpad-body, label %bb.y, label %bb.x

.split.thread:                                    ; preds = %bb.h, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.e:                                             ; preds = %bb.h
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i8, ptr %i.n, align 8, !range !1434, !noundef !3 ; 4 uses
  %.not = icmp eq i8 %i.o, 3
  br i1 %.not, label %bb.h, label %bb.g, !prof !543

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = load ptr, ptr %2, align 8, !noundef !3
  %.not2 = icmp eq ptr %i.p, null
  br i1 %.not2, label %.invoke, label %bb.i, !prof !543

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #70
          to label %bb.e unwind label %.split.thread

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %.not.i = icmp eq i8 %i.o, 2                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  br i1 %.not.i, label %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %.val.i = load i8, ptr %i.q, align 8, !range !645, !noundef !3
  %i.r = getelementptr i8, ptr %.sroa.0.0.copyload, i64 24
  %.val4.i = load ptr, ptr %i.r, align 8          ; 2 uses
  %i.s = icmp ne i8 %.val.i, 6
  %.not31.i = icmp eq ptr %.val4.i, null
  %.not3.i = select i1 %i.s, i1 true, i1 %.not31.i
  br i1 %.not3.i, label %.invoke, label %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit", !prof !543

.invoke:                                          ; preds = %bb.g, %bb.j
  %i.t = phi ptr [ @3315, %bb.j ], [ @86, %bb.g ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #70
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.k:                                             ; preds = %.invoke, %bb.n, %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  %.sroa.0.2 = phi i1 [ false, %bb.n ], [ false, %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit" ], [ true, %.invoke ]
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.k
  %.sroa.0.2.lpad-body = phi i1 [ %.sroa.0.2, %bb.k ], [ false, %bb.o ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.ad, %bb.o ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h4c30e07346cc100fE"(ptr %.sroa.0.0.copyload, i8 %i.o) #72
          to label %bb.d unwind label %bb.w

"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit": ; preds = %bb.j, %bb.i
  %.sroa.0.0.i = phi ptr [ %.val4.i, %bb.j ], [ %.sroa.0.0.copyload, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  invoke void @_ZN4rhai8packages11array_basic15array_functions6retain17h17f5d744b9f6c3acE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.l unwind label %bb.k

bb.l:                                             ; preds = %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h29e2e499db71a9b2E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = load i64, ptr %i.e, align 8, !range !754, !noundef !3 ; 2 uses
  %i.w = icmp eq i64 %i.v, -9223372036854775808
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !noundef !3 ; 4 uses
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i8 12, ptr %0, align 8
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages11array_basic15array_functions5drain17hf2f466440be7ad92E:bb.a
  br i1 %i.m, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1860) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

.body:                                            ; preds = %.body.i, %bb.k, %bb.d, %.body40
  %.pn32 = phi { ptr, i32 } [ %.pn, %.body40 ], [ %i.n, %bb.d ], [ %i.aj, %bb.k ], [ %i.aj, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %3) #72
          to label %bb.y unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  store i64 %i.h, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load ptr, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit", %._crit_edge
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %3)
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.r
  %i.s = phi ptr [ %i.l, %.lr.ph ], [ %i.aw, %bb.r ] ; 2 uses
  %i.t = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.r ] ; 8 uses
  %.sroa.01.044 = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.r ] ; 2 uses
  %.sroa.03.043 = phi i64 [ 0, %.lr.ph ], [ %.sroa.03.1, %bb.r ] ; 4 uses
  %i.u = phi i64 [ %i.h, %.lr.ph ], [ %i.ay, %bb.r ] ; 3 uses
  %i.v = sext i32 %.sroa.01.044 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.sroa.03.043 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 4, ptr %i.b, align 8
  store i8 0, ptr %.sroa.5.0..sroa_idx46, align 1
  store i32 0, ptr %.sroa.647.0..sroa_idx, align 4
  store i64 %i.v, ptr %.sroa.748.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types6fn_ptr5FnPtr21_call_with_extra_args17hc610f898457910bcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @455, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable_or_null(16) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.q, %bb.p
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body40

_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = load i8, ptr %i.c, align 8, !range !837, !noundef !3 ; 2 uses
  %i.z = icmp eq i8 %i.y, 12
  br i1 %i.z, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit
  %i.aa = load ptr, ptr %.sroa.629.0..sroa_idx, align 8, !nonnull !3, !align !4, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44640)
  %i.ac = load ptr, ptr %i.o, align 8, !alias.scope !44643, !nonnull !3, !noundef !3 ; 4 uses
  %i.ad = icmp eq i64 %i.t, 0
  br i1 %i.ad, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i", label %.lr.ph67

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i": ; preds = %.lr.ph67
  %i.ae = icmp eq i64 %i.ag, %i.t
  br i1 %i.ae, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i", label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.h, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i"
  %.sroa.0.0.i.i65 = phi i64 [ %i.ag, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i" ], [ 0, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.0.0.i.i65
  %i.ag = add i64 %.sroa.0.0.i.i65, 1             ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.af)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i" unwind label %bb.i, !noalias !44640, !inline_history !9556

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i": ; preds = %.lr.ph70
  %i.ah = add i64 %.sroa.0.1.i.i68, 1             ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.t
  br i1 %i.ai, label %.body.i, label %.lr.ph70

bb.i:                                             ; preds = %.lr.ph67
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = icmp eq i64 %i.ag, %i.t
  br i1 %i.ak, label %.body.i, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i"
  %.sroa.0.1.i.i68 = phi i64 [ %i.ah, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i" ], [ %i.ag, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.sroa.0.1.i.i68
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.al)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i" unwind label %bb.j, !noalias !44640, !inline_history !9556

bb.j:                                             ; preds = %.lr.ph70
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44646, !inline_history !9560
  unreachable

.body.i:                                          ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i", %bb.i
  %.val2.i = load i64, ptr %i.f, align 8, !range !540, !alias.scope !44640, !noundef !3 ; 2 uses
  %i.an = icmp eq i64 %.val2.i, 0
  br i1 %i.an, label %.body, label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.ao = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !44640, !inline_history !9561
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i", %bb.h
  %.val.i = load i64, ptr %i.f, align 8, !range !540, !alias.scope !44640, !noundef !3 ; 2 uses
  %i.ap = icmp eq i64 %.val.i, 0
  br i1 %i.ap, label %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i"
  %i.aq = shl nuw i64 %.val.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !44640, !inline_history !9561
  br label %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit"

bb.m:                                             ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.528.0..sroa_idx, i64 7, i1 false)
  %.sroa.629.0.copyload = load ptr, ptr %.sroa.629.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.y, ptr %i.d, align 8
  store ptr %.sroa.629.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.d)
          to label %.body40 unwind label %bb.x, !inline_history !1419

bb.o:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.e, align 8, !noundef !3
  %.not = icmp eq ptr %i.as, null
  %i.at = load i8, ptr %i.r, align 8, !range !5
  %i.au = trunc nuw i8 %i.at to i1
  %.sroa.07.0 = select i1 %.not, i1 %i.au, i1 false
  br i1 %.sroa.07.0, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36" unwind label %bb.g, !inline_history !1419

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.d)
          to label %bb.s unwind label %bb.g, !inline_history !1419

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36": ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = add nuw nsw i64 %.sroa.03.043, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36"
  %i.aw = phi ptr [ %i.bl, %bb.w ], [ %i.s, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36" ]
  %i.ax = phi i64 [ %i.bn, %bb.w ], [ %i.t, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36" ]
  %i.ay = phi i64 [ %i.bg, %bb.w ], [ %i.u, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36" ] ; 3 uses
  %.sroa.03.1 = phi i64 [ %.sroa.03.043, %bb.w ], [ %i.av, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit36" ] ; 2 uses
  %i.az = add i32 %.sroa.01.044, 1
  %i.ba = icmp ult i64 %i.ay, 576460752303423488
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp ult i64 %.sroa.03.1, %i.ay
  br i1 %i.bb, label %bb.f, label %._crit_edge

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44649)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !44652
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bd = xor i64 %.sroa.03.043, -1
  %i.be = add nsw i64 %i.u, %i.bd
  %i.bf = shl nuw nsw i64 %i.be, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.bc, i64 %i.bf, i1 false), !noalias !44654
  %i.bg = add nsw i64 %i.u, -1                    ; 2 uses
  store i64 %i.bg, ptr %i.g, align 8, !alias.scope !44649, !noalias !44656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44657)
  %i.bh = load i64, ptr %i.f, align 8, !range !540, !alias.scope !44657, !noalias !44660, !noundef !3
  %i.bi = icmp eq i64 %i.t, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41076cbd976ee6f6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1861)
          to label %._crit_edge49 unwind label %bb.u, !noalias !44663

._crit_edge49:                                    ; preds = %bb.t
  %.pre50 = load ptr, ptr %i.o, align 8, !alias.scope !44657, !noalias !44660
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %.body40 unwind label %bb.v, !noalias !44657, !inline_history !1419

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44664
  unreachable

bb.w:                                             ; preds = %._crit_edge49, %bb.s
  %i.bl = phi ptr [ %.pre50, %._crit_edge49 ], [ %i.s, %bb.s ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !44657
  %i.bn = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.bn, ptr %i.p, align 8, !alias.scope !44657, !noalias !44660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.x:                                             ; preds = %bb.n, %.body40, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit": ; preds = %bb.l, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

.body40:                                          ; preds = %bb.g, %bb.n, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.x, %bb.g ], [ %i.bj, %bb.u ]
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #72
          to label %.body unwind label %bb.x

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %.pn32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN4rhai8packages11array_basic15array_functions5shift17haf5f9aef2ab54edbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44665)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !44665, !noalias !44668, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !44671
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.i, i1 false), !noalias !44672
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !44665, !noalias !44668
  br label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6append17h5f76491fe03d1fc8E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 7 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 5 uses
  %i.h = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.k, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hb10b839dca063977E.exit", %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.0.copyload, i64 %i.c
  store ptr %.sroa.4.0.copyload, ptr %i.a, align 8, !alias.scope !44673, !noalias !44676
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.k, align 8, !alias.scope !44673, !noalias !44676
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.l, align 8, !alias.scope !44673, !noalias !44676
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8, !alias.scope !44673, !noalias !44676
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44681)
  %.idx = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44683)
  %i.n = load i64, ptr %0, align 8, !range !540, !alias.scope !44686, !noalias !44681, !noundef !3
  %i.o = sub nsw i64 %i.n, %i.g
  %i.p = icmp ugt i64 %i.c, %i.o
  br i1 %i.p, label %bb.h, label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hb10b839dca063977E.exit", !prof !543

bb.g:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hac7b6c6823adc3b8E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #72
          to label %common.resume unwind label %bb.i, !noalias !44678

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.c, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.g, !noalias !44681

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.f, align 8, !alias.scope !44689, !noalias !44681
  br label %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hb10b839dca063977E.exit"

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44690
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hb10b839dca063977E.exit": ; preds = %bb.f, %.noexc.i
  %i.s = phi i64 [ %i.g, %bb.f ], [ %.pre.i.i, %.noexc.i ] ; 3 uses
  %i.t = icmp ult i64 %i.s, 576460752303423488
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !44689, !noalias !44681, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull readonly align 8 %.sroa.4.0.copyload, i64 %.idx, i1 false), !noalias !44691
  %i.x = add nuw nsw i64 %i.s, %i.c
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !44689, !noalias !44681
  store ptr %.sroa.4.0.copyload, ptr %i.m, align 8, !alias.scope !44681, !noalias !44678
  call fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hac7b6c6823adc3b8E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !44678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %common.resume

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6concat17h66718b810ec88d10E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 7 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.c

end_hunk_1
begin_hunk_2_@_ZN4rhai8packages11array_basic15array_functions6filter17hfa3efe9ec983a7b8E:bb.a

.body:                                            ; preds = %bb.i, %.body.i, %.body39
  %.pn35 = phi { ptr, i32 } [ %.pn, %.body39 ], [ %i.ag, %.body.i ], [ %i.ag, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %3) #72
          to label %bb.w unwind label %bb.v

"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit": ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn35
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6insert17h27ce4138b1d925e9E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 11 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44749)
  %i.e = load i64, ptr %0, align 8, !range !540, !alias.scope !44749, !noalias !44752, !noundef !3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41076cbd976ee6f6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1863)
          to label %bb.i unwind label %bb.d, !noalias !44755

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %2)
          to label %.body unwind label %bb.e, !noalias !44749, !inline_history !1419

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44756
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp samesign ult i64 %1, %i.b
  br i1 %.not.i, label %.split.i, label %.thread

bb.h:                                             ; preds = %bb.f
  %i.j = sub i64 0, %1
  %i.k = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.b, i64 range(i64 1, -9223372036854775807) %i.j)
  br label %.split.i

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !44749, !noalias !44752, !nonnull !3, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !noalias !44749
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %bb.s, %bb.i
  %.sink = phi i64 [ %i.ab, %bb.r ], [ %i.af, %bb.s ], [ 1, %bb.i ]
  store i64 %.sink, ptr %i.a, align 8, !noalias !3
  ret void

.split.i:                                         ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %.not = icmp samesign ult i64 %.sroa.0.0.i, %i.b
  br i1 %.not, label %bb.k, label %.thread

bb.k:                                             ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44757)
  %i.n = load i64, ptr %0, align 8, !range !540, !alias.scope !44757, !noalias !44760, !noundef !3
  %i.o = icmp eq i64 %i.b, %i.n
  br i1 %i.o, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41076cbd976ee6f6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1864)
          to label %bb.r unwind label %bb.m, !noalias !44760

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %2)
          to label %.body unwind label %bb.n, !noalias !44757, !inline_history !1419

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44762
  unreachable

.thread:                                          ; preds = %bb.g, %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44763)
  %i.r = load i64, ptr %0, align 8, !range !540, !alias.scope !44763, !noalias !44766, !noundef !3
  %i.s = icmp eq i64 %i.b, %i.r
  br i1 %i.s, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.thread
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41076cbd976ee6f6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1865)
          to label %bb.s unwind label %bb.p, !noalias !44769

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %2)
          to label %.body unwind label %bb.q, !noalias !44763, !inline_history !1419

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44770
  unreachable

bb.r:                                             ; preds = %bb.k, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !44757, !noalias !44760, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.sroa.0.0.i ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = sub nuw nsw i64 %i.b, %.sroa.0.0.i
  %i.aa = shl nuw nsw i64 %i.z, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.aa, i1 false), !noalias !44762
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !noalias !44757
  %i.ab = add nuw nsw i64 %i.b, 1
  br label %bb.j

bb.s:                                             ; preds = %bb.o, %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !44763, !noalias !44766, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !noalias !44763
  %i.af = add nuw nsw i64 %i.b, 1
  br label %bb.j

.body:                                            ; preds = %bb.d, %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.p, %bb.m ], [ %i.t, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6reduce17h0a409fe67154a12cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #8 {
bb.a:
  tail call void @_ZN4rhai8packages11array_basic15array_functions19reduce_with_initial17hcd67515a0c036cd4E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) @2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6remove17h2a5e5451711d7402E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 9 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %2, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %2, %i.b
  br i1 %i.f, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = sub i64 0, %2
  %.not.i = icmp ult i64 %i.b, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add nsw i64 %i.b, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.4.0.i.ph = phi i64 [ %2, %bb.c ], [ %i.h, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44771)
  %.not.i2 = icmp ult i64 %.sroa.4.0.i.ph, %i.b
  br i1 %.not.i2, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit", label %bb.h, !prof !1425

bb.h:                                             ; preds = %bb.g
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %.sroa.4.0.i.ph, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1866) #70, !noalias !44774
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit": ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !44771, !noalias !44776, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.4.0.i.ph ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !44778
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = xor i64 %.sroa.4.0.i.ph, -1
  %i.n = add nsw i64 %i.b, %i.m
  %i.o = shl nuw nsw i64 %i.n, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.l, i64 %i.o, i1 false), !noalias !44779
  %i.p = add nsw i64 %i.b, -1
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !44771, !noalias !44776
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h9fb0069c962fcb62E.exit", %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6retain17h17f5d744b9f6c3acE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 3 uses
  %i.i = icmp ult i64 %i.h, 576460752303423488
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre = load ptr, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit", %._crit_edge
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %3)
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %i.o = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.bd, %bb.u ] ; 2 uses
  %i.p = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.u ] ; 8 uses
  %.sroa.01.040 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.u ] ; 2 uses
  %.sroa.03.039 = phi i64 [ 0, %.lr.ph ], [ %.sroa.03.1, %bb.u ] ; 4 uses
  %i.q = phi i64 [ %i.h, %.lr.ph ], [ %i.bf, %bb.u ] ; 3 uses
  %i.r = sext i32 %.sroa.01.040 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.sroa.03.039 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 4, ptr %i.b, align 8
  store i8 0, ptr %.sroa.5.0..sroa_idx42, align 1
  store i32 0, ptr %.sroa.643.0..sroa_idx, align 4
  store i64 %i.r, ptr %.sroa.744.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types6fn_ptr5FnPtr21_call_with_extra_args17hc610f898457910bcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @457, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable_or_null(16) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.o, %bb.n
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load i8, ptr %i.c, align 8, !range !837, !noundef !3 ; 2 uses
  %i.v = icmp eq i8 %i.u, 12
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit
  %i.w = load ptr, ptr %.sroa.629.0..sroa_idx, align 8, !nonnull !3, !align !4, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44780)
  %i.y = load ptr, ptr %i.k, align 8, !alias.scope !44783, !nonnull !3, !noundef !3 ; 4 uses
  %i.z = icmp eq i64 %i.p, 0
  br i1 %i.z, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i", label %.lr.ph62

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i": ; preds = %.lr.ph62
  %i.aa = icmp eq i64 %i.ac, %i.p
  br i1 %i.aa, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i", label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.f, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i"
  %.sroa.0.0.i.i60 = phi i64 [ %i.ac, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i" ], [ 0, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.0.0.i.i60
  %i.ac = add i64 %.sroa.0.0.i.i60, 1             ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ab)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i" unwind label %bb.g, !noalias !44780, !inline_history !9556

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i": ; preds = %.lr.ph65
  %i.ad = add i64 %.sroa.0.1.i.i63, 1             ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.p
  br i1 %i.ae, label %.body.i, label %.lr.ph65

bb.g:                                             ; preds = %.lr.ph62
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq i64 %i.ac, %i.p
  br i1 %i.ag, label %.body.i, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.g, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i"
  %.sroa.0.1.i.i63 = phi i64 [ %i.ad, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i" ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.0.1.i.i63
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ah)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i" unwind label %bb.h, !noalias !44780, !inline_history !9556

bb.h:                                             ; preds = %.lr.ph65
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44786, !inline_history !9560
  unreachable

.body.i:                                          ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i.i", %bb.g
  %.val2.i = load i64, ptr %i.f, align 8, !range !540, !alias.scope !44780, !noundef !3 ; 2 uses
  %i.aj = icmp eq i64 %.val2.i, 0
  br i1 %i.aj, label %.body, label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.ak = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !44780, !inline_history !9561
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i.i", %bb.f
  %.val.i = load i64, ptr %i.f, align 8, !range !540, !alias.scope !44780, !noundef !3 ; 2 uses
  %i.al = icmp eq i64 %.val.i, 0
  br i1 %i.al, label %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i"
  %i.am = shl nuw i64 %.val.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !44780, !inline_history !9561
  br label %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit"

bb.k:                                             ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.528.0..sroa_idx, i64 7, i1 false)
  %.sroa.629.0.copyload = load ptr, ptr %.sroa.629.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %i.u, ptr %i.d, align 8
  store ptr %.sroa.629.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.d)
          to label %.body36 unwind label %bb.v, !inline_history !1419

bb.m:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.e, align 8, !noundef !3
  %.not = icmp eq ptr %i.ao, null
  %i.ap = load i8, ptr %i.n, align 8, !range !5
  %i.aq = trunc nuw i8 %i.ap to i1
  %.sroa.07.0 = select i1 %.not, i1 %i.aq, i1 false
  br i1 %.sroa.07.0, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.d)
          to label %bb.p unwind label %bb.e, !inline_history !1419

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35" unwind label %bb.e, !inline_history !1419

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44789)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !44792
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.as = xor i64 %.sroa.03.039, -1
  %i.at = add nsw i64 %i.q, %i.as
  %i.au = shl nuw nsw i64 %i.at, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ar, i64 %i.au, i1 false), !noalias !44794
  %i.av = add nsw i64 %i.q, -1                    ; 2 uses
  store i64 %i.av, ptr %i.g, align 8, !alias.scope !44789, !noalias !44796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44797)
  %i.aw = load i64, ptr %i.f, align 8, !range !540, !alias.scope !44797, !noalias !44800, !noundef !3
  %i.ax = icmp eq i64 %i.p, %i.aw
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h41076cbd976ee6f6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1867)
          to label %._crit_edge45 unwind label %bb.r, !noalias !44803

._crit_edge45:                                    ; preds = %bb.q
  %.pre46 = load ptr, ptr %i.k, align 8, !alias.scope !44797, !noalias !44800
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
          to label %.body36 unwind label %bb.s, !noalias !44797, !inline_history !1419

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44804
  unreachable

bb.t:                                             ; preds = %._crit_edge45, %bb.p
  %i.ba = phi ptr [ %.pre46, %._crit_edge45 ], [ %i.o, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !44797
  %i.bc = add i64 %i.p, 1                         ; 2 uses
  store i64 %i.bc, ptr %i.l, align 8, !alias.scope !44797, !noalias !44800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35", %bb.t
  %i.bd = phi ptr [ %i.o, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35" ], [ %i.ba, %bb.t ]
  %i.be = phi i64 [ %i.p, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35" ], [ %i.bc, %bb.t ]
  %i.bf = phi i64 [ %i.q, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35" ], [ %i.av, %bb.t ] ; 3 uses
  %.sroa.03.1 = phi i64 [ %i.bj, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35" ], [ %.sroa.03.039, %bb.t ] ; 2 uses
  %i.bg = add i32 %.sroa.01.040, 1
  %i.bh = icmp ult i64 %i.bf, 576460752303423488
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp ult i64 %.sroa.03.1, %i.bf
  br i1 %i.bi, label %bb.d, label %._crit_edge

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit35": ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bj = add nuw nsw i64 %.sroa.03.039, 1
  br label %bb.u

bb.v:                                             ; preds = %bb.l, %.body36, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

.body:                                            ; preds = %bb.i, %.body.i, %.body36
  %.pn32 = phi { ptr, i32 } [ %.pn, %.body36 ], [ %i.af, %.body.i ], [ %i.af, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %3) #72
          to label %bb.w unwind label %bb.v

"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E.exit": ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8611338df7b5234dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

.body36:                                          ; preds = %bb.e, %bb.l, %bb.r
  %.pn = phi { ptr, i32 } [ %i.an, %bb.l ], [ %i.t, %bb.e ], [ %i.ay, %bb.r ]
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #72
          to label %.body unwind label %bb.v

bb.w:                                             ; preds = %.body
  resume { ptr, i32 } %.pn32
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions6splice17hd3738da0b65d8c4dE(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.i31.i.i = alloca [15 x i8], align 1    ; 4 uses
  %.sroa.2.i17.i.i = alloca [15 x i8], align 1    ; 5 uses
  %.sroa.2.i.i.i = alloca [15 x i8], align 1      ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 15 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp samesign ult i64 %1, %i.f
  br i1 %.not.i, label %.split.i, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.j = sub i64 0, %1
  %i.k = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.f, i64 range(i64 1, -9223372036854775807) %i.j)
  br label %.split.i

.split.i:                                         ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.k, %bb.e ], [ %1, %bb.d ] ; 5 uses
  %.not = icmp samesign ult i64 %.sroa.01.0.i, %i.f
  br i1 %.not, label %bb.i, label %.thread

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %.body

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr123drop_in_place$LT$alloc..vec..splice..Splice$LT$alloc..vec..into_iter..IntoIter$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$17h5165cc43d8a82457E.exit", %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17hb10b839dca063977E.exit", %bb.g
  ret void

bb.i:                                             ; preds = %.split.i
  %i.m = sub nuw nsw i64 %i.f, %.sroa.01.0.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.inv = icmp sgt i64 %2, 0
  %.sroa.3.0.i = select i1 %.inv, i64 %spec.select.i, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = add nuw nsw i64 %.sroa.3.0.i, %.sroa.01.0.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44810)
  %i.o = icmp samesign ugt i64 %i.n, %i.f
  br i1 %i.o, label %.invoke.i, label %bb.l, !prof !543

.invoke.i:                                        ; preds = %bb.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.cont.i unwind label %bb.k, !noalias !44812

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.j:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !44812
  unreachable

bb.k:                                             ; preds = %.invoke.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %3) #72
          to label %.body unwind label %bb.j, !noalias !44813

bb.l:                                             ; preds = %bb.i
  store i64 %.sroa.01.0.i, ptr %i.e, align 8, !alias.scope !44814, !noalias !44817
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !44814, !noalias !44817, !nonnull !3, !noundef !3 ; 2 uses
  %i.t = sub nuw nsw i64 %i.f, %i.n               ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.n ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %3, align 8, !alias.scope !44810, !noalias !44813
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.45.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !44810, !noalias !44813, !nonnull !3, !noundef !3 ; 8 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !44810, !noalias !44813 ; 6 uses
  %i.v = icmp ult i64 %.sroa.56.0.copyload.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.v)
  %.idx15 = shl nuw nsw i64 %.sroa.56.0.copyload.i, 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.45.0.copyload.i, i64 %.idx15 ; 11 uses
  %.sroa.4.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx11.i, align 8, !alias.scope !44805, !noalias !44819
  %.sroa.5.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx12.i, align 8, !alias.scope !44805, !noalias !44819
  %.sroa.6.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i64 %i.n, ptr %.sroa.6.0..sroa_idx13.i, align 8, !alias.scope !44805, !noalias !44819
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !44805, !noalias !44819
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  store ptr %.sroa.45.0.copyload.i, ptr %i.x, align 8, !alias.scope !44805, !noalias !44819
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 6 uses
  store ptr %.sroa.45.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !44805, !noalias !44819
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.04.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !44805, !noalias !44819
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !44805, !noalias !44819
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44826)
  %i.y = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.y, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1d770c5cb0d0ae20E.exit.i.i, label %"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1f1ed6bbaf944d77E.exit.lr.ph.i.i.i"

"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1f1ed6bbaf944d77E.exit.lr.ph.i.i.i": ; preds = %bb.l
end_hunk_2
