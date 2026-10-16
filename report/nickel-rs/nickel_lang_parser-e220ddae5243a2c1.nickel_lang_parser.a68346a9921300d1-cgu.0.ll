Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17hbb94ffba8e42bfa7E":bb.a
  %i.hz = trunc nuw i8 %.sroa.01.0.i.i.9 to i1
  br i1 %i.hz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ia = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3158
  %i.ib = and i64 %i.ia, 9223372036854775807
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9, label %bb.cg, !prof !22

bb.cg:                                            ; preds = %bb.cf
  %i.id = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc26.9 unwind label %.loopexit

.noexc26.9:                                       ; preds = %bb.cg
  br i1 %i.id, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9, label %bb.ch

bb.ch:                                            ; preds = %.noexc26.9
  store atomic i8 1, ptr %i.hr monotonic, align 1, !noalias !3158
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9: ; preds = %bb.ch, %.noexc26.9, %bb.cf, %bb.ce
  %i.ie = atomicrmw xchg ptr %i.ho, i32 0 release, align 4, !noalias !3158
  %i.if = icmp eq i32 %i.ie, 2
  br i1 %i.if, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.9", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hea48d99a31ca072bE.exit28.9", !prof !20

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.9": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.ho)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hea48d99a31ca072bE.exit28.9" unwind label %.loopexit

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hea48d99a31ca072bE.exit28.9": ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.9", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9, %bb.cb
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h9afd9b6e786a7e79E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit" unwind label %bb.f

.loopexit:                                        ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.9", %bb.cg, %bb.cd, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.8", %bb.bz, %bb.bw, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.7", %bb.bs, %bb.bp, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.6", %bb.bl, %bb.bi, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.5", %bb.be, %bb.bb, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.4", %bb.ax, %bb.au, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.3", %bb.aq, %bb.an, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.2", %bb.aj, %bb.ag, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22.1", %bb.ac, %bb.z, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E.exit.sink.split.i22", %bb.i, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %bb.d, %bb.j, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E"(ptr %1) #53
          to label %common.resume unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN188_$LT$nickel_lang_parser..files.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$nickel_lang_parser..files..FileId$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17hb78ce90d9d6d05c0E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN18nickel_lang_parser10identifier102_$LT$impl$u20$core..convert..From$LT$nickel_lang_parser..identifier..Ident$GT$$u20$for$u20$$RF$str$GT$4from17hf3d9ddd50b0ab5e2E"(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @"_ZN18nickel_lang_parser10identifier105_$LT$impl$u20$core..convert..From$LT$nickel_lang_parser..identifier..LocIdent$GT$$u20$for$u20$$RF$str$GT$4from17h178c994dc5a713fcE"(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN18nickel_lang_parser10identifier119_$LT$impl$u20$core..convert..From$LT$nickel_lang_parser..identifier..LocIdent$GT$$u20$for$u20$alloc..string..String$GT$4from17h9a0184795bad2210E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !3166
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 1) #54, !noalias !3166 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !3167
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.b, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.h, i64 %i.c, i1 false), !noalias !3168
  store i64 %i.c, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser10identifier5Ident10into_label17h2a10b664412b78f2E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !3176
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 1) #54, !noalias !3176 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !3177
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.b, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.h, i64 %i.c, i1 false), !noalias !3178
  store i64 %i.c, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN18nickel_lang_parser10identifier5Ident12is_generated17ha45f4e7808dbb0b9E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit

_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit: ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %0, align 4, !noundef !19
  %i.g = load atomic i32, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE monotonic, align 8 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.g, 1073741822
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d, !prof !63

bb.c:                                             ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = cmpxchg weak ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 %i.g, i32 %i.h acquire monotonic, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE)
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.d, %bb.c
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8, !noalias !3191
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i", label %bb.e, !prof !22

bb.e:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3192
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), ptr %i.a, align 8, !noalias !3192
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.l, align 8, !noalias !3192
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10214, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #52
          to label %bb.h unwind label %bb.f, !noalias !3193

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !3194, !noalias !3193, !nonnull !19, !align !42, !noundef !19 ; 2 uses
  %1 = atomicrmw sub ptr %.val.i.i, i32 1 release, align 4, !noalias !3195
  %i.n = add i32 %1, -1                           ; 2 uses
  %i.o = and i32 %i.n, -1073741825
  %or.cond.not.i.i.i.i = icmp eq i32 %i.o, -2147483648
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %common.resume.i, !prof !64

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i.i, i32 noundef %i.n)
          to label %common.resume.i unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3193
  unreachable

common.resume.i:                                  ; preds = %bb.l, %bb.k, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %i.t, %bb.k ], [ %i.t, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i": ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %.val3.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 32), align 8, !alias.scope !3196, !noundef !19 ; 2 uses
  %i.q = zext i32 %i.f to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 6                         ; 3 uses
  %i.s = icmp ult i64 %i.r, %.val3.i
  br i1 %i.s, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.r, i64 noundef %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #52
          to label %.noexc4.i unwind label %bb.k

.noexc4.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1 release, align 4
  %i.u = add i32 %2, -1                           ; 2 uses
  %i.v = and i32 %i.u, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.v, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.l, label %common.resume.i, !prof !64

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.u)
          to label %common.resume.i unwind label %bb.o

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i"
  %.val2.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 24), align 8, !nonnull !19, !noundef !19
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val2.i, i64 %i.r
  %i.x = load i64, ptr %i.w, align 8, !noalias !3197, !noundef !19
  %3 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1 release, align 4
  %i.y = add i32 %3, -1                           ; 2 uses
  %i.z = and i32 %i.y, -1073741825
  %or.cond.not.i.i6.i = icmp eq i32 %i.z, -2147483648
  br i1 %or.cond.not.i.i6.i, label %bb.n, label %_ZN18nickel_lang_parser10identifier8interner8Interner12is_generated17h0612d4e6764f4166E.exit, !prof !64

bb.n:                                             ; preds = %bb.m
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.y)
  br label %_ZN18nickel_lang_parser10identifier8interner8Interner12is_generated17h0612d4e6764f4166E.exit

bb.o:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser10identifier8interner8Interner12is_generated17h0612d4e6764f4166E.exit: ; preds = %bb.m, %bb.n
  %i.ab = and i64 %i.q, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.x, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_ZN18nickel_lang_parser10identifier5Ident14find_generated17h5226e524ad895003E(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit

_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit: ; preds = %bb.a, %bb.b
  %i.f = load atomic i32, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE monotonic, align 8, !noalias !3219 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.f, 1073741822
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d, !prof !63

bb.c:                                             ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = cmpxchg weak ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 %i.f, i32 %i.g acquire monotonic, align 4, !noalias !3219
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE), !noalias !3219
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8, !noalias !3220
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i", label %bb.e, !prof !22

bb.e:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3221
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), ptr %i.a, align 8, !noalias !3221
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.k, align 8, !noalias !3221
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10214, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #52
          to label %bb.h unwind label %bb.f, !noalias !3222

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !3223, !noalias !3222, !nonnull !19, !align !42, !noundef !19 ; 2 uses
  %2 = atomicrmw sub ptr %.val.i.i, i32 1 release, align 4, !noalias !3224
  %i.m = add i32 %2, -1                           ; 2 uses
  %i.n = and i32 %i.m, -1073741825
  %or.cond.not.i.i.i.i = icmp eq i32 %i.n, -2147483648
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %common.resume.i, !prof !64

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i.i, i32 noundef %i.m)
          to label %common.resume.i unwind label %bb.i, !noalias !3219

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3222
  unreachable

common.resume.i:                                  ; preds = %bb.n, %bb.m, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.l, %bb.f ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i": ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 64), align 8, !noalias !3225, !noundef !19 ; 3 uses
  %i.q = icmp ult i64 %i.p, 576460752303423488
  call void @llvm.assume(i1 %i.q)
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i"
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 32), align 8, !alias.scope !3226, !noalias !3227, !noundef !19 ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 24), align 8, !noalias !3219, !nonnull !19
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 56), align 8, !noalias !3219, !nonnull !19
  br label %bb.j

bb.j:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.u = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.v, %.backedge.i.i.i ] ; 5 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3226)
  %i.w = lshr i64 %i.u, 6                         ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.r
  br i1 %i.x, label %"_ZN95_$LT$nickel_lang_parser..identifier..Bitmap$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h018e884341b9ab9aE.exit.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.w, i64 noundef %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #52
          to label %.noexc7.i unwind label %bb.m, !noalias !3219

.noexc7.i:                                        ; preds = %bb.k
  unreachable

"_ZN95_$LT$nickel_lang_parser..identifier..Bitmap$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h018e884341b9ab9aE.exit.i.i.i.i.i": ; preds = %bb.j
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !3228, !noundef !19
  %i.ac = and i64 %i.ab, %i.z
  %.not2.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not2.i.i.i.i.i, label %.backedge.i.i.i, label %bb.l

bb.l:                                             ; preds = %"_ZN95_$LT$nickel_lang_parser..identifier..Bitmap$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h018e884341b9ab9aE.exit.i.i.i.i.i"
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !3227, !noundef !19
  %.not.i.i.i.i.i = icmp eq i64 %i.af, %1
  br i1 %.not.i.i.i.i.i, label %"_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf3462a29b8cdae6cE.exit.i.i.i.i", label %.backedge.i.i.i

"_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf3462a29b8cdae6cE.exit.i.i.i.i": ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ad, align 8, !noalias !3227, !nonnull !19, !align !18, !noundef !19
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull readonly align 1 %0, i64 %1), !noalias !3229
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.ah = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.ah, label %bb.o, label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %"_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf3462a29b8cdae6cE.exit.i.i.i.i", %bb.l, %"_ZN95_$LT$nickel_lang_parser..identifier..Bitmap$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h018e884341b9ab9aE.exit.i.i.i.i.i"
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %i.p
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.j

.loopexit.i.i:                                    ; preds = %.backedge.i.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #52
          to label %.noexc8.i unwind label %bb.m, !noalias !3219

.noexc8.i:                                        ; preds = %.loopexit.i.i
  unreachable

bb.m:                                             ; preds = %.loopexit.i.i, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1 release, align 4, !noalias !3219
  %i.aj = add i32 %3, -1                          ; 2 uses
  %i.ak = and i32 %i.aj, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.ak, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.n, label %common.resume.i, !prof !64

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.aj)
          to label %common.resume.i unwind label %bb.q, !noalias !3219

bb.o:                                             ; preds = %"_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf3462a29b8cdae6cE.exit.i.i.i.i"
  %4 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1 release, align 4, !noalias !3219
  %i.al = add i32 %4, -1                          ; 2 uses
  %i.am = and i32 %i.al, -1073741825
  %or.cond.not.i.i10.i = icmp eq i32 %i.am, -2147483648
  br i1 %or.cond.not.i.i10.i, label %bb.p, label %_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated17h9a9f1f942e706412E.exit, !prof !64

bb.p:                                             ; preds = %bb.o
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.al), !noalias !3219
  br label %_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated17h9a9f1f942e706412E.exit

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3219
  unreachable

_ZN18nickel_lang_parser10identifier8interner8Interner14find_generated17h9a9f1f942e706412E.exit: ; preds = %bb.o, %bb.p
  %i.ao = trunc i64 %i.u to i32
  ret i32 %i.ao
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_ZN18nickel_lang_parser10identifier5Ident5fresh17hc8205d4833850c2eE() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit

