Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN18nickel_lang_parser3ast6pretty9Allocator9type_part17h99b3d3150d2d5a5cE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7819
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
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7825, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !7825, !nonnull !19, !noundef !19 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !noalias !7825, !nonnull !19, !noundef !19 ; 2 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ], !noalias !7825
  store ptr %i.q, ptr %i.e, align 8, !noalias !7825
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef %i.b), !noalias !7825 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.r, null
  br i1 %.not5.i.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !7825
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit", %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.q, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.r, %bb.b ] ; 3 uses
  br i1 %i.a, label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7c2ca6b391c31f69E.exit", label %"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_with17hba39f343a0ebfb46E.exit"

"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7c2ca6b391c31f69E.exit": ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.410.0..sroa_idx, i64 44, i1 false)
  store i32 %.sroa.09.0.copyload, ptr %.sroa.0.0.i.i, align 8, !noalias !7825
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
  %i.b = load ptr, ptr %i.a, align 8, !noalias !7828, !nonnull !19, !noundef !19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !7828, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !noalias !7828, !nonnull !19, !noundef !19 ; 2 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ], !noalias !7828
  store ptr %i.o, ptr %i.c, align 8, !noalias !7828
  br label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i"

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef ptr @"_ZN7bumpalo13Bump$LT$_$GT$17alloc_layout_slow17hacc06564798b584bE"(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 9) 8, i64 noundef 48), !noalias !7828 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i, label %bb.c, label %"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i", !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !7828
  unreachable

"_ZN7bumpalo13Bump$LT$_$GT$12alloc_layout17h711a5737d6c8d0dcE.exit.i": ; preds = %bb.b, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit"
  %.sroa.0.0.i.i = phi ptr [ %i.o, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit" ], [ %i.p, %bb.b ] ; 3 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  store i32 3, ptr %.sroa.0.0.i.i, align 8, !noalias !7828
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
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !7838
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7838
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !7838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7838
  store ptr %i.b, ptr %i.a, align 8, !noalias !7838
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10194, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10193)
          to label %.noexc.i.i unwind label %bb.d, !noalias !7838

.noexc.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7838
  br label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !7839
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE.exit.i.i"

bb.f:                                             ; preds = %.noexc.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.j = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hf97887109829ade9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.3.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %bb.g unwind label %bb.d, !noalias !7838

bb.g:                                             ; preds = %bb.f
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3.0.copyload, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !7840
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
  %i.g = alloca [72 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !21, !noalias !7931, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i", !prof !22

._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !7932
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !7932
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i": ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !7933 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !7933
  store i8 1, ptr %i.i, align 8, !noalias !7933
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h5ec68e9968280ba7E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i"
  %.pre-phi61 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i ], [ %i.n, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i" ]
  %i.p = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE.exit_crit_edge.i.i ], [ %i.m, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E.exit.i.i" ] ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.h, align 8, !noalias !7932
  store i64 0, ptr %i.g, align 8, !alias.scope !7934
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7934
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7934
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store i64 %i.p, ptr %i.r, align 8, !alias.scope !7934
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.pre-phi61, ptr %i.s, align 8, !alias.scope !7934
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7935)
  call void @llvm.experimental.noalias.scope.decl(metadata !7936)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !7937, !noalias !7938, !nonnull !19, !align !24, !noundef !19 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !7937, !noalias !7938, !noundef !19
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %.backedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = load i32, ptr %i.ak, align 8, !range !28, !noalias !7939, !noundef !19
  %.not2.i.i.i = icmp eq i32 %i.an, 3
  br i1 %.not2.i.i.i, label %.split, label %.backedge

.split:                                           ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.sroa.04.0.copyload5.i = load i32, ptr %i.ao, align 4, !noalias !7940
  %i.ap = icmp eq i32 %.sroa.04.0.copyload5.i, 3
  br i1 %i.ap, label %.backedge, label %bb.d

.backedge:                                        ; preds = %.lr.ph, %bb.b, %.split
  %i.aq = icmp eq ptr %i.ai, %i.x
  br i1 %i.aq, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.backedge, %bb.t
  br label %.lr.ph

