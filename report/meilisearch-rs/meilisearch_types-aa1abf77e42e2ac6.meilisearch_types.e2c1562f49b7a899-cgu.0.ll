Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN17meilisearch_types7locales171_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$u20$for$u20$milli..localized_attributes_rules..LocalizedAttributesRule$GT$4from17h4e3f7dd61e20bf46E":bb.a
  %.sroa.413.0.copyload = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8 ; 4 uses
  %i.b = icmp sgt i64 %.sroa.514.0.copyload, -1
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.514.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcf48efbd388278aeE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !80, !noalias !8589, !noundef !21
  %i.e = tail call noundef range(i8 0, 70) i8 @"_ZN17meilisearch_types7locales138_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..Locale$GT$$u20$for$u20$charabia..detection..script_language..Language$GT$4from17hd9a534fa3156798cE"(i8 noundef range(i8 0, -117) %i.d)
  %i.f = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i8 %i.e, ptr %i.c, align 1, !noalias !8589
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.f, %.sroa.514.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcf48efbd388278aeE.exit, label %.lr.ph.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hcf48efbd388278aeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.012.0.copyload, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.413.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.514.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN17meilisearch_types7network18RemoteAvailability12is_available17h98744a22ec2d02f4E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.8 = alloca ptr, align 8                  ; 8 uses
  %.sroa.11 = alloca ptr, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8607
  %i.i = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5seize3raw3tls9thread_id6THREAD29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hb0ffe1e3a992a583E") ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !8608
  %i.j = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !8609
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"

bb.c:                                             ; preds = %bb.a
  call void @_ZN5seize3raw3tls9thread_id6Thread9init_slow17h7da54b82a5c2c906E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.i), !noalias !8609
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i": ; preds = %bb.c, %bb.b
  %.sroa.08.0.copyload9.i = load i64, ptr %i.f, align 8, !noalias !8607 ; 3 uses
  %.sroa.3.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload11.i = load i64, ptr %.sroa.3.0..sroa_idx10.i, align 8, !noalias !8607 ; 3 uses
  %.sroa.412.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.412.0.copyload14.i = load i64, ptr %.sroa.412.0..sroa_idx13.i, align 8, !noalias !8607 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8607
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.l = icmp ult i64 %.sroa.412.0.copyload14.i, 59
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.412.0.copyload14.i ; 2 uses
  %i.n = load atomic ptr, ptr %i.m acquire, align 8, !noalias !8610 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8610
  store i64 %.sroa.08.0.copyload9.i, ptr %i.e, align 8, !noalias !8607
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.copyload11.i, ptr %.sroa.4.0..sroa_idx4.i, align 8, !noalias !8607
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.412.0.copyload14.i, ptr %.sroa.5.0..sroa_idx6.i, align 8, !noalias !8607
  %i.p = call noundef ptr @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$10initialize17h021f31fe11d8afebE"(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e), !noalias !8610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8610
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"
  %.sroa.01.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.n, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [256 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.3.0.copyload11.i ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load atomic i8, ptr %i.r monotonic, align 1, !noalias !8610
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  call void @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$5write17h925250c03b873f28E"(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 128 %i.q), !noalias !8610
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"

"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i": ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !8607, !noundef !21 ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !noalias !8607
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.h, label %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit

bb.h:                                             ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"
  %i.y = load atomic i8, ptr @_ZN5seize3raw10membarrier5linux8STRATEGY17hb6fd5acc0a73eed9E monotonic, align 1, !noalias !8607
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %.split2.i, label %.split.i

.split2.i:                                        ; preds = %bb.h
  store atomic ptr null, ptr %i.q seq_cst, align 8, !noalias !8607
  br label %bb.i

.split.i:                                         ; preds = %bb.h
  store atomic ptr null, ptr %i.q monotonic, align 8, !noalias !8607
  br label %bb.i

bb.i:                                             ; preds = %.split.i, %.split2.i
  fence syncscope("singlethread") seq_cst
  br label %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit

_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit: ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i", %bb.i
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.08.0.copyload9.i, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.3.0.copyload11.i, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.412.0.copyload14.i, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %.sroa.715.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %0, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8611)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load atomic ptr, ptr %i.ab seq_cst, align 8, !noalias !8612 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit
  %i.ae = load i64, ptr %i.ac, align 8, !noalias !8612, !noundef !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !8612, !noundef !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %.val.i = load i64, ptr %i.ah, align 8, !noalias !8612, !noundef !21
  %i.ai = getelementptr i8, ptr %0, i64 1016
  %.val51.i = load i64, ptr %i.ai, align 8, !noalias !8612, !noundef !21
  %i.aj = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h12a0e2b1fd2f067aE(i64 %.val.i, i64 %.val51.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !8613 ; 2 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8612
  store i8 1, ptr %i.d, align 1, !noalias !8612
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.k

.critedge.i:                                      ; preds = %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit
  store ptr null, ptr %.sroa.8, align 8, !alias.scope !8611, !noalias !8614
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h19e238d7aeec1165E.exit"

bb.k:                                             ; preds = %bb.y, %bb.j
  %.sroa.15.1.i = phi ptr [ %i.ac, %bb.j ], [ %.sroa.3.0.copyload.i, %bb.y ] ; 3 uses
  %.sroa.12.1.i = phi i64 [ %i.ag, %bb.j ], [ %.sroa.2.0.copyload.i, %bb.y ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.ae, %bb.j ], [ %.sroa.025.0.copyload.i, %bb.y ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.15.1.i, i64 136 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.sroa.0.1.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i, %bb.k
  %.pn100.i = phi i64 [ %i.aj, %bb.k ], [ %.pn50.be.i, %.backedge.i ]
  %.sroa.035.082.i = phi i64 [ 0, %bb.k ], [ %.sroa.035.0.be.i, %.backedge.i ]
  %.sroa.026.083.i = and i64 %.pn100.i, %.sroa.0.1.i ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.026.083.i
  %i.at = load atomic i8, ptr %i.as acquire, align 1, !noalias !8612 ; 2 uses
  %i.au = icmp eq i8 %i.at, -128
  br i1 %i.au, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i8 %i.at, %i.al
  br i1 %.not.i, label %bb.o, label %.backedge.i

bb.n:                                             ; preds = %bb.l
  store ptr null, ptr %.sroa.8, align 8, !alias.scope !8611, !noalias !8614
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.026.083.i
  %i.aw = load atomic ptr, ptr %i.av seq_cst, align 8, !noalias !8612 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 7
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az  ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.backedge.i, label %bb.p

.backedge.i:                                      ; preds = %"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i", %bb.p, %bb.o, %bb.m
  %.sroa.035.0.be.i = add i64 %.sroa.035.082.i, 1 ; 3 uses
  %.pn50.be.i = add i64 %.sroa.035.0.be.i, %.sroa.026.083.i
  %i.bc = icmp ugt i64 %.sroa.035.0.be.i, %.sroa.12.1.i
  br i1 %i.bc, label %.loopexit.i, label %bb.l, !prof !69

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val53.i = load i64, ptr %i.bd, align 8, !noalias !8612, !noundef !21
  %.not.i.i.i = icmp eq i64 %2, %.val53.i
  br i1 %.not.i.i.i, label %"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i", label %.backedge.i

"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i": ; preds = %bb.p
  %i.be = getelementptr i8, ptr %i.ba, i64 8
  %.val52.i = load ptr, ptr %i.be, align 8, !noalias !8612, !nonnull !21, !noundef !21
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %1, ptr nonnull readonly align 1 %.val52.i, i64 %2), !alias.scope !8615, !noalias !8613
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bf, label %bb.q, label %.backedge.i

bb.q:                                             ; preds = %"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i"
  %i.bg = and i64 %i.ax, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.preheader.i, label %.loopexit.i, !prof !49

.preheader.i:                                     ; preds = %bb.q
  %i.bi = getelementptr i8, ptr %i.ba, i64 32
  %.val5587.i = load i32, ptr %i.bi, align 8, !range !81, !noalias !8612, !noundef !21 ; 2 uses
  %.not.i.i5988.i = icmp eq i32 %.val5587.i, 1000000000
  br i1 %.not.i.i5988.i, label %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.val5592.i = phi i32 [ %.val55.i, %bb.w ], [ %.val5587.i, %.preheader.i ]
  %.sroa.019.090.i = phi ptr [ %i.cb, %bb.w ], [ %i.aw, %.preheader.i ]
  %.sroa.821.089.i = phi ptr [ %i.cc, %bb.w ], [ %i.ba, %.preheader.i ] ; 6 uses
  %.val5491.in.i = getelementptr inbounds nuw i8, ptr %.sroa.821.089.i, i64 24
  %.val5491.i = load i64, ptr %.val5491.in.i, align 8, !noalias !8612 ; 2 uses
  %i.bj = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.bk = extractvalue { i64, i32 } %i.bj, 0      ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %.val5491.i
  br i1 %i.bl, label %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.i", label %.split.i5

.split.i5:                                        ; preds = %.noexc
  %i.bm = icmp sgt i64 %i.bk, %.val5491.i
  br i1 %i.bm, label %bb.r, label %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i"

"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.i": ; preds = %.noexc
  %i.bn = extractvalue { i64, i32 } %i.bj, 1      ; 2 uses
  %i.bo = icmp ult i32 %i.bn, 1000000000
  call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ugt i32 %i.bn, %.val5592.i
  br i1 %i.bp, label %bb.r, label %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i"

"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i": ; preds = %.preheader.i, %bb.w, %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.i", %.split.i5
  %.sroa.821.0.lcssa85.i = phi ptr [ %i.cc, %bb.w ], [ %.sroa.821.089.i, %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.i" ], [ %.sroa.821.089.i, %.split.i5 ], [ %i.ba, %.preheader.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.821.0.lcssa85.i, i64 24
  store ptr %.sroa.821.0.lcssa85.i, ptr %.sroa.8, align 8, !alias.scope !8611, !noalias !8614
  store ptr %i.bq, ptr %.sroa.11, align 8, !alias.scope !8611, !noalias !8614
  br label %bb.x

bb.r:                                             ; preds = %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.i", %.split.i5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8612
  invoke fastcc void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9update_at17h217cde2ed5062568E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %0, i64 noundef %.sroa.026.083.i, ptr noundef %.sroa.019.090.i, ptr noundef nonnull %.sroa.821.089.i, ptr noundef nonnull inttoptr (i64 2 to ptr), i64 %.sroa.0.1.i, ptr %.sroa.15.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %bb.r
  %i.br = load i64, ptr %i.c, align 8, !range !41, !noalias !8612, !noundef !21
  switch i64 %i.br, label %default.unreachable [
    i64 3, label %bb.s
    i64 0, label %.loopexit16
    i64 1, label %bb.v
    i64 2, label %bb.w
  ], !prof !82

bb.s:                                             ; preds = %.noexc6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.026.083.i
  store atomic i8 -1, ptr %i.bs release, align 1, !noalias !8612
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !8612, !noundef !21 ; 2 uses
  %i.bv = add i64 %i.bu, -1
  %i.bw = and i64 %i.bv, %.sroa.08.0.copyload9.i  ; 2 uses
  %.not48.i = icmp eq i64 %i.bu, 0
  br i1 %.not48.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val5491.in.i.le = getelementptr inbounds nuw i8, ptr %.sroa.821.089.i, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !8612, !nonnull !21, !noundef !21
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %i.by, i64 %i.bw
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 monotonic, align 8, !noalias !8612 ; 0 uses
  store ptr %.sroa.821.089.i, ptr %.sroa.8, align 8, !alias.scope !8611, !noalias !8614
  br label %.loopexit16

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bw, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1205) #57
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.u
  unreachable

.loopexit16:                                      ; preds = %.noexc6, %bb.t
  %.sink158.i.sroa.phi = phi ptr [ %.sroa.11, %bb.t ], [ %.sroa.8, %.noexc6 ]
  %.sink.i = phi ptr [ %.val5491.in.i.le, %bb.t ], [ null, %.noexc6 ]
  store ptr %.sink.i, ptr %.sink158.i.sroa.phi, align 8, !alias.scope !8611, !noalias !8614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8612
  br label %bb.x

default.unreachable:                              ; preds = %.noexc6
  unreachable

bb.v:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8612
  br label %.loopexit.i

bb.w:                                             ; preds = %.noexc6
  %i.cb = load ptr, ptr %i.am, align 8, !noalias !8612, !noundef !21
  %i.cc = load ptr, ptr %i.an, align 8, !noalias !8612, !noundef !21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8612
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %.val55.i = load i32, ptr %i.cd, align 8, !range !81, !noalias !8612, !noundef !21 ; 2 uses
  %.not.i.i59.i = icmp eq i32 %.val55.i, 1000000000
  br i1 %.not.i.i59.i, label %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i", label %.lr.ph.i

.loopexit.i:                                      ; preds = %.backedge.i, %bb.v, %bb.q
  %.sroa.018.1.i = phi i64 [ 1, %bb.v ], [ 1, %bb.q ], [ 0, %.backedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8612
  store i64 %.sroa.0.1.i, ptr %i.a, align 8, !noalias !8612
  store i64 %.sroa.12.1.i, ptr %.sroa.12.0..sroa_idx7.i, align 8, !noalias !8612
  store ptr %.sroa.15.1.i, ptr %.sroa.15.0..sroa_idx11.i, align 8, !noalias !8612
  invoke fastcc void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$13prepare_retry17hf24d45fefe5386b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %0, i64 noundef %.sroa.018.1.i, i64 %.sroa.026.083.i, ptr noalias noundef align 1 dereferenceable(1) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8612
  %i.ce = load i64, ptr %i.b, align 8, !range !32, !noalias !8612, !noundef !21
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.z, %.loopexit16, %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i", %bb.n
  %i.cg = phi i1 [ true, %bb.n ], [ true, %bb.z ], [ false, %"_ZN17meilisearch_types7network18RemoteAvailability12is_available28_$u7b$$u7b$closure$u7d$$u7d$17h1c067b23170c4908E.exit.thread.i" ], [ true, %.loopexit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8612
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h19e238d7aeec1165E.exit"

bb.y:                                             ; preds = %.noexc8
  %.sroa.025.0.copyload.i = load i64, ptr %i.ao, align 8, !noalias !8612
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !8612
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !8612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8612
  br label %bb.k

bb.z:                                             ; preds = %.noexc8
  store ptr null, ptr %.sroa.8, align 8, !alias.scope !8611, !noalias !8614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8612
  br label %bb.x

.loopexit:                                        ; preds = %.lr.ph.i, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit.i
  %lpad.loopexit18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.u
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit18, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E"(ptr nonnull %i.h, ptr %i.q) #55
          to label %bb.ad unwind label %bb.ac

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h19e238d7aeec1165E.exit": ; preds = %bb.x, %.critedge.i
  %.sroa.0.1 = phi i1 [ true, %.critedge.i ], [ %i.cg, %bb.x ]
  %i.ch = load i64, ptr %i.u, align 8, !noundef !21 ; 2 uses
  %i.ci = add i64 %i.ch, -1
  store i64 %i.ci, ptr %i.u, align 8
  %i.cj = icmp eq i64 %i.ch, 1
  br i1 %i.cj, label %bb.aa, label %"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit"

bb.aa:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h19e238d7aeec1165E.exit"
  %i.ck = atomicrmw xchg ptr %i.q, ptr inttoptr (i64 -1 to ptr) release, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit", label %bb.ab, !prof !49

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_ZN5seize3raw9collector9Collector8traverse17h11d0801e03f9b2caE(ptr noundef nonnull align 8 %i.h, ptr noundef %i.ck)
  br label %"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit"

"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit": ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h19e238d7aeec1165E.exit", %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret i1 %.sroa.0.1

bb.ac:                                            ; preds = %.loopexit.split-lp
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ad:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types7network18RemoteAvailability14mark_available17he8b487893125201dE(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.714 = alloca ptr, align 8                ; 3 uses
  %.sroa.9 = alloca ptr, align 8                  ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8633
  %i.i = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5seize3raw3tls9thread_id6THREAD29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hb0ffe1e3a992a583E") ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !8634
  %i.j = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !8635
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"

bb.c:                                             ; preds = %bb.a
  call void @_ZN5seize3raw3tls9thread_id6Thread9init_slow17h7da54b82a5c2c906E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.i), !noalias !8635
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i": ; preds = %bb.c, %bb.b
  %.sroa.08.0.copyload9.i = load i64, ptr %i.f, align 8, !noalias !8633 ; 3 uses
  %.sroa.3.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload11.i = load i64, ptr %.sroa.3.0..sroa_idx10.i, align 8, !noalias !8633 ; 3 uses
  %.sroa.412.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.412.0.copyload14.i = load i64, ptr %.sroa.412.0..sroa_idx13.i, align 8, !noalias !8633 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8633
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.l = icmp ult i64 %.sroa.412.0.copyload14.i, 59
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.412.0.copyload14.i ; 2 uses
  %i.n = load atomic ptr, ptr %i.m acquire, align 8, !noalias !8636 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8636
  store i64 %.sroa.08.0.copyload9.i, ptr %i.e, align 8, !noalias !8633
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.copyload11.i, ptr %.sroa.4.0..sroa_idx4.i, align 8, !noalias !8633
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.412.0.copyload14.i, ptr %.sroa.5.0..sroa_idx6.i, align 8, !noalias !8633
  %i.p = call noundef ptr @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$10initialize17h021f31fe11d8afebE"(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e), !noalias !8636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8636
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"
  %.sroa.01.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.n, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [256 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.3.0.copyload11.i ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load atomic i8, ptr %i.r monotonic, align 1, !noalias !8636
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  call void @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$5write17h925250c03b873f28E"(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 128 %i.q), !noalias !8636
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"

"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i": ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !8633, !noundef !21 ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !noalias !8633
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.h, label %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit

bb.h:                                             ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"
  %i.y = load atomic i8, ptr @_ZN5seize3raw10membarrier5linux8STRATEGY17hb6fd5acc0a73eed9E monotonic, align 1, !noalias !8633
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %.split2.i, label %.split.i

.split2.i:                                        ; preds = %bb.h
  store atomic ptr null, ptr %i.q seq_cst, align 8, !noalias !8633
  br label %bb.i

.split.i:                                         ; preds = %bb.h
  store atomic ptr null, ptr %i.q monotonic, align 8, !noalias !8633
  br label %bb.i

bb.i:                                             ; preds = %.split.i, %.split2.i
  fence syncscope("singlethread") seq_cst
  br label %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit

_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit: ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i", %bb.i
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.08.0.copyload9.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.3.0.copyload11.i, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.412.0.copyload14.i, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %.sroa.711.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.714)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !8637)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load atomic ptr, ptr %i.ab seq_cst, align 8, !noalias !8638 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h52a357610d73066dE.exit", label %bb.j

bb.j:                                             ; preds = %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit
  %i.ae = load i64, ptr %i.ac, align 8, !noalias !8638, !noundef !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !8638, !noundef !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %.val.i = load i64, ptr %i.ah, align 8, !noalias !8638, !noundef !21
  %i.ai = getelementptr i8, ptr %0, i64 1016
  %.val51.i = load i64, ptr %i.ai, align 8, !noalias !8638, !noundef !21
  %i.aj = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h12a0e2b1fd2f067aE(i64 %.val.i, i64 %.val51.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !8639 ; 2 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8638
  store i8 1, ptr %i.d, align 1, !noalias !8638
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.v, %bb.j
  %.sroa.15.1.i = phi ptr [ %i.ac, %bb.j ], [ %.sroa.3.0.copyload.i, %bb.v ] ; 3 uses
  %.sroa.12.1.i = phi i64 [ %i.ag, %bb.j ], [ %.sroa.2.0.copyload.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.ae, %bb.j ], [ %.sroa.025.0.copyload.i, %bb.v ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.15.1.i, i64 136 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.sroa.0.1.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i, %bb.k
  %.pn75.i = phi i64 [ %i.aj, %bb.k ], [ %.pn50.be.i, %.backedge.i ]
  %.sroa.035.073.i = phi i64 [ 0, %bb.k ], [ %.sroa.035.0.be.i, %.backedge.i ]
  %.sroa.026.074.i = and i64 %.pn75.i, %.sroa.0.1.i ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.026.074.i
  %i.at = load atomic i8, ptr %i.as acquire, align 1, !noalias !8638 ; 2 uses
  %i.au = icmp eq i8 %i.at, -128
  br i1 %i.au, label %.loopexit74, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i8 %i.at, %i.al
  br i1 %.not.i, label %bb.n, label %.backedge.i

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.sroa.026.074.i
  %i.aw = load atomic ptr, ptr %i.av seq_cst, align 8, !noalias !8638 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 7
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.az  ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.backedge.i, label %bb.o

.backedge.i:                                      ; preds = %"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i", %bb.o, %bb.n, %bb.m
  %.sroa.035.0.be.i = add i64 %.sroa.035.073.i, 1 ; 3 uses
  %.pn50.be.i = add i64 %.sroa.035.0.be.i, %.sroa.026.074.i
  %i.bc = icmp ugt i64 %.sroa.035.0.be.i, %.sroa.12.1.i
  br i1 %i.bc, label %.loopexit.i, label %bb.l, !prof !69

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val53.i = load i64, ptr %i.bd, align 8, !noalias !8638, !noundef !21
  %.not.i.i.i = icmp eq i64 %2, %.val53.i
  br i1 %.not.i.i.i, label %"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i", label %.backedge.i

"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i": ; preds = %bb.o
  %i.be = getelementptr i8, ptr %i.ba, i64 8
  %.val52.i = load ptr, ptr %i.be, align 8, !noalias !8638, !nonnull !21, !noundef !21
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %1, ptr nonnull readonly align 1 %.val52.i, i64 %2), !alias.scope !8640, !noalias !8639
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bf, label %bb.p, label %.backedge.i

bb.p:                                             ; preds = %"_ZN53_$LT$Q$u20$as$u20$equivalent..Equivalent$LT$K$GT$$GT$10equivalent17h29806816ddabce49E.exit.i"
  %i.bg = and i64 %i.ax, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.preheader.i, label %.loopexit.i, !prof !49

.preheader.i:                                     ; preds = %bb.p, %bb.u
  %.sroa.821.0.i = phi ptr [ %i.bu, %bb.u ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.019.0.i = phi ptr [ %i.bt, %bb.u ], [ %i.aw, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8638
  invoke fastcc void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9update_at17h217cde2ed5062568E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %0, i64 noundef %.sroa.026.074.i, ptr noundef %.sroa.019.0.i, ptr noundef nonnull %.sroa.821.0.i, ptr noundef nonnull inttoptr (i64 2 to ptr), i64 %.sroa.0.1.i, ptr %.sroa.15.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.preheader.i
  %i.bi = load i64, ptr %i.c, align 8, !range !41, !noalias !8638, !noundef !21
  switch i64 %i.bi, label %default.unreachable [
    i64 3, label %bb.q
    i64 0, label %.loopexit15
    i64 1, label %bb.t
    i64 2, label %bb.u
  ], !prof !82

bb.q:                                             ; preds = %.noexc
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.026.074.i
  store atomic i8 -1, ptr %i.bj release, align 1, !noalias !8638
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !8638, !noundef !21 ; 2 uses
  %i.bm = add i64 %i.bl, -1
  %i.bn = and i64 %i.bm, %.sroa.08.0.copyload9.i  ; 2 uses
  %.not48.i = icmp eq i64 %i.bl, 0
  br i1 %.not48.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.821.0.i, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !8638, !nonnull !21, !noundef !21
  %i.br = getelementptr inbounds nuw [128 x i8], ptr %i.bq, i64 %i.bn
  %i.bs = atomicrmw sub ptr %i.br, i64 1 monotonic, align 8, !noalias !8638 ; 0 uses
  br label %.loopexit15

bb.s:                                             ; preds = %bb.q
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bn, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1205) #57
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.s
  unreachable

.loopexit15:                                      ; preds = %.noexc, %bb.r
  %.sink109.i.sroa.phi = phi ptr [ %.sroa.9, %bb.r ], [ %.sroa.714, %.noexc ]
  %.sink.i = phi ptr [ %i.bo, %bb.r ], [ null, %.noexc ]
  store ptr %.sink.i, ptr %.sink109.i.sroa.phi, align 8, !alias.scope !8637, !noalias !8641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8638
  br label %.loopexit74

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.t:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8638
  br label %.loopexit.i

bb.u:                                             ; preds = %.noexc
  %i.bt = load ptr, ptr %i.am, align 8, !noalias !8638, !noundef !21
  %i.bu = load ptr, ptr %i.an, align 8, !noalias !8638, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8638
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.backedge.i, %bb.t, %bb.p
  %.sroa.018.1.i = phi i64 [ 1, %bb.t ], [ 1, %bb.p ], [ 0, %.backedge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8638
  store i64 %.sroa.0.1.i, ptr %i.a, align 8, !noalias !8638
  store i64 %.sroa.12.1.i, ptr %.sroa.12.0..sroa_idx7.i, align 8, !noalias !8638
  store ptr %.sroa.15.1.i, ptr %.sroa.15.0..sroa_idx11.i, align 8, !noalias !8638
  invoke fastcc void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$13prepare_retry17hf24d45fefe5386b2E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %0, i64 noundef %.sroa.018.1.i, i64 %.sroa.026.074.i, ptr noalias noundef align 1 dereferenceable(1) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit

.noexc6:                                          ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8638
  %i.bv = load i64, ptr %i.b, align 8, !range !32, !noalias !8638, !noundef !21
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.v, label %bb.w

.loopexit74:                                      ; preds = %bb.l, %bb.w, %.loopexit15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8638
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h52a357610d73066dE.exit"

bb.v:                                             ; preds = %.noexc6
  %.sroa.025.0.copyload.i = load i64, ptr %i.ao, align 8, !noalias !8638
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !8638
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i4, align 8, !noalias !8638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8638
  br label %bb.k

bb.w:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8638
  br label %.loopexit74

.loopexit:                                        ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit.i
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.s
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit16, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E"(ptr nonnull %i.h, ptr %i.q) #55
          to label %bb.aa unwind label %bb.z

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h52a357610d73066dE.exit": ; preds = %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit, %.loopexit74
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.714)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.bx = load i64, ptr %i.u, align 8, !noundef !21 ; 2 uses
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.u, align 8
  %i.bz = icmp eq i64 %i.bx, 1
  br i1 %i.bz, label %bb.x, label %"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit"

bb.x:                                             ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h52a357610d73066dE.exit"
  %i.ca = atomicrmw xchg ptr %i.q, ptr inttoptr (i64 -1 to ptr) release, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit", label %bb.y, !prof !49

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_ZN5seize3raw9collector9Collector8traverse17h11d0801e03f9b2caE(ptr noundef nonnull align 8 %i.h, ptr noundef %i.ca)
  br label %"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit"

"_ZN4core3ptr178drop_in_place$LT$papaya..map..HashMapRef$LT$alloc..string..String$C$meilisearch_types..network..Unavailability$C$std..hash..random..RandomState$C$seize..guard..LocalGuard$GT$$GT$17hdbcc5a343bfa91a6E.exit": ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h52a357610d73066dE.exit", %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.z:                                             ; preds = %.loopexit.split-lp
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.aa:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types7network18RemoteAvailability16mark_unavailable17h71ee9a58d32159cbE(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 16               ; 5 uses
  %i.f = alloca [24 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [24 x i8], align 16               ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [88 x i8], align 8                ; 24 uses
  %.sroa.6.i.i = alloca ptr, align 8              ; 5 uses
  %.sroa.9.i.i = alloca ptr, align 8              ; 6 uses
  %.sroa.12.i.i = alloca ptr, align 8             ; 4 uses
  %.sroa.13.i.i = alloca ptr, align 8             ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 17 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types7network18RemoteAvailability16mark_unavailable17h71ee9a58d32159cbE:bb.a
  %i.bf = phi <2 x i32> [ %i.be, %.noexc12.i.i ], [ %i.au, %bb.l ]
  %i.bg = add nsw i32 %.sroa.8.0.i.i.i, -1000000000
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ugt i32 %.sroa.8.0.i.i.i, 999999999
  %i.bj = add nuw nsw i64 %i.bh, 1
  %i.bk = select i1 %i.bi, i64 %i.bj, i64 0
  switch i64 %i.bk, label %.loopexit.i.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.bn
  ], !prof !83

default.unreachable:                              ; preds = %bb.az
  unreachable

.loopexit.i.i.i:                                  ; preds = %.noexc38.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit165.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit137.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit143.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit.i.i.i"
  unreachable

bb.n:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit.i.i.i"
  %i.bl = icmp samesign ult i32 %.sroa.8.0.i.i.i, 1000000000
  br i1 %i.bl, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit.i.i.i", label %.invoke408.i.i, !prof !49

.invoke408.i.i:                                   ; preds = %.noexc39.i.i, %bb.bg, %bb.al, %bb.ak, %bb.n
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @91, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #57
          to label %.cont409.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8768

.cont409.i.i:                                     ; preds = %.invoke408.i.i
  unreachable

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit.i.i.i": ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.0.0319.i.i.i, ptr %i.bm, align 8, !alias.scope !8769, !noalias !8766
  %.sroa.2.0..sroa_idx178.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store <2 x i32> %i.bf, ptr %.sroa.2.0..sroa_idx178.i.i.i, align 8, !alias.scope !8769, !noalias !8766
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 %.sroa.7174.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8769, !noalias !8766
  store i32 %.sroa.8.0.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8769, !noalias !8766
  store i32 %.sroa.11.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8769, !noalias !8766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8759
  invoke void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$4init17ha54f5b0e2f0c09ebE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %0, i64 noundef 0, i64 undef)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8768

.noexc14.i.i:                                     ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit.i.i.i"
  %i.bn = load <2 x i64>, ptr %i.m, align 16, !noalias !8759
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.22.0.copyload.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i, align 16, !noalias !8759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8759
  br label %bb.p

bb.o:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8759
  br label %.invoke410.i.i

.invoke410.i.i:                                   ; preds = %bb.bl, %bb.bh, %bb.ai, %bb.o
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.bl ], [ %.sink.i.sroa.gep2.i, %bb.bh ], [ %.sink.i.sroa.gep3.i, %bb.ai ], [ %.sink.i.sroa.gep4.i, %bb.o ]
  %.sink.i.sroa.phi5.i = phi ptr [ %.sink.i.sroa.gep6.i, %bb.bl ], [ %.sink.i.sroa.gep7.i, %bb.bh ], [ %.sink.i.sroa.gep8.i, %bb.ai ], [ %.sink.i.sroa.gep9.i, %bb.o ]
  %.sink.i.sroa.phi10.i = phi ptr [ %.sink.i.sroa.gep11.i, %bb.bl ], [ %.sink.i.sroa.gep12.i, %bb.bh ], [ %.sink.i.sroa.gep13.i, %bb.ai ], [ %.sink.i.sroa.gep14.i, %bb.o ]
  %.sink.i.sroa.phi15.i = phi ptr [ %.sink.i.sroa.gep16.i, %bb.bl ], [ %.sink.i.sroa.gep17.i, %bb.bh ], [ %.sink.i.sroa.gep18.i, %bb.ai ], [ %.sink.i.sroa.gep19.i, %bb.o ]
  %.sink.i.i = phi ptr [ %i.b, %bb.bl ], [ %i.h, %bb.bh ], [ %i.k, %bb.ai ], [ %i.n, %bb.o ] ; 2 uses
  %i.bo = phi ptr [ @1208, %bb.bl ], [ @1206, %bb.bh ], [ @1207, %bb.ai ], [ @1203, %bb.o ]
  store ptr @1201, ptr %.sink.i.i, align 8, !noalias !8759
  store i64 1, ptr %.sink.i.sroa.phi.i, align 8, !noalias !8759
  store ptr null, ptr %.sink.i.sroa.phi5.i, align 8, !noalias !8759
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi10.i, align 8, !noalias !8759
  store i64 0, ptr %.sink.i.sroa.phi15.i, align 8, !noalias !8759
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo) #57
          to label %.cont411.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8768

.cont411.i.i:                                     ; preds = %.invoke410.i.i
  unreachable

bb.p:                                             ; preds = %.noexc14.i.i, %bb.j
  %.sroa.22.1.i.i.i = phi ptr [ %.sroa.22.0.copyload.i.i.i, %.noexc14.i.i ], [ %i.aq, %bb.j ]
  %i.bp = phi <2 x i64> [ %i.bn, %.noexc14.i.i ], [ %i.as, %bb.j ]
  %i.bq = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8757, !noalias !8770, !noundef !21
  %i.br = icmp eq i64 %i.bq, -9223372036854775808
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !8757, !noalias !8770
  %.sroa.045.0.i.i.i = select i1 %i.br, ptr %i.bt, ptr %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.045.0.i.i.i) ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bu, align 8, !noalias !8759, !noundef !21
  %i.bv = getelementptr i8, ptr %0, i64 1016      ; 2 uses
  %.val114.i.i.i = load i64, ptr %i.bv, align 8, !noalias !8759, !noundef !21
  %i.bw = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val.i.i.i, i64 %.val114.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.045.0.i.i.i), !noalias !8771 ; 2 uses
  %i.bx = lshr i64 %i.bw, 57
  %i.by = trunc nuw nsw i64 %i.bx to i8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8759
  store i8 0, ptr %i.l, align 1, !noalias !8759
  %.sroa.5.0..sroa_idx.i127.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 84 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 6 uses
  %.sroa.6185.0..sroa_idx186.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %.sroa.7188.0..sroa_idx189.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %.sroa.7191.0..sroa_idx192.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 3 uses
  %.sroa.518.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.sroa.6242.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.7246.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.960.0..sroa_idx61.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.1063.0..sroa_idx64.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.960.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1063.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.22.0..sroa_idx34.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5294.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.22.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.22.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.p
  %.sroa.4276.0.i.i.i = phi i32 [ undef, %bb.p ], [ %.sroa.4276.1405.i.i.i, %.backedge.i.i.i.backedge ]
  %.sroa.9284.0.i.i.i = phi i32 [ undef, %bb.p ], [ %.sroa.9284.1385.i.i.i, %.backedge.i.i.i.backedge ]
  %.sroa.22.2.i.i.i = phi ptr [ %.sroa.22.1.i.i.i, %bb.p ], [ %.sroa.22.2.i.i.i.be, %.backedge.i.i.i.backedge ] ; 5 uses
  %i.cd = phi <2 x i64> [ %i.bp, %bb.p ], [ %.be, %.backedge.i.i.i.backedge ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.22.2.i.i.i, i64 136 ; 2 uses
  %i.cf = extractelement <2 x i64> %i.cd, i64 0   ; 4 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 1      ; 2 uses
  %i.ci = extractelement <2 x i64> %i.cd, i64 1
  br label %bb.q

bb.q:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i, %.backedge.i.i.i
  %.pn443.i.i.i = phi i64 [ %i.bw, %.backedge.i.i.i ], [ %.pn.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ]
  %.sroa.085.0441.i.i.i = phi i64 [ 0, %.backedge.i.i.i ], [ %.sroa.085.1.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ]
  %.sroa.9284.1440.i.i.i = phi i32 [ %.sroa.9284.0.i.i.i, %.backedge.i.i.i ], [ %.sroa.9284.2.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ] ; 8 uses
  %.sroa.4276.1439.i.i.i = phi i32 [ %.sroa.4276.0.i.i.i, %.backedge.i.i.i ], [ %.sroa.4276.2.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ] ; 8 uses
  %.sroa.072.0442.i.i.i = and i64 %.pn443.i.i.i, %i.cf ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.072.0442.i.i.i ; 5 uses
  %i.ck = load atomic i8, ptr %i.cj acquire, align 1, !noalias !8760 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, -128
  br i1 %i.cl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = icmp eq i8 %i.ck, %i.by
  br i1 %i.cm, label %bb.v, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !8772)
  call void @llvm.experimental.noalias.scope.decl(metadata !8773)
  %.sroa.4.0.copyload.i126.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8774, !noalias !8775 ; 2 uses
  %.sroa.5.0.copyload.i128.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i127.i.i.i, align 4, !alias.scope !8774, !noalias !8775
  store i32 1000000000, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8774, !noalias !8775
  %.not.i129.i.i.i = icmp eq i32 %.sroa.4.0.copyload.i126.i.i.i, 1000000000
  br i1 %.not.i129.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0183.0.copyload184.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !8776, !noalias !8766
  %i.cn = load <2 x i32>, ptr %.sroa.6185.0..sroa_idx186.i.i.i, align 8, !alias.scope !8776, !noalias !8766
  %.sroa.7191.0.copyload193.i.i.i = load i64, ptr %.sroa.7191.0..sroa_idx192.i.i.i, align 8, !alias.scope !8776, !noalias !8766
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit137.i.i.i"

