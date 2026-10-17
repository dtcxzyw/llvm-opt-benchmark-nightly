Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN18nickel_lang_parser3ast6pretty9Allocator9type_part17h99b3d3150d2d5a5cE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7613
  br label %"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE.exit"

"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE.exit": ; preds = %bb.c, %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN18nickel_lang_parser3ast6record13FieldPathElem16single_expr_path17he77a5ab4953b1c42E(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.09.0.copyload = load i32, ptr %1, align 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.a = icmp ne i32 %.sroa.09.0.copyload, 4      ; 4 uses
  %i.b = select i1 %i.a, i64 48, i64 0            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7619, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7619, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !noalias !7619, !nonnull !19, !noundef !19 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = and i64 %i.h, 7
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j     ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult ptr %i.k, %i.g
  %i.p = icmp ugt i64 %i.b, %i.n
  %or.cond.i = or i1 %i.o, %i.p
  br i1 %or.cond.i, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit": ; preds = %bb.a
  %.neg = select i1 %i.a, i64 -48, i64 0
  %i.q = getelementptr i8, ptr %i.k, i64 %.neg    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ], !noalias !7619
  store ptr %i.q, ptr %i.e, align 8, !noalias !7619
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef %i.b), !noalias !7619 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !7619
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.q, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.r, %bb.b ] ; 3 uses
  br i1 %i.a, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7c2ca6b391c31f69E.exit", label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17hba39f343a0ebfb46E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7c2ca6b391c31f69E.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.410.0..sroa_idx, i64 44, i1 false)
  store i32 %.sroa.09.0.copyload, ptr %.sroa.0.0.i.i, align 8, !noalias !7619
  br label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17hba39f343a0ebfb46E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17hba39f343a0ebfb46E.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7c2ca6b391c31f69E.exit", %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"
  %i.s = zext i1 %i.a to i64
  %i.t = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.u = insertvalue { ptr, i64 } %i.t, i64 %i.s, 1
  ret { ptr, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_ZN18nickel_lang_parser3ast6record13FieldPathElem17single_ident_path17h1c4ea914f7302067E(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noalias !7622, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7622, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !noalias !7622, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = and i64 %i.f, 7
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %i.d, i64 %i.h     ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult ptr %i.i, %i.e
  %i.n = icmp ult i64 %i.l, 48
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.b, label %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit": ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.i, i64 -48      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ], !noalias !7622
  store ptr %i.o, ptr %i.c, align 8, !noalias !7622
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef 48), !noalias !7622 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !7622
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"
  %.sroa.0.0.i.i = phi ptr [ %i.o, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.p, %bb.b ] ; 3 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  store i32 3, ptr %.sroa.0.0.i.i, align 8, !noalias !7622
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 1, 1
  ret { ptr, i64 } %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser3ast6record13FieldPathElem4expr17h705954ffc6c66492E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN18nickel_lang_parser3ast4Node27try_str_chunk_as_static_str17h690837de02d63a8bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  %i.e = load i64, ptr %i.c, align 8, !range !52, !noundef !19 ; 5 uses
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !7632
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7632
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !7632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7632
  store ptr %i.b, ptr %i.a, align 8, !noalias !7632
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
          to label %.noexc.i.i unwind label %bb.d, !noalias !7632

.noexc.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7632
  br label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !7633
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i"

bb.f:                                             ; preds = %.noexc.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.j = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.3.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %bb.g unwind label %bb.d, !noalias !7632

bb.g:                                             ; preds = %bb.f
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !7634
  br label %"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h

"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E.exit": ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 4
  store i32 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id17he16cf3f9f2427de3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [72 x i8], align 16               ; 11 uses
  %i.g = alloca [72 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !21, !noalias !7724, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !7725
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !7725
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i": ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !7726 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !7726
  store i8 1, ptr %i.i, align 8, !noalias !7726
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i"
  %.pre-phi61 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i ], [ %i.n, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i" ]
  %i.p = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i ], [ %i.m, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i" ] ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.h, align 8, !noalias !7725
  store i64 0, ptr %i.g, align 8, !alias.scope !7727
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7727
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7727
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !alias.scope !7727
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.pre-phi61, ptr %i.s, align 8, !alias.scope !7727
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !19 ; 2 uses
  %.idx = mul nuw nsw i64 %i.w, 280
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = icmp eq i64 %i.w, 0
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit", %.lr.ph.backedge
  %i.ah = phi ptr [ %i.ai, %.lr.ph.backedge ], [ %i.u, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit" ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 280 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7728)
  call void @llvm.experimental.noalias.scope.decl(metadata !7729)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !7730, !noalias !7731, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !7730, !noalias !7731, !noundef !19
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %.backedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = load i32, ptr %i.ak, align 8, !range !28, !noalias !7732, !noundef !19
  %.not2.i.i.i = icmp eq i32 %i.an, 3
  br i1 %.not2.i.i.i, label %.split, label %.backedge

.split:                                           ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.04.0.copyload5.i = load i32, ptr %i.ao, align 4, !noalias !7733
  %i.ap = icmp eq i32 %.sroa.04.0.copyload5.i, 3
  br i1 %i.ap, label %.backedge, label %bb.d

.backedge:                                        ; preds = %.lr.ph, %bb.b, %.split
  %i.aq = icmp eq ptr %i.ai, %i.x
  br i1 %i.aq, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.backedge, %bb.t
  br label %.lr.ph

.loopexit:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i", %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.invoke, %.noexc10.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr160drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..Ident$C$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..record..FieldDef$GT$$GT$$GT$17h5fa4718cd5c95a3eE"(ptr noalias noundef align 8 dereferenceable(72) %i.g) #53
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %.split
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx6.i.sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %.sroa.4.i.sroa.4.0.copyload.le = load i32, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx6.i.sroa_idx.le, align 4, !noalias !7733 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7735
  %i.ar = load <2 x i64>, ptr %i.r, align 8, !alias.scope !7734 ; 3 uses
  %i.as = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.at = xor <2 x i64> %i.as, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.at, ptr %i.f, align 16, !alias.scope !7736, !noalias !7735
  %i.au = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.av = xor <2 x i64> %i.au, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.av, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !7736, !noalias !7735
  store <2 x i64> %i.ar, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !7736, !noalias !7735
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !7736, !noalias !7735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7737
  store i32 %.sroa.4.i.sroa.4.0.copyload.le, ptr %i.e, align 4, !noalias !7737
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3e6a061b512ecb51E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 4), !noalias !7735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7737
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !7738, !noalias !7735
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !7738, !noalias !7735
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !7738, !noalias !7735 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !7738, !noalias !7735
  %i.aw = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !7738, !noalias !7735, !noundef !19
  %i.ax = shl i64 %i.aw, 56
  %i.ay = load i64, ptr %i.y, align 8, !alias.scope !7738, !noalias !7735, !noundef !19
  %i.az = or i64 %i.ax, %i.ay                     ; 2 uses
  %i.ba = xor i64 %i.az, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.bb = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.bc = add i64 %i.ba, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.bd = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.bc, %i.be                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bi, %i.bk                    ; 3 uses
  %i.bm = call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = xor i64 %i.bj, %i.az
  %i.bq = xor i64 %i.bo, 255
  %i.br = add i64 %i.bp, %i.bl                    ; 3 uses
  %i.bs = add i64 %i.bn, %i.bq                    ; 2 uses
  %i.bt = call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bu = xor i64 %i.br, %i.bt                    ; 3 uses
  %i.bv = call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 16)
  %i.bw = xor i64 %i.bv, %i.bs                    ; 3 uses
  %i.bx = call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 32)
  %i.by = add i64 %i.bu, %i.bs                    ; 3 uses
  %i.bz = add i64 %i.bw, %i.bx                    ; 2 uses
  %i.ca = call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 17)
  %i.cb = xor i64 %i.by, %i.ca                    ; 3 uses
  %i.cc = call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.cd = xor i64 %i.cc, %i.bz                    ; 3 uses
  %i.ce = call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  %i.cf = add i64 %i.cb, %i.bz                    ; 3 uses
  %i.cg = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.ch = call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 13)
  %i.ci = xor i64 %i.ch, %i.cf                    ; 3 uses
  %i.cj = call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 16)
  %i.ck = xor i64 %i.cj, %i.cg                    ; 3 uses
  %i.cl = call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 32)
  %i.cm = add i64 %i.ci, %i.cg                    ; 3 uses
  %i.cn = add i64 %i.ck, %i.cl                    ; 2 uses
  %i.co = call i64 @llvm.fshl.i64(i64 %i.ci, i64 %i.ci, i64 17)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cr = xor i64 %i.cq, %i.cn                    ; 3 uses
  %i.cs = call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cp, %i.cn
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 13)
  %i.cw = xor i64 %i.cv, %i.ct                    ; 3 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 16)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = add i64 %i.cw, %i.cu                    ; 3 uses
  %i.da = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 17)
  %i.db = call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.dc = call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dd = xor i64 %i.db, %i.da
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = xor i64 %i.de, %i.cz                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7735
  call void @llvm.experimental.noalias.scope.decl(metadata !7739)
  %i.dg = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7740, !nonnull !19, !noundef !19 ; 5 uses
  %i.dh = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7740, !noundef !19 ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7741)
  call void @llvm.experimental.noalias.scope.decl(metadata !7742)
  %i.di = lshr i64 %i.df, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 4 uses
  %i.dk = load i64, ptr %i.z, align 8, !alias.scope !7743, !noundef !19 ; 6 uses
  %i.dl = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7743, !nonnull !19, !noundef !19 ; 10 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.08.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ei, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.df, %bb.d ], [ %i.ej, %bb.g ]
  %.sroa.04.0.i.i.i.i = and i64 %.pn.i.i.i, %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.dm, align 1, !noalias !7744 ; 2 uses
  %i.dn = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %.not.i.not38.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.not38.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.010.0.i39.i.i.i = phi i16 [ %i.eh, %bb.f ], [ %i.do, %bb.e ] ; 3 uses
  %i.dp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.010.0.i39.i.i.i, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = add i64 %.sroa.04.0.i.i.i.i, %i.dq
  %i.ds = and i64 %i.dr, %i.dk
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.dv, align 8, !noalias !7745, !noundef !19 ; 3 uses
  %i.dw = icmp ult i64 %.val.i.i.i.i, %i.dh
  br i1 %i.dw, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i", label %.invoke