_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = atomicrmw add ptr @_ZN18nickel_lang_parser10identifier7COUNTER17hef680cd9776e700bE, i64 1 monotonic, align 8
  store i64 %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @98, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h70f50921d2b95bdfE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.l, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3263
  store ptr @99, ptr %i.c, align 8, !noalias !3264
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3264
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3264
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3264
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3264
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !3265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !3266)
  %i.m = cmpxchg weak ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !3267
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %.noexc.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock15write_contended17h55a2cbc8e1b81353E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE)
          to label %.noexc.i unwind label %.thread15.i, !noalias !3266

.noexc.i:                                         ; preds = %bb.c, %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  %i.o = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3267
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %.noexc.i
  %i.r = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc6.i unwind label %.thread15.i, !noalias !3266

.noexc6.i:                                        ; preds = %bb.d
  %i.s = xor i1 %i.r, true
  %i.t = zext i1 %i.s to i8
  br label %bb.e

.thread15.i:                                      ; preds = %bb.d, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread11.i

bb.e:                                             ; preds = %.noexc6.i, %.noexc.i
  %.sroa.01.0.i.i.i = phi i8 [ %i.t, %.noexc6.i ], [ 0, %.noexc.i ] ; 3 uses
  %i.u = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8, !noalias !3267
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %bb.j, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3268
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !3268
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.v, align 8, !noalias !3268
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10216, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #52
          to label %bb.h unwind label %bb.g, !noalias !3269

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr196drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17h165b15b57bb768e8E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #53
          to label %.thread11.i unwind label %bb.i, !noalias !3269

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3269
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.y = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  %.sroa.05.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !3266 ; 4 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.56.0.copyload.i = load ptr, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !3266 ; 6 uses
  %.sroa.77.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.77.0.copyload.i = load i64, ptr %.sroa.77.0..sroa_idx.i, align 8, !alias.scope !3266
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 120), align 8, !alias.scope !3270, !noalias !3266, !nonnull !19, !noundef !19 ; 8 uses
  %i.aa = cmpxchg ptr %i.z, i32 0, i32 1 acquire monotonic, align 4, !noalias !3271
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  br i1 %i.ab, label %.noexc.i.i, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %i.z)
          to label %.noexc.i.i unwind label %bb.n, !noalias !3272

.noexc.i.i:                                       ; preds = %bb.k, %bb.j
  %i.ac = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3271
  %i.ad = and i64 %i.ac, 9223372036854775807
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %bb.l, !prof !22

bb.l:                                             ; preds = %.noexc.i.i
  %i.af = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc7.i.i unwind label %bb.n, !noalias !3272

.noexc7.i.i:                                      ; preds = %bb.l
  %i.ag = xor i1 %i.af, true
  %i.ah = zext i1 %i.ag to i8
  br label %bb.o

.body.i.i:                                        ; preds = %bb.t, %bb.q, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %i.aj, %bb.n ], [ %i.an, %bb.q ]
  %i.ai = icmp eq i64 %.sroa.05.0.copyload.i, 0
  br i1 %i.ai, label %.body7.i, label %bb.m

bb.m:                                             ; preds = %.body.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.56.0.copyload.i, i64 noundef %.sroa.05.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !3273
  br label %.body7.i

bb.n:                                             ; preds = %bb.af, %bb.ad, %bb.aa, %bb.z, %bb.x, %bb.l, %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.o:                                             ; preds = %.noexc7.i.i, %.noexc.i.i
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.ah, %.noexc7.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.al = load atomic i8, ptr %i.ak monotonic, align 1, !noalias !3271
  %.not.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i, label %bb.u, label %bb.p, !prof !22

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3274
  store ptr %i.z, ptr %i.a, align 8, !noalias !3274
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.am, align 8, !noalias !3274
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10211, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #52
          to label %bb.r unwind label %bb.q, !noalias !3274

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$$GT$17h4957de67456dc9dbE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #53
          to label %.body.i.i unwind label %bb.s, !noalias !3274

bb.r:                                             ; preds = %bb.p
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3274
  unreachable

bb.t:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE"(ptr nonnull %i.z, i8 %.sroa.01.0.i.i.i.i) #53
          to label %.body.i.i unwind label %bb.ai, !noalias !3272

bb.u:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.56.0.copyload.i, i64 %.sroa.77.0.copyload.i
  %i.as = invoke fastcc { ptr, i64 } @"_ZN11typed_arena14Arena$LT$T$GT$12alloc_extend17h9b8fd9421e77e809E"(ptr noundef nonnull align 8 %i.aq, ptr noundef nonnull %.sroa.56.0.copyload.i, ptr noundef %i.ar)
          to label %bb.v unwind label %bb.t, !noalias !3272 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.at = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1
  br i1 %i.at, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3272
  %i.av = and i64 %i.au, 9223372036854775807
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.x, !prof !22

bb.x:                                             ; preds = %bb.w
  %i.ax = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc8.i.i unwind label %bb.n, !noalias !3272

.noexc8.i.i:                                      ; preds = %bb.x
  br i1 %i.ax, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc8.i.i
  store atomic i8 1, ptr %i.ak monotonic, align 1, !noalias !3272
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i: ; preds = %bb.y, %.noexc8.i.i, %bb.w, %bb.v
  %i.ay = atomicrmw xchg ptr %i.z, i32 0 release, align 4, !noalias !3272
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.z, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE.exit.i.i", !prof !20

bb.z:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.z)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE.exit.i.i" unwind label %bb.n, !noalias !3272

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE.exit.i.i": ; preds = %bb.z, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i
  %i.ba = extractvalue { ptr, i64 } %i.as, 1
  %i.bb = extractvalue { ptr, i64 } %i.as, 0
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 64), align 8, !alias.scope !3270, !noalias !3266, !noundef !19 ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 576460752303423488
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 48), align 8, !range !38, !alias.scope !3275, !noalias !3266, !noundef !19
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE.exit.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h3ee9940f01205b0bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105)
          to label %bb.ab unwind label %bb.n, !noalias !3276

bb.ab:                                            ; preds = %bb.aa, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE.exit.i.i"
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 56), align 8, !alias.scope !3275, !noalias !3266, !nonnull !19, !noundef !19
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  store ptr %i.bb, ptr %i.bh, align 8, !noalias !3277
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.ba, ptr %i.bi, align 8, !noalias !3276
  %i.bj = add nuw nsw i64 %i.bc, 1
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 64), align 8, !alias.scope !3275, !noalias !3266
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 40), align 8, !alias.scope !3278, !noalias !3266, !noundef !19 ; 2 uses
  %i.bl = and i64 %i.bk, 63
  %i.bm = lshr i64 %i.bk, 6                       ; 4 uses
  %i.bn = shl nuw i64 1, %i.bl
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 32), align 8, !alias.scope !3278, !noalias !3266, !noundef !19 ; 6 uses
  %i.bp = icmp ult i64 %i.bo, 1152921504606846976
  call void @llvm.assume(i1 %i.bp)
  %.not.i.i.i = icmp samesign ult i64 %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), align 8, !range !38, !alias.scope !3279, !noalias !3266, !noundef !19
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i"

bb.ad:                                            ; preds = %bb.ac
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdea3b916d5486521E"(ptr noalias noundef nonnull align 8 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i" unwind label %bb.n, !noalias !3276

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 24), align 8, !alias.scope !3279, !noalias !3266, !nonnull !19, !noundef !19
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  store i64 0, ptr %i.bt, align 8, !noalias !3276
  %i.bu = add nuw nsw i64 %i.bo, 1                ; 2 uses
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 32), align 8, !alias.scope !3279, !noalias !3266
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i", %bb.ab
  %i.bv = phi i64 [ %i.bo, %bb.ab ], [ %i.bu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i" ] ; 2 uses
  %i.bw = icmp samesign ult i64 %i.bm, %i.bv
  br i1 %i.bw, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bm, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #52
          to label %.noexc12.i.i unwind label %bb.n, !noalias !3276

.noexc12.i.i:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 24), align 8, !alias.scope !3278, !noalias !3266, !nonnull !19, !noundef !19
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bm ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !noalias !3276, !noundef !19
  %i.ca = or i64 %i.bz, %i.bn
  store i64 %i.ca, ptr %i.by, align 8, !noalias !3276
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 40), align 8, !alias.scope !3278, !noalias !3266, !noundef !19
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 40), align 8, !alias.scope !3278, !noalias !3266
  %i.cd = icmp eq i64 %.sroa.05.0.copyload.i, 0
  br i1 %i.cd, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.56.0.copyload.i, i64 noundef %.sroa.05.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !3280
  br label %bb.aj

bb.ai:                                            ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3272
  unreachable

.body7.i:                                         ; preds = %bb.m, %.body.i.i
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E"(ptr nonnull @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i8 %.sroa.01.0.i.i.i) #53
          to label %.thread.i unwind label %bb.an, !noalias !3266

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.y, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cf = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3266
  %i.cg = and i64 %i.cf, 9223372036854775807
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %.noexc9.i, !prof !22

.noexc9.i:                                        ; preds = %bb.ak
  %i.ci = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !3266
  br i1 %i.ci, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc9.i
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8, !noalias !3266
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.al, %.noexc9.i, %bb.ak, %bb.aj
  %0 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1073741823 release, align 4, !noalias !3266
  %i.cj = add i32 %0, -1073741823                 ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.cj, 1073741824
  br i1 %or.cond.i.i.i, label %_ZN18nickel_lang_parser10identifier8interner8Interner16intern_generated17he44ccbc4526cb3dbE.exit, label %bb.am, !prof !48

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.cj), !noalias !3266
  br label %_ZN18nickel_lang_parser10identifier8interner8Interner16intern_generated17he44ccbc4526cb3dbE.exit

bb.an:                                            ; preds = %.body7.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3266
  unreachable

.thread.i:                                        ; preds = %bb.ao, %.thread11.i, %.body7.i
  %.pn10.i = phi { ptr, i32 } [ %eh.lpad-body14.i, %bb.ao ], [ %.pn.i.i, %.body7.i ], [ %eh.lpad-body14.i, %.thread11.i ]
  resume { ptr, i32 } %.pn10.i