bb.u:                                             ; preds = %bb.s
  %.val29.i132.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !8774, !noalias !8775, !nonnull !21, !noundef !21 ; 2 uses
  %i.co = load i8, ptr %.val29.i132.i.i.i, align 1, !range !35, !noalias !8777, !noundef !21
  %i.cp = trunc nuw i8 %i.co to i1
  store i8 0, ptr %.val29.i132.i.i.i, align 1, !noalias !8777
  br i1 %i.cp, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h257a626d879a7302E.exit41.i133.i.i.i", label %.invoke.i.i, !prof !49

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h257a626d879a7302E.exit41.i133.i.i.i": ; preds = %bb.u
  %i.cq = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc17.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !8768 ; 2 uses

.noexc17.i.i:                                     ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h257a626d879a7302E.exit41.i133.i.i.i"
  %i.cr = extractvalue { i64, i32 } %i.cq, 0      ; 2 uses
  %i.cs = extractvalue { i64, i32 } %i.cq, 1      ; 2 uses
  %i.ct = invoke { i64, i32 } @"_ZN88_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2c4595f780596bd2E"(i64 noundef %i.cr, i32 noundef %i.cs, i64 noundef 30, i32 noundef 0)
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !8768 ; 2 uses

.noexc18.i.i:                                     ; preds = %.noexc17.i.i
  %i.cu = extractvalue { i64, i32 } %i.ct, 0
  %i.cv = extractvalue { i64, i32 } %i.ct, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %i.cx = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.cv, i64 0
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit137.i.i.i"

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit137.i.i.i": ; preds = %.noexc18.i.i, %bb.t
  %.sroa.11195.0.i.i.i = phi i32 [ undef, %.noexc18.i.i ], [ %.sroa.5.0.copyload.i128.i.i.i, %bb.t ]
  %.sroa.8194.0.i.i.i = phi i32 [ %i.cs, %.noexc18.i.i ], [ %.sroa.4.0.copyload.i126.i.i.i, %bb.t ] ; 3 uses
  %.sroa.7191.0.i.i.i = phi i64 [ %i.cr, %.noexc18.i.i ], [ %.sroa.7191.0.copyload193.i.i.i, %bb.t ]
  %.sroa.0183.0.i.i.i = phi i64 [ %i.cu, %.noexc18.i.i ], [ %.sroa.0183.0.copyload184.i.i.i, %bb.t ]
  %i.cy = phi <2 x i32> [ %i.cx, %.noexc18.i.i ], [ %i.cn, %bb.t ]
  %i.cz = add nsw i32 %.sroa.8194.0.i.i.i, -1000000000
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp samesign ugt i32 %.sroa.8194.0.i.i.i, 999999999
  %i.dc = add nuw nsw i64 %i.da, 1
  %i.dd = select i1 %i.db, i64 %i.dc, i64 0
  switch i64 %i.dd, label %.loopexit.i.i.i [
    i64 0, label %bb.x
    i64 1, label %bb.ai
    i64 2, label %.loopexit65.i.i
  ], !prof !83

bb.v:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.072.0442.i.i.i
  %i.df = load atomic ptr, ptr %i.de seq_cst, align 8, !noalias !8760 ; 3 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, 7
  %2 = sub nsw i64 0, %i.dh
  %3 = getelementptr i8, ptr %i.df, i64 %2        ; 2 uses
  %i.di = icmp eq ptr %3, null
  br i1 %i.di, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i, label %bb.w

