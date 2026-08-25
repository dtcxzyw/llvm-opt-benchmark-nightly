Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h8eba602fdc113c94E":bb.a
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr99drop_in_place$LT$actix_web..service..ServiceFactoryWrapper$LT$actix_web..resource..Resource$GT$$GT$17hdd08192f1097cfd8E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !672, !alias.scope !6713, !noundef !4
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$actix_web..resource..Resource$GT$$GT$17h4024e1234eb64aabE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr50drop_in_place$LT$actix_web..resource..Resource$GT$17hb71b6cf13831b749E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(168) %0)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$actix_web..resource..Resource$GT$$GT$17h4024e1234eb64aabE.exit"

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$actix_web..resource..Resource$GT$$GT$17h4024e1234eb64aabE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$C$$RF$alloc..alloc..Global$GT$$GT$17hb563c56d77b2627eE"(ptr %.0.val) unnamed_addr #7 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ec7d741ecf7bf7dE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ec7d741ecf7bf7dE.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #46
  br label %"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ec7d741ecf7bf7dE.exit"

"_ZN70_$LT$alloc..rc..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7ec7d741ecf7bf7dE.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr99drop_in_place$LT$core..cell..RefCell$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$$GT$17h244099ee51bf271bE"(ptr %.8.val) unnamed_addr #7 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = icmp eq ptr %.8.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %"_ZN4core3ptr102drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$$GT$17h2fcf30cd2aa8a9efE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr102drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$$GT$17h2fcf30cd2aa8a9efE.exit"

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 248, i64 noundef 8) #46
  br label %"_ZN4core3ptr102drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$$GT$17h2fcf30cd2aa8a9efE.exit"