.thread11.i:                                      ; preds = %bb.g, %.thread15.i
  %eh.lpad-body14.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread15.i ], [ %i.w, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  %.val.i11.i = load i64, ptr %i.h, align 8, !alias.scope !3282 ; 2 uses
  %i.cl = icmp eq i64 %.val.i11.i, 0
  br i1 %i.cl, label %.thread.i, label %bb.ao

bb.ao:                                            ; preds = %.thread11.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !3282, !nonnull !19, !noundef !19
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !3282
  br label %.thread.i

_ZN18nickel_lang_parser10identifier8interner8Interner16intern_generated17he44ccbc4526cb3dbE.exit: ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, %bb.am
  %i.cn = trunc i64 %i.bc to i32
  ret i32 %i.cn
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit

_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit: ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %0, align 4, !noundef !19
  %i.g = load atomic i32, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE monotonic, align 8 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.g, 1073741822
  br i1 %or.cond3.i.i, label %bb.c, label %bb.d, !prof !63

bb.c:                                             ; preds = %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = cmpxchg weak ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 %i.g, i32 %i.h acquire monotonic, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %_ZN3std4sync6poison4once4Once15call_once_force17hcf519a0dcbb4e3b6E.exit
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock14read_contended17hd5223ca2cc4f107aE(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE)
  br label %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i

_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i: ; preds = %bb.d, %bb.c
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8, !noalias !3290
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i", label %bb.e, !prof !22

bb.e:                                             ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3291
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), ptr %i.a, align 8, !noalias !3291
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.l, align 8, !noalias !3291
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10214, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #52
          to label %bb.h unwind label %bb.f, !noalias !3292

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !3293, !noalias !3292, !nonnull !19, !align !42, !noundef !19 ; 2 uses
  %1 = atomicrmw sub ptr %.val.i.i, i32 1 release, align 4, !noalias !3294
  %i.n = add i32 %1, -1                           ; 2 uses
  %i.o = and i32 %i.n, -1073741825
  %or.cond.not.i.i.i.i = icmp eq i32 %i.o, -2147483648
  br i1 %or.cond.not.i.i.i.i, label %bb.g, label %common.resume.i, !prof !64

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val.i.i, i32 noundef %i.n)
          to label %common.resume.i unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3292
  unreachable

common.resume.i:                                  ; preds = %bb.l, %bb.k, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i": ; preds = %_ZN3std3sys4sync6rwlock5futex6RwLock4read17h0b59d37cbee5e3f0E.exit.i
  %.val3.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 64), align 8, !noundef !19 ; 2 uses
  %i.q = zext i32 %i.f to i64                     ; 3 uses
  %i.r = icmp ugt i64 %.val3.i, %i.q
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.q, i64 noundef %.val3.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #52
          to label %.noexc4.i unwind label %bb.k

.noexc4.i:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1 release, align 4
  %i.t = add i32 %2, -1                           ; 2 uses
  %i.u = and i32 %i.t, -1073741825
  %or.cond.not.i.i.i = icmp eq i32 %i.u, -2147483648
  br i1 %or.cond.not.i.i.i, label %bb.l, label %common.resume.i, !prof !64

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.t)
          to label %common.resume.i unwind label %bb.o

bb.m:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h50eddc05408f1db6E.exit.i"
  %.val2.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 56), align 8, !nonnull !19, !noundef !19
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.val2.i, i64 %i.q ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !19, !align !18, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !19
  %3 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1 release, align 4
  %i.z = add i32 %3, -1                           ; 2 uses
  %i.aa = and i32 %i.z, -1073741825
  %or.cond.not.i.i6.i = icmp eq i32 %i.aa, -2147483648
  br i1 %or.cond.not.i.i6.i, label %bb.n, label %_ZN18nickel_lang_parser10identifier8interner8Interner6lookup17h1c29a255951176e1E.exit, !prof !64

bb.n:                                             ; preds = %bb.m
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.z)
  br label %_ZN18nickel_lang_parser10identifier8interner8Interner6lookup17h1c29a255951176e1E.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

_ZN18nickel_lang_parser10identifier8interner8Interner6lookup17h1c29a255951176e1E.exit: ; preds = %bb.m, %bb.n
  %i.ac = insertvalue { ptr, i64 } poison, ptr %i.w, 0
  %i.ad = insertvalue { ptr, i64 } %i.ac, i64 %i.y, 1
  ret { ptr, i64 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser10identifier6Bitmap4push17h0f9439b7d93b22b5E(ptr noalias noundef align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !19 ; 2 uses
  %i.c = and i64 %i.b, 63
  %i.d = lshr i64 %i.b, 6                         ; 4 uses
  %i.e = shl nuw i64 1, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !19 ; 6 uses
  %i.h = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.h)
  %.not = icmp samesign ult i64 %i.d, %i.g
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !range !38, !alias.scope !3297, !noundef !19
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdea3b916d5486521E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit": ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3297, !nonnull !19, !noundef !19
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.g
  store i64 0, ptr %i.m, align 8
  %i.n = add nuw nsw i64 %i.g, 1                  ; 2 uses
  store i64 %i.n, ptr %i.f, align 8, !alias.scope !3297
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit"
  %i.o = phi i64 [ %i.g, %bb.a ], [ %i.n, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit" ] ; 2 uses
  br i1 %1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.p = load i64, ptr %i.a, align 8, !noundef !19
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.a, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  %i.r = icmp samesign ult i64 %i.d, %i.o
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.d ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !19
  %i.w = or i64 %i.v, %i.e
  store i64 %i.w, ptr %i.u, align 8
  br label %bb.e

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.d, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser10identifier8LocIdent10into_label17hde5434c8a1c25122E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !3305
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 1) #54, !noalias !3305 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !3306
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3ca349fee4c6d436E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.b, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.h, i64 %i.c, i1 false), !noalias !3307
  store i64 %i.c, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN18nickel_lang_parser10identifier8LocIdent12is_generated17h51cf7083bff5817cE(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef zeroext i1 @_ZN18nickel_lang_parser10identifier5Ident12is_generated17ha45f4e7808dbb0b9E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser10identifier8LocIdent5fresh17h6dfd5726b7e767edE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([20 x i8]) align 4 captures(none) dereferenceable(20) initializes((0, 4), (16, 20)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN18nickel_lang_parser10identifier5Ident5fresh17hc8205d4833850c2eE()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %i.b, align 4
  store i32 2, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call { ptr, i64 } @_ZN18nickel_lang_parser10identifier5Ident5label17h633c8803c249f138E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = cmpxchg weak ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !3383
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock15write_contended17h55a2cbc8e1b81353E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE), !noalias !3383
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3383
  %i.i = and i64 %i.h, 9223372036854775807
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17ha176b4a36979d2ccE.exit", label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !3383
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i8
  br label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17ha176b4a36979d2ccE.exit"

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17ha176b4a36979d2ccE.exit": ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.m, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.n = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8, !noalias !3383
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hb863e3dbf85ab2d9E.exit", label %bb.e, !prof !22

bb.e:                                             ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17ha176b4a36979d2ccE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3384
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.e, align 8, !noalias !3384
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.o, align 8, !noalias !3384
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10212, i64 noundef 43, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10216, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #52
          to label %bb.g unwind label %bb.f, !noalias !3385

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr196drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17h165b15b57bb768e8E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #53
          to label %common.resume unwind label %bb.h, !noalias !3385

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3385
  unreachable
end_hunk_0
begin_hunk_1_@_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E:bb.a
  %i.ex = icmp eq i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i"

bb.aa:                                            ; preds = %bb.z
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdea3b916d5486521E"(ptr noalias noundef nonnull align 8 dereferenceable(112) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 16), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i" unwind label %bb.aj

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i": ; preds = %bb.aa, %bb.z
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 24), align 8, !alias.scope !3411, !nonnull !19, !noundef !19
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.eu
  store i64 0, ptr %i.ez, align 8
  %i.fa = add nuw nsw i64 %i.eu, 1
  store i64 %i.fa, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 32), align 8, !alias.scope !3411
  %.pre.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 40), align 8, !alias.scope !3410
  br label %_ZN18nickel_lang_parser10identifier6Bitmap4push17h0f9439b7d93b22b5E.exit.i.i

_ZN18nickel_lang_parser10identifier6Bitmap4push17h0f9439b7d93b22b5E.exit.i.i: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h87f8d81db05f0ecfE.exit.i.i"
  %i.fb = phi i64 [ %i.es, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h87f8d81db05f0ecfE.exit.i.i" ], [ %.pre.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hacf513a9f19c5e82E.exit.i.i.i" ]
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 40), align 8, !alias.scope !3410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3407
  store ptr %i.ec, ptr %i.a, align 8, !noalias !3413
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ed, ptr %i.fd, align 8, !noalias !3413
  %.val.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 104), align 8, !alias.scope !3414, !noundef !19
  %.val8.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 112), align 8, !alias.scope !3414, !noundef !19
  %i.fe = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4bd0658fd9572754E(i64 %.val.i.i.i, i64 %.val8.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !3412 ; 2 uses
  %i.ff = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !3415, !noundef !19
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %bb.ab, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i", !prof !20

bb.ab:                                            ; preds = %_ZN18nickel_lang_parser10identifier6Bitmap4push17h0f9439b7d93b22b5E.exit.i.i
  %i.fh = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h648cb2e679db5f2dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 72), i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 104), i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i" unwind label %bb.aj ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i": ; preds = %bb.ab, %_ZN18nickel_lang_parser10identifier6Bitmap4push17h0f9439b7d93b22b5E.exit.i.i
  %.val.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 72), align 8, !alias.scope !3416, !nonnull !19, !noundef !19 ; 9 uses
  %.val7.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 80), align 8, !alias.scope !3416, !noundef !19 ; 4 uses
  %i.fi = lshr i64 %i.fe, 57
  %i.fj = trunc nuw nsw i64 %i.fi to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.fj, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i"
  %.pn.i.i.i.i.i = phi i64 [ %i.fe, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i" ], [ %i.gj, %bb.ae ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i, %bb.ae ]
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i, %bb.ae ]
  %i.fk = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hcbd72d52156cb227E.exit.i.i.i.i" ], [ %i.gi, %bb.ae ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val7.i.i.i.i ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.fl, align 1, !noalias !3417 ; 3 uses
  %i.fm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.fn = bitcast <16 x i1> %i.fm to i16          ; 2 uses
  %.not25.i.i.i.i.i = icmp eq i16 %i.fn, 0
  br i1 %.not25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.thread.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i = phi i16 [ %i.fy, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.thread.i.i.i.i" ], [ %i.fn, %bb.ac ] ; 3 uses
  %i.fo = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i, i1 true)
  %i.fp = zext nneg i16 %i.fo to i64
  %i.fq = add i64 %.sroa.0.017.i.i.i.i.i, %i.fp
  %i.fr = and i64 %i.fq, %.val7.i.i.i.i
  %i.fs = sub nsw i64 0, %i.fr                    ; 2 uses
  %i.ft = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -16
  %.val4.i.i.i.i.i = load i64, ptr %i.fu, align 8, !noalias !3418, !noundef !19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ed, %.val4.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.thread.i.i.i.i", !prof !65

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 -24
  %.val3.i.i.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !3418, !nonnull !19, !align !18, !noundef !19
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %i.ec, ptr nonnull readonly align 1 %.val3.i.i.i.i.i, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.ed), !alias.scope !3419, !noalias !3418
  %i.fw = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fw, label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h5b6258cd33422a80E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.thread.i.i.i.i", !prof !66

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.thread.i.i.i.i", %bb.ac
  %.not13.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.ad, !prof !20

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.fx = add i16 %.sroa.05.026.i.i.i.i.i, -1
  %i.fy = and i16 %i.fx, %.sroa.05.026.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.fy, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.fz = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, zeroinitializer
  %i.ga = bitcast <16 x i1> %i.fz to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i = icmp eq i16 %i.ga, 0 ; 2 uses
  %i.gb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ga, i1 true)
  %i.gc = zext nneg i16 %i.gb to i64
  %.sroa.6.0.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i, i64 undef, i64 %i.gc
  %i.gd = add i64 %.sroa.6.0.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i
  %i.ge = and i64 %i.gd, %.val7.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i, label %bb.ae, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i = phi i64 [ %i.ge, %bb.ad ], [ %.sroa.6.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.gf = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.gg = bitcast <16 x i1> %i.gf to i16
  %i.gh = icmp eq i16 %i.gg, 0
  br i1 %i.gh, label %bb.ae, label %bb.af, !prof !20

bb.ae:                                            ; preds = %.thread.i.i.i.i.i, %bb.ad
  %.sroa.01.122.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.ad ]
  %.sroa.6.120.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.ad ]
  %i.gi = add i64 %i.fk, 16                       ; 2 uses
  %i.gj = add i64 %i.gi, %.sroa.0.017.i.i.i.i.i
  br label %bb.ac