bb.w:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit140.i.i.i", %bb.v
  %.sroa.10.0.i.i.i = phi ptr [ %i.eh, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit140.i.i.i" ], [ %3, %bb.v ] ; 3 uses
  %.sroa.047.0.i.i.i = phi ptr [ %.sroa.58.0.i.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit140.i.i.i" ], [ %i.df, %bb.v ] ; 2 uses
  %i.dj = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8757, !noalias !8770, !noundef !21
  %i.dk = icmp eq i64 %i.dj, -9223372036854775808 ; 2 uses
  %i.dl = load ptr, ptr %i.bs, align 8, !alias.scope !8757, !noalias !8770 ; 2 uses
  %i.dm = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 16
  %.sroa.10.0.val115.i.i.i = load i64, ptr %i.dm, align 8, !noalias !8760, !noundef !21 ; 2 uses
  %.sroa.gep.i.i = getelementptr i8, ptr %i.dl, i64 16
  %.sroa.056.0.i.sroa.sel.i.i = select i1 %i.dk, ptr %.sroa.gep.i.i, ptr %.sroa.518.0..sroa_idx.i.i.i.i
  %.sroa.056.0.val116.i.i.i = load i64, ptr %.sroa.056.0.i.sroa.sel.i.i, align 8, !noalias !8771, !noundef !21
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.10.0.val115.i.i.i, %.sroa.056.0.val116.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

bb.x:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit137.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !8778)
  %i.dn = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8779, !noalias !8770, !noundef !21 ; 4 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775808
  %i.dp = load ptr, ptr %i.bs, align 8, !alias.scope !8779, !noalias !8770 ; 4 uses
  br i1 %i.do, label %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.518.0.copyload.i.i.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8779, !noalias !8770
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8780
  %i.dq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !8780 ; 6 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.z, label %bb.ad, !prof !23

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !8781

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.ds = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.dt = icmp eq i64 %i.dn, 0
  br i1 %i.dt, label %.body.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef %i.dn, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8782
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ab, %bb.aa
  %i.du = extractvalue { ptr, i32 } %i.ds, 0
  %i.dv = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.du)
          to label %.invoke412.i.i unwind label %bb.ac, !noalias !8783

bb.ac:                                            ; preds = %.body.i.i.i.i.i
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !8783
  unreachable

bb.ad:                                            ; preds = %bb.y
  store i64 %i.dn, ptr %i.dq, align 8, !noalias !8781
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dp, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8781
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %.sroa.518.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8781
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !8779, !noalias !8770
  store ptr %i.dq, ptr %i.bs, align 8, !alias.scope !8779, !noalias !8770
  br label %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i"

.invoke412.i.i:                                   ; preds = %.body.i.i149.i.i.i, %.body.i.i.i.i.i
  %.sink422.i.i = phi { ptr, ptr } [ %i.gx, %.body.i.i149.i.i.i ], [ %i.dv, %.body.i.i.i.i.i ] ; 2 uses
  %i.dx = extractvalue { ptr, ptr } %.sink422.i.i, 0
  %i.dy = extractvalue { ptr, ptr } %.sink422.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ]
  invoke fastcc void @"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init28_$u7b$$u7b$closure$u7d$$u7d$17hc06b3036289c6263E"(ptr noundef nonnull align 1 %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dy)
          to label %.cont413.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.cont413.i.i:                                     ; preds = %.invoke412.i.i
  unreachable

"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i": ; preds = %bb.ad, %bb.x
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dq, %bb.ad ], [ %i.dp, %bb.x ] ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 24 ; 4 uses
  store i64 %.sroa.0183.0.i.i.i, ptr %i.dz, align 8, !noalias !8760
  %.sroa.4302.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 32
  store <2 x i32> %i.cy, ptr %.sroa.4302.0..sroa_idx.i.i.i, align 8, !noalias !8760
  %.sroa.6304.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 40
  store i64 %.sroa.7191.0.i.i.i, ptr %.sroa.6304.0..sroa_idx.i.i.i, align 8, !noalias !8760
  %.sroa.7305.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 48 ; 2 uses
  store i32 %.sroa.8194.0.i.i.i, ptr %.sroa.7305.0..sroa_idx.i.i.i, align 8, !noalias !8760
  %.sroa.8306.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 52 ; 2 uses
  store i32 %.sroa.11195.0.i.i.i, ptr %.sroa.8306.0..sroa_idx.i.i.i, align 4, !noalias !8760
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.072.0442.i.i.i
  %i.eb = cmpxchg ptr %i.ea, ptr null, ptr %.sroa.0.0.i.i.i.i seq_cst seq_cst, align 8, !noalias !8784 ; 2 uses
  %i.ec = extractvalue { ptr, i1 } %i.eb, 1
  %i.ed = extractvalue { ptr, i1 } %i.eb, 0       ; 3 uses
  br i1 %i.ec, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i"
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 7
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr i8, ptr %i.ed, i64 %i.eg  ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null                 ; 2 uses
  br i1 %i.ei, label %bb.af, label %bb.ag

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i": ; preds = %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i"
  store atomic i8 %i.by, ptr %i.cj release, align 1, !noalias !8784
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !8759, !noundef !21 ; 2 uses
  %i.el = add i64 %i.ek, -1
  %i.em = and i64 %i.el, %.sroa.08.0.copyload9.i  ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not105.i.i.i, label %.invoke414.i.i, label %bb.aj

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.06.0.i.i.i.i = phi i8 [ %i.er, %bb.ag ], [ -1, %bb.ae ]
  %.sroa.58.0.i.i.i.i = phi ptr [ %i.ed, %bb.ag ], [ undef, %bb.ae ]
  %i.en = load atomic i8, ptr %i.cj monotonic, align 1, !noalias !8784
  %i.eo = icmp eq i8 %i.en, -128
  br i1 %i.eo, label %bb.ah, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"

bb.ag:                                            ; preds = %bb.ae
  %.val.i.i.i.i = load i64, ptr %i.bu, align 8, !noalias !8785, !noundef !21
  %.val11.i.i.i.i = load i64, ptr %i.bv, align 8, !noalias !8785, !noundef !21
  %i.ep = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val.i.i.i.i, i64 %.val11.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eh), !noalias !8784
  %i.eq = lshr i64 %i.ep, 57
  %i.er = trunc nuw nsw i64 %i.eq to i8
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  store atomic i8 %.sroa.06.0.i.i.i.i, ptr %i.cj release, align 1, !noalias !8784
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i": ; preds = %bb.ah, %bb.af
  %.sroa.2238.0.copyload.i.i.i = load i32, ptr %.sroa.7305.0..sroa_idx.i.i.i, align 8, !noalias !8760 ; 3 uses
  %.sroa.3239.0.copyload.i.i.i = load i32, ptr %.sroa.8306.0..sroa_idx.i.i.i, align 4, !noalias !8760 ; 2 uses
  %i.es = icmp samesign ult i32 %.sroa.2238.0.copyload.i.i.i, 1000000000 ; 2 uses
  br i1 %i.ei, label %bb.ak, label %bb.al

bb.ai:                                            ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit137.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8759
  br label %.invoke410.i.i

bb.aj:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i"
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !8759, !nonnull !21, !noundef !21
  %i.ev = getelementptr inbounds nuw [128 x i8], ptr %i.eu, i64 %i.em
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8, !noalias !8760 ; 0 uses
  br label %.sink.split.i.i.i

.invoke414.i.i:                                   ; preds = %bb.bb, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i"
  %i.ex = phi i64 [ %i.em, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i" ], [ %i.hi, %bb.bb ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ex, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1205) #57
          to label %.cont415.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8768

.cont415.i.i:                                     ; preds = %.invoke414.i.i
  unreachable

bb.ak:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"
  br i1 %i.es, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i", label %.invoke408.i.i, !prof !49

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i": ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !noalias !8786
  br label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i: ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit166.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i"
  %.sroa.2238.0.copyload.sink.i.i.i = phi i32 [ %.sroa.2238.0.copyload.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i" ], [ %.sroa.5282.0.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit166.i.i.i" ]
  %.sroa.3239.0.copyload.sink.i.i.i = phi i32 [ %.sroa.3239.0.copyload.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i" ], [ %.sroa.9284.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit166.i.i.i" ]
  %.sroa.4276.2.ph.i.i.i = phi i32 [ %.sroa.4276.1439.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i" ], [ %.sroa.4276.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit166.i.i.i" ]
  %.sroa.9284.2.ph.i.i.i = phi i32 [ %.sroa.9284.1440.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit139.i.i.i" ], [ %.sroa.9284.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit166.i.i.i" ]
  store i32 %.sroa.2238.0.copyload.sink.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8758, !noalias !8766
  store i32 %.sroa.3239.0.copyload.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i127.i.i.i, align 4, !alias.scope !8758, !noalias !8766
  br label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i: ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i, %bb.w, %bb.v, %bb.r
  %.sroa.4276.2.i.i.i = phi i32 [ %.sroa.4276.1439.i.i.i, %bb.r ], [ %.sroa.4276.1439.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i ], [ %.sroa.4276.1439.i.i.i, %bb.w ], [ %.sroa.4276.1439.i.i.i, %bb.v ], [ %.sroa.4276.2.ph.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i ] ; 2 uses
  %.sroa.9284.2.i.i.i = phi i32 [ %.sroa.9284.1440.i.i.i, %bb.r ], [ %.sroa.9284.1440.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i ], [ %.sroa.9284.1440.i.i.i, %bb.w ], [ %.sroa.9284.1440.i.i.i, %bb.v ], [ %.sroa.9284.2.ph.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i ] ; 2 uses
  %.sroa.085.1.i.i.i = add i64 %.sroa.085.0441.i.i.i, 1 ; 3 uses
  %.pn.i.i.i = add i64 %.sroa.085.1.i.i.i, %.sroa.072.0442.i.i.i
  %i.ey = icmp ugt i64 %.sroa.085.1.i.i.i, %i.ci
  br i1 %i.ey, label %.loopexit339.i.i.i, label %bb.q, !prof !69

bb.al:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"
  br i1 %i.es, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit140.i.i.i", label %.invoke408.i.i, !prof !49

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17heef292e06d8c7fc4E.exit140.i.i.i": ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 24, i1 false), !noalias !8786
  store i32 %.sroa.2238.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8787, !noalias !8766
  store i32 %.sroa.3239.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i127.i.i.i, align 4, !alias.scope !8787, !noalias !8766
  br label %bb.w

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i: ; preds = %bb.w
  %.sroa.gep45.i.i = getelementptr i8, ptr %i.dl, i64 8
  %.sroa.056.0.i.sroa.sel47.i.i = select i1 %i.dk, ptr %.sroa.gep45.i.i, ptr %i.bs
  %.sroa.056.0.val.i.i.i = load ptr, ptr %.sroa.056.0.i.sroa.sel47.i.i, align 8, !noalias !8771, !nonnull !21, !noundef !21
  %i.ez = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 8
  %.sroa.10.0.val.i.i.i = load ptr, ptr %i.ez, align 8, !noalias !8760, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.10.0.val.i.i.i, ptr nonnull readonly align 1 %.sroa.056.0.val.i.i.i, i64 %.sroa.10.0.val115.i.i.i), !alias.scope !8788, !noalias !8760
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.am, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

bb.am:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i
  %i.fa = ptrtoint ptr %.sroa.047.0.i.i.i to i64
  %i.fb = and i64 %i.fa, 1
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.preheader.preheader.i.i.i, label %.loopexit339.i.i.i, !prof !49

.preheader.preheader.i.i.i:                       ; preds = %bb.am
  %.sroa.011.0.copyload.i.pre.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !8789, !noalias !8790
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.az, %.preheader.preheader.i.i.i
  %.sroa.011.0.copyload.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i, %bb.az ], [ %.sroa.011.0.copyload.i.pre.i.i.i, %.preheader.preheader.i.i.i ]
  %.sroa.10.1.i.i.i = phi ptr [ %.sroa.1063.0.i.i.i, %bb.az ], [ %.sroa.10.0.i.i.i, %.preheader.preheader.i.i.i ] ; 11 uses
  %.sroa.047.1.i.i.i = phi ptr [ %.sroa.960.0.i.i.i, %bb.az ], [ %.sroa.047.0.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8791)
  call void @llvm.experimental.noalias.scope.decl(metadata !8792)
  %.sroa.6.0.copyload.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !alias.scope !8789, !noalias !8790 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8789, !noalias !8790
  store i32 1000000002, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !alias.scope !8789, !noalias !8790
  %i.fd = icmp ne i32 %.sroa.6.0.copyload.i.i.i.i, 1000000002
  %i.fe = icmp eq ptr %.sroa.011.0.copyload.i.i.i.i, %.sroa.10.1.i.i.i
  %or.cond.i.i.i.i = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.preheader.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.i.i.i) ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i, i64 40
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !8793, !noalias !8794, !noundef !21 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !range !84, !alias.scope !8793, !noalias !8794, !noundef !21 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i, i64 32
  %i.fk = load i32, ptr %i.fj, align 8, !range !81, !alias.scope !8793, !noalias !8794, !noundef !21 ; 2 uses
  %.not.i.i.i.i141.i.i.i = icmp eq i32 %i.fk, 1000000000
  br i1 %.not.i.i.i.i141.i.i.i, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit143.thread.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.10.1.i.i.i, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !8793, !noalias !8794
  %i.fn = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc24.i.i unwind label %.loopexit.i.i, !noalias !8768 ; 2 uses

.noexc24.i.i:                                     ; preds = %bb.ao
  %i.fo = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.fm, i32 noundef %i.fk, i64 noundef %i.fg, i32 noundef %i.fi)
          to label %.noexc25.i.i unwind label %.loopexit.i.i, !noalias !8768 ; 2 uses

.noexc25.i.i:                                     ; preds = %.noexc24.i.i
  %i.fp = extractvalue { i64, i32 } %i.fo, 0      ; 2 uses
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i.i.i.i.i, label %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i.i.i.i.i, !prof !23

_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i.i.i.i.i: ; preds = %.noexc25.i.i
  %i.fr = extractvalue { i64, i32 } %i.fo, 1      ; 3 uses
  %.cmp.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.fr, 500000000
  %i.fs = shl nuw nsw i32 %i.fr, 1                ; 2 uses
  %.urem.i.i.i.i.i.i.i.i = add nsw i32 %i.fs, -1000000000
  %i.ft = select i1 %.cmp.i.i.i.i.i.i.i.i, i32 %i.fs, i32 %.urem.i.i.i.i.i.i.i.i ; 3 uses
  %.not8.i.i.i.i.i.i.i = icmp eq i32 %i.ft, 1000000000
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i.i.i.i.i, label %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i.i.i.i.i, !prof !58

_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i.i.i.i.i, %.noexc25.i.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @829, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #57
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8768

.noexc26.i.i:                                     ; preds = %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i.i.i.i.i
  unreachable

_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i.i.i.i.i: ; preds = %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i.i.i.i.i
  %i.fu = shl nuw i64 %i.fp, 1
  %.cmp3.i.i.i.i.i.i.i.i = icmp samesign ugt i32 %i.fr, 499999999
  %i.fv = zext i1 %.cmp3.i.i.i.i.i.i.i.i to i64
  %i.fw = or disjoint i64 %i.fu, %i.fv            ; 3 uses
  %i.fx = extractvalue { i64, i32 } %i.fn, 1      ; 2 uses
  %i.fy = extractvalue { i64, i32 } %i.fn, 0      ; 2 uses
  %i.fz = icmp eq i64 %i.fw, 300
  %i.ga = icmp ne i32 %i.ft, 0
  %i.gb = icmp ugt i64 %i.fw, 300
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.fz, i1 %i.ga, i1 %i.gb ; 2 uses
  %.sroa.3.0.i9.i.i.i.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.ft
  %.sroa.0.0.i10.i.i.i.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 300, i64 %i.fw
  %i.gc = invoke { i64, i32 } @"_ZN88_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2c4595f780596bd2E"(i64 noundef %i.fy, i32 noundef %i.fx, i64 noundef %.sroa.0.0.i10.i.i.i.i.i.i.i, i32 noundef %.sroa.3.0.i9.i.i.i.i.i.i.i)
          to label %.noexc27.i.i unwind label %.loopexit.i.i, !noalias !8768 ; 2 uses

.noexc27.i.i:                                     ; preds = %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i.i.i.i.i
  %i.gd = extractvalue { i64, i32 } %i.gc, 0
  %i.ge = extractvalue { i64, i32 } %i.gc, 1      ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 1000000000
  call void @llvm.assume(i1 %i.gf)
  %i.gg = insertelement <2 x i32> <i32 poison, i32 undef>, i32 %i.ge, i64 0
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit143.i.i.i"

bb.ap:                                            ; preds = %.preheader.i.i.i
  %.sroa.0240.0.copyload241.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8795, !noalias !8766
  %i.gh = load <2 x i32>, ptr %.sroa.6242.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !8795, !noalias !8766
  %.sroa.7246.0.copyload247.i.i.i = load i64, ptr %.sroa.7246.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !8795, !noalias !8766
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit143.i.i.i"

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E.exit143.i.i.i": ; preds = %bb.ap, %.noexc27.i.i
  %.sroa.0240.0.i.i.i = phi i64 [ %.sroa.0240.0.copyload241.i.i.i, %bb.ap ], [ %i.gd, %.noexc27.i.i ]
  %.sroa.7246.0.i.i.i = phi i64 [ %.sroa.7246.0.copyload247.i.i.i, %bb.ap ], [ %i.fy, %.noexc27.i.i ]
  %.sroa.8248.0.i.i.i = phi i32 [ %.sroa.6.0.copyload.i.i.i.i, %bb.ap ], [ %i.fx, %.noexc27.i.i ] ; 3 uses
  %.sroa.11249.0.i.i.i = phi i32 [ %.sroa.9.0.copyload.i.i.i.i, %bb.ap ], [ undef, %.noexc27.i.i ]
  %i.gi = phi <2 x i32> [ %i.gh, %bb.ap ], [ %i.gg, %.noexc27.i.i ]
end_hunk_1
begin_hunk_2_@_ZN17meilisearch_types7network18RemoteAvailability29mark_unavailable_indefinitely17h16dde983e0bb226cE:bb.a
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit.i.i.i"

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit.i.i.i": ; preds = %.noexc11.i.i, %bb.l
  %.sroa.10.0320.i.i.i = phi i32 [ undef, %.noexc11.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.l ]
  %.sroa.7.0.i.i.i = phi i32 [ %i.az, %.noexc11.i.i ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.l ] ; 4 uses
  %.sroa.6173.0.i.i.i = phi i64 [ %i.ay, %.noexc11.i.i ], [ %.sroa.6173.0.copyload175.i.i.i, %bb.l ]
  %.sroa.0.0318.i.i.i = phi i64 [ undef, %.noexc11.i.i ], [ %.sroa.0.0.copyload168.i.i.i, %bb.l ]
  %i.ba = phi <2 x i32> [ <i32 1000000000, i32 undef>, %.noexc11.i.i ], [ %i.au, %bb.l ]
  %i.bb = add nsw i32 %.sroa.7.0.i.i.i, -1000000000
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp samesign ugt i32 %.sroa.7.0.i.i.i, 999999999
  %i.be = add nuw nsw i64 %i.bc, 1
  %i.bf = select i1 %i.bd, i64 %i.be, i64 0
  switch i64 %i.bf, label %.loopexit.i.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.bm
  ], !prof !83

default.unreachable:                              ; preds = %bb.ay
  unreachable

.loopexit.i.i.i:                                  ; preds = %.noexc32.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit164.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit137.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit142.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit.i.i.i"
  unreachable

bb.n:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit.i.i.i"
  %i.bg = icmp samesign ult i32 %.sroa.7.0.i.i.i, 1000000000
  br i1 %i.bg, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit.i.i.i", label %.invoke447.i.i, !prof !49

.invoke447.i.i:                                   ; preds = %.noexc33.i.i, %bb.bf, %bb.al, %bb.ak, %bb.n
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @91, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1218) #57
          to label %.cont448.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8940

.cont448.i.i:                                     ; preds = %.invoke447.i.i
  unreachable

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit.i.i.i": ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.0.0318.i.i.i, ptr %i.bh, align 8, !alias.scope !8941, !noalias !8938
  %.sroa.2.0..sroa_idx177.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store <2 x i32> %i.ba, ptr %.sroa.2.0..sroa_idx177.i.i.i, align 8, !alias.scope !8941, !noalias !8938
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store i64 %.sroa.6173.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8941, !noalias !8938
  store i32 %.sroa.7.0.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8941, !noalias !8938
  store i32 %.sroa.10.0320.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8941, !noalias !8938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8931
  invoke void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$4init17ha54f5b0e2f0c09ebE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %0, i64 noundef 0, i64 undef)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8940

.noexc13.i.i:                                     ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit.i.i.i"
  %i.bi = load <2 x i64>, ptr %i.m, align 16, !noalias !8931
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.22.0.copyload.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i, align 16, !noalias !8931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8931
  br label %bb.p

bb.o:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8931
  br label %.invoke449.i.i

