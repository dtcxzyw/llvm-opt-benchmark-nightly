Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN9actix_web10middleware6logger6Format3new17hf16f39c28c460888E:bb.a

.body:                                            ; preds = %bb.fw, %bb.fu, %.body.i, %bb.i
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E.exit": ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c636d555007145aE.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !11074)
  call void @llvm.experimental.noalias.scope.decl(metadata !11075)
  call void @llvm.experimental.noalias.scope.decl(metadata !11076)
  %i.mk = load ptr, ptr %i.q, align 8, !alias.scope !11077, !nonnull !25, !noundef !25
  %i.ml = atomicrmw sub ptr %i.mk, i64 1 release, align 8, !noalias !11077
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.fv, label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i"

bb.fv:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E.exit"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc59de82033cb534eE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i" unwind label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN4core3ptr333drop_in_place$LT$regex_lite..pool..Pool$LT$regex_lite..pikevm..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_lite..pikevm..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h0e76321fcadb2ecdE"(ptr noalias noundef align 8 dereferenceable(48) %i.aj) #53
          to label %.body unwind label %bb.fx

"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$regex_lite..pikevm..PikeVM$GT$$GT$17h89f9a905c68c114cE.exit.i": ; preds = %bb.fv, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E.exit"
  invoke fastcc void @"_ZN4core3ptr333drop_in_place$LT$regex_lite..pool..Pool$LT$regex_lite..pikevm..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_lite..pikevm..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h0e76321fcadb2ecdE"(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %common.resume unwind label %bb.fu

bb.fx:                                            ; preds = %bb.fw
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN9actix_web10middleware6logger6Logger3new17h57d7cee8197d942aE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 16 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN9actix_web10middleware6logger6Format3new17hf16f39c28c460888E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !31, !noalias !11092, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._ZN4core3ops8function6FnOnce9call_once17h246eb13270d65b9bE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce120d8d60e96058E.exit.i.i.i.i", !prof !29

._ZN4core3ops8function6FnOnce9call_once17h246eb13270d65b9bE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !11093
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !11093
  br label %bb.c

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce120d8d60e96058E.exit.i.i.i.i": ; preds = %bb.a
  %i.g = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce120d8d60e96058E.exit.i.i.i.i"
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !11094
  store i8 1, ptr %i.d, align 8, !noalias !11094
  br label %bb.c

bb.b:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hce120d8d60e96058E.exit.i.i.i.i"
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$actix_web..middleware..logger..FormatText$GT$$GT$17h9426aabfa9f6eeb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h246eb13270d65b9bE.exit_crit_edge.i.i.i.i
  %.pre-phi.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h246eb13270d65b9bE.exit_crit_edge.i.i.i.i ], [ %i.i, %.noexc ]
  %i.l = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h246eb13270d65b9bE.exit_crit_edge.i.i.i.i ], [ %i.h, %.noexc ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !noalias !11093
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 3, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 -9223372036854775808, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @545, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 29, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @78, i64 32, i1 false)
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.l, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.pre-phi.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11095
  %i.p = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11095 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h831cfef42a3b46c2E.exit", !prof !32

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #52
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$actix_web..middleware..logger..Inner$GT$17h28515fc78deb7a8aE"(ptr noalias noundef readonly align 8 dereferenceable(128) %i.o)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h831cfef42a3b46c2E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.p

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN9actix_web10middleware6logger6Logger9log_level17h5557aee9625c7d1aE(ptr noundef nonnull returned %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !25
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !noundef !25
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.g, align 8
  ret ptr %0

bb.d:                                             ; preds = %bb.a, %bb.b
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #52
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i64, ptr %0, align 8, !noalias !11102, !noundef !25
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %0, align 8, !noalias !11102
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %"_ZN4core3ptr58drop_in_place$LT$actix_web..middleware..logger..Logger$GT$17h7c7fb62a73e9f1c2E.exit"

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6bd78d6be2c9219fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr58drop_in_place$LT$actix_web..middleware..logger..Logger$GT$17h7c7fb62a73e9f1c2E.exit" unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr58drop_in_place$LT$actix_web..middleware..logger..Logger$GT$17h7c7fb62a73e9f1c2E.exit": ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web10middleware9normalize20build_byte_index_map17h98e034304f7f4799E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = add i64 %2, 1                            ; 4 uses
  %i.c = shl i64 %i.b, 1                          ; 4 uses
  %i.d = icmp slt i64 %i.b, 0
  %i.e = icmp ugt i64 %i.c, 9223372036854775806
  %or.cond.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.g = icmp eq i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.g)
  store i64 0, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39b12cf4a26519f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @659)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit_crit_edge" unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11113
  %i.j = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 2) #46, !noalias !11113 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 2, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @658) #52
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit": ; preds = %bb.b
  store i64 %i.b, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11114)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit"

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit_crit_edge": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread"
  %.pre = load ptr, ptr %i.h, align 8, !alias.scope !11114, !noalias !11115
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit", %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit_crit_edge"
  %i.n = phi ptr [ %i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit_crit_edge" ], [ %i.m, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit" ] ; 2 uses
  %i.o = phi ptr [ %i.h, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit_crit_edge" ], [ %i.l, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit" ] ; 2 uses
  %i.p = phi ptr [ %.pre, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit_crit_edge" ], [ %i.j, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit" ]
  store i16 0, ptr %i.p, align 2, !noalias !11114
  store i64 1, ptr %i.n, align 8, !noalias !25
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.q = phi ptr [ %i.o, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.r = icmp eq i64 %.val, 0
  br i1 %i.r, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hf34622c68a131e31E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val9 = load ptr, ptr %i.q, align 8, !nonnull !25, !noundef !25
  %i.s = shl nuw i64 %.val, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 2) #46
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hf34622c68a131e31E.exit"