.loopexit:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i", %._crit_edge.i.i.i2, %bb.s
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
  %.sroa.4.i.sroa.4.0.copyload.le = load i32, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx6.i.sroa_idx.le, align 4, !noalias !7940 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7942
  %i.ar = load <2 x i64>, ptr %i.r, align 8, !alias.scope !7941, !noalias !7943 ; 3 uses
  %i.as = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.at = xor <2 x i64> %i.as, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.at, ptr %i.f, align 16, !alias.scope !7944, !noalias !7942
  %i.au = shufflevector <2 x i64> %i.ar, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.av = xor <2 x i64> %i.au, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.av, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !7944, !noalias !7942
  store <2 x i64> %i.ar, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !7944, !noalias !7942
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !7944, !noalias !7942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7945
  store i32 %.sroa.4.i.sroa.4.0.copyload.le, ptr %i.e, align 4, !noalias !7945
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3e6a061b512ecb51E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.e, i64 noundef 4), !noalias !7942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7945
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !7946, !noalias !7942
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !7946, !noalias !7942
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !7946, !noalias !7942 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !7946, !noalias !7942
  %i.aw = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !7946, !noalias !7942, !noundef !19
  %i.ax = shl i64 %i.aw, 56
  %i.ay = load i64, ptr %i.y, align 8, !alias.scope !7946, !noalias !7942, !noundef !19
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7942
  call void @llvm.experimental.noalias.scope.decl(metadata !7947)
  %i.dg = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7948, !noalias !7949, !nonnull !19, !noundef !19 ; 5 uses
  %i.dh = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7948, !noalias !7949, !noundef !19 ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7950)
  call void @llvm.experimental.noalias.scope.decl(metadata !7951)
  %i.di = lshr i64 %i.df, 57
  %i.dj = trunc nuw nsw i64 %i.di to i8           ; 4 uses
  %i.dk = load i64, ptr %i.z, align 8, !alias.scope !7952, !noalias !7953, !noundef !19 ; 6 uses
  %i.dl = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7952, !noalias !7953, !nonnull !19, !noundef !19 ; 10 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.08.0.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ei, %bb.g ]
  %.pn.i.i.i = phi i64 [ %i.df, %bb.d ], [ %i.ej, %bb.g ]
  %.sroa.04.0.i.i.i.i = and i64 %.pn.i.i.i, %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.04.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.dm, align 1, !noalias !7954 ; 2 uses
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
  %.val.i.i.i.i = load i64, ptr %i.dv, align 8, !noalias !7955, !noundef !19 ; 3 uses
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
  %.val2.i.i.i.i.i = load i32, ptr %i.eb, align 4, !noalias !7956, !noundef !19
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7957)
  call void @llvm.experimental.noalias.scope.decl(metadata !7958)
  %i.ek = load i64, ptr %i.aa, align 8, !alias.scope !7957, !noalias !7959, !noundef !19
  call void @llvm.experimental.noalias.scope.decl(metadata !7960)
  %.sroa.0.07.i.i.i.i.i = and i64 %i.dk, %i.df    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.07.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i = load <16 x i8>, ptr %i.el, align 1, !noalias !7961
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
  %.sroa.0.0.copyload.i6.i.i.i.i.i = load <16 x i8>, ptr %i.er, align 1, !noalias !7961
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
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !7962, !noundef !19 ; 2 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i, !prof !20

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %i.dl, align 16, !noalias !7962
  %i.fb = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.fc = bitcast <16 x i1> %i.fb to i16          ; 2 uses
  %i.fd = icmp ne i16 %i.fc, 0
  call void @llvm.assume(i1 %i.fd)
  %i.fe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fc, i1 true)
  %i.ff = zext nneg i16 %i.fe to i64              ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ff
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !noalias !7962
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i: ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %i.fg = phi i8 [ %.pre.i.i.i.i, %bb.i ], [ %i.ez, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i.i.i = phi i64 [ %i.ff, %bb.i ], [ %i.ex, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.fh = load i64, ptr %i.ab, align 8, !alias.scope !7963, !noalias !7964, !noundef !19 ; 2 uses
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
  store i8 %i.dj, ptr %i.fk, align 1, !noalias !7965
  %i.fq = getelementptr i8, ptr %i.dl, i64 %i.fp
  br label %bb.k

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE.exit.i.i.i.i
  %i.fr = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5f931d076ab19903E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.dh, i1 noundef zeroext true)
          to label %.noexc3.a unwind label %.loopexit ; 0 uses

.noexc3.a:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h495789767c4ecc7aE.exit.i.i.i.i"
  %.val13.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !7963, !noalias !7964 ; 4 uses
  %.val14.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !7963, !noalias !7964, !noundef !19 ; 2 uses
  %i.fs = call fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h2be1ead09c214ffdE(ptr %.val13.i.i.i.i, i64 %.val14.i.i.i.i, i64 noundef %i.df), !noalias !7964 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7966)
  %i.ft = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 %i.fs ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !7967, !noundef !19
  %i.fv = and i8 %i.fu, 1
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = load i64, ptr %i.ab, align 8, !alias.scope !7968, !noalias !7964, !noundef !19
  %i.fy = sub i64 %i.fx, %i.fw
  %i.fz = add i64 %i.fs, -16
  %i.ga = and i64 %i.fz, %.val14.i.i.i.i
  store i8 %i.dj, ptr %i.ft, align 1, !noalias !7967
  %i.gb = getelementptr i8, ptr %.val13.i.i.i.i, i64 %i.ga
  br label %bb.k

bb.k:                                             ; preds = %.noexc3.a, %bb.j
  %.sink.i = phi i64 [ %i.fy, %.noexc3.a ], [ %i.fn, %bb.j ]
  %.sink21.i.i.i.i = phi ptr [ %i.gb, %.noexc3.a ], [ %i.fq, %bb.j ]
  %.sroa.0.0.i5.i.sink.i.i.i.i = phi i64 [ %i.fs, %.noexc3.a ], [ %.sroa.0.0.i5.i.i.i.i.i, %bb.j ]
  %.val.sink.i.i.i.i = phi ptr [ %.val13.i.i.i.i, %.noexc3.a ], [ %i.dl, %bb.j ] ; 2 uses
  store i64 %.sink.i, ptr %i.ab, align 8, !alias.scope !7963, !noalias !7964
  %i.gc = getelementptr i8, ptr %.sink21.i.i.i.i, i64 16
  store i8 %i.dj, ptr %i.gc, align 1, !noalias !7964
  %i.gd = load i64, ptr %i.aa, align 8, !alias.scope !7963, !noalias !7964, !noundef !19
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.aa, align 8, !alias.scope !7963, !noalias !7964
  %i.gf = sub nsw i64 0, %.sroa.0.0.i5.i.sink.i.i.i.i
  %i.gg = getelementptr inbounds [8 x i8], ptr %.val.sink.i.i.i.i, i64 %i.gf
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -8 ; 2 uses
  store i64 %i.ek, ptr %i.gh, align 8, !noalias !7964
  %i.gi = icmp ult i64 %i.dh, 230584300921369396
  call void @llvm.assume(i1 %i.gi)
  %i.gj = load i64, ptr %i.g, align 8, !range !38, !alias.scope !7958, !noalias !7969, !noundef !19
  %i.gk = icmp eq i64 %i.dh, %i.gj
  br i1 %i.gk, label %bb.l, label %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.gl = shl nuw nsw i64 %i.dh, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !7970)
  %.sroa.0.0.i.i8.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 461168601842738791) %i.gl, i64 230584300921369395) ; 4 uses
  %i.gm = sub nsw i64 %.sroa.0.0.i.i8.i.i.i, %i.dh
  %i.gn = icmp ugt i64 %i.gm, 1
  br i1 %i.gn, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.r, %bb.l
  %i.go = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.gp = mul nuw nsw i64 %i.go, 40
  %or.cond.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.dh, 230584300921369394
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.noexc10.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7971
  %i.gq = icmp eq i64 %i.dh, 0
  br i1 %i.gq, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %i.gr = mul nuw nsw i64 %i.dh, 40
  store ptr %i.dg, ptr %i.c, align 8, !alias.scope !7972, !noalias !7971
  store i64 %i.gr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !7972, !noalias !7971
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i": ; preds = %bb.n, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.n ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ]
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !alias.scope !7972, !noalias !7971
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hb7330f9b7203dfdbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 8, i64 noundef %i.gp, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.c), !noalias !7973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7971
  %i.gs = load i64, ptr %i.d, align 8, !range !35, !noalias !7971, !noundef !19
  %i.gt = trunc nuw i64 %i.gs to i1
  br i1 %i.gt, label %bb.o, label %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i