"_ZN4core3ptr102drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$$GT$17h2fcf30cd2aa8a9efE.exit": ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17h2eae8ce9226a66dcE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 32, 62) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.split.i:
  %.sroa.10.32.extract.trunc = trunc nuw nsw i32 %3 to i8 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.lr.ph.split.i
  %i.a = phi i64 [ 0, %.lr.ph.split.i ], [ %i.n, %bb.c ] ; 5 uses
  %i.b = sub nuw i64 %2, %i.a                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.d = icmp ult i64 %i.b, 16
  br i1 %i.d, label %.preheader.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %2, %i.a
  br i1 %.not.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.sroa.01.05.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.01.05.i.i
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !6716, !noalias !6719, !noundef !4
  %i.g = icmp eq i8 %i.f, %.sroa.10.32.extract.trunc
  br i1 %i.g, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = add nuw i64 %.sroa.01.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i: ; preds = %bb.a
  %i.i = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.sroa.10.32.extract.trunc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.b), !noalias !6719 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i: ; preds = %.lr.ph.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %.sroa.4.0.i27.i = phi i64 [ %i.k, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.m = add i64 %i.a, 1
  %i.n = add i64 %i.m, %.sroa.4.0.i27.i           ; 4 uses
  %.not21.i = icmp ugt i64 %i.n, %2
  %i.o = add i64 %.sroa.4.0.i27.i, %i.a           ; 3 uses
  %or.cond.i.not = icmp ult i64 %i.o, %2
  br i1 %or.cond.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  br i1 %.not21.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i, label %bb.a

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %lhsc = load i8, ptr %i.p, align 1
  %i.q = icmp eq i8 %lhsc, %.sroa.10.32.extract.trunc
  br i1 %i.q, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit", label %bb.c

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit": ; preds = %bb.d
  %i.r = sub nuw i64 %2, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  store ptr %1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.63.0..sroa_idx, align 8
  br label %bb.e

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i: ; preds = %bb.c, %.preheader.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i, %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit", %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
  %i.c = phi i64 [ %i.ar, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !6723, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !6723, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !6723, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit16.i.i.i.i.i", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit14.i.i.i.i.i"
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !6723, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit12.i.i.i.i.i"
  %i.an = phi ptr [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit14.i.i.i.i.i" ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit16.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit12.i.i.i.i.i" ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit14.i.i.i.i.i" ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit16.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7d3d7991fa52e20cE.exit12.i.i.i.i.i" ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.as, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit"

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i"

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !6737, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i"

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !6737, !noundef !4
  %i.bg = lshr i8 %i.bf, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i": ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i", label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit"

"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i": ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i", %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit": ; preds = %bb.e, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i", %bb.d, %bb.a
  %.sroa.4.021 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i" ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.019 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i" ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i" ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.021, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit", %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit" ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !6738, !noundef !4 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i": ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.021, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !6738, !noundef !4 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i", label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i"
  %i.bv = icmp ne ptr %.sroa.4.021, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !6738, !noundef !4 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i", label %bb.l

bb.k:                                             ; preds = %bb.l, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i"
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i" ]
  %.sroa.04.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit17.i.i.i.i.i" ]
  %i.cc = shl nuw nsw i32 %.sroa.04.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i"
  %i.cg = icmp ne ptr %.sroa.4.021, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !6738, !noundef !4
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i"
  %i.cp = phi ptr [ %i.ch, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i" ], [ %i.bw, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i" ]
  %.sroa.04.1.i.i.i.i.i = phi i32 [ %i.co, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit21.i.i.i.i.i" ], [ %i.bz, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h5471f425da7bd91bE.exit19.i.i.i.i.i" ]
  %i.cq = shl nuw nsw i32 %.sroa.04.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i, 127
  br i1 %i.cw, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6"

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6"

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !6752, !noundef !4
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6"

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !6752, !noundef !4
  %i.dk = lshr i8 %i.dj, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6": ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6", %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.021, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h71531d1d80e7d51fE.exit.i.i.i6", %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.021 to i64
  %i.dp = sub i64 %.sroa.14.019, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i", %bb.t, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit", %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h76eed7f633dcab6aE.exit" ], [ %.sroa.0.0, %bb.t ], [ 0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7295df65412a1bb7E.exit.i.i" ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN9actix_web4rmap11ResourceMap3add17h2dd1882f0dcb8eccE:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !12476, !noalias !12477, !noundef !4 ; 4 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.aq, align 16, !noalias !12481
  %i.au = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ay = ptrtoint ptr %i.aq to i64
  br label %bb.m

bb.l:                                             ; preds = %.loopexit.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr365drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc43af60c298cbddbE"(i64 %.sroa.015.030.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.h) #53
          to label %.body.i.i unwind label %bb.p, !noalias !12484

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.015.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.o ]
  %.sroa.016.029.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.016.1.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.6.028.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.817.027.i.i.i.i = phi i16 [ %i.av, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.o ] ; 2 uses
  %.sroa.1018.026.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i ], [ %i.bl, %bb.o ]
  %.not13.i.i.i.i.i = icmp eq i16 %.sroa.817.027.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.ba = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.028.i.i.i.i, %bb.m ] ; 2 uses
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.016.029.i.i.i.i, %bb.m ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 16, !noalias !12485
  %i.bc = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -512 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bc to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.m
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.028.i.i.i.i, %bb.m ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i = phi ptr [ %.sroa.016.029.i.i.i.i, %bb.m ], [ %i.bd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.817.027.i.i.i.i, %bb.m ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bf = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = and i16 %i.bf, %.lcssa.i.i.i.i.i
  %i.bj = sub nsw i64 0, %i.bh
  %i.bk = getelementptr inbounds [32 x i8], ptr %.sroa.016.1.i.i.i.i, i64 %i.bj ; 3 uses
  %i.bl = add i64 %.sroa.1018.026.i.i.i.i, -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12480
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !12488)
  call void @llvm.experimental.noalias.scope.decl(metadata !12491)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293)
          to label %.noexc.i.i.i.i unwind label %bb.l, !noalias !12480