.invoke449.i.i:                                   ; preds = %bb.bk, %bb.bg, %bb.ai, %bb.o
  %.sink.i.sroa.phi.i = phi ptr [ %.sink.i.sroa.gep.i, %bb.bk ], [ %.sink.i.sroa.gep2.i, %bb.bg ], [ %.sink.i.sroa.gep3.i, %bb.ai ], [ %.sink.i.sroa.gep4.i, %bb.o ]
  %.sink.i.sroa.phi5.i = phi ptr [ %.sink.i.sroa.gep6.i, %bb.bk ], [ %.sink.i.sroa.gep7.i, %bb.bg ], [ %.sink.i.sroa.gep8.i, %bb.ai ], [ %.sink.i.sroa.gep9.i, %bb.o ]
  %.sink.i.sroa.phi10.i = phi ptr [ %.sink.i.sroa.gep11.i, %bb.bk ], [ %.sink.i.sroa.gep12.i, %bb.bg ], [ %.sink.i.sroa.gep13.i, %bb.ai ], [ %.sink.i.sroa.gep14.i, %bb.o ]
  %.sink.i.sroa.phi15.i = phi ptr [ %.sink.i.sroa.gep16.i, %bb.bk ], [ %.sink.i.sroa.gep17.i, %bb.bg ], [ %.sink.i.sroa.gep18.i, %bb.ai ], [ %.sink.i.sroa.gep19.i, %bb.o ]
  %.sink.i.i = phi ptr [ %i.b, %bb.bk ], [ %i.h, %bb.bg ], [ %i.k, %bb.ai ], [ %i.n, %bb.o ] ; 2 uses
  %i.bj = phi ptr [ @1208, %bb.bk ], [ @1206, %bb.bg ], [ @1207, %bb.ai ], [ @1203, %bb.o ]
  store ptr @1201, ptr %.sink.i.i, align 8, !noalias !8931
  store i64 1, ptr %.sink.i.sroa.phi.i, align 8, !noalias !8931
  store ptr null, ptr %.sink.i.sroa.phi5.i, align 8, !noalias !8931
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi10.i, align 8, !noalias !8931
  store i64 0, ptr %.sink.i.sroa.phi15.i, align 8, !noalias !8931
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #57
          to label %.cont450.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8940

.cont450.i.i:                                     ; preds = %.invoke449.i.i
  unreachable

bb.p:                                             ; preds = %.noexc13.i.i, %bb.j
  %.sroa.22.1.i.i.i = phi ptr [ %.sroa.22.0.copyload.i.i.i, %.noexc13.i.i ], [ %i.aq, %bb.j ]
  %i.bk = phi <2 x i64> [ %i.bi, %.noexc13.i.i ], [ %i.as, %bb.j ]
  %i.bl = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8929, !noalias !8942, !noundef !21
  %i.bm = icmp eq i64 %i.bl, -9223372036854775808
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 7 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !8929, !noalias !8942
  %.sroa.045.0.i.i.i = select i1 %i.bm, ptr %i.bo, ptr %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.045.0.i.i.i) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.bp, align 8, !noalias !8931, !noundef !21
  %i.bq = getelementptr i8, ptr %0, i64 1016      ; 2 uses
  %.val114.i.i.i = load i64, ptr %i.bq, align 8, !noalias !8931, !noundef !21
  %i.br = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val.i.i.i, i64 %.val114.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.045.0.i.i.i), !noalias !8943 ; 2 uses
  %i.bs = lshr i64 %i.br, 57
  %i.bt = trunc nuw nsw i64 %i.bs to i8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8931
  store i8 0, ptr %i.l, align 1, !noalias !8931
  %.sroa.5.0..sroa_idx.i127.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 84 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 6 uses
  %.sroa.5185.0..sroa_idx186.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %.sroa.6188.0..sroa_idx189.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %.sroa.6191.0..sroa_idx192.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 3 uses
  %.sroa.518.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.sroa.5241.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.6245.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.960.0..sroa_idx61.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.1063.0..sroa_idx64.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.960.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1063.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.22.0..sroa_idx34.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5293.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.22.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.22.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.p
  %.sroa.0270.0.i.i.i = phi i64 [ undef, %bb.p ], [ %.sroa.0270.1409.i.i.i, %.backedge.i.i.i.backedge ]
  %.sroa.3275.0.i.i.i = phi i32 [ undef, %bb.p ], [ %.sroa.3275.1390.i.i.i, %.backedge.i.i.i.backedge ]
  %.sroa.8283.0.i.i.i = phi i32 [ undef, %bb.p ], [ %.sroa.8283.1371.i.i.i, %.backedge.i.i.i.backedge ]
  %.sroa.22.2.i.i.i = phi ptr [ %.sroa.22.1.i.i.i, %bb.p ], [ %.sroa.22.2.i.i.i.be, %.backedge.i.i.i.backedge ] ; 5 uses
  %i.by = phi <2 x i64> [ %i.bk, %bb.p ], [ %.be, %.backedge.i.i.i.backedge ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.22.2.i.i.i, i64 136 ; 2 uses
  %i.ca = extractelement <2 x i64> %i.by, i64 0   ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  %i.cd = extractelement <2 x i64> %i.by, i64 1
  br label %bb.q

bb.q:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i, %.backedge.i.i.i
  %.pn447.i.i.i = phi i64 [ %i.br, %.backedge.i.i.i ], [ %.pn.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ]
  %.sroa.085.0445.i.i.i = phi i64 [ 0, %.backedge.i.i.i ], [ %.sroa.085.1.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ]
  %.sroa.8283.1444.i.i.i = phi i32 [ %.sroa.8283.0.i.i.i, %.backedge.i.i.i ], [ %.sroa.8283.2.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ] ; 8 uses
  %.sroa.3275.1443.i.i.i = phi i32 [ %.sroa.3275.0.i.i.i, %.backedge.i.i.i ], [ %.sroa.3275.2.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ] ; 8 uses
  %.sroa.0270.1442.i.i.i = phi i64 [ %.sroa.0270.0.i.i.i, %.backedge.i.i.i ], [ %.sroa.0270.2.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i ] ; 8 uses
  %.sroa.072.0446.i.i.i = and i64 %.pn447.i.i.i, %i.ca ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.072.0446.i.i.i ; 5 uses
  %i.cf = load atomic i8, ptr %i.ce acquire, align 1, !noalias !8932 ; 2 uses
  %i.cg = icmp eq i8 %i.cf, -128
  br i1 %i.cg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i8 %i.cf, %i.bt
  br i1 %i.ch, label %bb.v, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !8944)
  call void @llvm.experimental.noalias.scope.decl(metadata !8945)
  %.sroa.4.0.copyload.i126.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8946, !noalias !8947 ; 2 uses
  %.sroa.5.0.copyload.i128.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i127.i.i.i, align 4, !alias.scope !8946, !noalias !8947
  store i32 1000000000, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8946, !noalias !8947
  %.not.i129.i.i.i = icmp eq i32 %.sroa.4.0.copyload.i126.i.i.i, 1000000000
  br i1 %.not.i129.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0183.0.copyload184.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !8948, !noalias !8938
  %i.ci = load <2 x i32>, ptr %.sroa.5185.0..sroa_idx186.i.i.i, align 8, !alias.scope !8948, !noalias !8938
  %.sroa.6191.0.copyload193.i.i.i = load i64, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !alias.scope !8948, !noalias !8938
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit137.i.i.i"

bb.u:                                             ; preds = %bb.s
  %.val29.i132.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !8946, !noalias !8947, !nonnull !21, !noundef !21 ; 2 uses
  %i.cj = load i8, ptr %.val29.i132.i.i.i, align 1, !range !35, !noalias !8949, !noundef !21
  %i.ck = trunc nuw i8 %i.cj to i1
  store i8 0, ptr %.val29.i132.i.i.i, align 1, !noalias !8949
  br i1 %i.ck, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h9cc7a2aa01632d6bE.exit33.i133.i.i.i", label %.invoke.i.i, !prof !49

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h9cc7a2aa01632d6bE.exit33.i133.i.i.i": ; preds = %bb.u
  %i.cl = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !8940 ; 2 uses

.noexc16.i.i:                                     ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h9cc7a2aa01632d6bE.exit33.i133.i.i.i"
  %i.cm = extractvalue { i64, i32 } %i.cl, 0
  %i.cn = extractvalue { i64, i32 } %i.cl, 1
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit137.i.i.i"

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit137.i.i.i": ; preds = %.noexc16.i.i, %bb.t
  %.sroa.10195.0.i.i.i = phi i32 [ undef, %.noexc16.i.i ], [ %.sroa.5.0.copyload.i128.i.i.i, %bb.t ]
  %.sroa.7194.0.i.i.i = phi i32 [ %i.cn, %.noexc16.i.i ], [ %.sroa.4.0.copyload.i126.i.i.i, %bb.t ] ; 3 uses
  %.sroa.6191.0.i.i.i = phi i64 [ %i.cm, %.noexc16.i.i ], [ %.sroa.6191.0.copyload193.i.i.i, %bb.t ]
  %.sroa.0183.0.i.i.i = phi i64 [ undef, %.noexc16.i.i ], [ %.sroa.0183.0.copyload184.i.i.i, %bb.t ]
  %i.co = phi <2 x i32> [ <i32 1000000000, i32 undef>, %.noexc16.i.i ], [ %i.ci, %bb.t ]
  %i.cp = add nsw i32 %.sroa.7194.0.i.i.i, -1000000000
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ugt i32 %.sroa.7194.0.i.i.i, 999999999
  %i.cs = add nuw nsw i64 %i.cq, 1
  %i.ct = select i1 %i.cr, i64 %i.cs, i64 0
  switch i64 %i.ct, label %.loopexit.i.i.i [
    i64 0, label %bb.x
    i64 1, label %bb.ai
    i64 2, label %.loopexit59.i.i
  ], !prof !83

bb.v:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.072.0446.i.i.i
  %i.cv = load atomic ptr, ptr %i.cu seq_cst, align 8, !noalias !8932 ; 3 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 7
  %2 = sub nsw i64 0, %i.cx
  %3 = getelementptr i8, ptr %i.cv, i64 %2        ; 2 uses
  %i.cy = icmp eq ptr %3, null
  br i1 %i.cy, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i, label %bb.w

bb.w:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit140.i.i.i", %bb.v
  %.sroa.10.0.i.i.i = phi ptr [ %i.dx, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit140.i.i.i" ], [ %3, %bb.v ] ; 3 uses
  %.sroa.047.0.i.i.i = phi ptr [ %.sroa.58.0.i.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit140.i.i.i" ], [ %i.cv, %bb.v ] ; 2 uses
  %i.cz = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8929, !noalias !8942, !noundef !21
  %i.da = icmp eq i64 %i.cz, -9223372036854775808 ; 2 uses
  %i.db = load ptr, ptr %i.bn, align 8, !alias.scope !8929, !noalias !8942 ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 16
  %.sroa.10.0.val115.i.i.i = load i64, ptr %i.dc, align 8, !noalias !8932, !noundef !21 ; 2 uses
  %.sroa.gep.i.i = getelementptr i8, ptr %i.db, i64 16
  %.sroa.056.0.i.sroa.sel.i.i = select i1 %i.da, ptr %.sroa.gep.i.i, ptr %.sroa.518.0..sroa_idx.i.i.i.i
  %.sroa.056.0.val116.i.i.i = load i64, ptr %.sroa.056.0.i.sroa.sel.i.i, align 8, !noalias !8943, !noundef !21
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.10.0.val115.i.i.i, %.sroa.056.0.val116.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

bb.x:                                             ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit137.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !8950)
  %i.dd = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8951, !noalias !8942, !noundef !21 ; 4 uses
  %i.de = icmp eq i64 %i.dd, -9223372036854775808
  %i.df = load ptr, ptr %i.bn, align 8, !alias.scope !8951, !noalias !8942 ; 4 uses
  br i1 %i.de, label %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.518.0.copyload.i.i.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8951, !noalias !8942
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8952
  %i.dg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !8952 ; 6 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.z, label %bb.ad, !prof !23

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #57
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !8953

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.dj = icmp eq i64 %i.dd, 0
  br i1 %i.dj, label %.body.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.df, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8954
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.ab, %bb.aa
  %i.dk = extractvalue { ptr, i32 } %i.di, 0
  %i.dl = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.dk)
          to label %.invoke451.i.i unwind label %bb.ac, !noalias !8955

bb.ac:                                            ; preds = %.body.i.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !8955
  unreachable

bb.ad:                                            ; preds = %bb.y
  store i64 %i.dd, ptr %i.dg, align 8, !noalias !8953
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.df, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8953
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.518.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8953
  store i64 -9223372036854775808, ptr %i.p, align 8, !alias.scope !8951, !noalias !8942
  store ptr %i.dg, ptr %i.bn, align 8, !alias.scope !8951, !noalias !8942
  br label %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i"

.invoke451.i.i:                                   ; preds = %.body.i.i148.i.i.i, %.body.i.i.i.i.i
  %.sink461.i.i = phi { ptr, ptr } [ %i.fn, %.body.i.i148.i.i.i ], [ %i.dl, %.body.i.i.i.i.i ] ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %.sink461.i.i, 0
  %i.do = extractvalue { ptr, ptr } %.sink461.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  invoke fastcc void @"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init28_$u7b$$u7b$closure$u7d$$u7d$17hc06b3036289c6263E"(ptr noundef nonnull align 1 %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do)
          to label %.cont452.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

.cont452.i.i:                                     ; preds = %.invoke451.i.i
  unreachable

"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i": ; preds = %bb.ad, %bb.x
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.dg, %bb.ad ], [ %i.df, %bb.x ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 24 ; 4 uses
  store i64 %.sroa.0183.0.i.i.i, ptr %i.dp, align 8, !noalias !8932
  %.sroa.4301.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 32
  store <2 x i32> %i.co, ptr %.sroa.4301.0..sroa_idx.i.i.i, align 8, !noalias !8932
  %.sroa.6303.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 40
  store i64 %.sroa.6191.0.i.i.i, ptr %.sroa.6303.0..sroa_idx.i.i.i, align 8, !noalias !8932
  %.sroa.7304.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 48 ; 2 uses
  store i32 %.sroa.7194.0.i.i.i, ptr %.sroa.7304.0..sroa_idx.i.i.i, align 8, !noalias !8932
  %.sroa.8305.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 52 ; 2 uses
  store i32 %.sroa.10195.0.i.i.i, ptr %.sroa.8305.0..sroa_idx.i.i.i, align 4, !noalias !8932
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sroa.072.0446.i.i.i
  %i.dr = cmpxchg ptr %i.dq, ptr null, ptr %.sroa.0.0.i.i.i.i seq_cst seq_cst, align 8, !noalias !8956 ; 2 uses
  %i.ds = extractvalue { ptr, i1 } %i.dr, 1
  %i.dt = extractvalue { ptr, i1 } %i.dr, 0       ; 3 uses
  br i1 %i.ds, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i"
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, 7
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr i8, ptr %i.dt, i64 %i.dw  ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null                 ; 2 uses
  br i1 %i.dy, label %bb.af, label %bb.ag

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i": ; preds = %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit.i.i.i"
  store atomic i8 %i.bt, ptr %i.ce release, align 1, !noalias !8956
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !8931, !noundef !21 ; 2 uses
  %i.eb = add i64 %i.ea, -1
  %i.ec = and i64 %i.eb, %.sroa.08.0.copyload9.i  ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not105.i.i.i, label %.invoke453.i.i, label %bb.aj

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.06.0.i.i.i.i = phi i8 [ %i.eh, %bb.ag ], [ -1, %bb.ae ]
  %.sroa.58.0.i.i.i.i = phi ptr [ %i.dt, %bb.ag ], [ undef, %bb.ae ]
  %i.ed = load atomic i8, ptr %i.ce monotonic, align 1, !noalias !8956
  %i.ee = icmp eq i8 %i.ed, -128
  br i1 %i.ee, label %bb.ah, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"

bb.ag:                                            ; preds = %bb.ae
  %.val.i.i.i.i = load i64, ptr %i.bp, align 8, !noalias !8957, !noundef !21
  %.val11.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !8957, !noundef !21
  %i.ef = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val.i.i.i.i, i64 %.val11.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx), !noalias !8956
  %i.eg = lshr i64 %i.ef, 57
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  br label %bb.af

bb.ah:                                            ; preds = %bb.af
  store atomic i8 %.sroa.06.0.i.i.i.i, ptr %i.ce release, align 1, !noalias !8956
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i": ; preds = %bb.ah, %bb.af
  %.sroa.2237.0.copyload.i.i.i = load i32, ptr %.sroa.7304.0..sroa_idx.i.i.i, align 8, !noalias !8932 ; 3 uses
  %.sroa.3238.0.copyload.i.i.i = load i32, ptr %.sroa.8305.0..sroa_idx.i.i.i, align 4, !noalias !8932 ; 2 uses
  %i.ei = icmp samesign ult i32 %.sroa.2237.0.copyload.i.i.i, 1000000000 ; 2 uses
  br i1 %i.dy, label %bb.ak, label %bb.al

bb.ai:                                            ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit137.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8931
  br label %.invoke449.i.i

bb.aj:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i"
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !8931, !nonnull !21, !noundef !21
  %i.el = getelementptr inbounds nuw [128 x i8], ptr %i.ek, i64 %i.ec
  %i.em = atomicrmw add ptr %i.el, i64 1 monotonic, align 8, !noalias !8932 ; 0 uses
  br label %.sink.split.i.i.i

.invoke453.i.i:                                   ; preds = %bb.ba, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i"
  %i.en = phi i64 [ %i.ec, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.thread.i.i.i" ], [ %i.fy, %bb.ba ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.en, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1205) #57
          to label %.cont454.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8940

.cont454.i.i:                                     ; preds = %.invoke453.i.i
  unreachable

bb.ak:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"
  br i1 %i.ei, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i", label %.invoke447.i.i, !prof !49

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i": ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false), !noalias !8958
  br label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i: ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit165.i.i.i", %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i"
  %.sroa.2237.0.copyload.sink.i.i.i = phi i32 [ %.sroa.2237.0.copyload.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i" ], [ %.sroa.4281.0.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit165.i.i.i" ]
  %.sroa.3238.0.copyload.sink.i.i.i = phi i32 [ %.sroa.3238.0.copyload.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i" ], [ %.sroa.8283.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit165.i.i.i" ]
  %.sroa.0270.2.ph.i.i.i = phi i64 [ %.sroa.0270.1442.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i" ], [ %.sroa.0270.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit165.i.i.i" ]
  %.sroa.3275.2.ph.i.i.i = phi i32 [ %.sroa.3275.1443.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i" ], [ %.sroa.3275.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit165.i.i.i" ]
  %.sroa.8283.2.ph.i.i.i = phi i32 [ %.sroa.8283.1444.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit139.i.i.i" ], [ %.sroa.8283.3.i.i.i, %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit165.i.i.i" ]
  store i32 %.sroa.2237.0.copyload.sink.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8930, !noalias !8938
  store i32 %.sroa.3238.0.copyload.sink.i.i.i, ptr %.sroa.5.0..sroa_idx.i127.i.i.i, align 4, !alias.scope !8930, !noalias !8938
  br label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i: ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i, %bb.w, %bb.v, %bb.r
  %.sroa.0270.2.i.i.i = phi i64 [ %.sroa.0270.1442.i.i.i, %bb.r ], [ %.sroa.0270.1442.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i ], [ %.sroa.0270.1442.i.i.i, %bb.w ], [ %.sroa.0270.1442.i.i.i, %bb.v ], [ %.sroa.0270.2.ph.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i ] ; 2 uses
  %.sroa.3275.2.i.i.i = phi i32 [ %.sroa.3275.1443.i.i.i, %bb.r ], [ %.sroa.3275.1443.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i ], [ %.sroa.3275.1443.i.i.i, %bb.w ], [ %.sroa.3275.1443.i.i.i, %bb.v ], [ %.sroa.3275.2.ph.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i ] ; 2 uses
  %.sroa.8283.2.i.i.i = phi i32 [ %.sroa.8283.1444.i.i.i, %bb.r ], [ %.sroa.8283.1444.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i ], [ %.sroa.8283.1444.i.i.i, %bb.w ], [ %.sroa.8283.1444.i.i.i, %bb.v ], [ %.sroa.8283.2.ph.i.i.i, %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.sink.split.i.i.i ] ; 2 uses
  %.sroa.085.1.i.i.i = add i64 %.sroa.085.0445.i.i.i, 1 ; 3 uses
  %.pn.i.i.i = add i64 %.sroa.085.1.i.i.i, %.sroa.072.0446.i.i.i
  %i.eo = icmp ugt i64 %.sroa.085.1.i.i.i, %i.cd
  br i1 %i.eo, label %.loopexit327.i.i.i, label %bb.q, !prof !69

bb.al:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9insert_at17h61c49d4215be6d6cE.exit.i.i.i"
  br i1 %i.ei, label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit140.i.i.i", label %.invoke447.i.i, !prof !49

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$7restore17h9729900273464c49E.exit140.i.i.i": ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i64 24, i1 false), !noalias !8958
  store i32 %.sroa.2237.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !8959, !noalias !8938
  store i32 %.sroa.3238.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i127.i.i.i, align 4, !alias.scope !8959, !noalias !8938
  br label %bb.w

_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i: ; preds = %bb.w
  %.sroa.gep39.i.i = getelementptr i8, ptr %i.db, i64 8
  %.sroa.056.0.i.sroa.sel41.i.i = select i1 %i.da, ptr %.sroa.gep39.i.i, ptr %i.bn
  %.sroa.056.0.val.i.i.i = load ptr, ptr %.sroa.056.0.i.sroa.sel41.i.i, align 8, !noalias !8943, !nonnull !21, !noundef !21
  %i.ep = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 8
  %.sroa.10.0.val.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !8932, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.10.0.val.i.i.i, ptr nonnull readonly align 1 %.sroa.056.0.val.i.i.i, i64 %.sroa.10.0.val115.i.i.i), !alias.scope !8960, !noalias !8932
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.am, label %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.thread.i.i.i