.invoke:                                          ; preds = %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i", %.lr.ph.i.i.i
  %i.dx = phi i64 [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.hg, %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i" ]
  %i.dy = phi i64 [ %i.dh, %.lr.ph.i.i.i ], [ %i.hf, %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i" ]
  %i.dz = phi ptr [ @10566, %.lr.ph.i.i.i ], [ @10572, %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i" ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dx, i64 noundef %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz) #52
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %.val.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %.val2.i.i.i.i.i = load i32, ptr %i.eb, align 4, !noalias !7746, !noundef !19
  %i.ec = icmp eq i32 %.sroa.4.i.sroa.4.0.copyload.le, %.val2.i.i.i.i.i
  br i1 %i.ec, label %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit", label %bb.f, !prof !22

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ed = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %bb.g, label %bb.h, !prof !20

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i"
  %i.eg = add i16 %.sroa.010.0.i39.i.i.i, -1
  %i.eh = and i16 %i.eg, %.sroa.010.0.i39.i.i.i   ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ei = add i64 %.sroa.08.0.i.i.i.i, 16         ; 2 uses
  %i.ej = add i64 %.sroa.04.0.i.i.i.i, %i.ei
  br label %bb.e

._crit_edge:                                      ; preds = %.backedge, %bb.t, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7747)
  call void @llvm.experimental.noalias.scope.decl(metadata !7748)
  %i.ek = load i64, ptr %i.aa, align 8, !alias.scope !7747, !noalias !7749, !noundef !19
  call void @llvm.experimental.noalias.scope.decl(metadata !7750)
  %.sroa.0.07.i.i.i.i.i = and i64 %i.dk, %i.df    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.el, align 1, !noalias !7751
  %i.em = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i, zeroinitializer
  %i.en = bitcast <16 x i1> %i.em to i16          ; 2 uses
  %.not.i9.i.i.i.i.i = icmp eq i16 %i.en, 0
  br i1 %.not.i9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !74

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %bb.h ]
  %i.eo = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i ], [ 0, %bb.h ]
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add i64 %i.ep, %.sroa.0.010.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = and i64 %i.eq, %i.dk     ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.0.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.er, align 1, !noalias !7751
  %i.es = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !prof !75

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.h
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i16 [ %i.en, %bb.h ], [ %i.et, %.lr.ph.i.i.i.i.i ]
  %i.eu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  %i.ew = add i64 %.sroa.0.0.lcssa.i.i.i.i.i, %i.ev
  %i.ex = and i64 %i.ew, %i.dk                    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !7752, !noundef !19 ; 2 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i, !prof !20

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %i.dl, align 16, !noalias !7752
  %i.fb = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %i.fd = icmp ne i16 %i.fc, 0
  call void @llvm.assume(i1 %i.fd)
  %i.fe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fc, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ff
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !7752
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i: ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %i.fg = phi i8 [ %.pre.i.i.i.i, %bb.i ], [ %i.ez, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.ff, %bb.i ], [ %i.ex, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.fh = load i64, ptr %i.ab, align 8, !alias.scope !7753, !noalias !7749, !noundef !19 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  %i.fj = trunc i8 %i.fg to i1
  %or.cond.i.i.i.i = and i1 %i.fi, %i.fj
  br i1 %or.cond.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i", label %bb.j, !prof !64

bb.j:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.0.i5.i.i.i.i.i
  %i.fl = and i8 %i.fg, 1
  %i.fm = zext nneg i8 %i.fl to i64
  %i.fn = sub i64 %i.fh, %i.fm
  %i.fo = add i64 %.sroa.0.0.i5.i.i.i.i.i, -16
  %i.fp = and i64 %i.fo, %i.dk
  store i8 %i.dj, ptr %i.fk, align 1, !noalias !7754
  %i.fq = getelementptr i8, ptr %i.dl, i64 %i.fp
  br label %bb.k

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i
  %i.fr = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5f931d076ab19903E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.dh, i1 noundef zeroext true)
          to label %.noexc3.a unwind label %.loopexit ; 0 uses