bb.o:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i"
  %i.gu = load i64, ptr %i.af, align 8, !range !52, !noalias !7971, !noundef !19
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !7971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7971
  br label %.noexc10.i.i.i

_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i.i"
  %i.gx = load ptr, ptr %i.af, align 8, !noalias !7971, !nonnull !19, !noundef !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7971
  store ptr %i.gx, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7974, !noalias !7969
  store i64 %i.go, ptr %i.g, align 8, !alias.scope !7974, !noalias !7969
  br label %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"

.noexc10.i.i.i:                                   ; preds = %bb.m, %bb.o
  %.sroa.3.0.i.ph.i.i.i.i.i = phi i64 [ %i.gw, %bb.o ], [ undef, %bb.m ]
  %.sroa.0.0.i.ph.i.i.i.i.i = phi i64 [ %i.gu, %bb.o ], [ 0, %bb.m ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.0.0.i.ph.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10567) #52
          to label %.noexc4 unwind label %.loopexit.split-lp

.noexc4:                                          ; preds = %.noexc10.i.i.i
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.gy = mul nuw nsw i64 %.sroa.0.0.i.i8.i.i.i, 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7975
  %i.gz = icmp eq i64 %i.dh, 0
  br i1 %i.gz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ha = mul nuw nsw i64 %i.dh, 40
  store ptr %i.dg, ptr %i.a, align 8, !alias.scope !7976, !noalias !7975
  store i64 %i.ha, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !7976, !noalias !7975
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i": ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i.i.i = phi i64 [ 8, %bb.q ], [ 0, %bb.p ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.ac, align 8, !alias.scope !7976, !noalias !7975
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17hb7330f9b7203dfdbE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.gy, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !7977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7975
  %i.hb = load i64, ptr %i.b, align 8, !range !35, !noalias !7975, !noundef !19
  %i.hc = trunc nuw i64 %i.hb to i1
  br i1 %i.hc, label %bb.r, label %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i

bb.r:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7975
  br label %bb.m

_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i: ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE.exit.i.i.i.i.i.i"
  %i.hd = load ptr, ptr %i.ad, align 8, !noalias !7975, !nonnull !19, !noundef !19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7975
  store ptr %i.hd, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7974, !noalias !7969
  store i64 %.sroa.0.0.i.i8.i.i.i, ptr %i.g, align 8, !alias.scope !7974, !noalias !7969
  %2 = icmp eq i64 %i.dh, %.sroa.0.0.i.i8.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7978)
  br i1 %2, label %._crit_edge.i.i.i2, label %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"

._crit_edge.i.i.i2:                               ; preds = %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hc73a87a57314aef4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10568)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %._crit_edge.i.i.i2
  %.pre.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !7979, !noalias !7980
  br label %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"

"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i": ; preds = %.noexc5, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i, %bb.k
  %3 = phi ptr [ %.pre.i.i.i, %.noexc5 ], [ %i.hd, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.i.i.i ], [ %i.gx, %_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE.exit.thread36.i.i.i ], [ %i.dg, %bb.k ]
  %i.he = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.dh ; 5 uses
  store i64 0, ptr %i.he, align 8, !noalias !7981
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !7981
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !7981
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store i64 %i.df, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !7981
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i32 %.sroa.4.i.sroa.4.0.copyload.le, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !7981
  %i.hf = add nuw nsw i64 %i.dh, 1                ; 2 uses
  store i64 %i.hf, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !7979, !noalias !7980
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.sink.i.i.i.i) ]
  %i.hg = load i64, ptr %i.gh, align 8, !noalias !7982, !noundef !19 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.hg, %i.dh
  br i1 %.not.i.i, label %.invoke, label %"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i"

"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i": ; preds = %"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E.exit.i.i"
  %i.hh = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !7982, !nonnull !19, !noundef !19
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %i.hh, i64 %i.hg
  br label %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit"

"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i", %"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i"
  %.sroa.0.0.i = phi ptr [ %i.hi, %"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE.exit.i" ], [ %i.ea, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E.exit.i.i.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7983)
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !7983, !noalias !7984, !noundef !19 ; 3 uses
  %i.hl = load i64, ptr %.sroa.0.0.i, align 8, !range !38, !alias.scope !7983, !noalias !7984, !noundef !19
  %i.hm = icmp eq i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5d4fe26be4ec5cacE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E.exit", %bb.s
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !7983, !noalias !7984, !nonnull !19, !noundef !19
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hk
  store ptr %i.ah, ptr %i.hp, align 8, !noalias !7985
  %i.hq = add i64 %i.hk, 1
  store i64 %i.hq, ptr %i.hj, align 8, !alias.scope !7983, !noalias !7984
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8014
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i"
  %i.h = phi ptr [ %i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i" ], [ %i.c, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 280 ; 4 uses
  %i.j = getelementptr i8, ptr %i.h, i64 272
  %.val8.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !8015, !noundef !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 264
  %.val.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !8015, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.l = load i32, ptr %.val.i.i.i.i.i.i, align 8, !range !28, !noalias !8015, !noundef !19
  %.not3.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 3
  br i1 %.not3.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i", label %bb.c

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = icmp eq ptr %i.i, %i.f
  br i1 %i.m, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !8016
  %i.n = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 8) #54, !noalias !8016 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i"

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10207) #52, !noalias !8014
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i": ; preds = %bb.c
  store ptr %.val.i.i.i.i.i.i, ptr %i.n, align 8, !noalias !8014
  store i64 4, ptr %i.a, align 8, !noalias !8014
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8014
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !8014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8018)
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
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !8019, !noundef !19
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.v = getelementptr i8, ptr %i.s, i64 264
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !noalias !8019, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.w = load i32, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !28, !noalias !8019, !noundef !19
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 3
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.x = icmp eq ptr %i.t, %i.f
  br i1 %i.x, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i": ; preds = %bb.e
  %i.y = icmp samesign ult i64 %i.r, 1152921504606846976
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.a, align 8, !range !38, !alias.scope !8020, !noalias !8014, !noundef !19
  %i.aa = icmp eq i64 %i.r, %i.z
  br i1 %i.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i": ; preds = %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hd377fc3c08e58300E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.f, !noalias !8014

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8020, !noalias !8014
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i", %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i"
  %i.ab = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.q, %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.r
  store ptr %.val.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !noalias !8021
  %i.ad = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8020, !noalias !8014
  %i.ae = icmp eq ptr %i.t, %i.f
  br i1 %i.ae, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i", label %.lr.ph.i.i.preheader.i.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i", %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !8014
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !alias.scope !8014
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ag, align 8, !alias.scope !8014
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E.exit

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he77359d07b2d18b7E.exit.i.i.i.i.i.i"
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !8014 ; 2 uses
  %i.ai = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.ai, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17ha4c88a85592c8e84E.exit.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !8014, !nonnull !19, !noundef !19
  %i.aj = shl nuw i64 %.val8.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !8014
  br label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17ha4c88a85592c8e84E.exit.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i": ; preds = %.noexc.i.i.i.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h202fb51ec255fa99E.exit.i.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E.exit

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$$RF$nickel_lang_parser..ast..Ast$GT$$GT$17ha4c88a85592c8e84E.exit.i.i.i.i": ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ah