bb.af:                                            ; preds = %.thread.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i
  %i.gl = load i8, ptr %i.gk, align 1, !noalias !3420, !noundef !19 ; 2 uses
  %i.gm = icmp sgt i8 %i.gl, -1
  br i1 %i.gm, label %bb.ag, label %bb.ah, !prof !20

bb.ag:                                            ; preds = %bb.af
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !3420
  %i.gn = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.go = bitcast <16 x i1> %i.gn to i16          ; 2 uses
  %i.gp = icmp ne i16 %i.go, 0
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.go, i1 true)
  %i.gr = zext nneg i16 %i.gq to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.gr
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !3421
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gs = phi i8 [ %.pre.i.i.i, %bb.ag ], [ %i.gl, %bb.af ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.gr, %bb.ag ], [ %.sroa.6.121.i.i.i.i.i, %bb.af ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.gu = and i8 %i.gs, 1
  %i.gv = zext nneg i8 %i.gu to i64
  %i.gw = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.gx = and i64 %i.gw, %.val7.i.i.i.i
  store i8 %i.fj, ptr %i.gt, align 1, !noalias !3421
  %i.gy = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.gx
  %i.gz = getelementptr i8, ptr %i.gy, i64 16
  store i8 %i.fj, ptr %i.gz, align 1, !noalias !3421
  %i.ha = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !3423
  %i.hb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.gv, i64 0
  %i.hc = sub <2 x i64> %i.ha, %i.hb
  store <2 x i64> %i.hc, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !3423
  %i.hd = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i  ; 2 uses
  %i.he = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -24
  store ptr %i.ec, ptr %i.hf, align 8, !noalias !3422
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.he, i64 -16
  store i64 %i.ed, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3422
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h5b6258cd33422a80E.exit.i"

bb.ai:                                            ; preds = %bb.r
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !3402
  unreachable

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h5b6258cd33422a80E.exit.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.i.i.i.i", %bb.ah
  %i.hh = phi i64 [ %i.hd, %bb.ah ], [ %i.fs, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h6b26f0a07f9d035aE.exit.i.i.i.i" ]
  %i.hi = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.hh
  %i.hj = trunc i64 %i.ek to i32                  ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.hi, i64 -8
  store i32 %i.hj, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3407
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h98ec3ddc4dad24f3E.exit"

bb.aj:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.v, %bb.m, %bb.l
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.r, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.hk, %bb.aj ], [ %i.dv, %bb.o ], [ %i.dx, %bb.r ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E"(ptr nonnull @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i8 %.sroa.01.0.i.i) #53
          to label %common.resume unwind label %bb.ao

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h98ec3ddc4dad24f3E.exit": ; preds = %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h5b6258cd33422a80E.exit.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h34a91d27d9218294E.exit.i"
  %.sroa.0.0.i = phi i32 [ %i.di, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h34a91d27d9218294E.exit.i" ], [ %i.hj, %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h5b6258cd33422a80E.exit.i" ]
  br i1 %i.r, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h98ec3ddc4dad24f3E.exit"
  %i.hl = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.hm = and i64 %i.hl, 9223372036854775807
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.al, !prof !22

bb.al:                                            ; preds = %bb.ak
  %i.ho = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.ho, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h98ec3ddc4dad24f3E.exit"
  %2 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1073741823 release, align 4
  %i.hp = add i32 %2, -1073741823                 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.hp, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit", label %bb.an, !prof !48

bb.an:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.hp)
  br label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit"

"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.an
  ret i32 %.sroa.0.0.i

bb.ao:                                            ; preds = %.body
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser10identifier8interner8Interner3new17h749e5ad99e74ac27E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3452
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !3453
  %i.b = tail call noundef dereferenceable_or_null(1024) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, 9) 1) #54, !noalias !3453 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN11typed_arena14Arena$LT$T$GT$3new17h2ca70b5b5def82bcE.exit.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 1024, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #52, !noalias !3454
  unreachable

"_ZN11typed_arena14Arena$LT$T$GT$3new17h2ca70b5b5def82bcE.exit.i": ; preds = %bb.a
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !3452
  store i32 0, ptr %i.a, align 8, !noalias !3452
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.d, align 4, !noalias !3452
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.e, align 8, !noalias !3452
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1024, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !3452
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !3452
  %.sroa.717.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.717.0..sroa_idx.i, align 8, !noalias !3452
  %.sroa.818.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.818.0..sroa_idx.i, align 8, !noalias !3452
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !3455
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef 8) #54, !noalias !3455 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %"_ZN11typed_arena14Arena$LT$T$GT$3new17h2ca70b5b5def82bcE.exit.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #52
          to label %.noexc.i.i unwind label %bb.d, !noalias !3456

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17hb4b7e58b7bbfce2cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.a) #53, !noalias !3457
  br label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i.i"

bb.e:                                             ; preds = %"_ZN11typed_arena14Arena$LT$T$GT$3new17h2ca70b5b5def82bcE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !3457
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !21, !noalias !3458, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i.i: ; preds = %bb.e
  %.pre.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !3459
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !3459
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$5empty17h5131afa5ec490367E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i.i": ; preds = %bb.e
  %i.m = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc13.i.i unwind label %bb.f, !noalias !3456 ; 2 uses

.noexc13.i.i:                                     ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i.i"
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !3460
  store i8 1, ptr %i.j, align 8, !noalias !3460
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$5empty17h5131afa5ec490367E.exit"

bb.f:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i.i.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr126drop_in_place$LT$aliasable..boxed..AliasableBox$LT$std..sync..poison..mutex..Mutex$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$$GT$17h80985168ee5f5a1eE"(ptr nonnull %i.f) #53, !noalias !3456
  br label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i.i"

"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..identifier..Bitmap$GT$17h43f3cbd5d980c9d2E.exit.i.i": ; preds = %bb.f, %bb.d
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %.pn.pn.i.i

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$5empty17h5131afa5ec490367E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i.i, %.noexc13.i.i
  %.pre-phi2.i.i.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i.i ], [ %i.o, %.noexc13.i.i ]
  %i.r = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i.i.i.i ], [ %i.n, %.noexc13.i.i ] ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.i, align 8, !noalias !3459
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3452
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @1, i64 16), i64 16, i1 false)
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.r, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.pre-phi2.i.i.i, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.f, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_ZN18nickel_lang_parser3ast10Annotation19contracts_to_string17h8ad6c50068afd3d0E(ptr dead_on_unwind noalias nofree noundef readnone sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @115, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #52
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN18nickel_lang_parser3ast140_$LT$impl$u20$core..convert..From$LT$nickel_lang_parser..ast..LetMetadata$GT$$u20$for$u20$nickel_lang_parser..ast..record..FieldMetadata$GT$4from17h9dc43eee0314760aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) initializes((0, 128), (176, 194)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #5 {
"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !align !18, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.d, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 193
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -9223372036854775806, ptr %i.i, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef align 8 dereferenceable_or_null(32) ptr @_ZN18nickel_lang_parser3ast3typ10RecordRows8find_row17h4ab7f17ac27dff54E(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #9 personality ptr @rust_eh_personality {
.lr.ph.i.i:
  br label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h659818cb01589ef0E.exit.i.i"

"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h659818cb01589ef0E.exit.i.i": ; preds = %bb.a, %.lr.ph.i.i
  %i.a = phi ptr [ %0, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !range !26, !alias.scope !3470, !noalias !3471, !noundef !19 ; 2 uses
  %i.d = icmp ne i32 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i32 %i.c, 3
  br i1 %i.e, label %bb.a, label %_ZN18nickel_lang_parser3ast3typ10RecordRows9find_path17hdcd2cf97b120113fE.exit

bb.a:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h659818cb01589ef0E.exit.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !3470, !noalias !3471, !nonnull !19, !align !24, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !3472, !noundef !19
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %_ZN18nickel_lang_parser3ast3typ10RecordRows9find_path17hdcd2cf97b120113fE.exit, label %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h659818cb01589ef0E.exit.i.i"

_ZN18nickel_lang_parser3ast3typ10RecordRows9find_path17hdcd2cf97b120113fE.exit: ; preds = %bb.a, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h659818cb01589ef0E.exit.i.i"
  %.sroa.0.0.i = phi ptr [ null, %"_ZN4core4iter6traits8iterator8Iterator8find_map5check28_$u7b$$u7b$closure$u7d$$u7d$17h659818cb01589ef0E.exit.i.i" ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr145drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17heeff9d8c42d32b67E":bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h027a2f90aba22603E"(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h291b264bd90b55b9E.exit", !prof !20

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h291b264bd90b55b9E.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h291b264bd90b55b9E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496040)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !496040, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !496040, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496041)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.e, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496042)
  %i.f = load i32, ptr %i.d, align 8, !range !28, !alias.scope !496043, !noalias !496040, !noundef !19
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496044)
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !496045, !noalias !496040 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !496045, !noalias !496040, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496046
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i": ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.k = icmp eq i64 %i.e, %.val1.i
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !38, !alias.scope !496040, !noundef !19 ; 2 uses
  %i.l = icmp eq i64 %.val2.i, 0
  br i1 %i.l, label %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i"
  %i.m = mul nuw i64 %.val2.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496040
  br label %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit"

"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496047)
  %.val.i3 = load i64, ptr %i.n, align 8, !alias.scope !496047 ; 2 uses
  %i.o = icmp eq i64 %.val.i3, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit5", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i4 = load ptr, ptr %i.p, align 8, !alias.scope !496047, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i4, i64 noundef %.val.i3, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496047
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit5"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit5": ; preds = %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr153drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$17h758f9c2ccdeb1babE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496060)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !496061, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !496061, !noundef !19
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !496061
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6b9e06af2179a15aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
  br label %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit"

"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !496062, !noundef !19 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %"_ZN4core3ptr202drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$$GT$17hf9b6a2a79a7a1544E.exit1", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit"
  %i.h = load i64, ptr %i.f, align 8, !noalias !496063, !noundef !19
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.f, align 8, !noalias !496063
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %"_ZN4core3ptr202drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$$GT$17hf9b6a2a79a7a1544E.exit1"

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hff02b6e03c9e23feE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e), !inline_history !496058
  br label %"_ZN4core3ptr202drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$$GT$17hf9b6a2a79a7a1544E.exit1"

"_ZN4core3ptr202drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$$GT$17hf9b6a2a79a7a1544E.exit1": ; preds = %bb.d, %bb.c, %"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$GT$$GT$17h48273f7d9d9be331E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496089)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !496090, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h129ed1274bfe53b7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496091)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !496092, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !496092, !nonnull !19, !noundef !19 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !496093
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i", %bb.c
  %.sroa.06.017.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !496094
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.108.014.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496098)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !496099, !noalias !496092, !nonnull !19, !noundef !19
  %1 = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !496100
  %i.y = icmp eq i64 %1, 1
  br i1 %i.y, label %bb.e, label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !496092
  br label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i"