.noexc3.a:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i"
  %.val13.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7753, !noalias !7749 ; 4 uses
  %.val14.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !7753, !noalias !7749, !noundef !19 ; 2 uses
  %i.fs = call fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE(ptr %.val13.i.i.i.i, i64 %.val14.i.i.i.i, i64 noundef %i.df), !noalias !7755 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7756)
  %i.ft = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 %i.fs ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !7757, !noundef !19
  %i.fv = and i8 %i.fu, 1
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = load i64, ptr %i.ab, align 8, !alias.scope !7758, !noalias !7749, !noundef !19
  %i.fy = sub i64 %i.fx, %i.fw
  %i.fz = add i64 %i.fs, -16
  %i.ga = and i64 %i.fz, %.val14.i.i.i.i
  store i8 %i.dj, ptr %i.ft, align 1, !noalias !7757
  %i.gb = getelementptr i8, ptr %.val13.i.i.i.i, i64 %i.ga
  br label %bb.k

bb.k:                                             ; preds = %.noexc3.a, %bb.j
  %.sink.i = phi i64 [ %i.fy, %.noexc3.a ], [ %i.fn, %bb.j ]
  %.sink21.i.i.i.i = phi ptr [ %i.gb, %.noexc3.a ], [ %i.fq, %bb.j ]
  %.sroa.0.0.i5.i.sink.i.i.i.i = phi i64 [ %i.fs, %.noexc3.a ], [ %.sroa.0.0.i5.i.i.i.i.i, %bb.j ]
  %.val.sink.i.i.i.i = phi ptr [ %.val13.i.i.i.i, %.noexc3.a ], [ %i.dl, %bb.j ] ; 2 uses
  store i64 %.sink.i, ptr %i.ab, align 8, !alias.scope !7753, !noalias !7749
  %i.gc = getelementptr i8, ptr %.sink21.i.i.i.i, i64 16
  store i8 %i.dj, ptr %i.gc, align 1, !noalias !7755
  %i.gd = load i64, ptr %i.aa, align 8, !alias.scope !7753, !noalias !7749, !noundef !19
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.aa, align 8, !alias.scope !7753, !noalias !7749
  %i.gf = sub nsw i64 0, %.sroa.0.0.i5.i.sink.i.i.i.i
  %i.gg = getelementptr inbounds [8 x i8], ptr %.val.sink.i.i.i.i, i64 %i.gf
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -8 ; 2 uses
  store i64 %i.ek, ptr %i.gh, align 8, !noalias !7755
  %i.gi = icmp ult i64 %i.dh, 230584300921369396
  call void @llvm.assume(i1 %i.gi)
  %i.gj = load i64, ptr %i.g, align 8, !range !38, !alias.scope !7748, !noalias !7749, !noundef !19
  %i.gk = icmp eq i64 %i.dh, %i.gj
  br i1 %i.gk, label %bb.l, label %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.gl = shl nuw nsw i64 %i.dh, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !7759)
  %.sroa.0.0.i.i8.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 461168601842738791) %i.gl, i64 230584300921369395) ; 3 uses
  %i.gm = sub nsw i64 %.sroa.0.0.i.i8.i.i.i, %i.dh
  %i.gn = icmp ugt i64 %i.gm, 1
  br i1 %i.gn, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.r, %bb.l
  %i.go = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.gp = mul nuw nsw i64 %i.go, 40
  %or.cond.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.dh, 230584300921369394
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.noexc10.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7760
  %i.gq = icmp eq i64 %i.dh, 0
  br i1 %i.gq, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.gr = mul nuw nsw i64 %i.dh, 40
  store ptr %i.dg, ptr %i.c, align 8, !alias.scope !7761, !noalias !7760
  store i64 %i.gr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !7761, !noalias !7760
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i": ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.n ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !7761, !noalias !7760
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hb7330f9b7203dfdbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 8, i64 noundef %i.gp, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !7762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7760
  %i.gs = load i64, ptr %i.d, align 8, !range !35, !noalias !7760, !noundef !19
  %i.gt = trunc nuw i64 %i.gs to i1
  br i1 %i.gt, label %bb.o, label %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i

bb.o:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i"
  %i.gu = load i64, ptr %i.af, align 8, !range !52, !noalias !7760, !noundef !19
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !7760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7760
  br label %.noexc10.i.i.i

_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i"
  %i.gx = load ptr, ptr %i.af, align 8, !noalias !7760, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7760
  br label %.noexc5

.noexc10.i.i.i:                                   ; preds = %bb.m, %bb.o
  %.sroa.3.0.i.ph.i.i.i.i.i = phi i64 [ %i.gw, %bb.o ], [ undef, %bb.m ]
  %.sroa.0.0.i.ph.i.i.i.i.i = phi i64 [ %i.gu, %bb.o ], [ 0, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.0.0.i.ph.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10567) #52
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %.noexc10.i.i.i
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.gy = mul nuw nsw i64 %.sroa.0.0.i.i8.i.i.i, 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7763
  %i.gz = icmp eq i64 %i.dh, 0
  br i1 %i.gz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ha = mul nuw nsw i64 %i.dh, 40
  store ptr %i.dg, ptr %i.a, align 8, !alias.scope !7764, !noalias !7763
  store i64 %i.ha, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !7764, !noalias !7763
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i.i.i = phi i64 [ 8, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.ac, align 8, !alias.scope !7764, !noalias !7763
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hb7330f9b7203dfdbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.gy, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !7765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7763
  %i.hb = load i64, ptr %i.b, align 8, !range !35, !noalias !7763, !noundef !19
  %i.hc = trunc nuw i64 %i.hb to i1
  br i1 %i.hc, label %bb.r, label %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i

bb.r:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7763
  br label %bb.m

_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i"
  %i.hd = load ptr, ptr %i.ad, align 8, !noalias !7763, !nonnull !19, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7763
  br label %.noexc5

.noexc5:                                          ; preds = %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.hd, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i ], [ %i.gx, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i ] ; 2 uses
  %.sroa.0.0.i.sink.i.i.i.i = phi i64 [ %.sroa.0.0.i.i8.i.i.i, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i ], [ %i.go, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7766, !noalias !7749
  store i64 %.sroa.0.0.i.sink.i.i.i.i, ptr %i.g, align 8, !alias.scope !7766, !noalias !7749
  br label %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"

"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i": ; preds = %.noexc5, %bb.k
  %2 = phi ptr [ %storemerge.i.i.i, %.noexc5 ], [ %i.dg, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7767)
  %i.he = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.dh ; 5 uses
  store i64 0, ptr %i.he, align 8, !noalias !7768
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !7768
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !7768
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i64 %i.df, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !7768
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i32 %.sroa.4.i.sroa.4.0.copyload.le, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !7768
  %i.hf = add nuw nsw i64 %i.dh, 1                ; 2 uses
  store i64 %i.hf, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7769, !noalias !7749
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.sink.i.i.i.i) ]
  %i.hg = load i64, ptr %i.gh, align 8, !noalias !7749, !noundef !19 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.hg, %i.dh
  br i1 %.not.i.i, label %.invoke, label %"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i"