_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E.exit: ; preds = %.loopexit.i.i.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8014
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
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !8026, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 272
  %.val4.i = load i64, ptr %i.k, align 8, !noalias !8026, !noundef !19 ; 2 uses
  %.idx7 = mul nuw nsw i64 %.val4.i, 48
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx7
end_hunk_0
begin_hunk_1_@llvm.umax.v4i8
!7774 = !{!7693, !7692}
!7775 = !{!7695}
!7776 = !{!7697}
!7777 = !{!7699}
!7778 = !{!7704, !7703, !7701, !7697}
!7779 = !{!7695, !7705}
!7780 = !{!7711, !7709, !7707, !7695, !7705}
!7781 = !{!7709, !7707, !7695, !7705}
!7782 = !{!7705}
!7783 = !{!7713}
!7784 = !{!7715}
!7785 = !{!7720, !7719, !7717, !7713}
!7786 = !{!7722}
!7787 = !{!7725, !7724, !7723}
!7788 = !{!7725, !7722, !7724, !7723}
!7789 = !{!7731, !7730, !7728, !7727, !7725, !7722, !7724, !7723}
!7790 = !{!7725, !7722, !7723}
!7791 = !{!7725, !7723}
!7792 = !{!7733}
!7793 = !{!7734}
!7794 = !{!7733, !7734}
!7795 = !{!7736}
!7796 = !{!7740, !7738, !7736, !7733, !7734}
!7797 = !{!7738, !7736, !7733, !7734}
!7798 = !{!7736, !7734}
!7799 = distinct !{!7799, !"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE"}
!7800 = distinct !{!7800, !7799, !"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE: argument 1"}
!7801 = distinct !{!7801, !7799, !"_ZN141_$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$as$u20$nickel_lang_parser..ast..pretty..NickelDocBuilderExt$GT$9parens_if17h63237a070fb1f5cbE: argument 0"}
!7802 = distinct !{!7802, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E"}
!7803 = distinct !{!7803, !7802, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 1"}
!7804 = distinct !{!7804, !7802, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 3"}
!7805 = distinct !{!7805, !7802, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 2"}
!7806 = distinct !{!7806, !7802, !"_ZN6pretty23DocBuilder$LT$D$C$A$GT$7enclose17h5105d2a02fe99662E: argument 0"}
!7807 = distinct !{!7807, !"_ZN55_$LT$$RF$str$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hfc8246681d4ed37aE"}
!7808 = distinct !{!7808, !7807, !"_ZN55_$LT$$RF$str$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hfc8246681d4ed37aE: argument 1"}
!7809 = distinct !{!7809, !7807, !"_ZN55_$LT$$RF$str$u20$as$u20$pretty..Pretty$LT$D$C$A$GT$$GT$6pretty17hfc8246681d4ed37aE: argument 0"}
!7810 = distinct !{!7810, !"_ZN6pretty12DocAllocator4text17h77c1f2e094d79101E"}
!7811 = distinct !{!7811, !7810, !"_ZN6pretty12DocAllocator4text17h77c1f2e094d79101E: argument 1"}
!7812 = distinct !{!7812, !7810, !"_ZN6pretty12DocAllocator4text17h77c1f2e094d79101E: argument 0"}
!7813 = !{!7801, !7800}
!7814 = !{!7801}
!7815 = !{!7800}
!7816 = !{!7803}
!7817 = !{!7803, !7800}
!7818 = !{!7806, !7805, !7804, !7801}
!7819 = !{!7806, !7803, !7805, !7804, !7801, !7800}
!7820 = !{!7812, !7811, !7809, !7808, !7806, !7803, !7805, !7804, !7801, !7800}
!7821 = !{!7806, !7803, !7804, !7801, !7800}
!7822 = !{!7806, !7804, !7801}
!7823 = distinct !{!7823, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E"}
!7824 = distinct !{!7824, !7823, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E: argument 0"}
!7825 = !{!7824}
!7826 = distinct !{!7826, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E"}
!7827 = distinct !{!7827, !7826, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h44f201f1363b34c9E: argument 0"}
!7828 = !{!7827}
!7829 = distinct !{!7829, !"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E"}
!7830 = distinct !{!7830, !7829, !"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E: argument 1"}
!7831 = distinct !{!7831, !7829, !"_ZN109_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17h40ea8855da769a72E: argument 0"}
!7832 = distinct !{!7832, !"_ZN18nickel_lang_parser10identifier5Ident3new17hd80ac393557c1289E"}
!7833 = distinct !{!7833, !7832, !"_ZN18nickel_lang_parser10identifier5Ident3new17hd80ac393557c1289E: argument 0"}
!7834 = distinct !{!7834, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7835 = distinct !{!7835, !7834, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7836 = distinct !{!7836, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!7837 = distinct !{!7837, !7836, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!7838 = !{!7833, !7831, !7830}
!7839 = !{!7835, !7833, !7831, !7830}
!7840 = !{!7837, !7833, !7831, !7830}
!7841 = distinct !{!7841, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1917cf0b5a35296eE"}
!7842 = distinct !{!7842, !7841, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h1917cf0b5a35296eE: argument 0"}
!7843 = distinct !{!7843, !"_ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE"}
!7844 = distinct !{!7844, !7843, !"_ZN4core3ops8function6FnOnce9call_once17h6aa02063dcde1d9cE: argument 0"}
!7845 = distinct !{!7845, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd3999b4e7b00e11fE"}
!7846 = distinct !{!7846, !7845, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hd3999b4e7b00e11fE: argument 0"}
!7847 = distinct !{!7847, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5535e349dc8b3a0bE"}
!7848 = distinct !{!7848, !7847, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h5535e349dc8b3a0bE: argument 0"}
!7849 = distinct !{!7849, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E"}
!7850 = distinct !{!7850, !7849, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h9fd81b5b7b9c8ec0E: argument 0"}
!7851 = distinct !{!7851, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h46866f22230e0e82E"}
!7852 = distinct !{!7852, !7851, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h46866f22230e0e82E: argument 0"}
!7853 = distinct !{!7853, !"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h3dca5b62cc913f5bE"}
!7854 = distinct !{!7854, !7853, !"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h3dca5b62cc913f5bE: argument 1"}
!7855 = distinct !{!7855, !"_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id28_$u7b$$u7b$closure$u7d$$u7d$17h92242107fd9f24dfE"}
!7856 = distinct !{!7856, !7855, !"_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id28_$u7b$$u7b$closure$u7d$$u7d$17h92242107fd9f24dfE: argument 1"}
!7857 = distinct !{!7857, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h10c2f0c305ffc82eE"}
!7858 = distinct !{!7858, !7857, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h10c2f0c305ffc82eE: argument 1"}
!7859 = distinct !{!7859, !7857, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h10c2f0c305ffc82eE: argument 0"}
!7860 = distinct !{!7860, !7853, !"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17h3dca5b62cc913f5bE: argument 0"}
!7861 = distinct !{!7861, !7855, !"_ZN18nickel_lang_parser3ast6record6Record17group_by_field_id28_$u7b$$u7b$closure$u7d$$u7d$17h92242107fd9f24dfE: argument 0"}
!7862 = distinct !{!7862, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17he7191efc5958a57dE"}
!7863 = distinct !{!7863, !7862, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17he7191efc5958a57dE: argument 1"}
!7864 = distinct !{!7864, !7862, !"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$5entry17he7191efc5958a57dE: argument 0"}
!7865 = distinct !{!7865, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17he1f569c2828aafe8E"}
!7866 = distinct !{!7866, !7865, !"_ZN74_$LT$std..hash..random..RandomState$u20$as$u20$core..hash..BuildHasher$GT$12build_hasher17he1f569c2828aafe8E: argument 0"}
!7867 = distinct !{!7867, !"_ZN74_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..hash..Hash$GT$4hash17hb0ba468263ab3996E"}
!7868 = distinct !{!7868, !7867, !"_ZN74_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..hash..Hash$GT$4hash17hb0ba468263ab3996E: argument 0"}
!7869 = distinct !{!7869, !"_ZN4core4hash6Hasher9write_u3217he84ae412cea9f515E"}
!7870 = distinct !{!7870, !7869, !"_ZN4core4hash6Hasher9write_u3217he84ae412cea9f515E: argument 0"}
!7871 = distinct !{!7871, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h9fe46f0ae1354d95E"}
!7872 = distinct !{!7872, !7871, !"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$6finish17h9fe46f0ae1354d95E: argument 0"}
!7873 = distinct !{!7873, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hb2e44ca835001ba8E"}
!7874 = distinct !{!7874, !7873, !"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hb2e44ca835001ba8E: argument 0"}
!7875 = distinct !{!7875, !"_ZN8indexmap3map4core5entry64_$LT$impl$u20$indexmap..map..core..IndexMapCore$LT$K$C$V$GT$$GT$5entry17h6dd38f15ef3af511E"}
!7876 = distinct !{!7876, !7875, !"_ZN8indexmap3map4core5entry64_$LT$impl$u20$indexmap..map..core..IndexMapCore$LT$K$C$V$GT$$GT$5entry17h6dd38f15ef3af511E: argument 1"}
!7877 = distinct !{!7877, !7875, !"_ZN8indexmap3map4core5entry64_$LT$impl$u20$indexmap..map..core..IndexMapCore$LT$K$C$V$GT$$GT$5entry17h6dd38f15ef3af511E: argument 0"}
!7878 = distinct !{!7878, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h7982d8b26c9c9f6bE"}
!7879 = distinct !{!7879, !7878, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h7982d8b26c9c9f6bE: argument 0"}
!7880 = distinct !{!7880, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h8887fdbf6a4ceebcE"}
!7881 = distinct !{!7881, !7880, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h8887fdbf6a4ceebcE: argument 0"}
!7882 = distinct !{!7882, !7878, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h7982d8b26c9c9f6bE: argument 1"}
!7883 = distinct !{!7883, !7880, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h8887fdbf6a4ceebcE: argument 1"}
!7884 = distinct !{!7884, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!7885 = distinct !{!7885, !7884, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!7886 = distinct !{!7886, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E"}
!7887 = distinct !{!7887, !7886, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17hb85e8fbd8d2e6ad8E: argument 0"}
!7888 = distinct !{!7888, !"_ZN8indexmap3map4core10equivalent28_$u7b$$u7b$closure$u7d$$u7d$17hcf501c485a1976a0E"}
!7889 = distinct !{!7889, !7888, !"_ZN8indexmap3map4core10equivalent28_$u7b$$u7b$closure$u7d$$u7d$17hcf501c485a1976a0E: argument 0"}
!7890 = distinct !{!7890, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E"}
!7891 = distinct !{!7891, !7890, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 1"}
!7892 = distinct !{!7892, !7890, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 2"}
!7893 = distinct !{!7893, !"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E"}
!7894 = distinct !{!7894, !7893, !"_ZN8indexmap3map4core5entry18Entry$LT$K$C$V$GT$14or_insert_with17h767bfba1fbffada7E: argument 0"}
!7895 = distinct !{!7895, !"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE"}
!7896 = distinct !{!7896, !7895, !"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE: argument 1"}
!7897 = distinct !{!7897, !7895, !"_ZN8indexmap3map4core5entry24VacantEntry$LT$K$C$V$GT$6insert17h51cca5f0c8a5483eE: argument 0"}
!7898 = distinct !{!7898, !7890, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 3"}
!7899 = distinct !{!7899, !7890, !"_ZN8indexmap3map4core19RefMut$LT$K$C$V$GT$13insert_unique17h8bbb025f283878f8E: argument 0"}
!7900 = distinct !{!7900, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h1cc48dd746b1d6e8E"}
!7901 = distinct !{!7901, !7900, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h1cc48dd746b1d6e8E: argument 0"}
!7902 = distinct !{!7902, !7900, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h1cc48dd746b1d6e8E: argument 1"}
!7903 = distinct !{!7903, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!7904 = distinct !{!7904, !7903, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!7905 = distinct !{!7905, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E"}
!7906 = distinct !{!7906, !7905, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E: argument 0"}
!7907 = distinct !{!7907, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E"}
!7908 = distinct !{!7908, !7907, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd55ccd15213cc934E: argument 0"}
!7909 = distinct !{!7909, !"_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE"}
!7910 = distinct !{!7910, !7909, !"_ZN8indexmap3map4core15reserve_entries17h0b72069e378959faE: argument 0"}
!7911 = distinct !{!7911, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hc4846709f6e26c70E"}
!7912 = distinct !{!7912, !7911, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hc4846709f6e26c70E: argument 0"}
!7913 = distinct !{!7913, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E"}
!7914 = distinct !{!7914, !7913, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E: argument 0"}
!7915 = distinct !{!7915, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E"}
!7916 = distinct !{!7916, !7915, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E: argument 0"}
!7917 = distinct !{!7917, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE"}
!7918 = distinct !{!7918, !7917, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE: argument 0"}
!7919 = distinct !{!7919, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E"}
!7920 = distinct !{!7920, !7919, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17hfac410625095c541E: argument 0"}
!7921 = distinct !{!7921, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E"}
!7922 = distinct !{!7922, !7921, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10grow_exact17he1f97c10a091c376E: argument 0"}
!7923 = distinct !{!7923, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE"}
!7924 = distinct !{!7924, !7923, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h3b3c0adb5d4ab7ffE: argument 0"}
!7925 = distinct !{!7925, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d861545f561020bE"}
!7926 = distinct !{!7926, !7925, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d861545f561020bE: argument 0"}
!7927 = distinct !{!7927, !7925, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6d861545f561020bE: argument 1"}
!7928 = distinct !{!7928, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc5f5109144f7df4aE"}
!7929 = distinct !{!7929, !7928, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc5f5109144f7df4aE: argument 0"}
!7930 = distinct !{!7930, !7928, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc5f5109144f7df4aE: argument 1"}
!7931 = !{!7848, !7846, !7844, !7842}
!7932 = !{!7842}
!7933 = !{!7850, !7842}
!7934 = !{!7852}
!7935 = !{!7854}
!7936 = !{!7856}
!7937 = !{!7856, !7854}
!7938 = !{!7861, !7860, !7859, !7858}
!7939 = !{!7861, !7856, !7860, !7854, !7859, !7858}
!7940 = !{!7856, !7854, !7859, !7858}
!7941 = !{!7863}
!7942 = !{!7864, !7863}
!7943 = !{!7864}
!7944 = !{!7866}
!7945 = !{!7870, !7868, !7864, !7863}
!7946 = !{!7874, !7872}
!7947 = !{!7876}
!7948 = !{!7876, !7863}
!7949 = !{!7877, !7864}
!7950 = !{!7879}
!7951 = !{!7881}
!7952 = !{!7881, !7879, !7876, !7863}
!7953 = !{!7883, !7882, !7877, !7864}
!7954 = !{!7885, !7881, !7883, !7879, !7882, !7877, !7876, !7864, !7863}
!7955 = !{!7887, !7881, !7883, !7879, !7882, !7877, !7876, !7864, !7863}
!7956 = !{!7889, !7887, !7881, !7883, !7879, !7882, !7877, !7876, !7864, !7863}
!7957 = !{!7891}
!7958 = !{!7892}
!7959 = !{!7899, !7892, !7898, !7897, !7896, !7894}
!7960 = !{!7901}
!7961 = !{!7904, !7901, !7902, !7899, !7891, !7892, !7898, !7897, !7896, !7894}
!7962 = !{!7901, !7902, !7899, !7891, !7892, !7898, !7897, !7896, !7894}
!7963 = !{!7901, !7891}
!7964 = !{!7902, !7899, !7892, !7898, !7897, !7896, !7894}
!7965 = !{!7906, !7901, !7902, !7899, !7891, !7892, !7898, !7897, !7896, !7894}
!7966 = !{!7908}
!7967 = !{!7908, !7902, !7899, !7892, !7898, !7897, !7896, !7894}
!7968 = !{!7908, !7901, !7891}
!7969 = !{!7899, !7891, !7898, !7897, !7896, !7894}
!7970 = !{!7910}
!7971 = !{!7916, !7914, !7912, !7910, !7899, !7891, !7892, !7898, !7897, !7896, !7894}
!7972 = !{!7918}
!7973 = !{!7916, !7914, !7912, !7910, !7899, !7892, !7898, !7897, !7896, !7894}
!7974 = !{!7910, !7892}
!7975 = !{!7922, !7920, !7910, !7899, !7891, !7892, !7898, !7897, !7896, !7894}
!7976 = !{!7924}
!7977 = !{!7922, !7920, !7910, !7899, !7892, !7898, !7897, !7896, !7894}
!7978 = !{!7926}
!7979 = !{!7926, !7892}
!7980 = !{!7927, !7899, !7891, !7898, !7897, !7896, !7894}
!7981 = !{!7926, !7899, !7892, !7898, !7897, !7896, !7894}
!7982 = !{!7897, !7896, !7894}
!7983 = !{!7929}
!7984 = !{!7930}
!7985 = !{!7929, !7930}
!7986 = distinct !{!7986, !"_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E"}
!7987 = distinct !{!7987, !7986, !"_ZN4core4iter6traits8iterator8Iterator7collect17hcff9a3bf8397eff3E: argument 0"}
!7988 = distinct !{!7988, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1fd6918f16aff08dE"}
!7989 = distinct !{!7989, !7988, !"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1fd6918f16aff08dE: argument 0"}
!7990 = distinct !{!7990, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h840937fa19a2552fE"}
!7991 = distinct !{!7991, !7990, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h840937fa19a2552fE: argument 0"}
!7992 = distinct !{!7992, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha9fb4ae78f3126b0E"}
!7993 = distinct !{!7993, !7992, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17ha9fb4ae78f3126b0E: argument 0"}
!7994 = distinct !{!7994, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE"}
!7995 = distinct !{!7995, !7994, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE: argument 0"}
!7996 = distinct !{!7996, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE"}
!7997 = distinct !{!7997, !7996, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE: argument 0"}
!7998 = distinct !{!7998, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E"}
!7999 = distinct !{!7999, !7998, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4a2f313bb5199067E: argument 0"}
!8000 = distinct !{!8000, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd6313655238d739dE"}
!8001 = distinct !{!8001, !8000, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hd6313655238d739dE: argument 0"}
!8002 = distinct !{!8002, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE"}
!8003 = distinct !{!8003, !8002, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb8d0c5b2915c8afcE: argument 0"}
!8004 = distinct !{!8004, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hd26212236bf70a32E"}
!8005 = distinct !{!8005, !8004, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17hd26212236bf70a32E: argument 0"}
!8006 = distinct !{!8006, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE"}
!8007 = distinct !{!8007, !8006, !"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf9b629bf0d90840fE: argument 0"}
!8008 = distinct !{!8008, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE"}
!8009 = distinct !{!8009, !8008, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h706df576ce18e69fE: argument 0"}
!8010 = !{!7987}
!8011 = !{!7989}
!8012 = !{!7991}
!8013 = !{!7993}
!8014 = !{!7993, !7991, !7989, !7987}
!8015 = !{!7997, !7995, !7993, !7991, !7989, !7987}
!8016 = !{!8001, !7999, !7993, !7991, !7989, !7987}
!8017 = !{!8003}
!8018 = !{!8005}
!8019 = !{!8009, !8007, !8005, !8003, !7993, !7991, !7989, !7987}
!8020 = !{!8005, !8003}
!8021 = !{!8005, !8003, !7993, !7991, !7989, !7987}
!8022 = distinct !{!8022, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h882ddc2cc17936dbE"}
!8023 = distinct !{!8023, !8022, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h882ddc2cc17936dbE: argument 0"}
!8024 = distinct !{!8024, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hfc6282d73df61c84E"}
!8025 = distinct !{!8025, !8024, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hfc6282d73df61c84E: argument 0"}
!8026 = !{!8023}
!8027 = !{!8025, !8023}
!8028 = distinct !{!8028, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h6dfaf4682f522854E"}
!8029 = distinct !{!8029, !8028, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h6dfaf4682f522854E: argument 1"}
!8030 = distinct !{!8030, !8028, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h6dfaf4682f522854E: argument 0"}
!8031 = distinct !{!8031, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h488fc88f54e7c5efE"}
!8032 = distinct !{!8032, !8031, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h488fc88f54e7c5efE: argument 0"}
!8033 = distinct !{!8033, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd700a9f7468867e8E"}
!8034 = distinct !{!8034, !8033, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd700a9f7468867e8E: argument 1"}
!8035 = distinct !{!8035, !8033, !"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd700a9f7468867e8E: argument 0"}
!8036 = distinct !{!8036, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hac7ebb464659678eE"}
!8037 = distinct !{!8037, !8036, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17hac7ebb464659678eE: argument 0"}
!8038 = distinct !{!8038, !"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5a39530b27660b6E"}
!8039 = distinct !{!8039, !8038, !"_ZN96_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha5a39530b27660b6E: argument 1"}
!8040 = !{!8029}
!8041 = !{!8030}
!8042 = !{!8032}
!8043 = !{!8035, !8034}
!8044 = !{!8039, !8037}
!8045 = distinct !{!8045, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$5value28_$u7b$$u7b$closure$u7d$$u7d$17hcca159d914529ab6E"}
!8046 = distinct !{!8046, !8045, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$5value28_$u7b$$u7b$closure$u7d$$u7d$17hcca159d914529ab6E: argument 0"}
!8047 = distinct !{!8047, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E"}
!8048 = distinct !{!8048, !8047, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E: argument 0"}
!8049 = distinct !{!8049, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!8050 = distinct !{!8050, !8049, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!8051 = distinct !{!8051, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!8052 = distinct !{!8052, !8051, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!8053 = distinct !{!8053, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!8054 = distinct !{!8054, !8053, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!8055 = distinct !{!8055, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h397c536fac197649E"}
!8056 = distinct !{!8056, !8055, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h397c536fac197649E: argument 0"}
!8057 = distinct !{!8057, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45ee63af5231d275E"}
!8058 = distinct !{!8058, !8057, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45ee63af5231d275E: argument 1"}
!8059 = distinct !{!8059, !8057, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h45ee63af5231d275E: argument 0"}
!8060 = distinct !{!8060, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E"}
!8061 = distinct !{!8061, !8060, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E: argument 0"}
!8062 = distinct !{!8062, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h31ac7c55dca4d3d0E"}
!8063 = distinct !{!8063, !8062, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h31ac7c55dca4d3d0E: argument 0"}
!8064 = distinct !{!8064, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!8065 = distinct !{!8065, !8064, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!8066 = distinct !{!8066, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E"}
!8067 = distinct !{!8067, !8066, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 0"}
!8068 = distinct !{!8068, !8066, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 2"}
!8069 = distinct !{!8069, !8066, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 1"}
!8070 = distinct !{!8070, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!8071 = distinct !{!8071, !8070, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!8072 = !{!8048, !8046}
!8073 = !{!8046}
!8074 = !{!8050, !8046}
!8075 = !{!8052, !8046}
!8076 = !{!8054}
!8077 = !{!8061, !8059, !8058, !8056}
!8078 = !{!8063}
!8079 = !{!8065}
!8080 = !{!8067}
!8081 = !{!8069, !8068}
!8082 = !{!8069}
!8083 = !{!8071}
!8084 = distinct !{!8084, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$8no_value28_$u7b$$u7b$closure$u7d$$u7d$17hc077be1e904507f3E"}
!8085 = distinct !{!8085, !8084, !"_ZN18nickel_lang_parser3ast7builder53Field$LT$nickel_lang_parser..ast..builder..Record$GT$8no_value28_$u7b$$u7b$closure$u7d$$u7d$17hc077be1e904507f3E: argument 0"}
!8086 = distinct !{!8086, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E"}
!8087 = distinct !{!8087, !8086, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E: argument 0"}
!8088 = distinct !{!8088, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!8089 = distinct !{!8089, !8088, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!8090 = distinct !{!8090, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!8091 = distinct !{!8091, !8090, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!8092 = distinct !{!8092, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!8093 = distinct !{!8093, !8092, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!8094 = distinct !{!8094, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h180ea1ba3d7939c3E"}
!8095 = distinct !{!8095, !8094, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h180ea1ba3d7939c3E: argument 0"}
!8096 = distinct !{!8096, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb06e6895e0f087c6E"}
!8097 = distinct !{!8097, !8096, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb06e6895e0f087c6E: argument 1"}
!8098 = distinct !{!8098, !8096, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb06e6895e0f087c6E: argument 0"}
!8099 = distinct !{!8099, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E"}
!8100 = distinct !{!8100, !8099, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcaa466e795f75fc8E: argument 0"}
!8101 = distinct !{!8101, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hd440df29fe7b8feeE"}
!8102 = distinct !{!8102, !8101, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hd440df29fe7b8feeE: argument 0"}
!8103 = distinct !{!8103, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE"}
!8104 = distinct !{!8104, !8103, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haad88b386a81e77aE: argument 0"}
!8105 = distinct !{!8105, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E"}
!8106 = distinct !{!8106, !8105, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 0"}
!8107 = distinct !{!8107, !8105, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 2"}
!8108 = distinct !{!8108, !8105, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf8120c44972fcff2E: argument 1"}
!8109 = distinct !{!8109, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE"}
!8110 = distinct !{!8110, !8109, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4ffce877b03f24ccE: argument 0"}
!8111 = !{!8087, !8085}
!8112 = !{!8085}
!8113 = !{!8089, !8085}
!8114 = !{!8091, !8085}
!8115 = !{!8093}
!8116 = !{!8100, !8098, !8097, !8095}
!8117 = !{!8102}
!8118 = !{!8104}
!8119 = !{!8106}
!8120 = !{!8108, !8107}
!8121 = !{!8108}
!8122 = !{!8110}
!8123 = distinct !{!8123, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E"}
!8124 = distinct !{!8124, !8123, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 0"}
!8125 = distinct !{!8125, !8123, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 2"}
!8126 = distinct !{!8126, !8123, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbe80775f8ca3d4a9E: argument 1"}
!8127 = !{!8124}
!8128 = !{!8126, !8125}
!8129 = !{!8126}
!8130 = distinct !{!8130, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h315cbe21540b2eefE"}
!8131 = distinct !{!8131, !8130, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17h315cbe21540b2eefE: argument 0"}
!8132 = distinct !{!8132, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h882288142bbea503E"}
!8133 = distinct !{!8133, !8132, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h882288142bbea503E: argument 0"}
!8134 = distinct !{!8134, !8132, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h882288142bbea503E: argument 1"}
!8135 = distinct !{!8135, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7a22468c773290e3E"}
!8136 = distinct !{!8136, !8135, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7a22468c773290e3E: argument 0"}
!8137 = distinct !{!8137, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E"}
!8138 = distinct !{!8138, !8137, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8e7048893ebb7577E: argument 1"}
!8139 = distinct !{!8139, !"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h7895e89d7611cb79E"}
!8140 = distinct !{!8140, !8139, !"_ZN4core3ptr101drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..FieldDef$GT$$GT$17h7895e89d7611cb79E: argument 0"}
!8141 = distinct !{!8141, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ad7df26b30b16cfE"}
!8142 = distinct !{!8142, !8141, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ad7df26b30b16cfE: argument 0"}
!8143 = distinct !{!8143, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hc139b64eb4fdf52eE"}
!8144 = distinct !{!8144, !8143, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter17hc139b64eb4fdf52eE: argument 0"}
!8145 = distinct !{!8145, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h47fd03eeff14b212E"}
!8146 = distinct !{!8146, !8145, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h47fd03eeff14b212E: argument 0"}
!8147 = distinct !{!8147, !8145, !"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h47fd03eeff14b212E: argument 1"}
!8148 = distinct !{!8148, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h516bde64ff3e3a7eE"}
!8149 = distinct !{!8149, !8148, !"_ZN7bumpalo13Bump$LT$_$GT$21alloc_slice_fill_iter28_$u7b$$u7b$closure$u7d$$u7d$17h516bde64ff3e3a7eE: argument 0"}
!8150 = distinct !{!8150, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0b5edd63d9a10f23E"}
!8151 = distinct !{!8151, !8150, !"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0b5edd63d9a10f23E: argument 1"}
!8152 = distinct !{!8152, !"_ZN4core3ptr100drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17h13aa62823818a1b6E"}
!8153 = distinct !{!8153, !8152, !"_ZN4core3ptr100drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..record..Include$GT$$GT$17h13aa62823818a1b6E: argument 0"}
!8154 = distinct !{!8154, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae95e69021fb2a3cE"}
!8155 = distinct !{!8155, !8154, !"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hae95e69021fb2a3cE: argument 0"}
!8156 = distinct !{!8156, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE"}
!8157 = distinct !{!8157, !8156, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE: argument 1"}
!8158 = distinct !{!8158, !8156, !"_ZN18nickel_lang_parser3ast5alloc8AstAlloc6record17h666f17bedf66e23cE: argument 0"}
!8159 = distinct !{!8159, !"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hce79d5b72cdc0090E"}
!8160 = distinct !{!8160, !8159, !"_ZN7bumpalo13Bump$LT$_$GT$10alloc_with17hce79d5b72cdc0090E: argument 0"}
!8161 = !{!8131}
!8162 = !{!8133}
!8163 = !{!8134}
!8164 = !{!8138, !8136}
!8165 = !{!8142, !8140}
!8166 = !{!8144}
!8167 = !{!8146}
!8168 = !{!8147}
!8169 = !{!8151, !8149}
!8170 = !{!8155, !8153}
!8171 = !{!8160, !8158, !8157}
!8172 = !{!8160}
!8173 = !{!8160, !8158}
!8174 = distinct !{!8174, !"_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E"}
!8175 = distinct !{!8175, !8174, !"_ZN18nickel_lang_parser10identifier5Ident3new17hbb8a7e8f9e84cc02E: argument 0"}
!8176 = !{!8175}
!8177 = distinct !{!8177, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E"}
!8178 = distinct !{!8178, !8177, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 0"}
!8179 = distinct !{!8179, !8177, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 1"}
!8180 = distinct !{!8180, !8177, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 3"}
!8181 = distinct !{!8181, !8177, !"_ZN18nickel_lang_parser3ast7builder6Record21include_with_metadata17h1f67c029bf87f311E: argument 2"}
end_hunk_1