"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i: ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i", %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h129ed1274bfe53b7E.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !496090, !nonnull !19, !noundef !19
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !496090
  br label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h129ed1274bfe53b7E.exit"

"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17h129ed1274bfe53b7E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E"(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %0 = atomicrmw sub ptr %.0.val, i32 1073741823 release, align 4
  %i.g = add i32 %0, -1073741823                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.g, 1073741824
  br i1 %or.cond.i, label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c8d4ae18236b106E.exit", label %bb.e, !prof !48

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.0.val, i32 noundef %i.g)
  br label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c8d4ae18236b106E.exit"

"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c8d4ae18236b106E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr160drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h5fa4718cd5c95a3eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496107)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !496107, !noundef !19 ; 4 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17ha3c23f4f79053e33E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !496107, !nonnull !19, !noundef !19
  %i.d = shl i64 %.val1.i, 3
  %i.e = icmp slt i64 %.val1.i, 2305843009213693950
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val1.i, 17
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nuw nsw i64 -16, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val.i, i64 %i.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !496107
  br label %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17ha3c23f4f79053e33E.exit.i"

"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17ha3c23f4f79053e33E.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496108)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !496109, !nonnull !19, !noundef !19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.o, align 8, !alias.scope !496109, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496110)
  %i.p = icmp eq i64 %.val1.i.i, 0
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h35cb9d05ff26a4e9E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17ha3c23f4f79053e33E.exit.i", %"_ZN4core3ptr153drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h72a350420571fdb8E.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.r, %"_ZN4core3ptr153drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h72a350420571fdb8E.exit.i.i.i.i" ], [ 0, %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17ha3c23f4f79053e33E.exit.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.r = add nuw i64 %.sroa.0.011.i.i.i.i, 1      ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !496110, !noalias !496109 ; 2 uses
  %i.s = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr153drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h72a350420571fdb8E.exit.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !496110, !noalias !496109, !nonnull !19, !noundef !19
  %i.u = shl nuw i64 %.val8.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496111
  br label %"_ZN4core3ptr153drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h72a350420571fdb8E.exit.i.i.i.i"

"_ZN4core3ptr153drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h72a350420571fdb8E.exit.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.v = icmp eq i64 %i.r, %.val1.i.i
  br i1 %i.v, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h35cb9d05ff26a4e9E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h35cb9d05ff26a4e9E.exit.i.i": ; preds = %"_ZN4core3ptr153drop_in_place$LT$indexmap..Bucket$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h72a350420571fdb8E.exit.i.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$hashbrown..table..HashTable$LT$usize$GT$$GT$17ha3c23f4f79053e33E.exit.i"
  %.val2.i.i = load i64, ptr %0, align 8, !range !38, !alias.scope !496109, !noundef !19 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr170drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h20874f3ba12c5433E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h35cb9d05ff26a4e9E.exit.i.i"
  %i.x = mul nuw i64 %.val2.i.i, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496109
  br label %"_ZN4core3ptr170drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h20874f3ba12c5433E.exit"

"_ZN4core3ptr170drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h20874f3ba12c5433E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h35cb9d05ff26a4e9E.exit.i.i", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr166drop_in_place$LT$alloc..rc..Weak$LT$dyn$u20$core..ops..function..Fn$LT$$LP$usize$C$$RP$$GT$$u2b$Output$u20$$u3d$$u20$pretty..BoxDoc$C$$RF$alloc..alloc..Global$GT$$GT$17h3bb6b039f7a4abccE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he530eb762b1f018fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he530eb762b1f018fE.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !38, !invariant.load !19
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !61, !invariant.load !19
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.i, i64 8) ; 3 uses
  %i.k = add nuw i64 %i.g, 15
  %i.l = add i64 %i.k, %i.j
  %i.m = sub i64 0, %i.j
  %i.n = and i64 %i.l, %i.m                       ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he530eb762b1f018fE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.j) #54
  br label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he530eb762b1f018fE.exit"

"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he530eb762b1f018fE.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr171drop_in_place$LT$alloc..vec..Vec$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$$GT$17h3d1ca5d2486d54adE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496126)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7878d4517ea24d0cE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.e, %"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 5 uses
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496128)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !496129, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !496129, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496130)
  %i.h = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i ; 3 uses
  %i.j = add nuw i64 %.sroa.0.07.i.i.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496131)
  %i.k = load i32, ptr %i.i, align 8, !range !28, !alias.scope !496132, !noalias !496129, !noundef !19
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.b, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496133)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !496134, !noalias !496129 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !496134, !noalias !496129, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496135
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i": ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.p = icmp eq i64 %i.j, %.val1.i.i.i.i
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i", %.lr.ph.i.i
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !range !38, !alias.scope !496129, !noundef !19 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.q, label %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i.i.i.i"
  %i.r = mul nuw i64 %.val2.i.i.i.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496129
  br label %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit.i.i.i"

"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit.i.i.i": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc01e794ad795160eE.exit.i.i.i.i"
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496136)
  %.val.i3.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !496137 ; 2 uses
  %i.t = icmp eq i64 %.val.i3.i.i.i, 0
  br i1 %i.t, label %"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E.exit.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit.i.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i4.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !496137, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i4.i.i.i, i64 noundef %.val.i3.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496137
  br label %"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E.exit.i.i"

"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E.exit.i.i": ; preds = %bb.e, %"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h6e390a79a80c553bE.exit.i.i.i"
  %i.v = icmp eq i64 %i.e, %.val1
  br i1 %i.v, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7878d4517ea24d0cE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7878d4517ea24d0cE.exit": ; preds = %"_ZN4core3ptr148drop_in_place$LT$$LP$alloc..vec..Vec$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$C$alloc..string..String$RP$$GT$17h40777ed1e6ef9a22E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1e9e04162c44765eE":bb.a
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !496162, !noundef !19
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !496162
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !496162, !nonnull !19, !noundef !19
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !496162
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !496162, !nonnull !19, !noundef !19
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !496162, !inline_history !496161
  %i.s = load i64, ptr %i.e, align 8, !noalias !496162, !noundef !19
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !496162
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7c05a23995e012aE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7c05a23995e012aE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !496162, !noundef !19 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !496162, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !496162
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h83573e064cf46c01E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496166)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !496166, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !496166
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !496166 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !496166, !noundef !19 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.02.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.02.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !496166, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !496166, !noundef !19
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.02.03.i.i, -1
  %i.k = add i64 %.sroa.02.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !496166, !noundef !19
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !496166
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !496166, !nonnull !19, !noundef !19
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !496166
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !496166, !nonnull !19, !noundef !19
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !496166, !inline_history !496165
  %i.s = load i64, ptr %i.e, align 8, !noalias !496166, !noundef !19
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !496166
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.02.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3fd5ca34db5bbdfE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !496166, !noundef !19 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.01.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !496166, !noundef !19
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.01.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !496166
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h0bd26101962b8281E"(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496175)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496177)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !496178, !nonnull !19, !noundef !19 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !496178, !noundef !19 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496179)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i"
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw i64 %.sroa.0.08.i.i.i.i.i, 1     ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !496179, !noalias !496178, !nonnull !19, !noundef !19 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h9afd9b6e786a7e79E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i" unwind label %.body.i.i.i.i.i, !noalias !496180

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #54, !noalias !496180
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #54, !noalias !496180
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !496179, !noalias !496178, !nonnull !19, !noundef !19
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E"(ptr %.val.i.i.i.i.i) #53
          to label %bb.b unwind label %bb.c, !noalias !496180

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !496180
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !38, !alias.scope !496178, !noundef !19 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he53ebe4e6b393adaE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496178
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he53ebe4e6b393adaE.exit.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h461c554db74ef589E.exit.i.i.i.i.i", %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !38, !alias.scope !496178, !noundef !19 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd3fbce4c3add0768E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i"
  %i.q = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496178
  br label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd3fbce4c3add0768E.exit"

"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17he53ebe4e6b393adaE.exit.i.i.i": ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.g

"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd3fbce4c3add0768E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcdcd083aa74ec3aeE.exit.i.i.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr195drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17h552e328bc011189dE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !align !42, !noundef !19 ; 2 uses
  %1 = atomicrmw sub ptr %.val, i32 1 release, align 4
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = and i32 %i.b, -1073741825
  %or.cond.not.i.i = icmp eq i32 %i.c, -2147483648
  br i1 %or.cond.not.i.i, label %bb.b, label %"_ZN4core3ptr157drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h728f278a9ca3b416E.exit", !prof !64

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.b)
  br label %"_ZN4core3ptr157drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h728f278a9ca3b416E.exit"

"_ZN4core3ptr157drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h728f278a9ca3b416E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr196drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17h165b15b57bb768e8E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !21, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %1 = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.h = add i32 %1, -1073741823                  ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.h, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit", label %bb.e, !prof !48

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.h)
  br label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit"

"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17h4dae71a1d56f8165E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17haaa80cf207d154d7E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 4, 73) %2) unnamed_addr #21 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 3 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  switch i64 %i.a, label %.preheader.i.preheader.new [
    i64 0, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i
    i64 1, label %.preheader.i.epil.preheader
  ]

.preheader.i.preheader.new:                       ; preds = %bb.a
  %unroll_iter = and i64 %i.a, 14
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.0.03.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.f, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.c = or disjoint i64 %.sroa.0.03.i.i, 1       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496197)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 1, !alias.scope !496196
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.e, align 1, !alias.scope !496197
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.d, align 1, !alias.scope !496196
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.e, align 1, !alias.scope !496197
  %i.f = add nuw nsw i64 %.sroa.0.03.i.i, 2       ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496199)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.g, align 1, !alias.scope !496198
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.h, align 1, !alias.scope !496199
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.g, align 1, !alias.scope !496198
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.h, align 1, !alias.scope !496199
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa, label %.preheader.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %i.i = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  br i1 %lcmp.mod.not, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %bb.a, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa
  %.sroa.0.03.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.f, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i.epil.init ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i.epil.init ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496197)
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.j, align 1, !alias.scope !496196
  %.sroa.02.0.copyload.i.i.i.epil = load i64, ptr %i.k, align 1, !alias.scope !496197
  store i64 %.sroa.02.0.copyload.i.i.i.epil, ptr %i.j, align 1, !alias.scope !496196
  store i64 %.sroa.0.0.copyload.i.i.i.epil, ptr %i.k, align 1, !alias.scope !496197
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i: ; preds = %.preheader.i.epil.preheader, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i.loopexit.unr-lcssa, %bb.a
  %.not4.i = icmp eq i64 %i.b, 0
  br i1 %.not4.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i
  %i.l = and i64 %2, 120                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 4 uses
  %i.o = icmp samesign ult i64 %i.b, 4
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496201)
  %.sroa.0.0.copyload.i.i5.i = load i32, ptr %i.m, align 1, !alias.scope !496200
  %.sroa.02.0.copyload.i.i6.i = load i32, ptr %i.n, align 1, !alias.scope !496201
  store i32 %.sroa.02.0.copyload.i.i6.i, ptr %i.m, align 1, !alias.scope !496200
  store i32 %.sroa.0.0.copyload.i.i5.i, ptr %i.n, align 1, !alias.scope !496201
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.p = and i64 %2, 2
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496203)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.r, align 1, !alias.scope !496202
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.s, align 1, !alias.scope !496203
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.r, align 1, !alias.scope !496202
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.s, align 1, !alias.scope !496203
  %i.t = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = and i64 %2, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.1.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496205)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.w, align 1, !alias.scope !496204
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.x, align 1, !alias.scope !496205
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.w, align 1, !alias.scope !496204
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.x, align 1, !alias.scope !496205
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hef36fd426ecc42eaE.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr203drop_in_place$LT$alloc..rc..Weak$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_parser..uniterm..VarKindCell$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17h12a2d20908080f69E"(ptr %.0.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95213d7783b9bc71E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95213d7783b9bc71E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95213d7783b9bc71E.exit"