bb.am:                                            ; preds = %_ZN4core3cmp9PartialEq2ne17hbe4cb7e26b86de13E.exit.i.i.i
  %i.eq = ptrtoint ptr %.sroa.047.0.i.i.i to i64
  %i.er = and i64 %i.eq, 1
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %.preheader.preheader.i.i.i, label %.loopexit327.i.i.i, !prof !49

.preheader.preheader.i.i.i:                       ; preds = %bb.am
  %.sroa.011.0.copyload.i.pre.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !8961, !noalias !8962
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ay, %.preheader.preheader.i.i.i
  %.sroa.011.0.copyload.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i, %bb.ay ], [ %.sroa.011.0.copyload.i.pre.i.i.i, %.preheader.preheader.i.i.i ]
  %.sroa.10.1.i.i.i = phi ptr [ %.sroa.1063.0.i.i.i, %bb.ay ], [ %.sroa.10.0.i.i.i, %.preheader.preheader.i.i.i ] ; 7 uses
  %.sroa.047.1.i.i.i = phi ptr [ %.sroa.960.0.i.i.i, %bb.ay ], [ %.sroa.047.0.i.i.i, %.preheader.preheader.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8963)
  %.sroa.6.0.copyload.i.i.i.i = load i32, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !alias.scope !8961, !noalias !8962 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !alias.scope !8961, !noalias !8962
  store i32 1000000002, ptr %.sroa.32.0..sroa_idx.i.i, align 8, !alias.scope !8961, !noalias !8962
  %i.et = icmp ne i32 %.sroa.6.0.copyload.i.i.i.i, 1000000002
  %i.eu = icmp eq ptr %.sroa.011.0.copyload.i.i.i.i, %.sroa.10.1.i.i.i
  %or.cond.i.i.i.i = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.an, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h9cc7a2aa01632d6bE.exit.i.i.i.i"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h9cc7a2aa01632d6bE.exit.i.i.i.i": ; preds = %.preheader.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.i.i.i) ]
  %i.ev = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc22.i.i unwind label %.loopexit.i.i, !noalias !8940 ; 2 uses

.noexc22.i.i:                                     ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h9cc7a2aa01632d6bE.exit.i.i.i.i"
  %i.ew = extractvalue { i64, i32 } %i.ev, 0
  %i.ex = extractvalue { i64, i32 } %i.ev, 1
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit142.i.i.i"

bb.an:                                            ; preds = %.preheader.i.i.i
  %.sroa.0239.0.copyload240.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8964, !noalias !8938
  %i.ey = load <2 x i32>, ptr %.sroa.5241.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !8964, !noalias !8938
  %.sroa.6245.0.copyload246.i.i.i = load i64, ptr %.sroa.6245.0..sroa.513.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !alias.scope !8964, !noalias !8938
  br label %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit142.i.i.i"

"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit142.i.i.i": ; preds = %bb.an, %.noexc22.i.i
  %.sroa.0239.0.i.i.i = phi i64 [ %.sroa.0239.0.copyload240.i.i.i, %bb.an ], [ undef, %.noexc22.i.i ]
  %.sroa.6245.0.i.i.i = phi i64 [ %.sroa.6245.0.copyload246.i.i.i, %bb.an ], [ %i.ew, %.noexc22.i.i ]
  %.sroa.9248.0.i.i.i = phi i32 [ %.sroa.9.0.copyload.i.i.i.i, %bb.an ], [ undef, %.noexc22.i.i ]
  %.sink.i.i.i.i = phi i32 [ %.sroa.6.0.copyload.i.i.i.i, %bb.an ], [ %i.ex, %.noexc22.i.i ] ; 3 uses
  %i.ez = phi <2 x i32> [ %i.ey, %bb.an ], [ <i32 1000000000, i32 undef>, %.noexc22.i.i ]
  %i.fa = add nsw i32 %.sink.i.i.i.i, -1000000000
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ugt i32 %.sink.i.i.i.i, 999999999
  %i.fd = add nuw nsw i64 %i.fb, 1
  %i.fe = select i1 %i.fc, i64 %i.fd, i64 0
  switch i64 %i.fe, label %.loopexit.i.i.i [
    i64 0, label %bb.ao
    i64 1, label %bb.av
    i64 2, label %.loopexit59.i.i
  ]

bb.ao:                                            ; preds = %"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17hbe4e97ae08112c24E.exit142.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !8965)
  %i.ff = load i64, ptr %i.p, align 8, !range !25, !alias.scope !8966, !noalias !8942, !noundef !21 ; 4 uses
  %i.fg = icmp eq i64 %i.ff, -9223372036854775808
  %i.fh = load ptr, ptr %i.bn, align 8, !alias.scope !8966, !noalias !8942 ; 4 uses
  br i1 %i.fg, label %"_ZN6papaya3raw22LazyEntry$LT$K$C$V$GT$4init17h6ec7a4bf80685da0E.exit150.i.i.i", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.518.0.copyload.i144.i.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8966, !noalias !8942
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !8967
  %i.fi = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !8967 ; 6 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.aq, label %bb.au, !prof !23

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #57
          to label %.noexc.i.i.i.i.i149.i.i.i unwind label %bb.ar, !noalias !8968

.noexc.i.i.i.i.i149.i.i.i:                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fk = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.fl = icmp eq i64 %i.ff, 0
  br i1 %i.fl, label %.body.i.i148.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8969
  br label %.body.i.i148.i.i.i

.body.i.i148.i.i.i:                               ; preds = %bb.as, %bb.ar
  %i.fm = extractvalue { ptr, i32 } %i.fk, 0
  %i.fn = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.fm)
          to label %.invoke451.i.i unwind label %bb.at, !noalias !8970

bb.at:                                            ; preds = %.body.i.i148.i.i.i
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #56, !noalias !8970
  unreachable

end_hunk_2
begin_hunk_3_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E":bb.a
  %.sroa.22299.4.i = phi i64 [ %i.ck, %bb.j ], [ %i.ed, %.lr.ph.i147.i ] ; 5 uses
  %.sroa.12294.4.i = phi i64 [ %i.cl, %bb.j ], [ %i.eg, %.lr.ph.i147.i ] ; 3 uses
  %.sroa.0289.4.i = phi i64 [ %i.cj, %bb.j ], [ %i.eh, %.lr.ph.i147.i ] ; 3 uses
  %i.cr = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i154.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %i.cq
  %.sroa.014.0.copyload.i18.i146.i = load i32, ptr %i.cs, align 1, !alias.scope !25127, !noalias !25128
  %i.ct = zext i32 %.sroa.014.0.copyload.i18.i146.i to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i154.i
  %.sroa.011.0.i12.i138.i = phi i64 [ %i.ct, %bb.k ], [ 0, %._crit_edge.i154.i ] ; 2 uses
  %.sroa.0.0.i13.i139.i = phi i64 [ 4, %bb.k ], [ 0, %._crit_edge.i154.i ] ; 5 uses
  %i.cu = or disjoint i64 %.sroa.0.0.i13.i139.i, 1
  %i.cv = icmp samesign ult i64 %i.cu, %i.cp
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr i8, ptr %.val.i.i40.i, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.sroa.0.0.i13.i139.i
  %.sroa.015.0.copyload.i17.i145.i = load i16, ptr %i.cx, align 1, !alias.scope !25127, !noalias !25128
  %i.cy = zext i16 %.sroa.015.0.copyload.i17.i145.i to i64
  %i.cz = shl nuw nsw i64 %.sroa.0.0.i13.i139.i, 3
  %i.da = shl nuw nsw i64 %i.cy, %i.cz
  %i.db = or i64 %i.da, %.sroa.011.0.i12.i138.i
  %i.dc = or disjoint i64 %.sroa.0.0.i13.i139.i, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.011.1.i14.i140.i = phi i64 [ %i.db, %bb.m ], [ %.sroa.011.0.i12.i138.i, %bb.l ] ; 2 uses
  %.sroa.0.1.i15.i141.i = phi i64 [ %i.dc, %bb.m ], [ %.sroa.0.0.i13.i139.i, %bb.l ] ; 3 uses
  %i.dd = icmp samesign ult i64 %.sroa.0.1.i15.i141.i, %i.cp
  br i1 %i.dd, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.thread.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.thread.i": ; preds = %bb.n
  %i.de = add nuw i64 %.sroa.0.1.i15.i141.i, %i.cq ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val1.i.i41.i
  call void @llvm.assume(i1 %i.df), !noalias !25129
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %i.de
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !25127, !noalias !25128, !noundef !21
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %.sroa.0.1.i15.i141.i, 3
  %i.dk = shl nuw nsw i64 %i.di, %i.dj
  %i.dl = or i64 %i.dk, %.sroa.011.1.i14.i140.i
  %i.dm = add i64 %.val1.i.i41.i, 1
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i

