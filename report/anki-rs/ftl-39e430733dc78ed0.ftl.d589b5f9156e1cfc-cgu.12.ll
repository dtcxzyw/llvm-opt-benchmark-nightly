Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/ftl-39e430733dc78ed0.ftl.d589b5f9156e1cfc-cgu.12?download=true
inline.NumInlined: 372
inline.NumDeleted: 209
begin_hunk_0_@_ZN12clap_builder6parser7matches11arg_matches10ArgMatches15try_remove_many17h13a94884eeaa77ddE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  store i64 %i.e, ptr %i.d, align 8
  %i.h = invoke noundef i64 @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg8num_vals17hbe16c19833d5ccc1E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.d)
          to label %bb.e unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg17into_vals_flatten17hc4956fc0949c684cE(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @"_ZN12clap_builder6parser7matches11arg_matches50unwrap_downcast_into$u7b$$u7b$reify.shim$u7d$$u7d$17h1547bc336adb229dE", ptr %i.j, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sink = phi i64 [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17hb5e3df55052cc7ceE"(ptr noalias noundef align 8 dereferenceable(104) %i.d) #19
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches16try_remove_arg_t17hd89c2a77c3c6fbe6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 3 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17hc6f407935b152896E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noundef !4
  %.not = icmp eq i64 %i.h, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !11, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 166593273626562474080533280498620587164, ptr %i.a, align 16
  invoke void @_ZN12clap_builder6parser7matches11matched_arg10MatchedArg13infer_type_id17hcef4b2c29da60c89E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.copyload = load i128, ptr %i.d, align 16
  %i.l = icmp eq i128 %.sroa.04.0.copyload, 166593273626562474080533280498620587164
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  call void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17h91d84f08a3b3f0e2E"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.c, align 8, !range !10, !alias.scope !558, !noundef !4
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h30fe1b69cf77c429E.exit", label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17hb5e3df55052cc7ceE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.c)
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h30fe1b69cf77c429E.exit"

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h30fe1b69cf77c429E.exit": ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 166593273626562474080533280498620587164, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$$GT$17h30fe1b69cf77c429E.exit", %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.k:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17hb5e3df55052cc7ceE"(ptr noalias noundef align 8 dereferenceable(104) %i.f) #19
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN12clap_builder6parser7matches11arg_matches50unwrap_downcast_into$u7b$$u7b$reify.shim$u7d$$u7d$17h1547bc336adb229dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !572
  call fastcc void @_ZN12clap_builder4util9any_value8AnyValue13downcast_into17hdb90b6ae1217738aE(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1), !noalias !573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !575, !noalias !572, !noundef !4
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN12clap_builder6parser7matches11arg_matches20unwrap_downcast_into17h1eb0c42aaa4d5d19E.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !577
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @0, i64 noundef 99, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
          to label %bb.e unwind label %bb.c, !noalias !578

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !582, !noalias !576, !nonnull !4, !noundef !4
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !583
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h25238739ee600bfcE.exit.i.i"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdb1f0a818713ec5dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h25238739ee600bfcE.exit.i.i" unwind label %bb.f, !noalias !578

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17, !noalias !578
  unreachable

"_ZN4core3ptr60drop_in_place$LT$clap_builder..util..any_value..AnyValue$GT$17h25238739ee600bfcE.exit.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d

_ZN12clap_builder6parser7matches11arg_matches20unwrap_downcast_into17h1eb0c42aaa4d5d19E.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !584, !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !572
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h3609b688f63ad91fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1400 x i8], align 8              ; 5 uses
  %i.b = alloca [1400 x i8], align 8              ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [1400 x i8], align 8              ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.g, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val14 = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr i8, ptr %1, i64 32
  %.val15 = load ptr, ptr %i.m, align 8, !nonnull !4, !align !6, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !4, !noalias !601, !nonnull !4
  call void %i.o(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.d, ptr noundef nonnull align 1 %.val14)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !range !8, !alias.scope !602, !noundef !4
  %i.r = icmp eq i64 %i.q, 3
  br i1 %i.r, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17h50c4edfab3efd748E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h45e82ace4a998697E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.p)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17h50c4edfab3efd748E.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.p, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  br label %common.resume

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17h50c4edfab3efd748E.exit": ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.p, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = inttoptr i64 %2 to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.w, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit29"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit29": ; preds = %bb.v, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28, %bb.r, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h44f79361b3aa5452E.exit10", %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$regex_automata..meta..regex..Cache$GT$$GT$17h50c4edfab3efd748E.exit"
  ret void