"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95213d7783b9bc71E.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr207drop_in_place$LT$core..iter..adapters..chain..Chain$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$C$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h011bf4b7e9cd6639E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496224)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !496224, !noundef !19 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496226)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !496227, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val2.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !496227, !nonnull !19, !noundef !19
  %i.g = ptrtoint ptr %.val2.i.i.i to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 280
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$$u5b$nickel_lang_parser..utils..FieldDecl$u5d$$GT$17h39a90620e29ce194E"(ptr noalias noundef nonnull align 8 %i.e, i64 noundef %i.j), !noalias !496227
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !496227, !noundef !19 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = mul nuw i64 %i.l, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496227
  br label %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit"

"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496228)
  %i.o = load i64, ptr %0, align 8, !range !81, !alias.scope !496228, !noundef !19 ; 3 uses
  %i.p = icmp eq i64 %i.o, 22
  br i1 %i.p, label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr124drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17h5a5f8d564cbdec1aE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496231)
  %i.q = icmp eq i64 %i.o, 21
  br i1 %i.q, label %"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$core..option..IntoIter$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$$GT$17hdb84a42b5152c9bfE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496232)
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 18)
  switch i64 %i.r, label %bb.f [
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr393drop_in_place$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$core..option..IntoIter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$C$core..iter..adapters..cloned..Cloned$LT$core..slice..iter..Iter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$$GT$$GT$17h5ef719484a0ba330E":bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17ha6d569285e07e0daE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !52, !noundef !19 ; 3 uses
  %.not = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496457)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !496457, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496457
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #54
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h55cd1ae5af782655E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h80af4524bd6993baE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %0, align 8, !range !52, !noundef !19 ; 2 uses
  %switch = icmp sgt i64 %.val4, 0
  br i1 %switch, label %bb.b, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit"

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19
  %i.b = shl nuw i64 %.val4, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit": ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.c, align 8, !range !52, !noundef !19 ; 2 uses
  %switch8 = icmp sgt i64 %.val, 0
  br i1 %switch8, label %bb.c, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit7"

bb.c:                                             ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19
  %i.e = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit7"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit7": ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17hca38a1fd6172f996E.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h8dfefa02faf4fdc1E"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17ha9eb355ba980556fE.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17ha9eb355ba980556fE.exit"
    i64 1, label %bb.c
  ], !prof !496458

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17ha9eb355ba980556fE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !19, !align !24, !noundef !19 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !19 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !38, !invariant.load !19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !61, !invariant.load !19 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf6450de53e2c66c2E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #54
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf6450de53e2c66c2E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !38, !invariant.load !19 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !61, !invariant.load !19 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #54
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #54
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf6450de53e2c66c2E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #54
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17ha9eb355ba980556fE.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17ha9eb355ba980556fE.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf6450de53e2c66c2E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h066010222c32a90dE"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496464)
  %i.a = load i64, ptr %.0.val, align 8, !range !77, !alias.scope !496465, !noundef !19
  switch i64 %i.a, label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h356ea0a008c1f347E.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !496465, !noundef !19 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h356ea0a008c1f347E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !496465, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #54, !noalias !496465
  br label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h356ea0a008c1f347E.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val2.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !496465, !nonnull !19, !noundef !19
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h8dfefa02faf4fdc1E"(ptr nonnull %.val2.i.i.i)
          to label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h356ea0a008c1f347E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #54
  resume { ptr, i32 } %i.f

"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17h356ea0a008c1f347E.exit": ; preds = %bb.a, %bb.b, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #54
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h2d145a1bd5020426E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496482)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !496483, !nonnull !19, !noundef !19
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !496483
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h5f37af27baf454ffE.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h184672a2c4e08df5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h5f37af27baf454ffE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !496480, !nonnull !19, !noundef !19
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h9968d91a21a8f034E"(ptr nonnull %.val1.i) #53
          to label %.body unwind label %bb.d

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h5f37af27baf454ffE.exit.i": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !496480, !nonnull !19, !noundef !19
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h9968d91a21a8f034E"(ptr nonnull %.val.i)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17he40ef45deb2983bcE.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

bb.e:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h5f37af27baf454ffE.exit.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496485)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !496486, !nonnull !19, !noundef !19
  %2 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !496486
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.f, label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h63b68320e07571e3E.exit"

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h63b68320e07571e3E.exit" unwind label %bb.h

"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17he40ef45deb2983bcE.exit": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h5f37af27baf454ffE.exit.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496488)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !496489, !nonnull !19, !noundef !19
  %3 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !496489
  %i.m = icmp eq i64 %3, 1
  br i1 %i.m, label %bb.g, label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h63b68320e07571e3E.exit1"

bb.g:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17he40ef45deb2983bcE.exit"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  br label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h63b68320e07571e3E.exit1"

"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h63b68320e07571e3E.exit1": ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17he40ef45deb2983bcE.exit", %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h63b68320e07571e3E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr48drop_in_place$LT$toml_edit..error..TomlError$GT$17hb0402d676b5863e0E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496504)
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !496504 ; 2 uses
  %i.b = icmp eq i64 %.val.i, 0
  br i1 %i.b, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !496504, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496504
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496505)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !496505, !noundef !19 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !496506
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #53
  resume { ptr, i32 } %i.h

"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496507)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i4 = load ptr, ptr %i.k, align 8, !alias.scope !496507, !nonnull !19, !noundef !19 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i5 = load i64, ptr %i.l, align 8, !alias.scope !496507, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496508)
  %i.m = icmp eq i64 %.val1.i5, 0
  br i1 %i.m, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i" ], [ 0, %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3" ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i4, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.o = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496509)
  %.val.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !496510, !noalias !496507 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !496510, !noalias !496507, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496511
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i
  %i.r = icmp eq i64 %i.o, %.val1.i5
  br i1 %i.r, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i.i", %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h1c7e3eff66825722E.exit3"
  %.val2.i = load i64, ptr %i.j, align 8, !range !38, !alias.scope !496507, !noundef !19 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i"
  %i.t = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i4, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496507
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h5c2fac5df2e97be1E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32ad25da1210af96E.exit.i", %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr490drop_in_place$LT$core..iter..adapters..GenericShunt$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$C$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..Ast$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$core..result..Result$LT$core..convert..Infallible$C$nickel_lang_parser..error..ParseError$GT$$GT$$GT$17h97b4fb5ed410a0caE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496520)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !496521, !nonnull !19, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !496521, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 280
  %i.h = icmp eq ptr %.val2.i.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [280 x i8], ptr %i.b, i64 %.sroa.0.07.i.i.i.i
  %i.j = add nuw i64 %.sroa.0.07.i.i.i.i, 1       ; 2 uses
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(280) %i.i), !noalias !496521
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !496521, !noundef !19 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %"_ZN4core3ptr352drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$C$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..Ast$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd021d5b2ba40efc6E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i.i"
  %i.o = load ptr, ptr %0, align 8, !alias.scope !496521, !nonnull !19, !noundef !19
  %i.p = mul nuw i64 %i.m, 280
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496521
  br label %"_ZN4core3ptr352drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$C$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..Ast$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd021d5b2ba40efc6E.exit"

"_ZN4core3ptr352drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$C$nickel_lang_parser..uniterm..$LT$impl$u20$nickel_lang_parser..ast..TryConvert$LT$nickel_lang_parser..uniterm..UniRecord$GT$$u20$for$u20$nickel_lang_parser..ast..Ast$GT$..try_convert..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd021d5b2ba40efc6E.exit": ; preds = %"_ZN4core3ptr72drop_in_place$LT$$u5b$nickel_lang_parser..ast..record..FieldDef$u5d$$GT$17h9d17dc5e09139877E.exit.i.i.i", %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr53drop_in_place$LT$codespan_reporting..files..Error$GT$17he4ec9e579ad8f62fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !78, !noundef !19
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h8dfefa02faf4fdc1E"(ptr nonnull %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17h4e028f4ae31247bfE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !45, !noundef !19
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 166)
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8, !range !50, !noundef !19 ; 3 uses
  %i.d = icmp ne i64 %.val, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %or.cond.i = icmp slt i64 %.val, 1
  br i1 %or.cond.i, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_parser..lexer..MultiStringToken$GT$17hb69433e7613e12c9E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496526
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_parser..lexer..MultiStringToken$GT$17hb69433e7613e12c9E.exit"

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..lexer..NormalToken$GT$17h2febfc0c2f8078f4E"(ptr noalias noundef align 8 dereferenceable(64) %0)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_parser..lexer..MultiStringToken$GT$17hb69433e7613e12c9E.exit"

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !range !50, !noundef !19 ; 3 uses
  %i.g = icmp ne i64 %.val2, -9223372036854775807
  tail call void @llvm.assume(i1 %i.g)
  %or.cond.i4 = icmp slt i64 %.val2, 1
  br i1 %or.cond.i4, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_parser..lexer..MultiStringToken$GT$17hb69433e7613e12c9E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.h, align 8, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !496527
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_parser..lexer..MultiStringToken$GT$17hb69433e7613e12c9E.exit"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_parser..lexer..MultiStringToken$GT$17hb69433e7613e12c9E.exit": ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..typ..VarKind$GT$17h1d5a2cb8b3abaaa4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !19
  switch i64 %i.a, label %bb.b [
    i64 0, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit"
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.d = shl i64 %.val3, 2
  %i.e = icmp slt i64 %.val3, 4611686018427387900
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 2 uses
  %i.g = add i64 %i.f, 16                         ; 2 uses
  %i.h = add nsw i64 %.val3, 17
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %i.k = icmp ult i64 %i.i, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4
  %.sink = phi i64 [ %i.s, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4 ], [ %i.f, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ]
  %.sink7 = phi i64 [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4 ], [ %i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ]
  %.val.sink.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.sink = load ptr, ptr %.val.sink.in, align 8, !nonnull !19, !noundef !19
  %i.m = sub nuw nsw i64 -16, %.sink
  %i.n = getelementptr inbounds i8, ptr %.val.sink, i64 %i.m
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17hde9a671ab275d549E":bb.a
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !496614, !noundef !19 ; 2 uses
  %.not3.i.i23.i = icmp eq i64 %i.y, %i.v
  br i1 %.not3.i.i23.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.z = add i64 %i.v, %i.f
  store i64 %i.z, ptr %i.u, align 8, !noalias !496614
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b875453c8eda5d9E.exit"

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !496614, !nonnull !19, !noundef !19 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ac, i64 %i.f, i1 false), !noalias !496614
  br label %bb.h