._crit_edge:                                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11"
  %i.t = phi i64 [ %i.ah, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11" ], [ 1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit" ] ; 3 uses
  %.sroa.0.013 = phi i64 [ %i.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit" ] ; 2 uses
  %.sroa.03.012 = phi i64 [ %.sroa.03.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit" ] ; 4 uses
  %i.u = icmp ult i64 %.sroa.03.012, %4
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.013
  %i.w = load i8, ptr %i.v, align 1, !noundef !25
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.03.012
  %i.y = load i8, ptr %i.x, align 1, !noundef !25
  %i.z = icmp eq i8 %i.w, %i.y
  %i.aa = zext i1 %i.z to i64
  %spec.select = add nuw i64 %.sroa.03.012, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.03.1 = phi i64 [ %.sroa.03.012, %.lr.ph ], [ %spec.select, %bb.f ] ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.03.1, i64 65535)
  %i.ab = add nuw i64 %.sroa.0.013, 1             ; 2 uses
  %i.ac = trunc nuw i64 %.sroa.0.0.i to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  %i.ad = load i64, ptr %i.a, align 8, !range !40, !alias.scope !11116, !noalias !11117, !noundef !25
  %i.ae = icmp eq i64 %i.t, %i.ad
  br i1 %i.ae, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11"

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h39b12cf4a26519f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @660)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11" unwind label %.loopexit

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db8f7a612536041E.exit11": ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.o, align 8, !alias.scope !11116, !noalias !11117, !nonnull !25, !noundef !25
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.t
  store i16 %i.ac, ptr %i.ag, align 2, !noalias !11116
  %i.ah = add i64 %i.t, 1                         ; 2 uses
  store i64 %i.ah, ptr %i.n, align 8, !noalias !25
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17hf34622c68a131e31E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN9actix_web11app_service19AppInitServiceState3new17h238f3b4bf80706d3E(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 15 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.06.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11134
  %i.c = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, 9) 8) #46, !noalias !11134 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN78_$LT$actix_web..request..HttpRequestPool$u20$as$u20$core..default..Default$GT$7default17he0cdb5f359280d37E.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 1024, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @744) #52
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.f, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.58.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11135
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"

"_ZN78_$LT$actix_web..request..HttpRequestPool$u20$as$u20$core..default..Default$GT$7default17he0cdb5f359280d37E.exit": ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.06.0.copyload, ptr %i.h, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.58.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 128, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.c, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 128, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11136
  %i.i = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11136 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0d697307fc25bdd9E.exit", !prof !32

bb.e:                                             ; preds = %"_ZN78_$LT$actix_web..request..HttpRequestPool$u20$as$u20$core..default..Default$GT$7default17he0cdb5f359280d37E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 128) #52
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..rc..RcInner$LT$actix_web..app_service..AppInitServiceState$GT$$GT$17hcefd15ace19c3d80E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.a) #53
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

common.resume:                                    ; preds = %bb.i, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.e, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit" ], [ %i.e, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h0d697307fc25bdd9E.exit": ; preds = %"_ZN78_$LT$actix_web..request..HttpRequestPool$u20$as$u20$core..default..Default$GT$7default17he0cdb5f359280d37E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.h:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit": ; preds = %bb.d, %bb.c
  %i.n = load i64, ptr %0, align 8, !noalias !11137, !noundef !25
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %0, align 8, !noalias !11137
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %common.resume

bb.i:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.h, !inline_history !19
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN9actix_web3app43App$LT$actix_web..app_service..AppEntry$GT$3new17h14380ea1fe5bf56aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11140
  %i.d = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11140 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h469eb71ebccd750cE.exit", !prof !32

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #52
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$alloc..rc..RcInner$LT$core..cell..RefCell$LT$core..option..Option$LT$actix_web..app_service..AppRoutingFactory$GT$$GT$$GT$$GT$17h4d88d970c26c702fE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #53
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