.lr.ph.i147.i:                                    ; preds = %bb.j, %.lr.ph.i147.i
  %i.dn = phi i64 [ %i.eg, %.lr.ph.i147.i ], [ %i.cl, %bb.j ]
  %i.do = phi i64 [ %i.ed, %.lr.ph.i147.i ], [ %i.ck, %bb.j ] ; 3 uses
  %i.dp = phi i64 [ %i.ef, %.lr.ph.i147.i ], [ %i.cm, %bb.j ]
  %.sroa.04.020.i152.i = phi i64 [ %i.ei, %.lr.ph.i147.i ], [ 0, %bb.j ] ; 2 uses
  %i.dq = phi i64 [ %i.eh, %.lr.ph.i147.i ], [ %i.cj, %bb.j ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %.sroa.04.020.i152.i
  %.sroa.08.0.copyload.i153.i = load i64, ptr %i.dr, align 1, !alias.scope !25130, !noalias !25128 ; 2 uses
  %i.ds = xor i64 %.sroa.08.0.copyload.i153.i, %i.dp ; 3 uses
  %i.dt = add i64 %i.dq, %i.do                    ; 3 uses
  %i.du = add i64 %i.ds, %i.dn                    ; 2 uses
  %i.dv = call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 13)
  %i.dw = xor i64 %i.dt, %i.dv                    ; 3 uses
  %i.dx = call i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 16)
  %i.dy = xor i64 %i.du, %i.dx                    ; 3 uses
  %i.dz = call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 32)
  %i.ea = add i64 %i.du, %i.dw                    ; 3 uses
  %i.eb = add i64 %i.dy, %i.dz                    ; 2 uses
  %i.ec = call i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 17)
  %i.ed = xor i64 %i.ea, %i.ec                    ; 2 uses
  %i.ee = call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 21)
  %i.ef = xor i64 %i.ee, %i.eb                    ; 2 uses
  %i.eg = call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 32) ; 2 uses
  %i.eh = xor i64 %i.eb, %.sroa.08.0.copyload.i153.i ; 2 uses
  %i.ei = add nuw i64 %.sroa.04.020.i152.i, 8     ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.cq
  br i1 %i.ej, label %.lr.ph.i147.i, label %._crit_edge.i154.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i": ; preds = %bb.n
  %i.ek = add i64 %.val1.i.i41.i, 1               ; 2 uses
  %i.el = icmp eq i64 %i.cp, 0
  br i1 %i.el, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.thread.i"
  %i.em = phi i64 [ %i.dm, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.thread.i" ], [ %i.ek, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ] ; 2 uses
  %.sroa.011.2.i16.i143362.i = phi i64 [ %i.dl, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.thread.i" ], [ %.sroa.011.1.i14.i140.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %i.en = shl nuw nsw i64 %i.cp, 3
  %i.eo = shl nuw i64 255, %i.en
  %i.ep = or i64 %.sroa.011.2.i16.i143362.i, %i.eo ; 3 uses
  %.not368.i = icmp eq i64 %i.cp, 7
  br i1 %.not368.i, label %.thread576.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

.thread576.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i
  %i.eq = xor i64 %i.ep, %.sroa.32304.4.i         ; 3 uses
  %i.er = add i64 %.sroa.0289.4.i, %.sroa.22299.4.i ; 3 uses
  %i.es = add i64 %i.eq, %.sroa.12294.4.i         ; 2 uses
  %i.et = call i64 @llvm.fshl.i64(i64 %.sroa.22299.4.i, i64 %.sroa.22299.4.i, i64 13)
  %i.eu = xor i64 %i.er, %i.et                    ; 3 uses
  %i.ev = call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 16)
  %i.ew = xor i64 %i.es, %i.ev                    ; 3 uses
  %i.ex = call i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 32)
  %i.ey = add i64 %i.es, %i.eu                    ; 3 uses
  %i.ez = add i64 %i.ew, %i.ex                    ; 2 uses
  %i.fa = call i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 17)
  %i.fb = xor i64 %i.ey, %i.fa
  %i.fc = call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 21)
  %i.fd = xor i64 %i.fc, %i.ez
  %i.fe = call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 32)
  %i.ff = xor i64 %i.ez, %i.ep
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i": ; preds = %.thread576.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i"
  %i.fg = phi i64 [ %i.em, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %i.em, %.thread576.i ], [ %i.ek, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.50314.0.i = phi i64 [ %i.ep, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ 0, %.thread576.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.32304.2.i = phi i64 [ %.sroa.32304.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %i.fd, %.thread576.i ], [ %.sroa.32304.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.22299.2.i = phi i64 [ %.sroa.22299.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %i.fb, %.thread576.i ], [ %.sroa.22299.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ] ; 3 uses
  %.sroa.12294.2.i = phi i64 [ %.sroa.12294.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %i.fe, %.thread576.i ], [ %.sroa.12294.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %.sroa.0289.2.i = phi i64 [ %.sroa.0289.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i105.i ], [ %i.ff, %.thread576.i ], [ %.sroa.0289.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit157.i" ]
  %i.fh = shl i64 %i.fg, 56
  %i.fi = or i64 %i.fh, %.sroa.50314.0.i          ; 2 uses
  %i.fj = xor i64 %i.fi, %.sroa.32304.2.i         ; 3 uses
  %i.fk = add i64 %.sroa.0289.2.i, %.sroa.22299.2.i ; 3 uses
  %i.fl = add i64 %.sroa.12294.2.i, %i.fj         ; 2 uses
  %i.fm = call i64 @llvm.fshl.i64(i64 %.sroa.22299.2.i, i64 %.sroa.22299.2.i, i64 13)
  %i.fn = xor i64 %i.fk, %i.fm                    ; 3 uses
  %i.fo = call i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 16)
  %i.fp = xor i64 %i.fl, %i.fo                    ; 3 uses
  %i.fq = call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 32)
  %i.fr = add i64 %i.fn, %i.fl                    ; 3 uses
  %i.fs = add i64 %i.fq, %i.fp                    ; 2 uses
  %i.ft = call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 17)
  %i.fu = xor i64 %i.fr, %i.ft                    ; 3 uses
  %i.fv = call i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 21)
  %i.fw = xor i64 %i.fs, %i.fv                    ; 3 uses
  %i.fx = call i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 32)
  %i.fy = xor i64 %i.fs, %i.fi
  %i.fz = xor i64 %i.fx, 255
  %i.ga = add i64 %i.fy, %i.fu                    ; 3 uses
  %i.gb = add i64 %i.fz, %i.fw                    ; 2 uses
  %i.gc = call i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 13)
  %i.gd = xor i64 %i.ga, %i.gc                    ; 3 uses
  %i.ge = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 16)
  %i.gf = xor i64 %i.gb, %i.ge                    ; 3 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 32)
  %i.gh = add i64 %i.gd, %i.gb                    ; 3 uses
  %i.gi = add i64 %i.gf, %i.gg                    ; 2 uses
  %i.gj = call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gk = xor i64 %i.gh, %i.gj                    ; 3 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 21)
  %i.gm = xor i64 %i.gl, %i.gi                    ; 3 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.go = add i64 %i.gk, %i.gi                    ; 3 uses
  %i.gp = add i64 %i.gm, %i.gn                    ; 2 uses
  %i.gq = call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 13)
  %i.gr = xor i64 %i.gq, %i.go                    ; 3 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 16)
  %i.gt = xor i64 %i.gs, %i.gp                    ; 3 uses
  %i.gu = call i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 32)
  %i.gv = add i64 %i.gr, %i.gp                    ; 3 uses
  %i.gw = add i64 %i.gt, %i.gu                    ; 2 uses
  %i.gx = call i64 @llvm.fshl.i64(i64 %i.gr, i64 %i.gr, i64 17)
  %i.gy = xor i64 %i.gx, %i.gv                    ; 3 uses
  %i.gz = call i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 21)
  %i.ha = xor i64 %i.gz, %i.gw                    ; 3 uses
  %i.hb = call i64 @llvm.fshl.i64(i64 %i.gv, i64 %i.gv, i64 32)
  %i.hc = add i64 %i.gy, %i.gw
  %i.hd = add i64 %i.ha, %i.hb                    ; 2 uses
  %i.he = call i64 @llvm.fshl.i64(i64 %i.gy, i64 %i.gy, i64 13)
  %i.hf = xor i64 %i.he, %i.hc                    ; 3 uses
  %i.hg = call i64 @llvm.fshl.i64(i64 %i.ha, i64 %i.ha, i64 16)
  %i.hh = xor i64 %i.hg, %i.hd                    ; 2 uses
  %i.hi = add i64 %i.hf, %i.hd                    ; 3 uses
  %i.hj = call i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 17)
  %i.hk = call i64 @llvm.fshl.i64(i64 %i.hh, i64 %i.hh, i64 21)
  %i.hl = call i64 @llvm.fshl.i64(i64 %i.hi, i64 %i.hi, i64 32)
  %i.hm = xor i64 %i.hj, %i.hk
  %i.hn = xor i64 %i.hm, %i.hl
  %i.ho = xor i64 %i.hn, %i.hi                    ; 2 uses
  %i.hp = lshr i64 %i.ho, 57
  %i.hq = trunc nuw nsw i64 %i.hp to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i"
  %.pn.i.i.i = phi i64 [ %i.ho, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i" ], [ %i.hv, %bb.p ]
  %.sroa.030.06.i.i.i = phi i64 [ 0, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit128.i" ], [ %i.hu, %bb.p ]
  %.sroa.026.07.i.i.i = and i64 %.pn.i.i.i, %i.ba ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.026.07.i.i.i ; 4 uses
  %i.hs = load atomic i8, ptr %i.hr acquire, align 1, !noalias !25124
  %i.ht = icmp eq i8 %i.hs, -128
  br i1 %i.ht, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.y, %bb.x, %bb.o
  %i.hu = add i64 %.sroa.030.06.i.i.i, 1          ; 3 uses
  %i.hv = add i64 %i.hu, %.sroa.026.07.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.hu, %i.bo
  br i1 %.not.i.i.i, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$16copy_at_blocking17h0bed101db6979210E.exit.i", label %bb.o, !prof !47

bb.q:                                             ; preds = %bb.o
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.026.07.i.i.i
  %i.hx = cmpxchg ptr %i.hw, ptr null, ptr %i.cb seq_cst seq_cst, align 8, !noalias !25124 ; 2 uses
  %i.hy = extractvalue { ptr, i1 } %i.hx, 1
  br i1 %i.hy, label %.split9.us.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %5 = extractvalue { ptr, i1 } %i.hx, 0          ; 2 uses
  %i.hz = ptrtoint ptr %5 to i64
  %i.ia = and i64 %i.hz, 7
  %6 = sub nsw i64 0, %i.ia
  %7 = getelementptr i8, ptr %5, i64 %6           ; 3 uses
  %i.ib = icmp eq ptr %7, null
  br i1 %i.ib, label %bb.x, label %bb.s

.split9.us.i.i.i:                                 ; preds = %bb.q
  store atomic i8 %i.hq, ptr %i.hr release, align 1, !noalias !25124
  br label %bb.z

bb.s:                                             ; preds = %bb.r
  %.val.i.i.i = load i64, ptr %i.al, align 8, !noalias !25124, !noundef !21 ; 2 uses
  %.val34.i.i.i = load i64, ptr %i.am, align 8, !noalias !25124, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25131)
  %i.ic = xor i64 %.val.i.i.i, 8317987319222330741 ; 2 uses
  %i.id = xor i64 %.val34.i.i.i, 7237128888997146477 ; 2 uses
  %i.ie = xor i64 %.val.i.i.i, 7816392313619706465 ; 2 uses
  %i.if = xor i64 %.val34.i.i.i, 8387220255154660723 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val.i.i32.i = load ptr, ptr %i.ig, align 8, !alias.scope !25131, !noalias !25132, !nonnull !21, !noundef !21 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val1.i.i33.i = load i64, ptr %i.ih, align 8, !alias.scope !25131, !noalias !25132, !noundef !21 ; 5 uses
  %i.ii = and i64 %.val1.i.i33.i, 7               ; 6 uses
  %i.ij = and i64 %.val1.i.i33.i, -8              ; 5 uses
  %.not370.i = icmp eq i64 %i.ij, 0
  br i1 %.not370.i, label %._crit_edge.i97.i, label %.lr.ph.i90.i

._crit_edge.i97.i:                                ; preds = %.lr.ph.i90.i, %bb.s
  %.sroa.32.4.i = phi i64 [ %i.if, %bb.s ], [ %i.jy, %.lr.ph.i90.i ] ; 3 uses
  %.sroa.22.4.i = phi i64 [ %i.id, %bb.s ], [ %i.jw, %.lr.ph.i90.i ] ; 5 uses
  %.sroa.12.4.i = phi i64 [ %i.ie, %bb.s ], [ %i.jz, %.lr.ph.i90.i ] ; 3 uses
  %.sroa.0263.4.i = phi i64 [ %i.ic, %bb.s ], [ %i.ka, %.lr.ph.i90.i ] ; 3 uses
  %i.ik = icmp samesign ugt i64 %i.ii, 3
  br i1 %i.ik, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i97.i
  %i.il = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %i.ij
  %.sroa.014.0.copyload.i18.i89.i = load i32, ptr %i.il, align 1, !alias.scope !25133, !noalias !25134
  %i.im = zext i32 %.sroa.014.0.copyload.i18.i89.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i97.i
  %.sroa.011.0.i12.i81.i = phi i64 [ %i.im, %bb.t ], [ 0, %._crit_edge.i97.i ] ; 2 uses
  %.sroa.0.0.i13.i82.i = phi i64 [ 4, %bb.t ], [ 0, %._crit_edge.i97.i ] ; 5 uses
  %i.in = or disjoint i64 %.sroa.0.0.i13.i82.i, 1
  %i.io = icmp samesign ult i64 %i.in, %i.ii
  br i1 %i.io, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ip = getelementptr i8, ptr %.val.i.i32.i, i64 %i.ij
  %i.iq = getelementptr i8, ptr %i.ip, i64 %.sroa.0.0.i13.i82.i
  %.sroa.015.0.copyload.i17.i88.i = load i16, ptr %i.iq, align 1, !alias.scope !25133, !noalias !25134
  %i.ir = zext i16 %.sroa.015.0.copyload.i17.i88.i to i64
  %i.is = shl nuw nsw i64 %.sroa.0.0.i13.i82.i, 3
  %i.it = shl nuw nsw i64 %i.ir, %i.is
  %i.iu = or i64 %i.it, %.sroa.011.0.i12.i81.i
  %i.iv = or disjoint i64 %.sroa.0.0.i13.i82.i, 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.011.1.i14.i83.i = phi i64 [ %i.iu, %bb.v ], [ %.sroa.011.0.i12.i81.i, %bb.u ] ; 2 uses
  %.sroa.0.1.i15.i84.i = phi i64 [ %i.iv, %bb.v ], [ %.sroa.0.0.i13.i82.i, %bb.u ] ; 3 uses
  %i.iw = icmp samesign ult i64 %.sroa.0.1.i15.i84.i, %i.ii
  br i1 %i.iw, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.thread.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.thread.i": ; preds = %bb.w
  %i.ix = add nuw i64 %.sroa.0.1.i15.i84.i, %i.ij ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %.val1.i.i33.i
  call void @llvm.assume(i1 %i.iy), !noalias !25135
  %i.iz = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %i.ix
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !25133, !noalias !25134, !noundef !21
  %i.jb = zext i8 %i.ja to i64
  %i.jc = shl nuw nsw i64 %.sroa.0.1.i15.i84.i, 3
  %i.jd = shl nuw nsw i64 %i.jb, %i.jc
  %i.je = or i64 %i.jd, %.sroa.011.1.i14.i83.i
  %i.jf = add i64 %.val1.i.i33.i, 1
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i

.lr.ph.i90.i:                                     ; preds = %bb.s, %.lr.ph.i90.i
  %i.jg = phi i64 [ %i.jz, %.lr.ph.i90.i ], [ %i.ie, %bb.s ]
  %i.jh = phi i64 [ %i.jw, %.lr.ph.i90.i ], [ %i.id, %bb.s ] ; 3 uses
  %i.ji = phi i64 [ %i.jy, %.lr.ph.i90.i ], [ %i.if, %bb.s ]
  %.sroa.04.020.i95.i = phi i64 [ %i.kb, %.lr.ph.i90.i ], [ 0, %bb.s ] ; 2 uses
  %i.jj = phi i64 [ %i.ka, %.lr.ph.i90.i ], [ %i.ic, %bb.s ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.val.i.i32.i, i64 %.sroa.04.020.i95.i
  %.sroa.08.0.copyload.i96.i = load i64, ptr %i.jk, align 1, !alias.scope !25136, !noalias !25134 ; 2 uses
  %i.jl = xor i64 %.sroa.08.0.copyload.i96.i, %i.ji ; 3 uses
  %i.jm = add i64 %i.jj, %i.jh                    ; 3 uses
  %i.jn = add i64 %i.jl, %i.jg                    ; 2 uses
  %i.jo = call i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 13)
  %i.jp = xor i64 %i.jm, %i.jo                    ; 3 uses
  %i.jq = call i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 16)
  %i.jr = xor i64 %i.jn, %i.jq                    ; 3 uses
  %i.js = call i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 32)
  %i.jt = add i64 %i.jn, %i.jp                    ; 3 uses
  %i.ju = add i64 %i.jr, %i.js                    ; 2 uses
  %i.jv = call i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 17)
  %i.jw = xor i64 %i.jt, %i.jv                    ; 2 uses
  %i.jx = call i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 21)
  %i.jy = xor i64 %i.jx, %i.ju                    ; 2 uses
  %i.jz = call i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 32) ; 2 uses
  %i.ka = xor i64 %i.ju, %.sroa.08.0.copyload.i96.i ; 2 uses
  %i.kb = add nuw i64 %.sroa.04.020.i95.i, 8      ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.ij
  br i1 %i.kc, label %.lr.ph.i90.i, label %._crit_edge.i97.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i": ; preds = %bb.w
  %i.kd = add i64 %.val1.i.i33.i, 1               ; 2 uses
  %i.ke = icmp eq i64 %i.ii, 0
  br i1 %i.ke, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.thread.i"
  %i.kf = phi i64 [ %i.jf, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.thread.i" ], [ %i.kd, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ] ; 2 uses
  %.sroa.011.2.i16.i86364.i = phi i64 [ %i.je, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.thread.i" ], [ %.sroa.011.1.i14.i83.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %i.kg = shl nuw nsw i64 %i.ii, 3
  %i.kh = shl nuw i64 255, %i.kg
  %i.ki = or i64 %.sroa.011.2.i16.i86364.i, %i.kh ; 3 uses
  %.not371.i = icmp eq i64 %i.ii, 7
  br i1 %.not371.i, label %.thread582.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

.thread582.i:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i
  %i.kj = xor i64 %i.ki, %.sroa.32.4.i            ; 3 uses
  %i.kk = add i64 %.sroa.0263.4.i, %.sroa.22.4.i  ; 3 uses
  %i.kl = add i64 %i.kj, %.sroa.12.4.i            ; 2 uses
  %i.km = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.i, i64 %.sroa.22.4.i, i64 13)
  %i.kn = xor i64 %i.kk, %i.km                    ; 3 uses
  %i.ko = call i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 16)
  %i.kp = xor i64 %i.kl, %i.ko                    ; 3 uses
  %i.kq = call i64 @llvm.fshl.i64(i64 %i.kk, i64 %i.kk, i64 32)
  %i.kr = add i64 %i.kl, %i.kn                    ; 3 uses
  %i.ks = add i64 %i.kp, %i.kq                    ; 2 uses
  %i.kt = call i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 17)
  %i.ku = xor i64 %i.kr, %i.kt
  %i.kv = call i64 @llvm.fshl.i64(i64 %i.kp, i64 %i.kp, i64 21)
  %i.kw = xor i64 %i.kv, %i.ks
  %i.kx = call i64 @llvm.fshl.i64(i64 %i.kr, i64 %i.kr, i64 32)
  %i.ky = xor i64 %i.ks, %i.ki
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i": ; preds = %.thread582.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i"
  %i.kz = phi i64 [ %i.kf, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.kf, %.thread582.i ], [ %i.kd, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.50.0.i = phi i64 [ %i.ki, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ 0, %.thread582.i ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.32.2.i = phi i64 [ %.sroa.32.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.kw, %.thread582.i ], [ %.sroa.32.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.22.2.i = phi i64 [ %.sroa.22.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.ku, %.thread582.i ], [ %.sroa.22.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ] ; 3 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.kx, %.thread582.i ], [ %.sroa.12.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %.sroa.0263.2.i = phi i64 [ %.sroa.0263.4.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.i ], [ %i.ky, %.thread582.i ], [ %.sroa.0263.4.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit99.i" ]
  %i.la = shl i64 %i.kz, 56
  %i.lb = or i64 %i.la, %.sroa.50.0.i             ; 2 uses
  %i.lc = xor i64 %i.lb, %.sroa.32.2.i            ; 3 uses
  %i.ld = add i64 %.sroa.0263.2.i, %.sroa.22.2.i  ; 3 uses
  %i.le = add i64 %.sroa.12.2.i, %i.lc            ; 2 uses
  %i.lf = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.i, i64 %.sroa.22.2.i, i64 13)
  %i.lg = xor i64 %i.ld, %i.lf                    ; 3 uses
  %i.lh = call i64 @llvm.fshl.i64(i64 %i.lc, i64 %i.lc, i64 16)
  %i.li = xor i64 %i.le, %i.lh                    ; 3 uses
  %i.lj = call i64 @llvm.fshl.i64(i64 %i.ld, i64 %i.ld, i64 32)
  %i.lk = add i64 %i.lg, %i.le                    ; 3 uses
  %i.ll = add i64 %i.lj, %i.li                    ; 2 uses
  %i.lm = call i64 @llvm.fshl.i64(i64 %i.lg, i64 %i.lg, i64 17)
  %i.ln = xor i64 %i.lk, %i.lm                    ; 3 uses
  %i.lo = call i64 @llvm.fshl.i64(i64 %i.li, i64 %i.li, i64 21)
  %i.lp = xor i64 %i.ll, %i.lo                    ; 3 uses
  %i.lq = call i64 @llvm.fshl.i64(i64 %i.lk, i64 %i.lk, i64 32)
  %i.lr = xor i64 %i.ll, %i.lb
  %i.ls = xor i64 %i.lq, 255
  %i.lt = add i64 %i.lr, %i.ln                    ; 3 uses
  %i.lu = add i64 %i.ls, %i.lp                    ; 2 uses
  %i.lv = call i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 13)
  %i.lw = xor i64 %i.lt, %i.lv                    ; 3 uses
  %i.lx = call i64 @llvm.fshl.i64(i64 %i.lp, i64 %i.lp, i64 16)
  %i.ly = xor i64 %i.lu, %i.lx                    ; 3 uses
  %i.lz = call i64 @llvm.fshl.i64(i64 %i.lt, i64 %i.lt, i64 32)
  %i.ma = add i64 %i.lw, %i.lu                    ; 3 uses
  %i.mb = add i64 %i.ly, %i.lz                    ; 2 uses
  %i.mc = call i64 @llvm.fshl.i64(i64 %i.lw, i64 %i.lw, i64 17)
  %i.md = xor i64 %i.ma, %i.mc                    ; 3 uses
  %i.me = call i64 @llvm.fshl.i64(i64 %i.ly, i64 %i.ly, i64 21)
  %i.mf = xor i64 %i.me, %i.mb                    ; 3 uses
  %i.mg = call i64 @llvm.fshl.i64(i64 %i.ma, i64 %i.ma, i64 32)
  %i.mh = add i64 %i.md, %i.mb                    ; 3 uses
  %i.mi = add i64 %i.mf, %i.mg                    ; 2 uses
  %i.mj = call i64 @llvm.fshl.i64(i64 %i.md, i64 %i.md, i64 13)
  %i.mk = xor i64 %i.mj, %i.mh                    ; 3 uses
  %i.ml = call i64 @llvm.fshl.i64(i64 %i.mf, i64 %i.mf, i64 16)
  %i.mm = xor i64 %i.ml, %i.mi                    ; 3 uses
  %i.mn = call i64 @llvm.fshl.i64(i64 %i.mh, i64 %i.mh, i64 32)
  %i.mo = add i64 %i.mk, %i.mi                    ; 3 uses
  %i.mp = add i64 %i.mm, %i.mn                    ; 2 uses
  %i.mq = call i64 @llvm.fshl.i64(i64 %i.mk, i64 %i.mk, i64 17)
  %i.mr = xor i64 %i.mq, %i.mo                    ; 3 uses
  %i.ms = call i64 @llvm.fshl.i64(i64 %i.mm, i64 %i.mm, i64 21)
  %i.mt = xor i64 %i.ms, %i.mp                    ; 2 uses
  %i.mu = call i64 @llvm.fshl.i64(i64 %i.mo, i64 %i.mo, i64 32)
  %i.mv = add i64 %i.mr, %i.mp
  %i.mw = add i64 %i.mt, %i.mu                    ; 2 uses
  %i.mx = call i64 @llvm.fshl.i64(i64 %i.mr, i64 %i.mr, i64 13)
  %i.my = xor i64 %i.mx, %i.mv                    ; 2 uses
  %i.mz = add i64 %i.my, %i.mw                    ; 2 uses
  %i.na = shl i64 %i.my, 17
  %i.nb = shl i64 %i.mt, 37
  %i.nc = shl i64 %i.mw, 21
  %i.nd = xor i64 %i.nc, %i.nb
  %i.ne = shl i64 %i.mz, 32
  %i.nf = xor i64 %i.nd, %i.na
  %i.ng = xor i64 %i.nf, %i.ne
  %i.nh = xor i64 %i.ng, %i.mz
  %i.ni = lshr i64 %i.nh, 57
  %i.nj = trunc nuw nsw i64 %i.ni to i8
  br label %bb.x

bb.x:                                             ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.i", %bb.r
end_hunk_3
begin_hunk_4_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E":bb.a
bb.dg:                                            ; preds = %bb.df
  store atomic i8 1, ptr %i.bg monotonic, align 4, !noalias !25119
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i: ; preds = %bb.dg, %bb.df, %bb.de, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E.exit.i.i"
  %i.amz = atomicrmw xchg ptr %i.bd, i32 0 release, align 4, !noalias !25119
  %i.ana = icmp eq i32 %i.amz, 2
  br i1 %i.ana, label %bb.dh, label %.preheader.i.i.backedge, !prof !23

bb.dh:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %i.bd), !noalias !25119
  br label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %bb.dh, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i
  br label %.preheader.i.i

bb.di:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25119
  br label %bb.ad

_ZN6papaya3raw5utils6parker6Parker4park17h2400fa636ada98a4E.exit.i: ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i", %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$std..thread..Thread$GT$$GT$17h3caf55e8d49202a1E.exit55.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25119
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod854.not = icmp eq i64 %xtraiter852, 0
  br i1 %lcmp.mod854.not, label %.backedge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod855 = icmp ne i64 %xtraiter852, 0
  call void @llvm.assume(i1 %lcmp.mod855)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter853 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter853.next, %.lr.ph.i.epil ]
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  %epil.iter853.next = add i64 %epil.iter853, 1   ; 2 uses
  %epil.iter853.cmp.not = icmp eq i64 %epil.iter853.next, %xtraiter852
  br i1 %epil.iter853.cmp.not, label %.backedge.i, label %.lr.ph.i.epil, !llvm.loop !24916

.backedge.i:                                      ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.dj, %_ZN6papaya3raw5utils6parker6Parker4park17h2400fa636ada98a4E.exit.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 2
  %indvars.iv.next543.i = add i64 %indvars.iv.i, %indvars.iv542.i
  br label %.preheader.i

bb.dj:                                            ; preds = %bb.ab
  %.not465.i = icmp eq i64 %.sroa.012.0.i, 0
  br i1 %.not465.i, label %.backedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.dj
  %xtraiter852 = and i64 %umax544.i, 7            ; 3 uses
  %i.anb = icmp ult i64 %indvars.iv542.i, 8
  br i1 %i.anb, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter856 = and i64 %umax544.i, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter857 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter857.next.7, %.lr.ph.i ]
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  call void @llvm.x86.sse2.pause() #52, !noalias !25119
  %niter857.next.7 = add i64 %niter857, 8         ; 2 uses
  %niter857.ncmp.7 = icmp eq i64 %niter857.next.7, %unroll_iter856
  br i1 %niter857.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit": ; preds = %.lr.ph464.i, %bb.f, %.preheader.i
  store <2 x i64> %.ph, ptr %0, align 8, !alias.scope !25116, !noalias !25229
  %.sroa.13.0..sroa_idx255.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.0.ph.i.ph, ptr %.sroa.13.0..sroa_idx255.i, align 8, !alias.scope !25116, !noalias !25229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ia

bb.dk:                                            ; preds = %bb.a
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.and = load i64, ptr %i.anc, align 8, !noundef !21 ; 4 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.anf = load atomic ptr, ptr %i.ane seq_cst, align 8, !noalias !25230 ; 15 uses
  %i.ang = icmp eq ptr %i.anf, null
  br i1 %i.ang, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.anh = load i64, ptr %i.anf, align 8, !noalias !25230, !noundef !21
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anf, i64 8
  %i.anj = load i64, ptr %i.ani, align 8, !noalias !25230, !noundef !21
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.10.0.i = phi i64 [ %i.anj, %bb.dl ], [ 0, %bb.dk ]
  %.sroa.0.0.i = phi i64 [ %i.anh, %bb.dl ], [ 0, %bb.dk ] ; 7 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anf, i64 16
  %i.anl = load atomic ptr, ptr %i.ank acquire, align 8, !noalias !25230 ; 25 uses
  %i.anm = icmp eq ptr %i.anl, null
  br i1 %i.anm, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ann = load i64, ptr %i.anl, align 8, !noalias !25230, !noundef !21 ; 6 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.anp = load i64, ptr %i.ano, align 8, !noalias !25230, !noundef !21 ; 6 uses
  %i.anq = tail call fastcc noundef zeroext i1 @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$11try_promote17h015b59a0ee69de0bE"(ptr noundef nonnull align 8 %1, i64 %.sroa.0.0.i, ptr nonnull %i.anf, ptr nonnull %i.anl, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !noalias !25231
  br i1 %i.anq, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %.preheader111.i

.preheader111.i:                                  ; preds = %bb.dn
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anl, i64 40 ; 6 uses
  %i.ans = add i64 %.sroa.0.0.i, 1                ; 4 uses
  %.not190.i = icmp eq i64 %i.and, 0
  %i.ant = getelementptr i8, ptr %i.anf, i64 137
  %i.anu = getelementptr i8, ptr %i.ant, i64 %.sroa.0.0.i
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  %i.anw = getelementptr i8, ptr %1, i64 1016     ; 2 uses
  %.sroa.9.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.10.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.9.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.10.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anf, i64 48 ; 5 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anf, i64 112 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anf, i64 52 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anf, i64 56
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.635.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.736.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.837.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.938.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anf, i64 136
  %.not.i2 = xor i1 %2, true
  br i1 %.not190.i, label %.preheader111.split.i, label %.preheader111.split.us.i