common.resume:                                    ; preds = %5, %bb.f, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %bb.t ], [ %i.s, %bb.f ], [ %6, %5 ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
  unreachable

4:                                                ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hb93cb66f9fea3d4cE.exit40"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 1400) #18
          to label %.noexc22 unwind label %5

.noexc22:                                         ; preds = %4
  unreachable

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h45e82ace4a998697E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.a) #19
          to label %common.resume unwind label %7

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h44f79361b3aa5452E.exit10": ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hb93cb66f9fea3d4cE.exit40"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.cg, ptr noundef nonnull align 8 dereferenceable(1400) %i.a, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %9, align 8
  store i64 0, ptr %0, align 8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %11, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit29"

bb.h:                                             ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %14 = urem i64 %2, %i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.y, i64 %14
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17h6896c627753240bfE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.z)
  %i.aa = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %12, align 8, !nonnull !4, !align !6, !noundef !4 ; 9 uses
  %i.ad = load i8, ptr %13, align 8, !range !12, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ai = trunc nuw i8 %i.ad to i1
  br i1 %i.ai, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %.noexc26, !prof !9

.noexc26:                                         ; preds = %bb.k
  %i.am = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.am, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc26
  store atomic i8 1, ptr %i.ah monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.l, %.noexc26, %bb.k, %bb.j
  %i.an = atomicrmw xchg ptr %i.ac, i32 0 release, align 4
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.m, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit", !prof !14

bb.m:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.ac)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit"

bb.n:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aq = add nsw i64 %i.af, -1                   ; 3 uses
  store i64 %i.aq, ptr %i.ae, align 8
  %i.ar = load i64, ptr %i.ap, align 8, !range !15, !noundef !4
  %i.as = icmp samesign ult i64 %i.aq, %i.ar
  call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  %i.av = icmp ult i64 %i.af, 1152921504606846977
  call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aq
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ay, align 8
  store i64 0, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.bc = trunc nuw i8 %i.ad to i1
  br i1 %i.bc, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28, label %bb.p, !prof !9

bb.p:                                             ; preds = %bb.o
  %i.bg = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.bg, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.bb monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bh = atomicrmw xchg ptr %i.ac, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.r, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit29", !prof !14

bb.r:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i28
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.ac)
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit29"

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit": ; preds = %bb.m, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4
  %i.bk = getelementptr i8, ptr %1, i64 32
  %.val11 = load ptr, ptr %i.bk, align 8, !nonnull !4, !align !6, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.val11, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !invariant.load !4, !noalias !603, !nonnull !4
  call void %i.bm(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.b, ptr noundef nonnull align 1 %.val), !inline_history !592
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !604
  %i.bn = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #20, !noalias !604 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.s, label %bb.v, !prof !14

bb.s:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 1400) #18
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h45e82ace4a998697E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.b) #19
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #17
  unreachable

bb.v:                                             ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.bn, ptr noundef nonnull align 8 dereferenceable(1400) %i.b, i64 1400, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.br, align 8
  store i64 0, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bt, align 8
  br label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit29"