.noexc.i.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !12491, !noalias !12493, !nonnull !4, !noundef !4 ; 3 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !12493, !noundef !4 ; 2 uses
  %i.bo = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add i64 %.val.i.i.i.i.i.i.i, 1          ; 2 uses
  store i64 %i.bp, ptr %.val.i.i.i.i.i, align 8, !noalias !12493
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %bb.o, !prof !223

bb.n:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i.i
  store ptr %.val.i.i.i.i.i, ptr %i.ax, align 8, !alias.scope !12488, !noalias !12494
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = sub i64 %i.ay, %i.br
  %i.bt = ashr exact i64 %i.bs, 5                 ; 2 uses
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !12480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12480
  %i.bx = add nsw i64 %i.bt, 1
  %i.by = icmp eq i64 %i.bl, 0
  br i1 %i.by, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit", label %bb.m

bb.p:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12480
  unreachable

.body.i.i:                                        ; preds = %bb.l
  invoke fastcc void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa7049d2bc167cd4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h)
          to label %bb.ap unwind label %bb.q, !noalias !12464, !inline_history !12495

bb.q:                                             ; preds = %.body.i.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12464
  unreachable

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @"_ZN74_$LT$actix_router..resource..ResourceDef$u20$as$u20$core..clone..Clone$GT$5clone17h65ef958b0b70786eE"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1)
  %i.cb = invoke noundef i64 @_ZN8foldhash4seed19gen_per_hasher_seed17h40665e60abfadd55E()
          to label %.noexc34 unwind label %bb.at

.loopexit:                                        ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.am, %bb.i, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit": ; preds = %bb.o, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12464
  call void @llvm.experimental.noalias.scope.decl(metadata !12496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12498
  call void @llvm.experimental.noalias.scope.decl(metadata !12500)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %.val3.i.i.i.i.i40 = load <16 x i8>, ptr %.sroa.0.0.i.i, align 16, !noalias !12503 ; 2 uses
  %i.cc = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %i.cc, label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit"
  %i.cd = icmp slt i64 %.sroa.5.0.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.cd)
  %i.ce = shl i64 %.sroa.5.0.i.i, 5               ; 2 uses
  %i.cf = add i64 %i.ce, 32                       ; 2 uses
  %i.cg = add nsw i64 %.sroa.5.0.i.i, 17
  %i.ch = add i64 %i.cg, %i.cf                    ; 3 uses
  %i.ci = icmp uge i64 %i.ch, %i.cf
  call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp ult i64 %i.ch, 9223372036854775793
  call void @llvm.assume(i1 %i.cj)
  %i.ck = sub nuw nsw i64 -32, %i.ce
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 %i.ck
  br label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"