"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i": ; preds = %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"
  %i.hh = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !7749, !nonnull !19, !noundef !19
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %i.hh, i64 %i.hg
  br label %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit"

"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i", %"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i"
  %.sroa.0.0.i = phi ptr [ %i.hi, %"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i" ], [ %i.ea, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7770)
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !7770, !noundef !19 ; 3 uses
  %i.hl = load i64, ptr %.sroa.0.0.i, align 8, !range !38, !alias.scope !7770, !noundef !19
  %i.hm = icmp eq i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5d4fe26be4ec5cacE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit", %bb.s
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !7770, !nonnull !19, !noundef !19
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hk
  store ptr %i.ah, ptr %i.hp, align 8, !noalias !7771
  %i.hq = add i64 %i.hk, 1
  store i64 %i.hq, ptr %i.hj, align 8, !alias.scope !7770
  %i.hr = icmp eq ptr %i.ai, %i.x
  br i1 %i.hr, label %._crit_edge, label %.lr.ph.backedge
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18nickel_lang_parser3ast6record6Record17toplvl_dyn_fields17hc9f7f265e5559382E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 280
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7799)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7800
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i"
  %i.h = phi ptr [ %i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i" ], [ %i.c, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 4 uses
  %i.j = getelementptr i8, ptr %i.h, i64 272
  %.val8.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !7801, !noundef !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 264
  %.val.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !7801, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.l = load i32, ptr %.val.i.i.i.i.i.i, align 8, !range !28, !noalias !7801, !noundef !19
  %.not3.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 3
  br i1 %.not3.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i", label %bb.c

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = icmp eq ptr %i.i, %i.f
  br i1 %i.m, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !7802
  %i.n = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #54, !noalias !7802 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10207) #52, !noalias !7800
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i": ; preds = %bb.c
  store ptr %.val.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !7800
  store i64 4, ptr %i.a, align 8, !noalias !7800
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !7800
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !7800
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7804)
  %i.p = icmp eq ptr %i.i, %i.f
  br i1 %i.p, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i", label %.lr.ph.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i:                 ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.q = phi ptr [ %i.ab, %.noexc.i.i.i.i ], [ %i.n, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i" ]
  %i.r = phi i64 [ %i.ad, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i" ] ; 5 uses
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.t, %.noexc.i.i.i.i ], [ %i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.preheader.i.i.i.i.i.i
  %i.s = phi ptr [ %i.t, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.0.08.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 280 ; 4 uses
  %i.u = getelementptr i8, ptr %i.s, i64 272
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !7805, !noundef !19
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.v = getelementptr i8, ptr %i.s, i64 264
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !7805, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.w = load i32, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !28, !noalias !7805, !noundef !19
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 3
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.x = icmp eq ptr %i.t, %i.f
  br i1 %i.x, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i": ; preds = %bb.e
  %i.y = icmp samesign ult i64 %i.r, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.a, align 8, !range !38, !alias.scope !7806, !noalias !7800, !noundef !19
  %i.aa = icmp eq i64 %i.r, %i.z
  br i1 %i.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i": ; preds = %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.f, !noalias !7800

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7806, !noalias !7800
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i", %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i"
  %i.ab = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.q, %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.r
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !noalias !7807
  %i.ad = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !7806, !noalias !7800
  %i.ae = icmp eq ptr %i.t, %i.f
  br i1 %i.ae, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i", label %.lr.ph.i.i.preheader.i.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i", %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !7800
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !alias.scope !7800
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ag, align 8, !alias.scope !7800
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E.exit

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !7800 ; 2 uses
  %i.ai = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17ha4c88a85592c8e84E.exit.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !7800, !nonnull !19, !noundef !19
  %i.aj = shl nuw i64 %.val8.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !7800
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17ha4c88a85592c8e84E.exit.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i": ; preds = %.noexc.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E.exit

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17ha4c88a85592c8e84E.exit.i.i.i.i": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ah

_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E.exit: ; preds = %.loopexit.i.i.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7800
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN18nickel_lang_parser3ast6record6Record20has_static_structure17hf21656489de6a0ccE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !19 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 280
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h882ddc2cc17936dbE.exit", label %.lr.ph.i

"_ZN18nickel_lang_parser3ast6record6Record20has_static_structure28_$u7b$$u7b$closure$u7d$$u7d$17h9a8d14fb99498b19E.exit.loopexit.i": ; preds = %.lr.ph
  %i.g = icmp eq ptr %i.i, %i.e
  br i1 %i.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h882ddc2cc17936dbE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %"_ZN18nickel_lang_parser3ast6record6Record20has_static_structure28_$u7b$$u7b$closure$u7d$$u7d$17h9a8d14fb99498b19E.exit.loopexit.i"
  %i.h = phi ptr [ %i.i, %"_ZN18nickel_lang_parser3ast6record6Record20has_static_structure28_$u7b$$u7b$closure$u7d$$u7d$17h9a8d14fb99498b19E.exit.loopexit.i" ], [ %i.b, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 264
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !7812, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 272
  %.val4.i = load i64, ptr %i.k, align 8, !noalias !7812, !noundef !19 ; 2 uses
  %.idx7 = mul nuw nsw i64 %.val4.i, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx7
end_hunk_0
begin_hunk_1_@llvm.umax.v4i8
!7563 = !{!7477}
!7564 = !{!7481}
!7565 = !{!7483}
!7566 = !{!7483, !7481}
!7567 = !{!7485}
!7568 = !{!7487}
!7569 = !{!7487, !7485, !7483, !7481}
!7570 = !{!7478}
!7571 = !{!7490, !7489}
!7572 = !{!7492}
!7573 = !{!7494}
!7574 = !{!7496}
!7575 = !{!7501, !7500, !7498, !7494}
!7576 = !{!7492, !7502}
!7577 = !{!7508, !7506, !7504, !7492, !7502}
!7578 = !{!7506, !7504, !7492, !7502}
!7579 = !{!7510}
!7580 = !{!7512}
!7581 = !{!7517, !7516, !7514, !7510}
!7582 = !{!7519}
!7583 = !{!7522, !7519, !7521, !7520}
!7584 = !{!7528, !7527, !7525, !7524, !7522, !7519, !7521, !7520}
!7585 = !{!7522, !7519, !7520}
!7586 = !{!7522, !7520}
!7587 = !{!7530}
!7588 = !{!7531}
!7589 = !{!7530, !7531}
!7590 = !{!7533}
!7591 = !{!7537, !7535, !7533, !7530, !7531}
!7592 = !{!7535, !7533, !7530, !7531}
!7593 = !{!7533, !7531}
!7594 = distinct !{!7594, i1 true, !"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE"}
!7595 = distinct !{!7595, !7594, !"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE: argument 1"}
!7596 = distinct !{!7596, !7594, !"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE: argument 0"}
!7597 = distinct !{!7597, i1 true, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E"}
!7598 = distinct !{!7598, !7597, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 1"}
!7599 = distinct !{!7599, !7597, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 3"}
!7600 = distinct !{!7600, !7597, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 2"}
!7601 = distinct !{!7601, !7597, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 0"}
!7602 = distinct !{!7602, i1 true, !"_ZN55_$LT$$RF$str$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hfc8246681d4ed37aE"}
!7603 = distinct !{!7603, !7602, !"_ZN55_$LT$$RF$str$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hfc8246681d4ed37aE: argument 1"}
!7604 = distinct !{!7604, !7602, !"_ZN55_$LT$$RF$str$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hfc8246681d4ed37aE: argument 0"}
!7605 = distinct !{!7605, i1 true, !"_ZN6pretty12DocAllocator4text17h77c1f2e094d79101E"}
!7606 = distinct !{!7606, !7605, !"_ZN6pretty12DocAllocator4text17h77c1f2e094d79101E: argument 1"}
!7607 = distinct !{!7607, !7605, !"_ZN6pretty12DocAllocator4text17h77c1f2e094d79101E: argument 0"}
!7608 = !{!7596, !7595}
!7609 = !{!7596}
!7610 = !{!7595}
!7611 = !{!7598}
!7612 = !{!7598, !7595}
!7613 = !{!7601, !7598, !7600, !7599, !7596, !7595}
!7614 = !{!7607, !7606, !7604, !7603, !7601, !7598, !7600, !7599, !7596, !7595}
!7615 = !{!7601, !7598, !7599, !7596, !7595}
!7616 = !{!7601, !7599, !7596}
!7617 = distinct !{!7617, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E"}
!7618 = distinct !{!7618, !7617, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E: argument 0"}
!7619 = !{!7618}
!7620 = distinct !{!7620, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E"}
!7621 = distinct !{!7621, !7620, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E: argument 0"}
!7622 = !{!7621}
!7623 = distinct !{!7623, i1 true, !"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E"}
!7624 = distinct !{!7624, !7623, !"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E: argument 1"}
!7625 = distinct !{!7625, !7623, !"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E: argument 0"}
!7626 = distinct !{!7626, i1 true, !"_ZN18nickel_lang_parser10identifier5Ident3new17hd80ac393557c1289E"}
!7627 = distinct !{!7627, !7626, !"_ZN18nickel_lang_parser10identifier5Ident3new17hd80ac393557c1289E: argument 0"}
!7628 = distinct !{!7628, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7629 = distinct !{!7629, !7628, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7630 = distinct !{!7630, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7631 = distinct !{!7631, !7630, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7632 = !{!7627, !7625, !7624}
!7633 = !{!7629, !7627, !7625, !7624}
!7634 = !{!7631, !7627, !7625, !7624}
!7635 = distinct !{!7635, i1 true, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1917cf0b5a35296eE"}
!7636 = distinct !{!7636, !7635, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1917cf0b5a35296eE: argument 0"}
!7637 = distinct !{!7637, i1 true, !"_ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE"}
!7638 = distinct !{!7638, !7637, !"_ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE: argument 0"}
!7639 = distinct !{!7639, i1 true, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd3999b4e7b00e11fE"}
!7640 = distinct !{!7640, !7639, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd3999b4e7b00e11fE: argument 0"}
!7641 = distinct !{!7641, i1 true, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5535e349dc8b3a0bE"}
!7642 = distinct !{!7642, !7641, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5535e349dc8b3a0bE: argument 0"}
!7643 = distinct !{!7643, i1 true, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E"}
!7644 = distinct !{!7644, !7643, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E: argument 0"}
!7645 = distinct !{!7645, i1 true, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h46866f22230e0e82E"}
!7646 = distinct !{!7646, !7645, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h46866f22230e0e82E: argument 0"}
!7647 = distinct !{!7647, i1 true, !"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h3dca5b62cc913f5bE"}
!7648 = distinct !{!7648, !7647, !"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h3dca5b62cc913f5bE: argument 1"}
!7649 = distinct !{!7649, i1 true, !"_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id28_$u7b$$u7b$closure$u7d$$u7d$17h92242107fd9f24dfE"}
!7650 = distinct !{!7650, !7649, !"_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id28_$u7b$$u7b$closure$u7d$$u7d$17h92242107fd9f24dfE: argument 1"}
!7651 = distinct !{!7651, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h10c2f0c305ffc82eE"}
!7652 = distinct !{!7652, !7651, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h10c2f0c305ffc82eE: argument 1"}
!7653 = distinct !{!7653, !7651, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h10c2f0c305ffc82eE: argument 0"}
!7654 = distinct !{!7654, !7647, !"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h3dca5b62cc913f5bE: argument 0"}
!7655 = distinct !{!7655, !7649, !"_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id28_$u7b$$u7b$closure$u7d$$u7d$17h92242107fd9f24dfE: argument 0"}
!7656 = distinct !{!7656, i1 true, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17he7191efc5958a57dE"}
!7657 = distinct !{!7657, !7656, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17he7191efc5958a57dE: argument 1"}
!7658 = distinct !{!7658, !7656, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17he7191efc5958a57dE: argument 0"}
!7659 = distinct !{!7659, i1 true, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17he1f569c2828aafe8E"}
!7660 = distinct !{!7660, !7659, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17he1f569c2828aafe8E: argument 0"}
!7661 = distinct !{!7661, i1 true, !"_ZN74_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..hash..Hash$GT$4hash17hb0ba468263ab3996E"}
!7662 = distinct !{!7662, !7661, !"_ZN74_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..hash..Hash$GT$4hash17hb0ba468263ab3996E: argument 0"}
!7663 = distinct !{!7663, i1 true, !"_ZN4core4hash6Hasher9write_u3217he84ae412cea9f515E"}
!7664 = distinct !{!7664, !7663, !"_ZN4core4hash6Hasher9write_u3217he84ae412cea9f515E: argument 0"}
!7665 = distinct !{!7665, i1 true, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h9fe46f0ae1354d95E"}
!7666 = distinct !{!7666, !7665, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h9fe46f0ae1354d95E: argument 0"}
!7667 = distinct !{!7667, i1 true, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hb2e44ca835001ba8E"}
!7668 = distinct !{!7668, !7667, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hb2e44ca835001ba8E: argument 0"}
!7669 = distinct !{!7669, i1 true, !"_ZN8indexmap3map4core5entry64_$LT$impl$u20$indexmap..map..core..IndexMapCore$LT$K$C$V$GT$$GT$5entry17h6dd38f15ef3af511E"}
!7670 = distinct !{!7670, !7669, !"_ZN8indexmap3map4core5entry64_$LT$impl$u20$indexmap..map..core..IndexMapCore$LT$K$C$V$GT$$GT$5entry17h6dd38f15ef3af511E: argument 1"}
!7671 = distinct !{!7671, i1 true, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h7982d8b26c9c9f6bE"}
!7672 = distinct !{!7672, !7671, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h7982d8b26c9c9f6bE: argument 0"}
!7673 = distinct !{!7673, i1 true, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h8887fdbf6a4ceebcE"}
!7674 = distinct !{!7674, !7673, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h8887fdbf6a4ceebcE: argument 0"}
!7675 = distinct !{!7675, !7669, !"_ZN8indexmap3map4core5entry64_$LT$impl$u20$indexmap..map..core..IndexMapCore$LT$K$C$V$GT$$GT$5entry17h6dd38f15ef3af511E: argument 0"}
!7676 = distinct !{!7676, !7671, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h7982d8b26c9c9f6bE: argument 1"}
!7677 = distinct !{!7677, !7673, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h8887fdbf6a4ceebcE: argument 1"}
!7678 = distinct !{!7678, i1 true, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!7679 = distinct !{!7679, !7678, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!7680 = distinct !{!7680, i1 true, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E"}
!7681 = distinct !{!7681, !7680, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E: argument 0"}
!7682 = distinct !{!7682, i1 true, !"_ZN8indexmap3map4core10equivalent28_$u7b$$u7b$closure$u7d$$u7d$17hcf501c485a1976a0E"}
!7683 = distinct !{!7683, !7682, !"_ZN8indexmap3map4core10equivalent28_$u7b$$u7b$closure$u7d$$u7d$17hcf501c485a1976a0E: argument 0"}
!7684 = distinct !{!7684, i1 true, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E"}
!7685 = distinct !{!7685, !7684, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 1"}
!7686 = distinct !{!7686, !7684, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 2"}
!7687 = distinct !{!7687, i1 true, !"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E"}
!7688 = distinct !{!7688, !7687, !"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E: argument 0"}
!7689 = distinct !{!7689, i1 true, !"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE"}
!7690 = distinct !{!7690, !7689, !"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE: argument 1"}
!7691 = distinct !{!7691, !7689, !"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE: argument 0"}
!7692 = distinct !{!7692, i1 true, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h1cc48dd746b1d6e8E"}
!7693 = distinct !{!7693, !7692, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h1cc48dd746b1d6e8E: argument 0"}
!7694 = distinct !{!7694, !7684, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 3"}
!7695 = distinct !{!7695, !7684, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 0"}
!7696 = distinct !{!7696, !7692, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h1cc48dd746b1d6e8E: argument 1"}
!7697 = distinct !{!7697, i1 true, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!7698 = distinct !{!7698, !7697, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!7699 = distinct !{!7699, i1 true, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E"}
!7700 = distinct !{!7700, !7699, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E: argument 0"}
!7701 = distinct !{!7701, i1 true, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E"}
!7702 = distinct !{!7702, !7701, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E: argument 0"}
!7703 = distinct !{!7703, i1 true, !"_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE"}
!7704 = distinct !{!7704, !7703, !"_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE: argument 0"}
!7705 = distinct !{!7705, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hc4846709f6e26c70E"}
!7706 = distinct !{!7706, !7705, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hc4846709f6e26c70E: argument 0"}
!7707 = distinct !{!7707, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E"}
!7708 = distinct !{!7708, !7707, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E: argument 0"}
!7709 = distinct !{!7709, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E"}
!7710 = distinct !{!7710, !7709, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E: argument 0"}
!7711 = distinct !{!7711, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE"}
!7712 = distinct !{!7712, !7711, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE: argument 0"}
!7713 = distinct !{!7713, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E"}
!7714 = distinct !{!7714, !7713, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E: argument 0"}
!7715 = distinct !{!7715, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E"}
!7716 = distinct !{!7716, !7715, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E: argument 0"}
!7717 = distinct !{!7717, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE"}
!7718 = distinct !{!7718, !7717, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE: argument 0"}
!7719 = distinct !{!7719, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d861545f561020bE"}
!7720 = distinct !{!7720, !7719, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d861545f561020bE: argument 0"}
!7721 = distinct !{!7721, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc5f5109144f7df4aE"}
!7722 = distinct !{!7722, !7721, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc5f5109144f7df4aE: argument 0"}
!7723 = distinct !{!7723, !7721, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc5f5109144f7df4aE: argument 1"}
!7724 = !{!7642, !7640, !7638, !7636}
!7725 = !{!7636}
!7726 = !{!7644, !7636}
!7727 = !{!7646}
!7728 = !{!7648}
!7729 = !{!7650}
!7730 = !{!7650, !7648}
!7731 = !{!7653, !7652}
!7732 = !{!7655, !7650, !7654, !7648, !7653, !7652}
!7733 = !{!7650, !7648, !7653, !7652}
!7734 = !{!7657}
!7735 = !{!7658, !7657}
!7736 = !{!7660}
!7737 = !{!7664, !7662, !7658, !7657}
!7738 = !{!7668, !7666}
!7739 = !{!7670}
!7740 = !{!7670, !7657}
!7741 = !{!7672}
!7742 = !{!7674}
!7743 = !{!7674, !7672, !7670, !7657}
!7744 = !{!7679, !7674, !7677, !7672, !7676, !7675, !7670, !7658, !7657}
!7745 = !{!7681, !7674, !7677, !7672, !7676, !7675, !7670, !7658, !7657}
!7746 = !{!7683, !7681, !7674, !7677, !7672, !7676, !7675, !7670, !7658, !7657}
!7747 = !{!7685}
!7748 = !{!7686}
!7749 = !{!7691, !7690, !7688}
!7750 = !{!7693}
!7751 = !{!7698, !7693, !7696, !7695, !7685, !7686, !7694, !7691, !7690, !7688}
!7752 = !{!7693, !7696, !7695, !7685, !7686, !7694, !7691, !7690, !7688}
!7753 = !{!7693, !7685}
!7754 = !{!7700, !7693, !7696, !7695, !7685, !7686, !7694, !7691, !7690, !7688}
!7755 = !{!7696, !7695, !7686, !7694, !7691, !7690, !7688}
!7756 = !{!7702}
!7757 = !{!7702, !7696, !7695, !7686, !7694, !7691, !7690, !7688}
!7758 = !{!7702, !7693, !7685}
!7759 = !{!7704}
!7760 = !{!7710, !7708, !7706, !7704, !7695, !7685, !7686, !7694, !7691, !7690, !7688}
!7761 = !{!7712}
!7762 = !{!7710, !7708, !7706, !7704, !7695, !7686, !7694, !7691, !7690, !7688}
!7763 = !{!7716, !7714, !7704, !7695, !7685, !7686, !7694, !7691, !7690, !7688}
!7764 = !{!7718}
!7765 = !{!7716, !7714, !7704, !7695, !7686, !7694, !7691, !7690, !7688}
!7766 = !{!7704, !7686}
!7767 = !{!7720}
!7768 = !{!7720, !7695, !7686, !7694, !7691, !7690, !7688}
!7769 = !{!7720, !7686}
!7770 = !{!7722}
!7771 = !{!7722, !7723}
!7772 = distinct !{!7772, i1 true, !"_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E"}
!7773 = distinct !{!7773, !7772, !"_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E: argument 0"}
!7774 = distinct !{!7774, i1 true, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1fd6918f16aff08dE"}
!7775 = distinct !{!7775, !7774, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1fd6918f16aff08dE: argument 0"}
!7776 = distinct !{!7776, i1 true, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h840937fa19a2552fE"}
!7777 = distinct !{!7777, !7776, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h840937fa19a2552fE: argument 0"}
!7778 = distinct !{!7778, i1 true, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha9fb4ae78f3126b0E"}
!7779 = distinct !{!7779, !7778, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha9fb4ae78f3126b0E: argument 0"}
!7780 = distinct !{!7780, i1 true, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE"}
!7781 = distinct !{!7781, !7780, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE: argument 0"}
!7782 = distinct !{!7782, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE"}
!7783 = distinct !{!7783, !7782, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE: argument 0"}
!7784 = distinct !{!7784, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E"}
!7785 = distinct !{!7785, !7784, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E: argument 0"}
!7786 = distinct !{!7786, i1 true, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd6313655238d739dE"}
!7787 = distinct !{!7787, !7786, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd6313655238d739dE: argument 0"}
!7788 = distinct !{!7788, i1 true, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE"}
!7789 = distinct !{!7789, !7788, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE: argument 0"}
!7790 = distinct !{!7790, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hd26212236bf70a32E"}
!7791 = distinct !{!7791, !7790, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hd26212236bf70a32E: argument 0"}
!7792 = distinct !{!7792, i1 true, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE"}
!7793 = distinct !{!7793, !7792, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE: argument 0"}
!7794 = distinct !{!7794, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE"}
!7795 = distinct !{!7795, !7794, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE: argument 0"}
!7796 = !{!7773}
!7797 = !{!7775}
!7798 = !{!7777}
!7799 = !{!7779}
!7800 = !{!7779, !7777, !7775, !7773}
!7801 = !{!7783, !7781, !7779, !7777, !7775, !7773}
!7802 = !{!7787, !7785, !7779, !7777, !7775, !7773}
!7803 = !{!7789}
!7804 = !{!7791}
!7805 = !{!7795, !7793, !7791, !7789, !7779, !7777, !7775, !7773}
!7806 = !{!7791, !7789}
!7807 = !{!7791, !7789, !7779, !7777, !7775, !7773}
!7808 = distinct !{!7808, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h882ddc2cc17936dbE"}
!7809 = distinct !{!7809, !7808, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h882ddc2cc17936dbE: argument 0"}
!7810 = distinct !{!7810, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hfc6282d73df61c84E"}
!7811 = distinct !{!7811, !7810, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hfc6282d73df61c84E: argument 0"}
!7812 = !{!7809}
!7813 = !{!7811, !7809}
!7814 = distinct !{!7814, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h6dfaf4682f522854E"}
!7815 = distinct !{!7815, !7814, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h6dfaf4682f522854E: argument 1"}
!7816 = distinct !{!7816, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h488fc88f54e7c5efE"}
!7817 = distinct !{!7817, !7816, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h488fc88f54e7c5efE: argument 0"}
!7818 = distinct !{!7818, i1 true, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd700a9f7468867e8E"}
!7819 = distinct !{!7819, !7818, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd700a9f7468867e8E: argument 1"}
!7820 = distinct !{!7820, !7818, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd700a9f7468867e8E: argument 0"}
!7821 = distinct !{!7821, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hac7ebb464659678eE"}
!7822 = distinct !{!7822, !7821, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hac7ebb464659678eE: argument 0"}
!7823 = distinct !{!7823, i1 true, !"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5a39530b27660b6E"}
!7824 = distinct !{!7824, !7823, !"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5a39530b27660b6E: argument 1"}
!7825 = !{!7815}
!7826 = !{!7817}
!7827 = !{!7820, !7819}
!7828 = !{!7824, !7822}
!7829 = distinct !{!7829, i1 true, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$5value28_$u7b$$u7b$closure$u7d$$u7d$17hcca159d914529ab6E"}
!7830 = distinct !{!7830, !7829, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$5value28_$u7b$$u7b$closure$u7d$$u7d$17hcca159d914529ab6E: argument 0"}
!7831 = distinct !{!7831, i1 true, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E"}
!7832 = distinct !{!7832, !7831, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E: argument 0"}
!7833 = distinct !{!7833, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7834 = distinct !{!7834, !7833, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7835 = distinct !{!7835, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7836 = distinct !{!7836, !7835, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7837 = distinct !{!7837, i1 true, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!7838 = distinct !{!7838, !7837, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!7839 = distinct !{!7839, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h397c536fac197649E"}
!7840 = distinct !{!7840, !7839, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h397c536fac197649E: argument 0"}
!7841 = distinct !{!7841, i1 true, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45ee63af5231d275E"}
!7842 = distinct !{!7842, !7841, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45ee63af5231d275E: argument 1"}
!7843 = distinct !{!7843, !7841, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45ee63af5231d275E: argument 0"}
!7844 = distinct !{!7844, i1 true, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E"}
!7845 = distinct !{!7845, !7844, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E: argument 0"}
!7846 = distinct !{!7846, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h31ac7c55dca4d3d0E"}
!7847 = distinct !{!7847, !7846, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h31ac7c55dca4d3d0E: argument 0"}
!7848 = distinct !{!7848, i1 true, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!7849 = distinct !{!7849, !7848, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!7850 = distinct !{!7850, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E"}
!7851 = distinct !{!7851, !7850, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 0"}
!7852 = distinct !{!7852, !7850, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 1"}
!7853 = distinct !{!7853, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7854 = distinct !{!7854, !7853, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7855 = !{!7832, !7830}
!7856 = !{!7830}
!7857 = !{!7834, !7830}
!7858 = !{!7836, !7830}
!7859 = !{!7838}
!7860 = !{!7845, !7843, !7842, !7840}
!7861 = !{!7847}
!7862 = !{!7849}
!7863 = !{!7851}
!7864 = !{!7852}
!7865 = !{!7854}
!7866 = distinct !{!7866, i1 true, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$8no_value28_$u7b$$u7b$closure$u7d$$u7d$17hc077be1e904507f3E"}
!7867 = distinct !{!7867, !7866, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$8no_value28_$u7b$$u7b$closure$u7d$$u7d$17hc077be1e904507f3E: argument 0"}
!7868 = distinct !{!7868, i1 true, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E"}
!7869 = distinct !{!7869, !7868, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E: argument 0"}
!7870 = distinct !{!7870, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7871 = distinct !{!7871, !7870, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7872 = distinct !{!7872, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7873 = distinct !{!7873, !7872, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7874 = distinct !{!7874, i1 true, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!7875 = distinct !{!7875, !7874, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!7876 = distinct !{!7876, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h180ea1ba3d7939c3E"}
!7877 = distinct !{!7877, !7876, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h180ea1ba3d7939c3E: argument 0"}
!7878 = distinct !{!7878, i1 true, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb06e6895e0f087c6E"}
!7879 = distinct !{!7879, !7878, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb06e6895e0f087c6E: argument 1"}
!7880 = distinct !{!7880, !7878, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb06e6895e0f087c6E: argument 0"}
!7881 = distinct !{!7881, i1 true, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E"}
!7882 = distinct !{!7882, !7881, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E: argument 0"}
!7883 = distinct !{!7883, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hd440df29fe7b8feeE"}
!7884 = distinct !{!7884, !7883, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hd440df29fe7b8feeE: argument 0"}
!7885 = distinct !{!7885, i1 true, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!7886 = distinct !{!7886, !7885, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!7887 = distinct !{!7887, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E"}
!7888 = distinct !{!7888, !7887, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 0"}
!7889 = distinct !{!7889, !7887, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 1"}
!7890 = distinct !{!7890, i1 true, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7891 = distinct !{!7891, !7890, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7892 = !{!7869, !7867}
!7893 = !{!7867}
!7894 = !{!7871, !7867}
!7895 = !{!7873, !7867}
!7896 = !{!7875}
!7897 = !{!7882, !7880, !7879, !7877}
!7898 = !{!7884}
!7899 = !{!7886}
!7900 = !{!7888}
!7901 = !{!7889}
!7902 = !{!7891}
!7903 = distinct !{!7903, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E"}
!7904 = distinct !{!7904, !7903, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 0"}
!7905 = distinct !{!7905, !7903, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 1"}
!7906 = !{!7904}
!7907 = !{!7905}
!7908 = distinct !{!7908, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h315cbe21540b2eefE"}
!7909 = distinct !{!7909, !7908, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h315cbe21540b2eefE: argument 0"}
!7910 = distinct !{!7910, i1 true, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h882288142bbea503E"}
!7911 = distinct !{!7911, !7910, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h882288142bbea503E: argument 0"}
!7912 = distinct !{!7912, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7a22468c773290e3E"}
!7913 = distinct !{!7913, !7912, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7a22468c773290e3E: argument 0"}
!7914 = distinct !{!7914, i1 true, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E"}
!7915 = distinct !{!7915, !7914, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E: argument 1"}
!7916 = distinct !{!7916, i1 true, !"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h7895e89d7611cb79E"}
!7917 = distinct !{!7917, !7916, !"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h7895e89d7611cb79E: argument 0"}
!7918 = distinct !{!7918, i1 true, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ad7df26b30b16cfE"}
!7919 = distinct !{!7919, !7918, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ad7df26b30b16cfE: argument 0"}
!7920 = distinct !{!7920, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hc139b64eb4fdf52eE"}
!7921 = distinct !{!7921, !7920, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hc139b64eb4fdf52eE: argument 0"}
!7922 = distinct !{!7922, i1 true, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h47fd03eeff14b212E"}
!7923 = distinct !{!7923, !7922, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h47fd03eeff14b212E: argument 0"}
!7924 = distinct !{!7924, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h516bde64ff3e3a7eE"}
!7925 = distinct !{!7925, !7924, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h516bde64ff3e3a7eE: argument 0"}
!7926 = distinct !{!7926, i1 true, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0b5edd63d9a10f23E"}
!7927 = distinct !{!7927, !7926, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0b5edd63d9a10f23E: argument 1"}
!7928 = distinct !{!7928, i1 true, !"_ZN4core3ptr100drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17h13aa62823818a1b6E"}
!7929 = distinct !{!7929, !7928, !"_ZN4core3ptr100drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17h13aa62823818a1b6E: argument 0"}
!7930 = distinct !{!7930, i1 true, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae95e69021fb2a3cE"}
!7931 = distinct !{!7931, !7930, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae95e69021fb2a3cE: argument 0"}
!7932 = distinct !{!7932, i1 true, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE"}
!7933 = distinct !{!7933, !7932, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE: argument 1"}
!7934 = distinct !{!7934, !7932, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE: argument 0"}
!7935 = distinct !{!7935, i1 true, !"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hce79d5b72cdc0090E"}
!7936 = distinct !{!7936, !7935, !"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hce79d5b72cdc0090E: argument 0"}
!7937 = !{!7909}
!7938 = !{!7911}
!7939 = !{!7915, !7913}
!7940 = !{!7919, !7917}
!7941 = !{!7921}
!7942 = !{!7923}
!7943 = !{!7927, !7925}
!7944 = !{!7931, !7929}
!7945 = !{!7936, !7934, !7933}
!7946 = !{!7936}
!7947 = !{!7936, !7934}
!7948 = distinct !{!7948, i1 true, !"_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E"}
!7949 = distinct !{!7949, !7948, !"_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E: argument 0"}
!7950 = !{!7949}
!7951 = distinct !{!7951, i1 true, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E"}
!7952 = distinct !{!7952, !7951, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 0"}
!7953 = distinct !{!7953, !7951, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 1"}
!7954 = distinct !{!7954, !7951, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 3"}
!7955 = distinct !{!7955, !7951, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 2"}
!7956 = distinct !{!7956, i1 true, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E"}
!7957 = distinct !{!7957, !7956, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 0"}
!7958 = distinct !{!7958, !7956, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 1"}
!7959 = !{!7952}
!7960 = !{!7953}
!7961 = !{!7952, !7953, !7955, !7954}
!7962 = !{!7952, !7953, !7954}
!7963 = !{!7952, !7953, !7955}
!7964 = !{!7957}
!7965 = !{!7957, !7953}
!7966 = !{!7958, !7952, !7955, !7954}
!7967 = !{!7957, !7952, !7953, !7955, !7954}
!7968 = !{!7952, !7955, !7954}
!7969 = !{!7952, !7953}
end_hunk_1