bb.w:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %.val.i33 = load ptr, ptr %12, align 8, !alias.scope !605 ; 4 uses
  %.val3.i34 = load i8, ptr %13, align 8, !range !606, !alias.scope !605, !noundef !4 ; 2 uses
  %.not.i.i35 = icmp eq i8 %.val3.i34, 2
  br i1 %.not.i.i35, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hb93cb66f9fea3d4cE.exit40", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i33) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i33, i64 4
  %i.bv = trunc nuw i8 %.val3.i34 to i1
  br i1 %i.bv, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !605
  %i.bx = and i64 %i.bw, 9223372036854775807
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  %i.bz = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !605
  br i1 %i.bz, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr %i.bu monotonic, align 1, !noalias !605
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ca = atomicrmw xchg ptr %.val.i33, i32 0 release, align 4, !noalias !605
  %i.cb = icmp eq i32 %i.ca, 2
  br i1 %i.cb, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit.sink.split.i37", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hb93cb66f9fea3d4cE.exit40", !prof !14

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit.sink.split.i37": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %.val.i33), !noalias !605
  br label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hb93cb66f9fea3d4cE.exit40"

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17hb93cb66f9fea3d4cE.exit40": ; preds = %bb.w, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i.i.i36, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h6d8a9551663e02f7E.exit.sink.split.i37"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.cd = getelementptr i8, ptr %1, i64 32
  %.val13 = load ptr, ptr %i.cd, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !invariant.load !4, !noalias !607, !nonnull !4
  call void %i.cf(ptr noalias noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %i.a, ptr noundef nonnull align 1 %.val12), !inline_history !592
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !608
  %i.cg = call noundef align 8 dereferenceable_or_null(1400) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 1400, i64 noundef 8) #20, !noalias !608 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %4, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h44f79361b3aa5452E.exit10", !prof !14
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h08930d7065a5173eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.d = load i64, ptr %i.c, align 8, !range !16, !alias.scope !612, !noundef !4
  %.not.i = icmp eq i64 %i.d, -9223372036854775807
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !613
  store ptr %i.c, ptr %i.a, align 8, !noalias !613
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @92, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @93, i64 noundef 10, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !613
  br label %"_ZN80_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f7097ebddf219fdE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !613
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !noalias !613
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @90, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !613
  br label %"_ZN80_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f7097ebddf219fdE.exit"

"_ZN80_$LT$fluent_syntax..ast..PatternElement$LT$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8f7097ebddf219fdE.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0cdf6c3f2d252da5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !617
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.e, ptr %i.a, align 8, !noalias !617
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field4_finish17hb257608e31d4fdd8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 2, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 5, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @32, i64 noundef 10, ptr noundef nonnull readonly align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @33, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !617
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h127fb39dbe18ba82E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !621
  store ptr %i.b, ptr %i.a, align 8, !noalias !621
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @65, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !621
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h1544b286fe65a67fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !alias.scope !625, !noundef !4
  %.not.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !626
  store ptr %i.b, ptr %i.a, align 8, !noalias !626
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !626
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h11c87d0301659239E.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 4), !noalias !625
  br label %"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h11c87d0301659239E.exit"

"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h11c87d0301659239E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h16e5a3aa3f96b4a1E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !630
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !630
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @85, i64 noundef 10, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !630
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2364c740637e1371E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !634
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.d, ptr %i.a, align 8, !noalias !634
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @59, i64 noundef 7, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @60, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 5, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @61, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !634
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2a3d7dbbaaa7315fE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !638
  store ptr %i.b, ptr %i.a, align 8, !noalias !638
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @65, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @66, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !638
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h37e50a13d5bb8497E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !642
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !642
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @68, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 2, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !642
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3ad0268c3ace0830E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !646
  store ptr %i.b, ptr %i.a, align 8, !noalias !646
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !646
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h46f31617297362caE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.h = load i64, ptr %i.g, align 8, !range !18, !alias.scope !650, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !651
  store ptr %i.i, ptr %i.f, align 8, !noalias !651
  %i.j = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @39, i64 noundef 7, ptr noundef nonnull align 1 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !651
  br label %"_ZN71_$LT$fluent_syntax..ast..Entry$LT$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8527563ff0a48d6cE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !651
  store ptr %i.i, ptr %i.e, align 8, !noalias !651
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 4, ptr noundef nonnull align 1 %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !651
  br label %"_ZN71_$LT$fluent_syntax..ast..Entry$LT$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8527563ff0a48d6cE.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !651
  store ptr %i.i, ptr %i.d, align 8, !noalias !651
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @41, i64 noundef 7, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !651
  br label %"_ZN71_$LT$fluent_syntax..ast..Entry$LT$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h8527563ff0a48d6cE.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !651
  store ptr %i.i, ptr %i.c, align 8, !noalias !651
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @42, i64 noundef 12, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
end_hunk_0