"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i": ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit"
  %.val3.i.i.i.i.i40113 = phi <16 x i8> [ %.val3.i.i.i.i.i40, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i40, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ splat (i8 -1), %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.084.0112 = phi ptr [ %.sroa.0.0.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ @77, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ] ; 3 uses
  %.sroa.586.0111 = phi i64 [ %.sroa.5.0.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.790.0110 = phi i64 [ %i.as, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %i.as, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.ch, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.cl, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.084.0112, i64 16
  %i.co = icmp sgt <16 x i8> %.val3.i.i.i.i.i40113, splat (i8 -1)
  %i.cp = getelementptr i8, ptr %.sroa.084.0112, i64 %.sroa.586.0111
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.4.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i41, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.6.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.084.0112, ptr %.sroa.6.0..sroa_idx.i.i42, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.cn, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.cq, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <16 x i1> %i.co, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.790.0110, ptr %.sroa.101.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !12496, !noalias !12514, !noundef !4
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = add i64 %.sroa.790.0110, 1
  %i.cv = lshr i64 %i.cu, 1
  %.sroa.0.0.i = select i1 %i.ct, i64 %.sroa.790.0110, i64 %i.cv ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !12515, !noalias !12518, !noundef !4
  %i.cy = icmp ugt i64 %.sroa.0.0.i, %i.cx
  br i1 %i.cy, label %bb.s, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i", !prof !223

bb.s:                                             ; preds = %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.da = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17he30a5e2ac34175ceE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cm, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i" unwind label %bb.ae, !noalias !12514 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i": ; preds = %bb.s, %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !12498
  call void @llvm.experimental.noalias.scope.decl(metadata !12524)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i)
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !12527 ; 2 uses
  %i.dc = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.dc, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i43

.lr.ph.i.i.i.i43:                                 ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i"
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.promoted10.i.i.i.i = load i16, ptr %i.de, align 8, !alias.scope !12531, !noalias !12536
  %.promoted11.i.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !12524, !noalias !12539 ; 2 uses
  %.promoted14.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !12524, !noalias !12539 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i43
  %.lcssa312.i.i.i = phi ptr [ %.promoted11.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %.promoted7.i.i.i.i.i.i, %bb.y ]
  %.lcssa27.i.i.i = phi ptr [ %.promoted14.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %.promoted11.i.i.i.i.i.i, %bb.y ]
  %.lcssa16.i.i.i.i = phi ptr [ %.promoted14.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %.lcssa15.i.i.i.i, %bb.y ] ; 2 uses
  %.lcssa913.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %.lcssa912.i.i.i.i, %bb.y ] ; 2 uses
  %i.dh = phi i16 [ %.promoted10.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %i.ds, %bb.y ] ; 2 uses
  %i.di = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %i.dv, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12540)
  call void @llvm.experimental.noalias.scope.decl(metadata !12541)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i
  %i.dj = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa16.i.i.i.i, %bb.t ] ; 2 uses
  %i.dk = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa913.i.i.i.i, %bb.t ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.dj, align 16, !noalias !12542
  %i.dl = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -512 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.dl to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"