"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b875453c8eda5d9E.exit": ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496619)
  %i.a = load i64, ptr %0, align 8, !range !23, !alias.scope !496619, !noundef !19 ; 3 uses
  %i.b = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i64 %i.a, 3
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496620)
  switch i64 %i.a, label %bb.c [
    i64 0, label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit"
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.d, align 8, !alias.scope !496621, !noundef !19 ; 4 uses
  %i.e = icmp eq i64 %.val3.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = shl i64 %.val3.i.i, 2
  %i.g = icmp slt i64 %.val3.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.f, -16                        ; 2 uses
  %i.i = add i64 %i.h, 16                         ; 2 uses
  %i.j = add nsw i64 %.val3.i.i, 17
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp uge i64 %i.k, %i.i
  %i.m = icmp ult i64 %i.k, 9223372036854775793
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i
  %.sink.i.i = phi i64 [ %i.u, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i ], [ %i.h, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i ]
  %.sink7.i.i = phi i64 [ %i.x, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i ], [ %i.k, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.sink.i.i = load ptr, ptr %.val.sink.in.i.i, align 8, !alias.scope !496621, !nonnull !19, !noundef !19
  %i.o = sub nuw nsw i64 -16, %.sink.i.i
  %i.p = getelementptr inbounds i8, ptr %.val.sink.i.i, i64 %i.o
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %.sink7.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !496621
  br label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !alias.scope !496621, !noundef !19 ; 4 uses
  %i.r = icmp eq i64 %.val1.i.i, 0
  br i1 %i.r, label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i: ; preds = %bb.d
  %i.s = shl i64 %.val1.i.i, 2
  %i.t = icmp slt i64 %.val1.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.t)
  %i.u = and i64 %i.s, -16                        ; 2 uses
  %i.v = add i64 %i.u, 16                         ; 2 uses
  %i.w = add nsw i64 %.val1.i.i, 17
  %i.x = add i64 %i.w, %i.v                       ; 4 uses
  %i.y = icmp uge i64 %i.x, %i.v
  %i.z = icmp ult i64 %i.x, 9223372036854775793
  tail call void @llvm.assume(i1 %i.y)
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i"

"_ZN4core3ptr216drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$$RF$nickel_lang_parser..ast..typ..Type$C$nickel_lang_parser..ast..typ..RecordRows$C$nickel_lang_parser..ast..typ..EnumRows$C$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17haf4dcbb996684458E.exit": ; preds = %bb.a, %bb.b, %bb.c, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i", %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h369f5c9d7da83dc8E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = icmp eq i64 %.val19, 0
  br i1 %i.b, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.c, align 8, !nonnull !19, !noundef !19
  %i.d = shl nuw i64 %.val19, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit"

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val15 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.f = icmp eq i64 %.val15, 0
  br i1 %i.f, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit26", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.g, align 8, !nonnull !19, !noundef !19
  %i.h = shl nuw i64 %.val15, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit26"

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit26": ; preds = %bb.c, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hab0780cd7fc9ccd1E"(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit26"
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #53
          to label %bb.k unwind label %bb.y

bb.e:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h00c692165ee2a7b8E.exit26"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496672)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !496673, !noundef !19 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496674)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !496675, !noundef !19 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !496675, !nonnull !19, !noundef !19 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !496676
  %i.t = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = bitcast <16 x i1> %i.t to i16
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i", %bb.g
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.06.1.i.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.v, %bb.g ], [ %i.ae, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ %i.ah, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.h ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !496677
  %i.y = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.y to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = and i16 %i.ab, %.lcssa.i.i.i.i.i.i.i
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.af
  %i.ah = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496681)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !496682, !noalias !496675, !nonnull !19, !noundef !19
  %1 = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !496683
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %bb.i, label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i"

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i" unwind label %bb.l

"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i": ; preds = %bb.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6a9f1b589e340e5aE.exit.i.i.i.i.i.i"
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i.i, label %bb.h

_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17haeb1b2aa950c721dE.exit.i.i.i.i.i.i", %bb.f
  %i.am = mul i64 %i.n, 24
  %i.an = icmp slt i64 %i.n, 768614336404564650
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = and i64 %i.am, -16                      ; 2 uses
  %i.ap = add i64 %i.ao, 32                       ; 2 uses
  %i.aq = add nsw i64 %i.n, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE.exit", label %bb.j

bb.j:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i.i
  %i.av = load ptr, ptr %i.l, align 8, !alias.scope !496673, !nonnull !19, !noundef !19
  %i.aw = sub i64 -32, %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !496673
  br label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE.exit"

bb.k:                                             ; preds = %bb.l, %bb.d
  %.pn4 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.j, %bb.d ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h8696fc450910d08eE"(ptr noalias noundef align 8 dereferenceable(112) %i.ay) #53
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val13 = load i64, ptr %i.az, align 8          ; 2 uses
  %i.ba = icmp eq i64 %.val13, 0
  br i1 %i.ba, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit", label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE.exit": ; preds = %bb.j, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hc20e77743b257f63E.exit.i.i.i.i.i, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496685)
  %.val4.i.i = load i64, ptr %i.bc, align 8, !alias.scope !496686 ; 2 uses
  %i.bd = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE.exit"
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i.i = load ptr, ptr %i.be, align 8, !alias.scope !496686, !nonnull !19, !noundef !19
  %i.bf = shl nuw i64 %.val4.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #54, !noalias !496686
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i.i": ; preds = %bb.m, %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h979acf16fc91a3ecE.exit"
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bg, align 8, !alias.scope !496686 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i, 0
  br i1 %i.bh, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h39f2ea63da42b570E.exit.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !496686, !nonnull !19, !noundef !19
  %i.bj = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 4) #54, !noalias !496686
  br label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h39f2ea63da42b570E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h39f2ea63da42b570E.exit.i": ; preds = %bb.n, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496687)
  %.val4.i1.i = load i64, ptr %i.bk, align 8, !alias.scope !496688 ; 2 uses
  %i.bl = icmp eq i64 %.val4.i1.i, 0
  br i1 %i.bl, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i3.i", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h39f2ea63da42b570E.exit.i"
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i2.i = load ptr, ptr %i.bm, align 8, !alias.scope !496688, !nonnull !19, !noundef !19
  %i.bn = shl nuw i64 %.val4.i1.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 4) #54, !noalias !496688
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i3.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i3.i": ; preds = %bb.o, %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17h39f2ea63da42b570E.exit.i"
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bo, align 8, !alias.scope !496688 ; 2 uses
  %i.bp = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bp, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h8696fc450910d08eE.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i3.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.bq, align 8, !alias.scope !496688, !nonnull !19, !noundef !19
  %i.br = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 4) #54, !noalias !496688
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h8696fc450910d08eE.exit"

bb.q:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val14 = load ptr, ptr %i.bs, align 8, !nonnull !19, !noundef !19
  %i.bt = shl nuw i64 %.val13, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit"

"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h8696fc450910d08eE.exit": ; preds = %bb.p, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit.i3.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bv = icmp eq i64 %.val, 0
  br i1 %i.bv, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit27", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h8696fc450910d08eE.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val12 = load ptr, ptr %i.bw, align 8, !nonnull !19, !noundef !19
  %i.bx = shl nuw i64 %.val, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #54
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit27"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit": ; preds = %bb.q, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val23 = load i64, ptr %i.by, align 8          ; 2 uses
  %i.bz = icmp eq i64 %.val23, 0
  br i1 %i.bz, label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit"
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val24 = load ptr, ptr %i.ca, align 8, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23, i64 noundef range(i64 1, -9223372036854775807) 1) #54
  br label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit27": ; preds = %bb.r, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h8696fc450910d08eE.exit"
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val21 = load i64, ptr %i.cb, align 8          ; 2 uses
  %i.cc = icmp eq i64 %.val21, 0
  br i1 %i.cc, label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit28", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit27"
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val22 = load ptr, ptr %i.cd, align 8, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #54
  br label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit28"

"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit": ; preds = %bb.s, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496689)
  %i.cf = load i32, ptr %i.ce, align 8, !range !60, !alias.scope !496689, !noundef !19
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit"

bb.u:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit"
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496692)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !496693, !nonnull !19, !noundef !19
  %2 = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !496693
  %i.cj = icmp eq i64 %2, 1
  br i1 %i.cj, label %bb.v, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit"

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit" unwind label %bb.y

"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit28": ; preds = %bb.t, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h3a0b715e49b61937E.exit27"
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496694)
  %i.cl = load i32, ptr %i.ck, align 8, !range !60, !alias.scope !496694, !noundef !19
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.w, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit30"

bb.w:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit28"
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496697)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !496698, !nonnull !19, !noundef !19
  %3 = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !496698
  %i.cp = icmp eq i64 %3, 1
  br i1 %i.cp, label %bb.x, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit30"

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cn)
  br label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit30"

"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit30": ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit28", %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.d
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h1dc5a942c2e7137aE.exit": ; preds = %bb.u, %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h4f03fed32ab053d2E.exit", %bb.v
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h9afd9b6e786a7e79E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496725)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496728)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !496729, !nonnull !19, !noundef !19
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !496729
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hdf9795e5869b4300E.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hdf9795e5869b4300E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !496725 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !496725, !nonnull !19, !noundef !19
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %.body

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hdf9795e5869b4300E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !496725 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h71835fe06331483fE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hdf9795e5869b4300E.exit.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !496725, !nonnull !19, !noundef !19
  %i.k = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h71835fe06331483fE.exit"

.body:                                            ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..PikeVMCache$GT$17h884ad51e1a909f17E"(ptr noalias noundef align 8 dereferenceable(216) %i.l) #53
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call fastcc void @"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE"(ptr noalias noundef align 8 dereferenceable(56) %i.m) #53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val9 = load i64, ptr %i.n, align 8, !range !52, !noundef !19 ; 2 uses
  %switch16 = icmp sgt i64 %.val9, 0
  br i1 %switch16, label %bb.i, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit"

"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h71835fe06331483fE.exit": ; preds = %bb.e, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17hdf9795e5869b4300E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..PikeVMCache$GT$17h884ad51e1a909f17E"(ptr noalias noundef align 8 dereferenceable(216) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496731)
  %i.q = load i64, ptr %i.p, align 8, !range !52, !alias.scope !496732, !noundef !19 ; 3 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h71835fe06331483fE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496733)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb9effc223239beb9E.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.val1.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !496734, !nonnull !19, !noundef !19
  %i.u = shl nuw i64 %i.q, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496734
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb9effc223239beb9E.exit.i.i.i"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb9effc223239beb9E.exit.i.i.i": ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.val2.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !496734 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb9effc223239beb9E.exit.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.val3.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !496734, !nonnull !19, !noundef !19
  %i.y = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !496734
  br label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE.exit"

bb.i:                                             ; preds = %.body
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val10 = load ptr, ptr %i.z, align 8, !nonnull !19, !noundef !19
  %i.aa = shl nuw i64 %.val9, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit"

"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE.exit": ; preds = %bb.h, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17hb9effc223239beb9E.exit.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h71835fe06331483fE.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val = load i64, ptr %i.ab, align 8, !range !52, !noundef !19 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.j, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit11"

bb.j:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE.exit"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val8 = load ptr, ptr %i.ac, align 8, !nonnull !19, !noundef !19
  %i.ad = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit11"

