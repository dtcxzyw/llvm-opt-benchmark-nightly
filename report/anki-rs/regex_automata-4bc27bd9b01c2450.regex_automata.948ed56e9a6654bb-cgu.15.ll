Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.15?download=true
inline.NumInlined: 510
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN14regex_automata3nfa8thompson9backtrack18BoundedBacktracker20try_search_slots_imp28_$u7b$$u7b$closure$u7d$$u7d$17hd5be403f35a297deE":bb.a
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @"_ZN14regex_automata3nfa8thompson9backtrack18BoundedBacktracker20try_search_slots_imp28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17ha1e66a7ad9bf9be2E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 12), (16, 24)) %0, i64 %1, i32 %2) unnamed_addr #4 {
bb.a:
  store i64 %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack18BoundedBacktracker3new17h1518e8bbe759cee6E(ptr sret([128 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [496 x i8], align 8               ; 6 uses
  call void @_ZN14regex_automata3nfa8thompson9backtrack7Builder3new17hf0ad7c1a1e89f291E(ptr nonnull sret([496 x i8]) align 8 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr nonnull sret([128 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr nonnull align 8 %i.d, i64 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h70b20aa883c41433E"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %.noexc
  %i.h = load i64, ptr %i.c, align 8
  %.not.i.i = icmp eq i64 %i.h, -9223372036854775800
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h80b9cabc48f82b9eE"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @19)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void @_ZN14regex_automata3nfa8thompson9backtrack7Builder14build_from_nfa17he08c75582c45334dE(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr %i.j)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.noexc, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Builder$GT$17h95cc6c3790bf7dd5E"(ptr nonnull align 8 %i.e) #27
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -2
  %switch.i.i.i = icmp eq i8 %i.n, 2
  br i1 %switch.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Builder$GT$17h95cc6c3790bf7dd5E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.o)
          to label %"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Builder$GT$17h95cc6c3790bf7dd5E.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17hcc2790c746d4b67dE"(ptr nonnull align 8 %i.g) #27
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.k, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Builder$GT$17h95cc6c3790bf7dd5E.exit": ; preds = %bb.e, %bb.f
  call void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17hcc2790c746d4b67dE"(ptr nonnull align 8 %i.g)
  ret void

bb.i:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @"_ZN14regex_automata3nfa8thompson9backtrack18BoundedBacktracker4step28_$u7b$$u7b$closure$u7d$$u7d$17h9d865d955d666519E"(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1, i32 %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.d, align 8
  store i32 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack18BoundedBacktracker6config17ha76cc9fb535ec3b3E(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !3
  %i.b = invoke { i64, i64 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc4c42ba6f1bf823fE"()
          to label %_ZN14regex_automata3nfa8thompson9backtrack6Config3new17he260fdf1d0dbc3b0E.exit unwind label %bb.b, !noalias !3 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !noalias !3
  %i.f = and i8 %i.e, -2
  %switch.i.i.i = icmp eq i8 %i.f, 2
  br i1 %switch.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.a)
          to label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit.i.i" unwind label %bb.d, !noalias !3

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !3
  unreachable

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit.i.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_ZN14regex_automata3nfa8thompson9backtrack6Config3new17he260fdf1d0dbc3b0E.exit: ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.b, 0
  %i.i = extractvalue { i64, i64 } %i.b, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i64 %i.h, ptr %0, align 8, !alias.scope !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8, !alias.scope !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack18BoundedBacktracker7builder17hf4ce94d180f2ad4aE(ptr nofree writeonly sret([496 x i8]) align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  tail call void @_ZN14regex_automata3nfa8thompson9backtrack7Builder3new17hf0ad7c1a1e89f291E(ptr sret([496 x i8]) align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 2305843009213693953) i64 @_ZN14regex_automata3nfa8thompson9backtrack20min_visited_capacity17hbabc45b36244b30bE(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN14regex_automata3nfa8thompson3nfa3NFA6states17h6a6c962a283214a6E(ptr align 8 %0)
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.d)
  %i.h = add i64 %i.g, 1
  %i.i = mul i64 %i.h, %i.b                       ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = lshr i64 %i.i, 3
  %i.m = zext i1 %i.k to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.l, %i.m
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define i64 @_ZN14regex_automata3nfa8thompson9backtrack5Cache12memory_usage17hd00e8d46ff4f8aebE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h3ac518fc218deac5E"(ptr align 8 %0)
  %i.b = shl i64 %i.a, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call i64 @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3len17h2f7c9c4e0bf2ecb3E"(ptr nonnull align 8 %i.c)
  %i.e = shl i64 %i.d, 3
  %i.f = add i64 %i.e, %i.b
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack5Cache3new17h9b96633bffa8f994E(ptr nofree writeonly sret([56 x i8]) align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17hdfb7fa79822c148cE"(ptr nonnull sret([24 x i8]) align 8 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17ha33b096f17b9e095E"(ptr nonnull sret([24 x i8]) align 8 %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.d, align 8, !noalias !6
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hb684db7094a4f06dE"(ptr nonnull align 8 %i.b, i64 0)
          to label %bb.e unwind label %bb.b, !noalias !6

bb.b:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr49drop_in_place$LT$alloc..vec..Vec$LT$usize$GT$$GT$17hd5656237056141afE"(ptr nonnull align 8 %i.b)
          to label %.body unwind label %bb.c, !noalias !6

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !6
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.e, %bb.b ]
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h6442191376ae0e78E"(ptr nonnull align 8 %i.c) #27
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack5Cache5reset17h456687e18f49064aE(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hb684db7094a4f06dE"(ptr nonnull align 8 %i.a, i64 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson9backtrack6Config13get_prefilter17h1f8de1477547987aE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_ref17h63970e9ddf04855dE"(ptr nonnull align 8 %i.a)
  %i.c = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h0d8354e279a23c1bE"(ptr align 8 %i.b, ptr nonnull align 8 @18)
  %i.d = tail call align 8 ptr @"_ZN4core6option15Option$LT$T$GT$6as_ref17h6925bce3d6da6cefE"(ptr align 8 %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack6Config16visited_capacity17he10571e66eebb2d9E(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr nofree align 8 captures(none) initializes((0, 16)) %1, i64 %2) unnamed_addr #6 {
bb.a:
  store i64 1, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %2, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_ZN14regex_automata3nfa8thompson9backtrack6Config20get_visited_capacity17h806265bae44d15a3E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call i64 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h5fb26ec8364f8d2eE"(i64 %i.a, i64 %i.c, i64 262144)
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack6Config3new17he260fdf1d0dbc3b0E(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !9
  %i.b = invoke { i64, i64 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc4c42ba6f1bf823fE"()
          to label %"_ZN91_$LT$regex_automata..nfa..thompson..backtrack..Config$u20$as$u20$core..default..Default$GT$7default17h415a5331c7d38ee7E.exit" unwind label %bb.b, !noalias !9 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !noalias !9
  %i.f = and i8 %i.e, -2
  %switch.i.i = icmp eq i8 %i.f, 2
  br i1 %switch.i.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.a)
          to label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit.i" unwind label %bb.d, !noalias !9

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !9
  unreachable

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

"_ZN91_$LT$regex_automata..nfa..thompson..backtrack..Config$u20$as$u20$core..default..Default$GT$7default17h415a5331c7d38ee7E.exit": ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.b, 0
  %i.i = extractvalue { i64, i64 } %i.b, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i64 %i.h, ptr %0, align 8, !alias.scope !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8, !alias.scope !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN14regex_automata3nfa8thompson9backtrack6Config9overwrite28_$u7b$$u7b$closure$u7d$$u7d$17h48e3758e2cc85d24E"(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha97729b2d981aac8E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack6Config9prefilter17h823d491288ef8b2cE(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -2
  %switch.i = icmp eq i8 %i.e, 2
  br i1 %switch.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.b)
          to label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.g = load i8, ptr %i.c, align 8
  %i.h = and i8 %i.g, -2
  %switch.i.i = icmp eq i8 %i.h, 2
  br i1 %switch.i.i, label %"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Config$GT$17ha6bae96614c885c8E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.b)
          to label %"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Config$GT$17ha6bae96614c885c8E.exit" unwind label %bb.e

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17hb88a05f977ec5850E.exit": ; preds = %bb.a, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr69drop_in_place$LT$regex_automata..nfa..thompson..backtrack..Config$GT$17ha6bae96614c885c8E.exit": ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack7Builder10build_many17ha19cecba264cb6beE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr align 8 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [128 x i8], align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr nonnull sret([128 x i8]) align 8 %i.b, ptr nonnull align 8 %i.d, ptr align 8 %2, i64 %3)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h70b20aa883c41433E"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.e = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.e, -9223372036854775800
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h80b9cabc48f82b9eE"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @19)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void @_ZN14regex_automata3nfa8thompson9backtrack7Builder14build_from_nfa17he08c75582c45334dE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack7Builder14build_from_nfa17he08c75582c45334dE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.sroa.3 = alloca [32 x i8], align 8     ; 6 uses
  %i.a = alloca [128 x i8], align 8               ; 2 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [128 x i8], align 8               ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = invoke i32 @_ZN14regex_automata3nfa8thompson3nfa3NFA12look_set_any17h122208f064991d29E(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.k, %bb.j ], [ %i.k, %bb.i ]
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb83b4a8e655e439E"(ptr nonnull align 8 %i.d)
          to label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17h9ab577bc3f627036E.exit" unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.g = invoke zeroext i1 @_ZN14regex_automata4util4look7LookSet9available17h180edf1d38948f5fE(i32 %i.e)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4e4eafa41d28f193E"(ptr nonnull sret([128 x i8]) align 8 %i.b, i1 zeroext %i.g)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h40a81898ae828dbaE"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.h, -9223372036854775800
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h80b9cabc48f82b9eE"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @20)
          to label %bb.n unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha97729b2d981aac8E"(ptr nonnull sret([32 x i8]) align 8 %.sroa.0.sroa.3, ptr nonnull align 8 %i.i)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.h
  %i.j = invoke { i64, i64 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he4c64bb6ca0e62e8E"(ptr align 8 %1)
          to label %bb.l unwind label %bb.i, !noalias !12 ; 2 uses

bb.i:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.3, i64 24
  %i.m = load i8, ptr %i.l, align 8, !noalias !12
  %i.n = and i8 %i.m, -2
  %switch.i.i = icmp eq i8 %i.n, 2
  br i1 %switch.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %.sroa.0.sroa.3)
          to label %.body unwind label %bb.k, !noalias !12

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !12
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.p = extractvalue { i64, i64 } %i.j, 0
  %i.q = extractvalue { i64, i64 } %i.j, 1
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.3)
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.s, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 -9223372036854775800, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  ret void

bb.n:                                             ; preds = %bb.g
  call void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb83b4a8e655e439E"(ptr nonnull align 8 %i.d)
  br label %bb.m

bb.o:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17h9ab577bc3f627036E.exit": ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack7Builder3new17hf0ad7c1a1e89f291E(ptr nofree writeonly sret([496 x i8]) align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [448 x i8], align 8               ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h91d138e11da81ff4E"(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !15
  %i.d = invoke { i64, i64 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc4c42ba6f1bf823fE"()
          to label %"_ZN91_$LT$regex_automata..nfa..thompson..backtrack..Config$u20$as$u20$core..default..Default$GT$7default17h415a5331c7d38ee7E.exit" unwind label %bb.b, !noalias !15 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i8, ptr %i.f, align 8, !noalias !15
  %i.h = and i8 %i.g, -2
  %switch.i.i = icmp eq i8 %i.h, 2
  br i1 %switch.i.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.a)
          to label %common.resume unwind label %bb.d, !noalias !15

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !15
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.e, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.n, %bb.e ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN91_$LT$regex_automata..nfa..thompson..backtrack..Config$u20$as$u20$core..default..Default$GT$7default17h415a5331c7d38ee7E.exit": ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.d, 0
  %i.k = extractvalue { i64, i64 } %i.d, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.k, ptr %i.m, align 8, !alias.scope !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nonnull sret([448 x i8]) align 8 %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %"_ZN91_$LT$regex_automata..nfa..thompson..backtrack..Config$u20$as$u20$core..default..Default$GT$7default17h415a5331c7d38ee7E.exit"
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, -2
  %switch.i.i1 = icmp eq i8 %i.q, 2
  br i1 %switch.i.i1, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.l)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %"_ZN91_$LT$regex_automata..nfa..thompson..backtrack..Config$u20$as$u20$core..default..Default$GT$7default17h415a5331c7d38ee7E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.r, ptr noundef nonnull align 8 dereferenceable(448) %i.b, i64 448, i1 false)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson9backtrack7Builder5build17h559bf80f091fe567E(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 8               ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr nonnull sret([128 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.d, i64 1)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h70b20aa883c41433E"(ptr nonnull sret([128 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.g = load i64, ptr %i.c, align 8
  %.not.i = icmp eq i64 %i.g, -9223372036854775800
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h80b9cabc48f82b9eE"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @19)
  br label %_ZN14regex_automata3nfa8thompson9backtrack7Builder10build_many17ha19cecba264cb6beE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void @_ZN14regex_automata3nfa8thompson9backtrack7Builder14build_from_nfa17he08c75582c45334dE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr %i.i)
  br label %_ZN14regex_automata3nfa8thompson9backtrack7Builder10build_many17ha19cecba264cb6beE.exit

_ZN14regex_automata3nfa8thompson9backtrack7Builder10build_many17ha19cecba264cb6beE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson9backtrack7Builder6syntax17he356c4790b87466fE(ptr returned align 8 %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = call align 8 ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler6syntax17hf8bb993f81af4062E(ptr nonnull align 8 %i.b, ptr nonnull align 4 %i.a) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson9backtrack7Builder8thompson17hc4db51f329197366E(ptr returned align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call align 8 ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler9configure17h7cfe2fbaf70e222fE(ptr nonnull align 8 %i.a, ptr align 8 %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_ZN14regex_automata3nfa8thompson9backtrack7Builder9configure17h32e64b5eabc7a6afE(ptr returned align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [32 x i8], align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !18
  call void @"_ZN4core6option15Option$LT$T$GT$7or_else17hfeb8308c76ae8f98E"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr align 8 %0), !noalias !18
  %i.d = load i64, ptr %1, align 8, !noalias !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !18
  %i.g = load i64, ptr %0, align 8, !noalias !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !18
  %i.j = invoke { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$2or17h22fb2840958d7ec7E"(i64 %i.d, i64 %i.f, i64 %i.g, i64 %i.i)
          to label %_ZN14regex_automata3nfa8thompson9backtrack6Config9overwrite17hc62f7ac3b0754ce9E.exit unwind label %bb.b, !noalias !18 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i8, ptr %i.l, align 8, !noalias !18
  %i.n = and i8 %i.m, -2
  %switch.i.i = icmp eq i8 %i.n, 2
  br i1 %switch.i.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha493f65af19d81e0E"(ptr nonnull align 8 %i.b)
          to label %common.resume unwind label %bb.d, !noalias !18

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !18
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.k, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN14regex_automata3nfa8thompson9backtrack6Config9overwrite17hc62f7ac3b0754ce9E.exit: ; preds = %bb.a
  %i.p = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_0