bb.u:                                             ; preds = %bb.x, %bb.v
  %i.do = landingpad { ptr, i32 }
          cleanup
  store ptr %.promoted11.i.i.i.i.i.i, ptr %i.df, align 8, !noalias !12527
  store ptr %.promoted7.i.i.i.i.i.i, ptr %i.dd, align 8, !noalias !12527
  store i16 %i.ds, ptr %i.de, align 8, !alias.scope !12531, !noalias !12536
  store i64 %i.dv, ptr %i.db, align 8, !alias.scope !12543, !noalias !12536
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$$GT$17h524d19f9f1d3216dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #53
          to label %bb.ap unwind label %bb.z, !noalias !12544

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.t
  %.promoted7.i.i.i.i.i.i = phi ptr [ %.lcssa312.i.i.i, %bb.t ], [ %i.dm, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.promoted11.i.i.i.i.i.i = phi ptr [ %.lcssa27.i.i.i, %bb.t ], [ %i.dn, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.lcssa15.i.i.i.i = phi ptr [ %.lcssa16.i.i.i.i, %bb.t ], [ %i.dn, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa912.i.i.i.i = phi ptr [ %.lcssa913.i.i.i.i, %bb.t ], [ %i.dm, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.dh, %bb.t ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.dp = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.dq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = and i16 %i.dp, %.lcssa.i.i.i.i.i.i      ; 4 uses
  %i.dt = sub nsw i64 0, %i.dr
  %i.du = getelementptr inbounds [32 x i8], ptr %.lcssa912.i.i.i.i, i64 %i.dt ; 2 uses
  %i.dv = add i64 %i.di, -1                       ; 6 uses
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -32
  %.sroa.03.0.copyload4.i.i.i.i = load i64, ptr %i.dw, align 8, !noalias !12545 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload4.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds i8, ptr %i.du, i64 -24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx5.i.i.i.i, i64 24, i1 false), !noalias !12546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12547
  store i64 %.sroa.03.0.copyload4.i.i.i.i, ptr %i.d, align 8, !noalias !12547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.i.i.i, i64 24, i1 false), !noalias !12547
  call void @llvm.experimental.noalias.scope.decl(metadata !12548)
  call void @llvm.experimental.noalias.scope.decl(metadata !12551)
  %i.dx = load ptr, ptr %i.dg, align 8, !alias.scope !12554, !noalias !12547, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12555
  %i.dy = invoke fastcc noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd63be122fd9fb5b0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull %i.dx)
          to label %.noexc.i.i.i.i44 unwind label %bb.u, !noalias !12546 ; 4 uses

.noexc.i.i.i.i44:                                 ; preds = %bb.v
  store ptr %i.dy, ptr %i.c, align 8, !noalias !12555
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i.i44
  %i.ea = load i64, ptr %i.dy, align 8, !noalias !12556, !noundef !4
  %i.eb = add i64 %i.ea, -1                       ; 2 uses
  store i64 %i.eb, ptr %i.dy, align 8, !noalias !12556
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %bb.y unwind label %bb.u, !noalias !12546

bb.y:                                             ; preds = %bb.x, %bb.w, %.noexc.i.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12547
  %i.ed = icmp eq i64 %i.dv, 0
  br i1 %i.ed, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %bb.t

bb.z:                                             ; preds = %bb.u
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12546
  unreachable

_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i: ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"
  store ptr %.promoted11.i.i.i.i.i.i, ptr %i.df, align 8, !noalias !12527
  store ptr %.promoted7.i.i.i.i.i.i, ptr %i.dd, align 8, !noalias !12527
  store i16 %i.ds, ptr %i.de, align 8, !alias.scope !12531, !noalias !12536
  store i64 %i.dv, ptr %i.db, align 8, !alias.scope !12543, !noalias !12536
  call void @llvm.experimental.noalias.scope.decl(metadata !12563)
  call void @llvm.experimental.noalias.scope.decl(metadata !12566)
  %i.ef = icmp eq i64 %i.dv, 0
  br i1 %i.ef, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i"
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %.promoted11.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ] ; 2 uses
  %i.eg = phi i64 [ %i.et, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %i.dv, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ]
  %.lcssa69.i.i.i.i.i.i = phi ptr [ %.lcssa68.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %.promoted7.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ] ; 2 uses
  %i.eh = phi i16 [ %i.eq, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %i.ds, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ] ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ei = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ej = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ei, align 16, !noalias !12569
  %i.ek = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -512 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ek to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.eh, %.preheader.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.en = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.eo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ep = zext nneg i16 %i.eo to i64
  %i.eq = and i16 %i.en, %.lcssa.i.i.i.i.i.i.i
  %i.er = sub nsw i64 0, %i.ep
  %i.es = getelementptr inbounds [32 x i8], ptr %.lcssa68.i.i.i.i.i.i, i64 %i.er ; 3 uses
  %i.et = add i64 %i.eg, -1                       ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !12574)
  call void @llvm.experimental.noalias.scope.decl(metadata !12577)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !12580, !noalias !12581 ; 2 uses
  %i.ev = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.ev, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i"
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 -24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.ew, align 8, !alias.scope !12580, !noalias !12581, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12582, !inline_history !3392
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i.i.i": ; preds = %bb.aa, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i"
  %i.ex = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12583)
  call void @llvm.experimental.noalias.scope.decl(metadata !12586)
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !12589, !noalias !12581, !nonnull !4, !noundef !4 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !12590, !noundef !4
  %i.fa = add i64 %i.ez, -1                       ; 2 uses
  store i64 %i.fa, ptr %i.ey, align 8, !noalias !12590
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.ab, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i"

bb.ab:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i.i.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ex)
          to label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" unwind label %.loopexit

"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i": ; preds = %bb.ab, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i.i.i.i.i.i.i"
  %.old5.i.i.i.i.i.i = icmp eq i64 %i.et, 0
  br i1 %.old5.i.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %.preheader.i.i.i.i.i.i

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i": ; preds = %bb.y, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i"
  %i.fc = load i64, ptr %i.e, align 8, !range !91, !alias.scope !12591, !noalias !12527, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i.i.i.i45, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i"
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !12591, !noalias !12527, !noundef !4 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !12591, !noalias !12527, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) %i.fc) #46, !noalias !12592
  br label %bb.ag