"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit": ; preds = %.body, %bb.i
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h9c20acb13403008dE"(ptr noalias noundef align 8 dereferenceable(704) %0) #53
          to label %.body12 unwind label %bb.q

"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit11": ; preds = %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h867c8f7c4ef7391dE.exit", %bb.j
  %i.ae = load i64, ptr %0, align 8, !range !33, !alias.scope !496735, !noundef !19
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h9c20acb13403008dE.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit11"
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h369f5c9d7da83dc8E"(ptr noalias noundef nonnull align 8 dereferenceable(704) %0)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17ha199211c09438b52E.exit.i.i" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h369f5c9d7da83dc8E"(ptr noalias noundef align 8 dereferenceable(352) %i.ah) #53
          to label %.body12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17ha199211c09438b52E.exit.i.i": ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h369f5c9d7da83dc8E"(ptr noalias noundef align 8 dereferenceable(352) %i.aj)
          to label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h9c20acb13403008dE.exit" unwind label %bb.o

.body12:                                          ; preds = %bb.o, %bb.l, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit"
  %.pn6 = phi { ptr, i32 } [ %i.e, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit" ], [ %i.an, %bb.o ], [ %i.ag, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !33, !alias.scope !496736, !noundef !19
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17hac13a7a5123dcd10E.exit", label %bb.n

bb.n:                                             ; preds = %.body12
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h369f5c9d7da83dc8E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ak)
          to label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17hac13a7a5123dcd10E.exit" unwind label %bb.q

bb.o:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17ha199211c09438b52E.exit.i.i"
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body12

"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h9c20acb13403008dE.exit": ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit11", %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17ha199211c09438b52E.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !33, !alias.scope !496737, !noundef !19
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17hac13a7a5123dcd10E.exit15", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h9c20acb13403008dE.exit"
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h369f5c9d7da83dc8E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ao)
  br label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17hac13a7a5123dcd10E.exit15"

"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17hac13a7a5123dcd10E.exit15": ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h9c20acb13403008dE.exit", %bb.p
  ret void

bb.q:                                             ; preds = %bb.n, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h94535d6b0224c169E.exit"
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17hac13a7a5123dcd10E.exit": ; preds = %.body12, %bb.n
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496746)
  %i.a = load i64, ptr %0, align 8, !range !32, !alias.scope !496746, !noundef !19 ; 4 uses
  %i.b = icmp eq i64 %i.a, 18
  br i1 %i.b, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496748)
  %i.c = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.a, 3
  br i1 %i.d, label %bb.c, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496749)
  switch i64 %i.a, label %bb.d [
    i64 0, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit"
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !496750, !noundef !19 ; 4 uses
  %i.f = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h0d7b2f67915777f4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.g = shl i64 %.val3.i.i.i.i, 2
end_hunk_5
begin_hunk_6_@"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h74a58cca441aa879E":bb.a
"_ZN4core3ptr97drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$$GT$17h9bc420bfb477bcc9E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbf1b92d1dcd19417E.exit", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..drain..Drain$LT$nickel_lang_parser..error..ParseError$GT$$GT$17he71bd1754efcb855E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497606)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !497606, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !497606, !nonnull !19, !noundef !19 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !497606
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !497606
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !497606, !nonnull !19, !noundef !19 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !497606, !noundef !19 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noalias !497606, !noundef !19 ; 4 uses
  %i.o = icmp ult i64 %i.n, 128102389400760776
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !497606, !noundef !19 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8, !noalias !497606
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit"

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !497606, !nonnull !19, !noundef !19 ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !noalias !497606
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !497606, !nonnull !19, !noundef !19 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.0.07.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %.sroa.0.07.i.i
  %i.ad = add nuw i64 %.sroa.0.07.i.i, 1          ; 2 uses
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17hc14aa7d1c40722b6E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.ac), !noalias !497606
  %i.ae = icmp eq i64 %i.ad, %i.g
  br i1 %i.ae, label %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i": ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !497606, !noundef !19 ; 3 uses
  %.not.i.i18.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i18.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !497606, !noundef !19 ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 128102389400760776
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !497606, !noundef !19 ; 2 uses
  %.not3.i.i19.i = icmp eq i64 %i.al, %i.ai
  br i1 %.not3.i.i19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.am = add i64 %i.ai, %i.ag
  store i64 %i.am, ptr %i.ah, align 8, !noalias !497606
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit"

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.x, align 8, !noalias !497606, !nonnull !19, !noundef !19 ; 2 uses
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %i.al
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %i.ai
  %i.aq = mul i64 %i.ag, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.ao, i64 %i.aq, i1 false), !noalias !497606
  br label %bb.h

"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf0a657a655fb0e77E.exit": ; preds = %bb.b, %bb.d, %"_ZN4core3ptr68drop_in_place$LT$$u5b$nickel_lang_parser..error..ParseError$u5d$$GT$17he0045d6b07b79c6fE.exit.i", %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$$LP$usize$C$nickel_lang_parser..ast..pattern..FieldPattern$C$usize$RP$$GT$17h3de62b9d04ed001dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497621)
  %i.a = load i64, ptr %0, align 8, !range !32, !alias.scope !497622, !noundef !19 ; 4 uses
  %i.b = icmp eq i64 %i.a, 18
  br i1 %i.b, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497624)
  %i.c = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.a, 3
  br i1 %i.d, label %bb.c, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497625)
  switch i64 %i.a, label %bb.d [
    i64 0, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit"
    i64 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !497626, !noundef !19 ; 4 uses
  %i.f = icmp eq i64 %.val3.i.i.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.g = shl i64 %.val3.i.i.i.i.i.i, 2
  %i.h = icmp slt i64 %.val3.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.h)
  %i.i = and i64 %i.g, -16                        ; 2 uses
  %i.j = add i64 %i.i, 16                         ; 2 uses
  %i.k = add nsw i64 %.val3.i.i.i.i.i.i, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = icmp ult i64 %i.l, 9223372036854775793
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ %i.v, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i.i = phi i64 [ %i.y, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i ], [ %i.l, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.sink.i.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i.i, align 8, !alias.scope !497626, !nonnull !19, !noundef !19
  %i.p = sub nuw nsw i64 -16, %.sink.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i.i, i64 %i.p
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %.sink7.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !497626
  br label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit"

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !497626, !noundef !19 ; 4 uses
  %i.s = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = shl i64 %.val1.i.i.i.i.i.i, 2
  %i.u = icmp slt i64 %.val1.i.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.u)
  %i.v = and i64 %i.t, -16                        ; 2 uses
  %i.w = add i64 %i.v, 16                         ; 2 uses
  %i.x = add nsw i64 %.val1.i.i.i.i.i.i, 17
  %i.y = add i64 %i.x, %i.w                       ; 4 uses
  %i.z = icmp uge i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.y, 9223372036854775793
  tail call void @llvm.assume(i1 %i.z)
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i"

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17ha3382c0784fe69abE.exit": ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i.i", %bb.e, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17hab0780cd7fc9ccd1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497643)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !497644, !nonnull !19, !noundef !19
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !497645
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.l, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497648)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !497649, !nonnull !19, !noundef !19
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !497650
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17h4d7f83a07d60863eE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !38, !noundef !19 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit"
  %i.t = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #54
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit6"

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ae360a4af67f348E.exit", %bb.g
  ret void

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h999dcbd5e873d2ceE.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !28, !noundef !19
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497653)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !497653 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !497653, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !497653
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit": ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$typed_arena..Arena$LT$u8$GT$$GT$$GT$17h7f3cd6f12e3d0a3aE"(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cb375b162e92678E.exit", !prof !20

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.0.val)
  br label %"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cb375b162e92678E.exit"

"_ZN87_$LT$std..sync..poison..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5cb375b162e92678E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..typ..Type$GT$$GT$17h057cfc0b795e26f2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497664)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !497664, !nonnull !19, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !497664, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497665)
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr65drop_in_place$LT$$u5b$nickel_lang_parser..ast..typ..Type$u5d$$GT$17h79c16d270918dc26E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"
  %.sroa.0.07.i.i = phi i64 [ %i.j, %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.07.i.i ; 4 uses
  %i.j = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497667)
  %i.k = load i64, ptr %i.i, align 8, !range !23, !alias.scope !497668, !noalias !497664, !noundef !19 ; 3 uses
  %i.l = icmp ne i64 %i.k, 12
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ult i64 %i.k, 3
  br i1 %i.m, label %bb.b, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497669)
  switch i64 %i.k, label %bb.c [
    i64 0, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val3.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !497670, !noalias !497664, !noundef !19 ; 4 uses
  %i.o = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.o, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = shl i64 %.val3.i.i.i.i.i, 2
  %i.q = icmp slt i64 %.val3.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.q)
  %i.r = and i64 %i.p, -16                        ; 2 uses
  %i.s = add i64 %i.r, 16                         ; 2 uses
  %i.t = add nsw i64 %.val3.i.i.i.i.i, 17
  %i.u = add i64 %i.t, %i.s                       ; 4 uses
  %i.v = icmp uge i64 %i.u, %i.s
  %i.w = icmp ult i64 %i.u, 9223372036854775793
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i = phi i64 [ %i.ae, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i ], [ %i.r, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sink7.i.i.i.i.i = phi i64 [ %i.ah, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i ], [ %i.u, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.sink.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.sink.i.i.i.i.i = load ptr, ptr %.val.sink.in.i.i.i.i.i, align 8, !alias.scope !497670, !noalias !497664, !nonnull !19, !noundef !19
  %i.y = sub nuw nsw i64 -16, %.sink.i.i.i.i.i
  %i.z = getelementptr inbounds i8, ptr %.val.sink.i.i.i.i.i, i64 %i.y
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %.sink7.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #54, !noalias !497671
  br label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i"

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !497670, !noalias !497664, !noundef !19 ; 4 uses
  %i.ab = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i: ; preds = %bb.d
  %i.ac = shl i64 %.val1.i.i.i.i.i, 2
  %i.ad = icmp slt i64 %.val1.i.i.i.i.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i64 %i.ac, -16                      ; 2 uses
  %i.af = add i64 %i.ae, 16                       ; 2 uses
  %i.ag = add nsw i64 %.val1.i.i.i.i.i, 17
  %i.ah = add i64 %i.ag, %i.af                    ; 4 uses
  %i.ai = icmp uge i64 %i.ah, %i.af
  %i.aj = icmp ult i64 %i.ah, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", label %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i"

"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i4.i.i.i.i.i, %bb.d, %"_ZN4core3ptr102drop_in_place$LT$std..collections..hash..set..HashSet$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9c0586ab8ce8c100E.exit.sink.split.i.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %.lr.ph.i.i
  %i.al = icmp eq i64 %i.j, %i.g
  br i1 %i.al, label %"_ZN4core3ptr65drop_in_place$LT$$u5b$nickel_lang_parser..ast..typ..Type$u5d$$GT$17h79c16d270918dc26E.exit.i", label %.lr.ph.i.i

"_ZN4core3ptr65drop_in_place$LT$$u5b$nickel_lang_parser..ast..typ..Type$u5d$$GT$17h79c16d270918dc26E.exit.i": ; preds = %"_ZN4core3ptr55drop_in_place$LT$nickel_lang_parser..ast..typ..Type$GT$17h7bf44958b6c33376E.exit.i.i", %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !497664, !noundef !19 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd39a02299eb8cbf0E.exit", label %bb.e
end_hunk_6