.preheader111.split.us.i:                         ; preds = %.preheader111.i, %._crit_edge.us.i
  %i.aoc = load atomic i64, ptr %i.anr monotonic, align 8, !noalias !25230
  %.not14.us.i = icmp ult i64 %i.aoc, %i.ans
  br i1 %.not14.us.i, label %.lr.ph.us.i, label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.preheader111.split.us.i
  %i.aod = atomicrmw add ptr %i.anr, i64 %i.and monotonic, align 8, !noalias !25230 ; 2 uses
  %i.aoe = call i64 @llvm.usub.sat.i64(i64 %i.ans, i64 %i.aod) ; 2 uses
  br label %bb.do

bb.do:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i", %.lr.ph.us.i
  %.sroa.01.0167.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.aog, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i" ] ; 3 uses
  %i.aof = add nuw i64 %.sroa.01.0167.us.i, %i.aod ; 2 uses
  %exitcond.not.i149 = icmp eq i64 %.sroa.01.0167.us.i, %i.aoe
  br i1 %exitcond.not.i149, label %._crit_edge.us.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aog = add nuw i64 %.sroa.01.0167.us.i, 1     ; 2 uses
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.aof ; 3 uses
  %i.aoi = atomicrmw or ptr %i.aoh, i64 1 acq_rel, align 8, !noalias !25232 ; 5 uses
  %i.aoj = inttoptr i64 %i.aoi to ptr             ; 3 uses
  %i.aok = and i64 %i.aoi, 7
  %i.aol = sub nsw i64 0, %i.aok
  %i.aom = getelementptr i8, ptr %i.aoj, i64 %i.aol ; 2 uses
  %i.aon = icmp eq i64 %i.aoi, 2
  br i1 %i.aon, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$19copy_at_incremental17hb8e7e4ba3c92e33cE.exit.us.i", label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aoo = icmp eq ptr %i.aom, null
  br i1 %i.aoo, label %bb.es, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.not.i.us.i = and i64 %i.aoi, 4
  %i.aop = xor i64 %.not.i.us.i, 4
  %i.aoq = getelementptr i8, ptr %i.aoj, i64 %i.aop
  %.val35.i.i.us.i = load i64, ptr %i.anv, align 8, !noalias !25233, !noundef !21
  %.val36.i.i.us.i = load i64, ptr %i.anw, align 8, !noalias !25233, !noundef !21
  %i.aor = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val35.i.i.us.i, i64 %.val36.i.i.us.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aom), !noalias !25233 ; 2 uses
  br label %.split.us.i.i.us.i

.split.us.i.i.us.i:                               ; preds = %bb.ed, %bb.dr
  %.sroa.10.0.us.i.i.us.i = phi ptr [ %.sroa.10.0.copyload15.us.i.i.us.i, %bb.ed ], [ %i.anl, %bb.dr ] ; 2 uses
  %.sroa.9.0.us.i.i.us.i = phi i64 [ %.sroa.9.0.copyload9.us.i.i.us.i, %bb.ed ], [ %i.anp, %bb.dr ] ; 2 uses
  %.sroa.0.0.us.i.i.us.i = phi i64 [ %.sroa.0.0.copyload4.us.i.i.us.i, %bb.ed ], [ %i.ann, %bb.dr ] ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.10.0.us.i.i.us.i, i64 136 ; 2 uses
  %i.aot = getelementptr i8, ptr %i.aos, i64 %.sroa.0.0.us.i.i.us.i
  %i.aou = getelementptr i8, ptr %i.aot, i64 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ec, %.split.us.i.i.us.i
  %.pn14.i.i.us.i = phi i64 [ %i.aor, %.split.us.i.i.us.i ], [ %i.aup, %bb.ec ]
  %.sroa.030.06.us.i.i.us.i = phi i64 [ 0, %.split.us.i.i.us.i ], [ %i.auo, %bb.ec ]
  %.sroa.026.07.us.i.i.us.i = and i64 %.pn14.i.i.us.i, %.sroa.0.0.us.i.i.us.i ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 %.sroa.026.07.us.i.i.us.i ; 4 uses
  %i.aow = load atomic i8, ptr %i.aov acquire, align 1, !noalias !25233
  %i.aox = icmp eq i8 %i.aow, -128
  br i1 %i.aox, label %bb.dt, label %bb.ec

bb.dt:                                            ; preds = %bb.ds
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %.sroa.026.07.us.i.i.us.i
  %i.aoz = cmpxchg ptr %i.aoy, ptr null, ptr %i.aoq seq_cst seq_cst, align 8, !noalias !25233 ; 2 uses
  %i.apa = extractvalue { ptr, i1 } %i.aoz, 1
  br i1 %i.apa, label %bb.ee, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %8 = extractvalue { ptr, i1 } %i.aoz, 0         ; 2 uses
  %i.apb = ptrtoint ptr %8 to i64
  %i.apc = and i64 %i.apb, 7
  %9 = sub nsw i64 0, %i.apc
  %10 = getelementptr i8, ptr %8, i64 %9          ; 3 uses
  %i.apd = icmp eq ptr %10, null
  br i1 %i.apd, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.val.us.i.i.us.i = load i64, ptr %i.anv, align 8, !noalias !25233, !noundef !21 ; 2 uses
  %.val34.us.i.i.us.i = load i64, ptr %i.anw, align 8, !noalias !25233, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25234)
  %i.ape = xor i64 %.val.us.i.i.us.i, 8317987319222330741 ; 2 uses
  %i.apf = xor i64 %.val34.us.i.i.us.i, 7237128888997146477 ; 2 uses
  %i.apg = xor i64 %.val.us.i.i.us.i, 7816392313619706465 ; 2 uses
  %i.aph = xor i64 %.val34.us.i.i.us.i, 8387220255154660723 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.val.i.i28.us.i = load ptr, ptr %i.api, align 8, !alias.scope !25234, !noalias !25235, !nonnull !21, !noundef !21 ; 4 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val1.i.i29.us.i = load i64, ptr %i.apj, align 8, !alias.scope !25234, !noalias !25235, !noundef !21 ; 5 uses
  %i.apk = and i64 %.val1.i.i29.us.i, 7           ; 6 uses
  %i.apl = and i64 %.val1.i.i29.us.i, -8          ; 5 uses
  %.not105.us.i = icmp eq i64 %i.apl, 0
  br i1 %.not105.us.i, label %._crit_edge.i55.us.i, label %.lr.ph.i48.us.i

.lr.ph.i48.us.i:                                  ; preds = %bb.dv, %.lr.ph.i48.us.i
  %i.apm = phi i64 [ %i.aqf, %.lr.ph.i48.us.i ], [ %i.apg, %bb.dv ]
  %i.apn = phi i64 [ %i.aqc, %.lr.ph.i48.us.i ], [ %i.apf, %bb.dv ] ; 3 uses
  %i.apo = phi i64 [ %i.aqe, %.lr.ph.i48.us.i ], [ %i.aph, %bb.dv ]
  %.sroa.04.020.i53.us.i = phi i64 [ %i.aqh, %.lr.ph.i48.us.i ], [ 0, %bb.dv ] ; 2 uses
  %i.app = phi i64 [ %i.aqg, %.lr.ph.i48.us.i ], [ %i.ape, %bb.dv ]
  %i.apq = getelementptr inbounds nuw i8, ptr %.val.i.i28.us.i, i64 %.sroa.04.020.i53.us.i
  %.sroa.08.0.copyload.i54.us.i = load i64, ptr %i.apq, align 1, !alias.scope !25236, !noalias !25237 ; 2 uses
  %i.apr = xor i64 %.sroa.08.0.copyload.i54.us.i, %i.apo ; 3 uses
  %i.aps = add i64 %i.app, %i.apn                 ; 3 uses
  %i.apt = add i64 %i.apr, %i.apm                 ; 2 uses
  %i.apu = call i64 @llvm.fshl.i64(i64 %i.apn, i64 %i.apn, i64 13)
  %i.apv = xor i64 %i.aps, %i.apu                 ; 3 uses
  %i.apw = call i64 @llvm.fshl.i64(i64 %i.apr, i64 %i.apr, i64 16)
  %i.apx = xor i64 %i.apt, %i.apw                 ; 3 uses
  %i.apy = call i64 @llvm.fshl.i64(i64 %i.aps, i64 %i.aps, i64 32)
  %i.apz = add i64 %i.apt, %i.apv                 ; 3 uses
  %i.aqa = add i64 %i.apx, %i.apy                 ; 2 uses
  %i.aqb = call i64 @llvm.fshl.i64(i64 %i.apv, i64 %i.apv, i64 17)
  %i.aqc = xor i64 %i.apz, %i.aqb                 ; 2 uses
  %i.aqd = call i64 @llvm.fshl.i64(i64 %i.apx, i64 %i.apx, i64 21)
  %i.aqe = xor i64 %i.aqd, %i.aqa                 ; 2 uses
  %i.aqf = call i64 @llvm.fshl.i64(i64 %i.apz, i64 %i.apz, i64 32) ; 2 uses
  %i.aqg = xor i64 %i.aqa, %.sroa.08.0.copyload.i54.us.i ; 2 uses
  %i.aqh = add nuw i64 %.sroa.04.020.i53.us.i, 8  ; 2 uses
  %i.aqi = icmp ult i64 %i.aqh, %i.apl
  br i1 %i.aqi, label %.lr.ph.i48.us.i, label %._crit_edge.i55.us.i