bb.ae:                                            ; preds = %bb.s
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$$GT$17h524d19f9f1d3216dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %bb.ap unwind label %bb.af, !noalias !12514

bb.af:                                            ; preds = %bb.ae
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12514
  unreachable

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12498
  %i.fk = load i64, ptr %i.p, align 8, !range !91, !noundef !4 ; 2 uses
  %.not30 = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %.not30, label %bb.am, label %bb.ah, !prof !223

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !12593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !12596
  %i.fl = load i64, ptr %i.r, align 8, !alias.scope !12593, !noalias !12598, !noundef !4 ; 3 uses
  %i.fm = icmp eq i64 %i.fl, %i.fk
  br i1 %i.fm, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h388258ae8d0fc800E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @702)
          to label %bb.an unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load i64, ptr %2, align 8, !noalias !12599, !noundef !4
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %2, align 8, !noalias !12599
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.ak, label %.thread96

bb.ak:                                            ; preds = %bb.aj
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %.thread96 unwind label %bb.al, !noalias !12593, !inline_history !11137

bb.al:                                            ; preds = %bb.ak
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12593
  unreachable

bb.am:                                            ; preds = %bb.ag
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @701) #52
          to label %bb.e unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.ai, %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !12593, !noalias !12598, !nonnull !4, !noundef !4
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fl
  store ptr %2, ptr %i.fu, align 8, !noalias !12593
  %i.fv = add i64 %i.fl, 1
  store i64 %i.fv, ptr %i.r, align 8, !alias.scope !12593, !noalias !12598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$GT$17h1a2770cc52afbde8E.exit69", %bb.an
  ret void

bb.ap:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i.i, %bb.ae, %bb.u
  %eh.lpad-body39.ph = phi { ptr, i32 } [ %i.do, %bb.u ], [ %i.az, %.body.i.i ], [ %i.fi, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fw = load i64, ptr %2, align 8, !noalias !12604, !noundef !4
  %i.fx = add i64 %i.fw, -1                       ; 2 uses
  store i64 %i.fx, ptr %2, align 8, !noalias !12604
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %bb.aq, label %.thread96

bb.aq:                                            ; preds = %bb.ap
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.thread96 unwind label %bb.ar, !inline_history !11137

bb.ar:                                            ; preds = %bb.bx, %bb.bv, %bb.aq, %bb.at
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

.noexc34:                                         ; preds = %bb.r
  %i.ga = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8foldhash4seed6global19GLOBAL_SEED_STORAGE17h12cb7ed91cc53f21E, i64 32) acquire, align 8
  %.not.i = icmp eq i8 %i.ga, 2
  br i1 %.not.i, label %"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit", label %bb.as, !prof !90

bb.as:                                            ; preds = %.noexc34
  invoke void @_ZN8foldhash4seed6global10GlobalSeed9init_slow17heea34a4b01fb9b4fE()
          to label %"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit" unwind label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.r
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..ResourceDef$GT$17hfbd9da8662489d81E"(ptr noalias noundef align 8 dereferenceable(152) %i.l) #53
          to label %.thread96 unwind label %bb.ar

"_ZN70_$LT$foldhash..fast..RandomState$u20$as$u20$core..default..Default$GT$7default17h2c8694b974f1cf30E.exit": ; preds = %.noexc34, %bb.as
  %i.gc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.gc, ptr noundef nonnull align 8 dereferenceable(152) %i.l, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 1, ptr %i.i, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.gd, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  store i64 -9223372036854775808, ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @78, i64 32, i1 false)
  %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  store i64 %i.cb, ptr %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12609
  %i.ge = tail call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12609 ; 14 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.au, label %bb.ax, !prof !211

end_hunk_1