._crit_edge.i55.us.i:                             ; preds = %.lr.ph.i48.us.i, %bb.dv
  %.sroa.32.4.us.i = phi i64 [ %i.aph, %bb.dv ], [ %i.aqe, %.lr.ph.i48.us.i ] ; 3 uses
  %.sroa.22.4.us.i = phi i64 [ %i.apf, %bb.dv ], [ %i.aqc, %.lr.ph.i48.us.i ] ; 5 uses
  %.sroa.1281.4.us.i = phi i64 [ %i.apg, %bb.dv ], [ %i.aqf, %.lr.ph.i48.us.i ] ; 3 uses
  %.sroa.076.4.us.i = phi i64 [ %i.ape, %bb.dv ], [ %i.aqg, %.lr.ph.i48.us.i ] ; 3 uses
  %i.aqj = icmp samesign ugt i64 %i.apk, 3
  br i1 %i.aqj, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %._crit_edge.i55.us.i
  %i.aqk = getelementptr inbounds nuw i8, ptr %.val.i.i28.us.i, i64 %i.apl
  %.sroa.014.0.copyload.i18.i47.us.i = load i32, ptr %i.aqk, align 1, !alias.scope !25238, !noalias !25237
  %i.aql = zext i32 %.sroa.014.0.copyload.i18.i47.us.i to i64
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %._crit_edge.i55.us.i
  %.sroa.011.0.i12.i39.us.i = phi i64 [ %i.aql, %bb.dw ], [ 0, %._crit_edge.i55.us.i ] ; 2 uses
  %.sroa.0.0.i13.i40.us.i = phi i64 [ 4, %bb.dw ], [ 0, %._crit_edge.i55.us.i ] ; 5 uses
  %i.aqm = or disjoint i64 %.sroa.0.0.i13.i40.us.i, 1
  %i.aqn = icmp samesign ult i64 %i.aqm, %i.apk
  br i1 %i.aqn, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aqo = getelementptr i8, ptr %.val.i.i28.us.i, i64 %i.apl
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 %.sroa.0.0.i13.i40.us.i
  %.sroa.015.0.copyload.i17.i46.us.i = load i16, ptr %i.aqp, align 1, !alias.scope !25238, !noalias !25237
  %i.aqq = zext i16 %.sroa.015.0.copyload.i17.i46.us.i to i64
  %i.aqr = shl nuw nsw i64 %.sroa.0.0.i13.i40.us.i, 3
  %i.aqs = shl nuw nsw i64 %i.aqq, %i.aqr
  %i.aqt = or i64 %i.aqs, %.sroa.011.0.i12.i39.us.i
  %i.aqu = or disjoint i64 %.sroa.0.0.i13.i40.us.i, 2
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.sroa.011.1.i14.i41.us.i = phi i64 [ %i.aqt, %bb.dy ], [ %.sroa.011.0.i12.i39.us.i, %bb.dx ] ; 2 uses
  %.sroa.0.1.i15.i42.us.i = phi i64 [ %i.aqu, %bb.dy ], [ %.sroa.0.0.i13.i40.us.i, %bb.dx ] ; 3 uses
  %i.aqv = icmp samesign ult i64 %.sroa.0.1.i15.i42.us.i, %i.apk
  br i1 %i.aqv, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i", label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i": ; preds = %bb.dz
  %i.aqw = add i64 %.val1.i.i29.us.i, 1           ; 2 uses
  %i.aqx = icmp eq i64 %i.apk, 0
  br i1 %i.aqx, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i": ; preds = %bb.dz
  %i.aqy = add nuw i64 %.sroa.0.1.i15.i42.us.i, %i.apl ; 2 uses
  %i.aqz = icmp ult i64 %i.aqy, %.val1.i.i29.us.i
  call void @llvm.assume(i1 %i.aqz), !noalias !25239
  %i.ara = getelementptr inbounds nuw i8, ptr %.val.i.i28.us.i, i64 %i.aqy
  %i.arb = load i8, ptr %i.ara, align 1, !alias.scope !25238, !noalias !25237, !noundef !21
  %i.arc = zext i8 %i.arb to i64
  %i.ard = shl nuw nsw i64 %.sroa.0.1.i15.i42.us.i, 3
  %i.are = shl nuw nsw i64 %i.arc, %i.ard
  %i.arf = or i64 %i.are, %.sroa.011.1.i14.i41.us.i
  %i.arg = add i64 %.val1.i.i29.us.i, 1
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i", %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"
  %i.arh = phi i64 [ %i.arg, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ %i.aqw, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ] ; 2 uses
  %.sroa.011.2.i16.i44104.us.i = phi i64 [ %i.arf, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.thread.us.i" ], [ %.sroa.011.1.i14.i41.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %i.ari = shl nuw nsw i64 %i.apk, 3
  %i.arj = shl nuw i64 255, %i.ari
  %i.ark = or i64 %.sroa.011.2.i16.i44104.us.i, %i.arj ; 3 uses
  %.not106.us.i = icmp eq i64 %i.apk, 7
  br i1 %.not106.us.i, label %.thread.i150, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

.thread.i150:                                     ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i
  %i.arl = xor i64 %i.ark, %.sroa.32.4.us.i       ; 3 uses
  %i.arm = add i64 %.sroa.076.4.us.i, %.sroa.22.4.us.i ; 3 uses
  %i.arn = add i64 %i.arl, %.sroa.1281.4.us.i     ; 2 uses
  %i.aro = call i64 @llvm.fshl.i64(i64 %.sroa.22.4.us.i, i64 %.sroa.22.4.us.i, i64 13)
  %i.arp = xor i64 %i.arm, %i.aro                 ; 3 uses
  %i.arq = call i64 @llvm.fshl.i64(i64 %i.arl, i64 %i.arl, i64 16)
  %i.arr = xor i64 %i.arn, %i.arq                 ; 3 uses
  %i.ars = call i64 @llvm.fshl.i64(i64 %i.arm, i64 %i.arm, i64 32)
  %i.art = add i64 %i.arn, %i.arp                 ; 3 uses
  %i.aru = add i64 %i.arr, %i.ars                 ; 2 uses
  %i.arv = call i64 @llvm.fshl.i64(i64 %i.arp, i64 %i.arp, i64 17)
  %i.arw = xor i64 %i.art, %i.arv
  %i.arx = call i64 @llvm.fshl.i64(i64 %i.arr, i64 %i.arr, i64 21)
  %i.ary = xor i64 %i.arx, %i.aru
  %i.arz = call i64 @llvm.fshl.i64(i64 %i.art, i64 %i.art, i64 32)
  %i.asa = xor i64 %i.aru, %i.ark
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i": ; preds = %.thread.i150, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i"
  %i.asb = phi i64 [ %i.arh, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.arh, %.thread.i150 ], [ %i.aqw, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.50.0.us.i = phi i64 [ %i.ark, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ 0, %.thread.i150 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.32.2.us.i = phi i64 [ %.sroa.32.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.ary, %.thread.i150 ], [ %.sroa.32.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.22.2.us.i = phi i64 [ %.sroa.22.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.arw, %.thread.i150 ], [ %.sroa.22.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ] ; 3 uses
  %.sroa.1281.2.us.i = phi i64 [ %.sroa.1281.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.arz, %.thread.i150 ], [ %.sroa.1281.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %.sroa.076.2.us.i = phi i64 [ %.sroa.076.4.us.i, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.us.i ], [ %i.asa, %.thread.i150 ], [ %.sroa.076.4.us.i, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit57.us.i" ]
  %i.asc = shl i64 %i.asb, 56
  %i.asd = or i64 %i.asc, %.sroa.50.0.us.i        ; 2 uses
  %i.ase = xor i64 %i.asd, %.sroa.32.2.us.i       ; 3 uses
  %i.asf = add i64 %.sroa.076.2.us.i, %.sroa.22.2.us.i ; 3 uses
  %i.asg = add i64 %.sroa.1281.2.us.i, %i.ase     ; 2 uses
  %i.ash = call i64 @llvm.fshl.i64(i64 %.sroa.22.2.us.i, i64 %.sroa.22.2.us.i, i64 13)
  %i.asi = xor i64 %i.asf, %i.ash                 ; 3 uses
  %i.asj = call i64 @llvm.fshl.i64(i64 %i.ase, i64 %i.ase, i64 16)
  %i.ask = xor i64 %i.asg, %i.asj                 ; 3 uses
  %i.asl = call i64 @llvm.fshl.i64(i64 %i.asf, i64 %i.asf, i64 32)
  %i.asm = add i64 %i.asi, %i.asg                 ; 3 uses
  %i.asn = add i64 %i.asl, %i.ask                 ; 2 uses
  %i.aso = call i64 @llvm.fshl.i64(i64 %i.asi, i64 %i.asi, i64 17)
  %i.asp = xor i64 %i.asm, %i.aso                 ; 3 uses
  %i.asq = call i64 @llvm.fshl.i64(i64 %i.ask, i64 %i.ask, i64 21)
  %i.asr = xor i64 %i.asn, %i.asq                 ; 3 uses
  %i.ass = call i64 @llvm.fshl.i64(i64 %i.asm, i64 %i.asm, i64 32)
  %i.ast = xor i64 %i.asn, %i.asd
  %i.asu = xor i64 %i.ass, 255
  %i.asv = add i64 %i.ast, %i.asp                 ; 3 uses
  %i.asw = add i64 %i.asu, %i.asr                 ; 2 uses
  %i.asx = call i64 @llvm.fshl.i64(i64 %i.asp, i64 %i.asp, i64 13)
  %i.asy = xor i64 %i.asv, %i.asx                 ; 3 uses
  %i.asz = call i64 @llvm.fshl.i64(i64 %i.asr, i64 %i.asr, i64 16)
  %i.ata = xor i64 %i.asw, %i.asz                 ; 3 uses
  %i.atb = call i64 @llvm.fshl.i64(i64 %i.asv, i64 %i.asv, i64 32)
  %i.atc = add i64 %i.asy, %i.asw                 ; 3 uses
  %i.atd = add i64 %i.ata, %i.atb                 ; 2 uses
  %i.ate = call i64 @llvm.fshl.i64(i64 %i.asy, i64 %i.asy, i64 17)
  %i.atf = xor i64 %i.atc, %i.ate                 ; 3 uses
  %i.atg = call i64 @llvm.fshl.i64(i64 %i.ata, i64 %i.ata, i64 21)
  %i.ath = xor i64 %i.atg, %i.atd                 ; 3 uses
  %i.ati = call i64 @llvm.fshl.i64(i64 %i.atc, i64 %i.atc, i64 32)
  %i.atj = add i64 %i.atf, %i.atd                 ; 3 uses
  %i.atk = add i64 %i.ath, %i.ati                 ; 2 uses
  %i.atl = call i64 @llvm.fshl.i64(i64 %i.atf, i64 %i.atf, i64 13)
  %i.atm = xor i64 %i.atl, %i.atj                 ; 3 uses
  %i.atn = call i64 @llvm.fshl.i64(i64 %i.ath, i64 %i.ath, i64 16)
  %i.ato = xor i64 %i.atn, %i.atk                 ; 3 uses
  %i.atp = call i64 @llvm.fshl.i64(i64 %i.atj, i64 %i.atj, i64 32)
  %i.atq = add i64 %i.atm, %i.atk                 ; 3 uses
  %i.atr = add i64 %i.ato, %i.atp                 ; 2 uses
  %i.ats = call i64 @llvm.fshl.i64(i64 %i.atm, i64 %i.atm, i64 17)
  %i.att = xor i64 %i.ats, %i.atq                 ; 3 uses
  %i.atu = call i64 @llvm.fshl.i64(i64 %i.ato, i64 %i.ato, i64 21)
  %i.atv = xor i64 %i.atu, %i.atr                 ; 2 uses
  %i.atw = call i64 @llvm.fshl.i64(i64 %i.atq, i64 %i.atq, i64 32)
  %i.atx = add i64 %i.att, %i.atr
  %i.aty = add i64 %i.atv, %i.atw                 ; 2 uses
  %i.atz = call i64 @llvm.fshl.i64(i64 %i.att, i64 %i.att, i64 13)
  %i.aua = xor i64 %i.atz, %i.atx                 ; 2 uses
  %i.aub = add i64 %i.aua, %i.aty                 ; 2 uses
  %i.auc = shl i64 %i.aua, 17
  %i.aud = shl i64 %i.atv, 37
  %i.aue = shl i64 %i.aty, 21
  %i.auf = xor i64 %i.aue, %i.aud
  %i.aug = shl i64 %i.aub, 32
  %i.auh = xor i64 %i.auf, %i.auc
  %i.aui = xor i64 %i.auh, %i.aug
  %i.auj = xor i64 %i.aui, %i.aub
  %i.auk = lshr i64 %i.auj, 57
  %i.aul = trunc nuw nsw i64 %i.auk to i8
  br label %bb.ea

bb.ea:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE.exit.us.i", %bb.du
end_hunk_4
begin_hunk_5_@"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9help_copy17h0b069b088024a2d0E":bb.a
  %i.boe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i93.i.i129, i1 true)
  %i.bof = zext nneg i16 %i.boe to i64
  %i.bog = add i64 %.sroa.01.0.i.i.i89.i.i125, %i.bof
  %i.boh = and i64 %i.bog, %i.bnz
  %i.boi = sub nsw i64 0, %i.boh
  %i.boj = getelementptr inbounds [16 x i8], ptr %i.boa, i64 %i.boi
  %i.bok = getelementptr inbounds i8, ptr %i.boj, i64 -16
  %.val3.i.i.i94.i.i130 = load i64, ptr %i.bok, align 8, !noalias !25339, !noundef !21
  %i.bol = icmp eq i64 %i.bca, %.val3.i.i.i94.i.i130
  br i1 %i.bol, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E.exit.i.i133", label %bb.hm, !prof !49

._crit_edge.i.i96.i.i132:                         ; preds = %bb.hm, %bb.hl
  %i.bom = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i90.i.i126, splat (i8 -1)
  %i.bon = bitcast <16 x i1> %i.bom to i16
  %i.boo = icmp eq i16 %i.bon, 0
  br i1 %i.boo, label %bb.hn, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E.exit81.thread.i.i113", !prof !23

bb.hm:                                            ; preds = %.lr.ph.i.i92.i.i128
  %i.bop = add i16 %.sroa.06.0.i33.i.i93.i.i129, -1
  %i.boq = and i16 %i.bop, %.sroa.06.0.i33.i.i93.i.i129 ; 2 uses
  %.not.i.not.i.i95.i.i131 = icmp eq i16 %i.boq, 0
  br i1 %.not.i.not.i.i95.i.i131, label %._crit_edge.i.i96.i.i132, label %.lr.ph.i.i92.i.i128

bb.hn:                                            ; preds = %._crit_edge.i.i96.i.i132
  %i.bor = add i64 %.sroa.9.0.i.i.i87.i.i123, 16  ; 2 uses
  %i.bos = add i64 %.sroa.01.0.i.i.i89.i.i125, %i.bor
  br label %bb.hl

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E.exit81.thread.i.i113": ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E.exit81.i.i116", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h70d56d8e91000774E.exit15.i.i97", %._crit_edge.i.i76.i.i112, %._crit_edge.i.i96.i.i132
  br i1 %i.bgv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114, label %bb.ho

bb.ho:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E.exit81.thread.i.i113"
  %i.bot = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25230
  %i.bou = and i64 %i.bot, 9223372036854775807
  %i.bov = icmp eq i64 %i.bou, 0
  br i1 %i.bov, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114, label %bb.hp, !prof !49

bb.hp:                                            ; preds = %bb.ho
  %i.bow = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25230
  br i1 %i.bow, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store atomic i8 1, ptr %i.axw monotonic, align 4, !noalias !25230
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114: ; preds = %bb.hq, %bb.hp, %bb.ho, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$13get_inner_mut17h987f91a1d5d2a6b9E.exit81.thread.i.i113"
  %i.box = atomicrmw xchg ptr %i.axt, i32 0 release, align 4, !noalias !25230
  %i.boy = icmp eq i32 %i.box, 2
  br i1 %i.boy, label %bb.hr, label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i115", !prof !23

bb.hr:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %i.axt), !noalias !25230
  br label %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i115"

"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i115": ; preds = %bb.hr, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i100.i.i114
  %i.boz = call noundef i8 @"_ZN93_$LT$core..sync..atomic..AtomicU8$u20$as$u20$papaya..raw..utils..parker..Atomic$LT$u8$GT$$GT$4load17h3e31bb884e746c55E"(ptr noundef nonnull align 1 %i.axq, i8 noundef 2), !noalias !25230
  %i.bpa = icmp eq i8 %i.boz, 0
  br i1 %i.bpa, label %bb.hw, label %_ZN6papaya3raw5utils6parker6Parker4park17h2227fb2fb5140c41E.exit.i

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E.exit.i.i133": ; preds = %.lr.ph.i.i92.i.i128
  br i1 %i.bgv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134, label %bb.hs

bb.hs:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E.exit.i.i133"
  %i.bpb = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !25230
  %i.bpc = and i64 %i.bpb, 9223372036854775807
  %i.bpd = icmp eq i64 %i.bpc, 0
  br i1 %i.bpd, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134, label %bb.ht, !prof !49

bb.ht:                                            ; preds = %bb.hs
  %i.bpe = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !25230
  br i1 %i.bpe, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store atomic i8 1, ptr %i.axw monotonic, align 4, !noalias !25230
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134: ; preds = %bb.hu, %bb.ht, %bb.hs, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h08a4aca067870ba0E.exit.i.i133"
  %i.bpf = atomicrmw xchg ptr %i.axt, i32 0 release, align 4, !noalias !25230
  %i.bpg = icmp eq i32 %i.bpf, 2
  br i1 %i.bpg, label %bb.hv, label %.preheader.i.i90.backedge, !prof !23

bb.hv:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 8 %i.axt), !noalias !25230
  br label %.preheader.i.i90.backedge

.preheader.i.i90.backedge:                        ; preds = %bb.hv, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i102.i.i134
  br label %.preheader.i.i90

bb.hw:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i115"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25230
  br label %bb.fb

_ZN6papaya3raw5utils6parker6Parker4park17h2227fb2fb5140c41E.exit.i: ; preds = %"_ZN4core3ptr98drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$papaya..raw..utils..parker..State$GT$$GT$17hba1ba2ea5c301db4E.exit101.i.i115", %"_ZN4core3ptr68drop_in_place$LT$core..option..Option$LT$std..thread..Thread$GT$$GT$17h3caf55e8d49202a1E.exit55.i.i65"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !25230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !25230
  br label %.backedge.i66

.backedge.i66.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i148
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i66, label %.lr.ph.i148.epil.preheader

.lr.ph.i148.epil.preheader:                       ; preds = %.backedge.i66.loopexit.unr-lcssa, %.lr.ph.i148.preheader
  %lcmp.mod851 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod851)
  br label %.lr.ph.i148.epil

.lr.ph.i148.epil:                                 ; preds = %.lr.ph.i148.epil, %.lr.ph.i148.epil.preheader
  %epil.iter = phi i64 [ 0, %.lr.ph.i148.epil.preheader ], [ %epil.iter.next, %.lr.ph.i148.epil ]
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i66, label %.lr.ph.i148.epil, !llvm.loop !25115

.backedge.i66:                                    ; preds = %.backedge.i66.loopexit.unr-lcssa, %.lr.ph.i148.epil, %bb.hx, %_ZN6papaya3raw5utils6parker6Parker4park17h2227fb2fb5140c41E.exit.i
  %i.bph = add i64 %i.ayl, 1
  %i.bpi = load atomic i8, ptr %i.axq acquire, align 8, !noalias !25230
  %i.bpj = icmp eq i8 %i.bpi, 2
  %indvars.iv.next.i67 = add i64 %indvars.iv.i4, 2
  %indvars.iv.next239.i = add i64 %indvars.iv.i4, %indvars.iv238.i
  br i1 %i.bpj, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit", label %bb.ez

bb.hx:                                            ; preds = %bb.ez
  %.not191.i = icmp eq i64 %.sroa.09.0188.i, 0
  br i1 %.not191.i, label %.backedge.i66, label %.lr.ph.i148.preheader

.lr.ph.i148.preheader:                            ; preds = %bb.hx
  %xtraiter = and i64 %umax240.i, 7               ; 3 uses
  %i.bpk = icmp ult i64 %indvars.iv238.i, 8
  br i1 %i.bpk, label %.lr.ph.i148.epil.preheader, label %.lr.ph.i148.preheader.new

.lr.ph.i148.preheader.new:                        ; preds = %.lr.ph.i148.preheader
  %unroll_iter = and i64 %umax240.i, -8
  br label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %.lr.ph.i148, %.lr.ph.i148.preheader.new
  %niter = phi i64 [ 0, %.lr.ph.i148.preheader.new ], [ %niter.next.7, %.lr.ph.i148 ]
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  call void @llvm.x86.sse2.pause() #52, !noalias !25230
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i66.loopexit.unr-lcssa, label %.lr.ph.i148

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit": ; preds = %._crit_edge.us.i, %bb.et, %.backedge.i66, %bb.dm, %bb.dn
  %.sink324.i = phi i64 [ %i.ann, %bb.et ], [ %i.ann, %bb.dn ], [ %.sroa.0.0.i, %bb.dm ], [ %i.ann, %.backedge.i66 ], [ %i.ann, %._crit_edge.us.i ]
  %.sink323.i = phi i64 [ %i.anp, %bb.et ], [ %i.anp, %bb.dn ], [ %.sroa.10.0.i, %bb.dm ], [ %i.anp, %.backedge.i66 ], [ %i.anp, %._crit_edge.us.i ]
  %.sink.i = phi ptr [ %i.anl, %bb.et ], [ %i.anl, %bb.dn ], [ %i.anf, %bb.dm ], [ %i.anl, %.backedge.i66 ], [ %i.anl, %._crit_edge.us.i ]
  br i1 %2, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread156", label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread": ; preds = %.split.us.i, %.split184.split.us.i, %.preheader111.split.split.us.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit"
  %i.bpl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bpm = load ptr, ptr %i.bpl, align 8, !noundef !21
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 16
  %i.bpo = load atomic ptr, ptr %i.bpn acquire, align 8 ; 3 uses
  %i.bpp = icmp eq ptr %i.bpo, null
  br i1 %i.bpp, label %bb.hy, label %bb.hz, !prof !23

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread156": ; preds = %.preheader.i3, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit"
  %.sink.i162 = phi ptr [ %.sink.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit" ], [ %i.anl, %.preheader.i3 ]
  %.sink323.i161 = phi i64 [ %.sink323.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit" ], [ %i.anp, %.preheader.i3 ]
  %.sink324.i160 = phi i64 [ %.sink324.i, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit" ], [ %i.ann, %.preheader.i3 ]
  store i64 %.sink324.i160, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink323.i161, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i162, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.ia

bb.hy:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread"
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1217) #57
  unreachable

bb.hz:                                            ; preds = %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread"
  %i.bpq = load <2 x i64>, ptr %i.bpo, align 8
  store <2 x i64> %i.bpq, ptr %0, align 8
  %.sroa.3.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bpo, ptr %.sroa.3.sroa.5.0..sroa_idx, align 8
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21help_copy_incremental17hd5a7d9cddb7dfe6fE.exit.thread156", %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$18help_copy_blocking17hd6ab0228c83601edE.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9update_at17h217cde2ed5062568E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 %.0.val, ptr nofree captures(address) %.16.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %.16.val, i64 137
  %i.b = getelementptr i8, ptr %i.a, i64 %.0.val
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.d = cmpxchg weak ptr %i.c, ptr %3, ptr %5 seq_cst seq_cst, align 8 ; 2 uses
  %i.e = extractvalue { ptr, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, i1 } %i.d, 0         ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 7
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i     ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = and i64 %i.g, 1
  %. = sub nuw nsw i64 2, %i.l
  %.sroa.02.0 = select i1 %i.k, i64 0, i64 %.
  store i64 %.sroa.02.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25354)
  %i.m = load i64, ptr %1, align 8, !range !32, !noalias !25354, !noundef !21
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %6, align 8, !alias.scope !25355, !nonnull !21, !align !27, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call fastcc void @_ZN5seize3raw9collector9Collector3add17h853fdbcd914f1854E(ptr noundef nonnull align 8 %i.o, ptr noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.p)
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$12defer_retire17h5bca78d79091b1ddE.exit"

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %3 to i64
  %i.r = and i64 %i.q, 4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %6, align 8, !alias.scope !25356, !nonnull !21, !align !27, !noundef !21
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call fastcc void @_ZN5seize3raw9collector9Collector3add17h853fdbcd914f1854E(ptr noundef nonnull align 8 %i.t, ptr noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.u)
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$12defer_retire17h5bca78d79091b1ddE.exit"

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load atomic ptr, ptr %i.v seq_cst, align 8, !noalias !25354 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.8.02.i = phi ptr [ %.16.val, %bb.g ], [ %i.z, %bb.i ] ; 2 uses
  %i.x = icmp eq ptr %.sroa.8.02.i, %i.w
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.8.02.i, i64 16
  %i.z = load atomic ptr, ptr %i.y acquire, align 8, !noalias !25354 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.preheader.i, label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %6, align 8, !alias.scope !25357, !nonnull !21, !align !27, !noundef !21
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  tail call fastcc void @_ZN5seize3raw9collector9Collector3add17h853fdbcd914f1854E(ptr noundef nonnull align 8 %i.aa, ptr noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ab)
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$12defer_retire17h5bca78d79091b1ddE.exit"

.preheader.i:                                     ; preds = %bb.i, %bb.l
  %.sroa.017.0.i = phi ptr [ %i.ad, %bb.l ], [ %i.w, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 16
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8, !noalias !25354 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !23

bb.k:                                             ; preds = %.preheader.i
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1209) #57, !noalias !25354
  unreachable

bb.l:                                             ; preds = %.preheader.i
  %i.af = icmp eq ptr %i.ad, %.16.val
  br i1 %i.af, label %bb.m, label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 120 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !25354
  %i.ah = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !25354 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.n, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #57, !noalias !25354
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i: ; preds = %bb.m
  store ptr %4, ptr %i.ah, align 8, !noalias !25354
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i
  %i.aj = load atomic ptr, ptr %i.ag monotonic, align 8, !noalias !25354 ; 2 uses
  %i.ak = cmpxchg ptr %i.ag, ptr %i.aj, ptr %i.ah monotonic monotonic, align 8, !noalias !25354
  %i.al = extractvalue { ptr, i1 } %i.ak, 1
  br i1 %i.al, label %"_ZN6papaya3raw5utils5stack14Stack$LT$T$GT$4push17h0d79819dbd326993E.exit.i", label %bb.o

"_ZN6papaya3raw5utils5stack14Stack$LT$T$GT$4push17h0d79819dbd326993E.exit.i": ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.am, align 8, !noalias !25354
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$12defer_retire17h5bca78d79091b1ddE.exit"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$12defer_retire17h5bca78d79091b1ddE.exit": ; preds = %bb.d, %bb.f, %bb.j, %"_ZN6papaya3raw5utils5stack14Stack$LT$T$GT$4push17h0d79819dbd326993E.exit.i"
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.ao, align 8
  store i64 3, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$12defer_retire17h5bca78d79091b1ddE.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN6papaya3raw33ComputeState$LT$F$C$K$C$V$C$T$GT$4next17h1681792c8e0f1751E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1, i64 noundef range(i64 0, 2) %2, ptr nofree readonly captures(address) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc nuw i64 %2 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.011.0.copyload = load ptr, ptr %i.b, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.c = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  store i32 1000000002, ptr %.sroa.6.0..sroa_idx, align 8
  %i.d = icmp ne i32 %.sroa.6.0.copyload, 1000000002
  %i.e = icmp eq ptr %.sroa.011.0.copyload, %3
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.f = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 1000000000, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i32 %.sroa.4.0.copyload, 1000000000
  br i1 %.not, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25376)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !25377, !noalias !25378, !noundef !21 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load i32, ptr %i.i, align 8, !range !84, !alias.scope !25377, !noalias !25378, !noundef !21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = load i32, ptr %i.k, align 8, !range !81, !alias.scope !25377, !noalias !25378, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 1000000000
  br i1 %.not.i.i.i, label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h257a626d879a7302E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !25377, !noalias !25378
  %i.o = tail call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E(), !noalias !25379 ; 2 uses
  %i.p = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h9a0879e9e8ced43bE"(i64 noundef %i.n, i32 noundef %i.l, i64 noundef %i.h, i32 noundef %i.j), !noalias !25379 ; 2 uses
  %i.q = extractvalue { i64, i32 } %i.p, 0        ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i, label %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i, !prof !23

_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i: ; preds = %bb.e
  %i.s = extractvalue { i64, i32 } %i.p, 1        ; 3 uses
  %.cmp.i.i.i.i = icmp samesign ult i32 %i.s, 500000000
  %i.t = shl nuw nsw i32 %i.s, 1                  ; 2 uses
  %.urem.i.i.i.i = add nsw i32 %i.t, -1000000000
  %i.u = select i1 %.cmp.i.i.i.i, i32 %i.t, i32 %.urem.i.i.i.i ; 3 uses
  %.not8.i.i.i = icmp eq i32 %i.u, 1000000000
  br i1 %.not8.i.i.i, label %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i, label %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i, !prof !58

_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.thread.i.i.i: ; preds = %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i, %bb.e
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @829, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #57, !noalias !25379
  unreachable

_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i: ; preds = %_ZN4core4time8Duration11checked_mul17he7a94cc46898e0f8E.exit.i.i.i
  %i.v = shl nuw i64 %i.q, 1
  %.cmp3.i.i.i.i = icmp samesign ugt i32 %i.s, 499999999
  %i.w = zext i1 %.cmp3.i.i.i.i to i64
  %i.x = or disjoint i64 %i.v, %i.w               ; 3 uses
  %i.y = extractvalue { i64, i32 } %i.o, 1        ; 2 uses
  %i.z = extractvalue { i64, i32 } %i.o, 0        ; 2 uses
  %i.aa = icmp eq i64 %i.x, 300
  %i.ab = icmp ne i32 %i.u, 0
  %i.ac = icmp ugt i64 %i.x, 300
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 %i.ac ; 2 uses
  %.sroa.3.0.i9.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i, i32 0, i32 %i.u
  %.sroa.0.0.i10.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i, i64 300, i64 %i.x
  %i.ad = tail call { i64, i32 } @"_ZN88_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2c4595f780596bd2E"(i64 noundef %i.z, i32 noundef %i.y, i64 noundef %.sroa.0.0.i10.i.i.i, i32 noundef %.sroa.3.0.i9.i.i.i), !noalias !25379 ; 2 uses
  %i.ae = extractvalue { i64, i32 } %i.ad, 0
  %i.af = extractvalue { i64, i32 } %i.ad, 1      ; 2 uses
  %i.ag = icmp ult i32 %i.af, 1000000000
  tail call void @llvm.assume(i1 %i.ag)
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h257a626d879a7302E.exit"

"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$21update_or_insert_with28_$u7b$$u7b$closure$u7d$$u7d$17h257a626d879a7302E.exit": ; preds = %bb.d, %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i
  %.sink11.i = phi i64 [ undef, %bb.d ], [ %i.ae, %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i ]
  %.sink10.i = phi i32 [ 1000000000, %bb.d ], [ %i.af, %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i ]
  %.sink9.i = phi i64 [ %i.h, %bb.d ], [ %i.z, %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i ]
  %.sink.i = phi i32 [ %i.j, %bb.d ], [ %i.y, %_ZN4core3ops8function2Fn4call17h4bd7e669c8d8b3d5E.exit.sink.split.i ]
  store i64 %.sink11.i, ptr %0, align 8, !alias.scope !25374, !noalias !25380
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink10.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !25374, !noalias !25380
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink9.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !25374, !noalias !25380
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !25374, !noalias !25380
  br label %bb.g

bb.f:                                             ; preds = %bb.b
end_hunk_5
